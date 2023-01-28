<?php

namespace App\Http\Controllers\Api;

use App\Http\Controllers\Controller;
use App\Models\Category;

class CategoryController extends Controller
{
    public function read()
    {
        return response()->json([
            'success' => true,
            'data' => Category::all()
        ]);
    }
}
