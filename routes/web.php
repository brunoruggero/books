<?php

use App\Http\Controllers\BookController;
use App\Http\Controllers\HomeController;
use App\Http\Controllers\LoginController;
use App\Http\Controllers\PasswordController;
use App\Http\Controllers\UserController;
use Illuminate\Support\Facades\Route;

// Route Login
Route::get('/', [LoginController::class,'index'])->name('login');
Route::post('login', [LoginController::class,'store'])->name('login.store');
Route::get('logout', [LoginController::class,'destroy'])->name('login.destroy');

// Route Home
Route::get('/home', [HomeController::class,'index'])->name('home')->middleware('auth');

// Route User
Route::get('/users', [UserController::class,'index'])->name('users')->middleware('auth');
Route::get('/user/create', [UserController::class,'create'])->name('user.create')->middleware('auth');
Route::post('/user', [UserController::class,'store'])->name('user.store')->middleware('auth');
Route::get('/user/edit/{user}', [UserController::class,'edit'])->name('user.edit')->middleware('auth');
Route::put('/user/{user}', [UserController::class,'update'])->name('user.update')->middleware('auth');
Route::delete('/user/{user}', [UserController::class,'destroy'])->name('user.destroy')->middleware('auth');
Route::put('/password/{user}', [PasswordController::class,'update'])->name('password.update')->middleware('auth');

// Route Book's
// Route::get('/book', [BookController::class,'index'])->name('book')->middleware('auth');
Route::get('/book/create', [BookController::class,'create'])->name('book.create')->middleware('auth');
Route::post('/book', [BookController::class,'store'])->name('book.store')->middleware('auth');
Route::delete('/book/{book}', [BookController::class,'destroy'])->name('book.destroy')->middleware('auth');
Route::get('/book/edit/{book}', [BookController::class,'edit'])->name('book.edit')->middleware('auth');
Route::put('/book/{book}', [BookController::class,'update'])->name('book.update')->middleware('auth');

Route::get('/book/details/{book}', [BookController::class,'show'])->name('book.show')->middleware('auth');
