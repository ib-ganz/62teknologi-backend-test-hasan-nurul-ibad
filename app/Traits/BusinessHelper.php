<?php

namespace App\Traits;

use App\Models\BusinessCategory;
use App\Models\BusinessTransaction;
use App\Models\Category;

trait BusinessHelper
{
    public function insertCategories($business_id, $categories)
    {
        foreach ($categories as $category) {
            $c = Category::query()
                ->where('alias', $category['alias'])
                ->orWhere('title', $category['title'])
                ->first();
            if (!$c) {
                $c = Category::query()->create([
                    'alias' => $category['alias'],
                    'title' => $category['title'],
                ]);
            }

            BusinessCategory::query()->create([
                'business_id' => $business_id,
                'category_id' => $c->id,
            ]);
        }
    }

    public function insertTransactions($business_id, $transaction_ids)
    {
        foreach (($transaction_ids ?? []) as $id) {
            BusinessTransaction::query()->create([
                'business_id' => $business_id,
                'transaction_id' => $id,
            ]);
        }
    }

}
