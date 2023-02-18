<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;

class KoperasiBarang_Model extends Model
{
    use HasFactory;
    protected $table = 'koperasi_barang';
    protected $fillable = [
        'id_category_barang',
        'barang',
        'price',
        'stock'
    ];
}
