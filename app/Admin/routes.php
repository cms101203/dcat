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
    $router->any('/getclient', 'ClientDetailController@getclient')->name('admin.client.getclient');
    $router->resource('/client', ClientDetailController::class);
    //汽车管理

    $router->any('/getcars', 'CarsController@getcars')->name('admin.cars.getcars');
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
    //请假管理
    $router->resource('/rentcars', RentCarController::class);
    //租金记录
    $router->resource('/rentcarslog', RentCarDeductionLogController::class);
    //还车记录
    $router->any('/refundstore','ReturnCarController@refundstore')->name('admin.returncars.refundstore');
    $router->any('/refund','ReturnCarController@refund')->name('admin.returncars.refund');
    $router->resource('/returncars', ReturnCarController::class);
    //编辑文件
    $router->resource('/returncar', ReturnCarsController::class);
    //公司管理
    $router->resource('/companys', RentCompanyController::class);
    //违章管理
    $router->resource('/illegalog', CarsIllegalLogController::class);

    //预支记录
    $router->resource('/advance', RentCarAdvanceLogController::class);

    //预支记录
    $router->resource('/getout', DriverGetoutLogController::class);

    //预支记录
    $router->resource('/transferlog', TransferLogController::class);

    $router->group([//用户管理
        'namespace' => 'Auth',
    ], function($router) {
        //用户管理
        $router->resource('/users', UserController::class);
    });
});
