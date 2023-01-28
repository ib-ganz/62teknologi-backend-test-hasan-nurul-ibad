<?php

namespace App\Http\Controllers\Api;

use App\Http\Controllers\Controller;
use App\Models\Business;
use App\Models\BusinessCategory;
use App\Models\BusinessTransaction;
use App\Models\Location;
use App\Traits\BusinessHelper;
use App\Traits\IdGenerator;
use Carbon\Carbon;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\Validator;

class BusinessController extends Controller
{
    use IdGenerator, BusinessHelper;

    public function create(Request $request)
    {
        $business = Business::query()->create([
            'id' => $this->generateId(),
            'alias' => $request->alias,
            'name' => $request->name,
            'image_url' => $request->image_url,
            'is_claimed' => $request->is_claimed ?? false,
            'is_closed' => $request->is_closed,
            'url' => $request->url,
            'review_count' => $request->review_count,
            'rating' => $request->rating,
            'latitude' => $request->coordinates['latitude'],
            'longitude' => $request->coordinates['longitude'],
            'price' => $request->price ?? '$',
            'phone' => $request->phone ?? '',
            'display_phone' => $request->display_phone ?? '',
            'distance' => $request->distance,
            'photos' => $request->photos ?? '[]',
        ]);

        $this->insertCategories($business->id, $request->categories);
        $this->insertTransactions($business->id, $request->transaction_ids);

        $location = (object) $request->location;

        Location::query()->create([
            'business_id' => $business->id,
            'address1' => $location->address1,
            'address2' => $location->address2,
            'address3' => $location->address3,
            'city' => $location->city,
            'zip_code' => $location->zip_code,
            'country' => $location->country,
            'state' => $location->state,
            'display_address' => json_encode($location->display_address),
            'cross_streets' => $location->cross_streets ?? '',
        ]);

        return response()->json([
            'success' => true,
            'message' => 'Data stored successfully',
        ]);
    }

    public function update($id, Request $request)
    {
        Business::query()->where('id', $id)->update([
            'alias' => $request->alias,
            'name' => $request->name,
            'image_url' => $request->image_url,
            'is_claimed' => $request->is_claimed ?? false,
            'is_closed' => $request->is_closed,
            'url' => $request->url,
            'review_count' => $request->review_count,
            'rating' => $request->rating,
            'latitude' => $request->coordinates['latitude'],
            'longitude' => $request->coordinates['longitude'],
            'price' => $request->price ?? '$',
            'phone' => $request->phone ?? '',
            'display_phone' => $request->display_phone ?? '',
            'distance' => $request->distance,
            'photos' => $request->photos ?? '[]',
        ]);

        BusinessCategory::query()->where('business_id', $id)->delete();
        $this->insertCategories($id, $request->categories);

        BusinessTransaction::query()->where('business_id', $id)->delete();
        $this->insertTransactions($id, $request->transaction_ids);

        $location = (object) $request->location;

        Location::query()->where('business_id', $id)->update([
            'address1' => $location->address1,
            'address2' => $location->address2,
            'address3' => $location->address3,
            'city' => $location->city,
            'zip_code' => $location->zip_code,
            'country' => $location->country,
            'state' => $location->state,
            'display_address' => json_encode($location->display_address),
            'cross_streets' => $location->cross_streets ?? '',
        ]);

        return response()->json([
            'success' => true,
            'message' => 'Data updated successfully',
        ]);
    }

    public function delete($id)
    {
        // using soft delete, in case you want to restore the data
        Business::query()->where('id', $id)->delete();
        // not deleting data on tbl BusinessCategory, BusinessTransaction, and Location

        return response()->json([
            'success' => true,
            'message' => 'Data deleted successfully',
        ]);
    }

    public function read(Request $request)
    {
        if ($request->has('radius') && $request->radius > 40000) {
            return response()->json([
                'success' => false,
                'error' => [
                    'code' => 'AREA_TOO_LARGE',
                    'description' => [
                        'radius' => [
                            'The max value is 40.000 meters'
                        ]
                    ]
                ]
            ], 400);
        }

        $validator = Validator::make($request->all(), [
            'location' => 'max:250|required_without_all:latitude,longitude',
            'latitude' => 'numeric|min:-90|max:90|required_without:location',
            'longitude' => 'numeric|min:-180|max:180|required_without:location',
            'radius' => 'integer|max:40000',
            'locale' => 'regex:/(^[a-z]{2,3}_[A-Z]{2}$)/u',
            'open_now' => 'prohibits:open_at',
            'open_at' => 'integer|prohibits:open_now',
        ]);

        if ($validator->fails()) {
            return response()->json([
                'success' => false,
                'error' => [
                    'code' => 'INVALID_REQUEST',
                    'description' => $validator->errors()
                ]
            ], 400);
        }

        if ($request->input('locale')) {
            // ketika ada parameter locale, saat ini tidak terjadi apa", hanya memvalidasi parameternya saja,
            // karena (kemungkinan) locale berpengaruh di bahasa pada response.
            // sedangkan saat ini, project ini belum support locale
            $locales = ['cs_CZ','da_DK','de_AT','de_CH','de_DE','en_AU','en_BE','en_CA','en_CH','en_GB','en_HK','en_IE','en_MY','en_NZ','en_PH','en_SG','en_US','es_AR','es_CL','es_ES','es_MX','fi_FI','fil_PH','fr_BE','fr_CA','fr_CH','fr_FR','it_CH','it_IT','ja_JP','ms_MY','nb_NO','nl_BE','nl_NL','pl_PL','pt_BR','pt_PT','sv_FI','sv_SE','tr_TR','zh_HK','zh_TW',];
            $valid_locale = false;
            foreach ($locales as $locale) {
                if ($request->input('locale') == $locale) {
                    $valid_locale = true;
                }
            }
            if (!$valid_locale) {
                return response()->json([
                    'success' => false,
                    'error' => [
                        'code' => 'VALIDATION_ERROR',
                        'description' => [
                            'locale' => [
                                "'{$request->input('locale')}' is not a 'yelp-supported-locale'"
                            ]
                        ]
                    ]
                ], 400);
            }
        }

        $query = Business::query()
            ->with('categories', 'location', 'hours') // hours dimunculkan untuk keperluan frontend
            ->orderBy('rating', 'desc') // sementara saya order pake irating, review_count, dan id dulu
            ->orderBy('review_count', 'desc')
            ->orderBy('id')
            ->when($request->has('location'), function ($q) use ($request) {
                $q->whereHas('location', function ($w) use ($request) {
                    $w->where('address1', 'like', "%$request->location%")
                        ->orWhere('address2', 'like', "%$request->location%")
                        ->orWhere('address3', 'like', "%$request->location%")
                        ->orWhere('city', 'like', "%$request->location%")
                        ->orWhere('country', $request->location)
                        ->orWhere('state', $request->location);
                });
            })
            ->when($request->has('latitude') && $request->has('longitude'), function ($q) use ($request) {
                $has_comma = function ($number) { return strpos($number, '.') !== false; };
                if (!$has_comma($request->latitude) || !$has_comma($request->longitude)) {
                    // maaf belum nemu query supaya: klo latitude dan longitude nya bukan float, maka tdk usah tampil semua (soalnya saya lihat di yelp seperti itu)
                    // sementara tak bikin begini
                    $q->whereRaw('latitude = longitude');
                }
                else {
                    $q->where('latitude', 'like', "$request->latitude%")->where('longitude', 'like', "$request->longitude%");
                }
            })
            ->when($request->has('term'), function ($query) use ($request) {
                $query->where(function ($q) use ($request) {
                    $q->where('alias', 'like', "%$request->term%")
                        ->orWhere('name', 'like', "%$request->term%")
                        ->orWhereHas('categories', function ($w) use ($request) {
                            $w->where('alias', $request->term)->orWhere('title', $request->term);
                        });
                });
            })
            ->when($request->has('radius'), function ($q) use ($request) {
                // saya kurang paham maksudanya radius itu gimana; saat ini saya buat untuk memfilter distance saja
                $q->where('distance', '<=', $request->radius);
            })
            ->when($request->has('categories') && $request->categories, function ($q) use ($request) {
                $q->whereHas('categories', function ($w) use ($request) {
                    $c = explode(',', $request->categories);
                    $w->where('alias', $c[0])->orWhere('title', $c[0]);
                    foreach ($c as $k => $category) {
                        if ($k == 0)
                            continue;
                        $w->orWhere('alias', $category)->orWhere('title', $category);
                    }
                });
            })
            ->when($request->has('price'), function ($q) use ($request) {
                $price = collect(explode(',', $request->price))
                    ->map(function ($v) { return str_repeat('$', $v); })
                    ->toArray();
                $q->whereIn('price', $price);
            })
            ->when($request->has('open_now'), function ($q) use ($request) {
                if ($request->open_now && $request->open_now != 'false') { // karena 'false' adalah truthy
                    $q->whereHas('hours', function ($w) use ($request) {
                        $d = Carbon::now();
                        $w->where('day', $d->dayOfWeekIso)
                            ->where('start', '<=', $d->format('Hi'))
                            ->where('end', '>=', $d->format('Hi'));
                    });
                }
                else {
                    $q->whereDoesntHave('hours', function ($w) use ($request) {
                        $d = Carbon::now();
                        $w->where('day', $d->dayOfWeekIso)
                            ->where('start', '<=', $d->format('Hi'))
                            ->where('end', '>=', $d->format('Hi'));
                    });
                }
            })
            ->when($request->has('open_at'), function ($q) use ($request) {
                $q->whereHas('hours', function ($w) use ($request) {
                    $d = Carbon::createFromTimestamp($request->open_at);
                    $w->where('day', $d->dayOfWeekIso)
                        ->where('start', '<=', $d->format('Hi'))
                        ->where('end', '>=', $d->format('Hi'));
                });
            })
            ->when($request->has('transactions') && $request->transactions, function ($q) use ($request) {
                $q->whereHas('transactions', function ($w) use ($request) {
                    $c = explode(',', $request->transactions);
                    $w->where('name', $c[0]);
                    foreach ($c as $k => $transaction) {
                        if ($k == 0)
                            continue;
                        $w->orWhere('name', $transaction);
                    }
                });
            });

        $total = $query->count();
        $data = $query
            ->when($request->has('limit'), function ($q) use ($request) {
                $q->limit($request->limit);
            })
            ->when($request->has('offset'), function ($q) use ($request) {
                $q->offset($request->offset);
            })
            ->get();
        $region = $request->has('location') ?
            [
                'location' => $request->location
            ] :
            [
                'latitude' => $request->latitude,
                'longitude' => $request->longitude,
            ];

        return response()->json([
            'success' => true,
            'data' => [
                'businesses' => $data,
                'total' => $total,
                'region' => $region
            ],
        ]);
    }

    public function show($id)
    {
        return response()->json([
            'success' => true,
            'data' => Business::query()
                ->with('categories', 'transactions', 'location', 'hours')
                ->find($id)
        ]);
    }
}
