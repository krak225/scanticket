<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;

class Photo extends Model
{
    use HasFactory;

    protected $table            = "photo";
    protected $primaryKey       = "photo_id";
    public $timestamps          = false;
}
