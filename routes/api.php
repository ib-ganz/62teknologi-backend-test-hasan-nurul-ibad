<?php

use App\Http\Controllers\Api\BusinessController;
use App\Http\Controllers\Api\CategoryController;
use App\Models\Business;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\Route;

/*
|--------------------------------------------------------------------------
| API Routes
|--------------------------------------------------------------------------
|
| Here is where you can register API routes for your application. These
| routes are loaded by the RouteServiceProvider within a group which
| is assigned the "api" middleware group. Enjoy building your API!
|
*/

Route::middleware('auth:sanctum')->get('/user', function (Request $request) {
    return $request->user();
});

Route::group(['prefix' => 'businesses'], function () {
    Route::post('create', [BusinessController::class, 'create']);
    Route::put('update/{id}', [BusinessController::class, 'update']);
    Route::delete('delete/{id}', [BusinessController::class, 'delete']);

    Route::get('search', [BusinessController::class, 'read']);
    Route::get('detail/{id}', [BusinessController::class, 'show']);
});

Route::group(['prefix' => 'categories'], function () {
    Route::get('', [CategoryController::class, 'read']);
});

Route::any('yelp/{slug}', function($slug) {
//    return response()->json([base64_decode($slug)]);

    $curl = curl_init();
    curl_setopt($curl, CURLOPT_URL, base64_decode($slug));
    curl_setopt($curl, CURLOPT_RETURNTRANSFER, true);
    curl_setopt($curl, CURLOPT_HTTPHEADER, ['Authorization: Bearer Ubf1-f0uqsJUnssqPMGo-tiFeZTT85oFmKfznlPmjDtX8s83jYMoAb-ApuD63wgq6LDZNsUXG6gurZIVYaj2jzxJmmLdCdXbDqIHU_b6KiCEVi8v-YB0OSsW6MWaY3Yx',]);
    $data = curl_exec($curl);
    curl_close($curl);
    echo $data;
})->where('slug', '(.*)?');
