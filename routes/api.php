<?php

use Illuminate\Http\Request;
use Illuminate\Support\Facades\Route;
use App\Http\Controllers\FrontendApiController;
/*
|--------------------------------------------------------------------------
| API Routes
|--------------------------------------------------------------------------
|
| Here is where you can register API routes for your application. These
| routes are loaded by the RouteServiceProvider within a group which
| is assigned the "api" middleware group. Enjoy building your API!
|
*/

// $router->group([
//     'as' => 'api_',
//     'middleware' => []
// ], function () use ($router) {

//     // $router->post('/upload-image', 'ImageController@upload')->name('upload_image');
//     // Route::post('/upload-image', [App\Http\Controllers\HomeController::class, 'upload'])->name('upload_image');
//     $router->post('/upload-image', [App\Http\Controllers\ImageController::class, 'upload'])->name('upload_image');
// });

// Route::middleware('auth:api')->get('/user', function (Request $request) {
//     return $request->user();
// });
// Route::group([
//     'middleware' => ['auth', 'pelanggan'],
//     'prefix' => 'app',
//     'namespace' => 'API',

// ], function () {

//     Route::get('/{name}', [FrontendController::class, 'tempatshow'])->name('front.show');
// });
// Route::post('midtrans/gopay/create', 'Api\Payment\PaymentController@createGopay');
// Route::post('midtrans/pay', 'Api\Payment\PaymentController@getPayment');

// Route::group([
//     'middleware' => ['auth', 'pelanggan'],
// ], function () {
Route::get('/desa', [FrontendApiController::class, 'index']);
Route::get('/wahana', [FrontendApiController::class, 'wahanashow']);
// });