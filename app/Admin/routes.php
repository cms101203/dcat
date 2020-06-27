<?php

use Illuminate\Routing\Router;
use Illuminate\Support\Facades\Route;
use Dcat\Admin\Admin;

Admin::routes();

Route::group([
    'prefix'        => config('admin.route.prefix'),
    'namespace'     => config('admin.route.namespace'),
    'middleware'    => config('admin.route.middleware'),
], function (Router $router) {

    $router->get('/', 'HomeController@index');
    //分类管理
    $router->resource('/industry', AdminIndustryController::class);
    //客户管理
    $router->resource('/client', ClientDetailController::class);
    //客户管理
    $router->resource('/client', ClientDetailController::class);
    //汽车管理
    $router->resource('/cars', CarsController::class);
    //汽车管理
    $router->resource('/carsmaintainlog', CarsMaintainLogController::class);
});
