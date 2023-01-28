<?php

namespace App\Traits;

use App\Models\Business;

trait IdGenerator
{
    public function generateId()
    {
        $id = $this->generateRandomString();
        if (Business::query()->where('id', $id)->exists()) {
            return $this->generateId();
        }
        return $id;
    }

    private function generateRandomString($length = 22) {
        $characters = '0123456789abcdefghijklmnopqrstuvwxyzABCDEFGHIJKLMNOPQRSTUVWXYZ';
        $charactersLength = strlen($characters);
        $randomString = '';
        for ($i = 0; $i < $length; $i++) {
            $randomString .= $characters[rand(0, $charactersLength - 1)];
        }
        return $randomString;
    }

}
