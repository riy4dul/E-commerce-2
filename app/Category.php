<?php

namespace App;

use Illuminate\Database\Eloquent\Model;

class Category extends Model
{
    protected $filllable=['category_name','category_description','publication_status'];
}
