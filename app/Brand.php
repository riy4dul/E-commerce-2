<?php

namespace App;

use Illuminate\Database\Eloquent\Model;

class Brand extends Model
{
    protected $filllable=['brand_name','brand_description','publication_status'];
}
