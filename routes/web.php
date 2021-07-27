<?php
use APP\Http\Livewire\HomeComponent;
use APP\Http\Livewire\ShopComponent;
use APP\Http\Livewire\CartComponent;
use APP\Http\Livewire\CheckoutComponent;
use Illuminate\Support\Facades\Route;


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

// Route::get('/', function () {
//     return view('welcome');
// });

// Route::get('/',HomeComponent::class);
Route::get('/',App\Http\Livewire\HomeComponent::class);
Route::get('/shop',App\Http\Livewire\ShopComponent::class);
Route::get('/cart',App\Http\Livewire\CartComponent::class);
Route::get('/checkout',App\Http\Livewire\CheckoutComponent::class);
