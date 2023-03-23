<?php

namespace App\Models;

use Illuminate\Contracts\Auth\MustVerifyEmail;
use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Foundation\Auth\User as Authenticatable;
use Illuminate\Notifications\Notifiable;
use Laravel\Sanctum\HasApiTokens;
use Illuminate\Support\Str;

class Book extends Authenticatable
{
    use HasApiTokens, HasFactory, Notifiable;

    /**
     * The attributes that are mass assignable.
     *
     * @var array<int, string>
     */
    protected $fillable = [
        'title',
        'description',
        'author',
        'pages'
    ];

    /*
    * Bloquear apenas os campos que não queremos cadastrar
    */
    // protected $guarded = [
    //     'name_field'
    // ];

    public function insert(array $data){

        return $this->create($data);

    }

    public static function listAndSearch(){

        $search = request()->input('s');

        return ($search) ?
            Book::where('title', 'like', "%{$search}%")->orWhere('description','like', "%{$search}%")->orWhere('author','like', "%{$search}%")->paginate(5) :
            Book::paginate(5);
    }

}
