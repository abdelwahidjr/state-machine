<?php

/*
|--------------------------------------------------------------------------
| Web Routes
|--------------------------------------------------------------------------
|
| Here is where you can register web routes for your application. These
| routes are loaded by the RouteServiceProvider within a group which
| contains the "web" middleware group. Now create something great!
|
*/

Route::get('/', function () {
    return view('welcome');
});

Route::get('/orders', 'OrderController@index');
Route::get('/orders/{order}', 'OrderController@show');
Route::post('/orders/{order}/apply_transition', 'OrderController@apply_transition');

Auth::routes();

Route::get('/home', 'HomeController@index')->name('home');
