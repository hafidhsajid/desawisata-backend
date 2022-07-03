<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;

class Detail_transaksi extends Model
{

    use HasFactory;
    protected $table = "tb_detailtransaksi";
    protected $guarded = [];

    static function tambah_detail_transaksi($user_id, $kategori, $tempat_id, $subtotal, $kode_tiket, $kode, $jumlah, $name, $durasi, $tanggal_a, $tanggal_b)
    {
        Detail_transaksi::create([
            "name" => $name,
            "user_id" => $user_id,
            "durasi" => $durasi,
            "tanggal_a" => $tanggal_a,
            "tanggal_b" => $tanggal_b,
            "kode_tiket" => $kode_tiket,
            "id_produk" => $kode,
            "jumlah" => $jumlah,
            "harga" => $subtotal,
            "tempat_id" => $tempat_id,
            "kategori" => $kategori,
        ]);
    }
    public function usera()
    {
        return $this->hasOne(User::class, 'id', 'user_id');
    }
    public function customer()
    {
        return $this->HasOne(User::class, 'id', 'user_id');
    }
    public function desa()
    {
        return $this->belongsTo(Tempat::class, 'tempat_id');
    }
}
