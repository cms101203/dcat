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
    //汽车保养日志
    $router->resource('/carsmaintainlog', CarsMaintainLogController::class);
    //汽车维修日志
    $router->resource('/carservicelog', CarsServiceLogController::class);
    //汽车保险日志
    $router->resource('/carsinsurancelog', CarInsuranceLogController::class);
    //司机管理
    $router->resource('/staffs', DriverDetailController::class);
    //工资管理
    $router->resource('/staffwage', DriverWageController::class);
    //请假管理
    $router->resource('/staffleave', StaffLeaveController::class);

});
