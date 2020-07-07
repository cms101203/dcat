<?php

/**
 * A helper file for Dcat Admin, to provide autocomplete information to your IDE
 *
 * This file should not be included in your code, only analyzed by your IDE!
 *
 * @author jqh <841324345@qq.com>
 */
namespace Dcat\Admin {
    use Illuminate\Support\Collection;

    /**
     * @property Grid\Column|Collection id
     * @property Grid\Column|Collection username
     * @property Grid\Column|Collection name
     * @property Grid\Column|Collection roles
     * @property Grid\Column|Collection permissions
     * @property Grid\Column|Collection created_at
     * @property Grid\Column|Collection updated_at
     * @property Grid\Column|Collection avatar
     * @property Grid\Column|Collection user
     * @property Grid\Column|Collection method
     * @property Grid\Column|Collection path
     * @property Grid\Column|Collection ip
     * @property Grid\Column|Collection input
     * @property Grid\Column|Collection slug
     * @property Grid\Column|Collection version
     * @property Grid\Column|Collection alias
     * @property Grid\Column|Collection authors
     * @property Grid\Column|Collection enable
     * @property Grid\Column|Collection imported
     * @property Grid\Column|Collection config
     * @property Grid\Column|Collection require
     * @property Grid\Column|Collection require_dev
     * @property Grid\Column|Collection client_name
     * @property Grid\Column|Collection client_mobile
     * @property Grid\Column|Collection client_wechat
     * @property Grid\Column|Collection client_qq
     * @property Grid\Column|Collection client_email
     * @property Grid\Column|Collection id_card
     * @property Grid\Column|Collection prove_img
     * @property Grid\Column|Collection car_type
     * @property Grid\Column|Collection car_num
     * @property Grid\Column|Collection cp_id
     * @property Grid\Column|Collection inspection_at
     * @property Grid\Column|Collection hinsure_at
     * @property Grid\Column|Collection binsure_at
     * @property Grid\Column|Collection car_engine_num
     * @property Grid\Column|Collection car_spot_num
     * @property Grid\Column|Collection car_img
     * @property Grid\Column|Collection type
     * @property Grid\Column|Collection by_at
     * @property Grid\Column|Collection car_mileage
     * @property Grid\Column|Collection remark
     * @property Grid\Column|Collection op_id
     * @property Grid\Column|Collection service_at
     * @property Grid\Column|Collection service_moeny
     * @property Grid\Column|Collection pay_at
     * @property Grid\Column|Collection pay_money
     * @property Grid\Column|Collection cars_id
     * @property Grid\Column|Collection mobile
     * @property Grid\Column|Collection license
     * @property Grid\Column|Collection staff_status
     * @property Grid\Column|Collection driver_status
     * @property Grid\Column|Collection staff_type
     * @property Grid\Column|Collection photo_img
     * @property Grid\Column|Collection staff_id
     * @property Grid\Column|Collection basic_wage
     * @property Grid\Column|Collection tc_money
     * @property Grid\Column|Collection bonus
     * @property Grid\Column|Collection violate_num
     * @property Grid\Column|Collection deduction
     * @property Grid\Column|Collection surplus
     * @property Grid\Column|Collection work_days
     * @property Grid\Column|Collection leave_days
     * @property Grid\Column|Collection public_days
     * @property Grid\Column|Collection driver_id
     * @property Grid\Column|Collection cycle_start
     * @property Grid\Column|Collection cycle_end
     * @property Grid\Column|Collection duration
     * @property Grid\Column|Collection duration_strat
     * @property Grid\Column|Collection duration_end
     * @property Grid\Column|Collection rent_num
     * @property Grid\Column|Collection client_id
     * @property Grid\Column|Collection car_id
     * @property Grid\Column|Collection is_secd
     * @property Grid\Column|Collection secd_money
     * @property Grid\Column|Collection rent_type
     * @property Grid\Column|Collection rent_at
     * @property Grid\Column|Collection rent_day
     * @property Grid\Column|Collection deposit
     * @property Grid\Column|Collection rent
     * @property Grid\Column|Collection oil_volume
     * @property Grid\Column|Collection redriving
     * @property Grid\Column|Collection odrive_price
     * @property Grid\Column|Collection timeout_price
     * @property Grid\Column|Collection is_long
     * @property Grid\Column|Collection rush_type
     * @property Grid\Column|Collection deduction_num
     * @property Grid\Column|Collection current_mileage
     * @property Grid\Column|Collection rent_id
     * @property Grid\Column|Collection rent_money
     * @property Grid\Column|Collection rent_over
     * @property Grid\Column|Collection deposit_money
     * @property Grid\Column|Collection deposit_over
     * @property Grid\Column|Collection next_at
     * @property Grid\Column|Collection is_checkout
     * @property Grid\Column|Collection return_at
     * @property Grid\Column|Collection return_mileage
     * @property Grid\Column|Collection return_oil
     * @property Grid\Column|Collection is_odrive
     * @property Grid\Column|Collection is_time
     * @property Grid\Column|Collection kilometers
     * @property Grid\Column|Collection outime_num
     * @property Grid\Column|Collection cost_json
     * @property Grid\Column|Collection wz_deposit
     * @property Grid\Column|Collection receivable
     * @property Grid\Column|Collection paid
     * @property Grid\Column|Collection fixColumns
     * @property Grid\Column|Collection contact
     * @property Grid\Column|Collection phone
     * @property Grid\Column|Collection address
     * @property Grid\Column|Collection bits
     * @property Grid\Column|Collection money
     * @property Grid\Column|Collection illegal_at
     * @property Grid\Column|Collection advance_at
     * @property Grid\Column|Collection outs_at
     * @property Grid\Column|Collection oute_at
     * @property Grid\Column|Collection parent_id
     * @property Grid\Column|Collection order
     * @property Grid\Column|Collection icon
     * @property Grid\Column|Collection uri
     * @property Grid\Column|Collection deleted_at
     * @property Grid\Column|Collection user_id
     * @property Grid\Column|Collection permission_id
     * @property Grid\Column|Collection menu_id
     * @property Grid\Column|Collection http_method
     * @property Grid\Column|Collection http_path
     * @property Grid\Column|Collection role_id
     * @property Grid\Column|Collection password
     * @property Grid\Column|Collection remember_token
     * @property Grid\Column|Collection by_mileage
     * @property Grid\Column|Collection pd_mileage
     * @property Grid\Column|Collection cly_mileage
     * @property Grid\Column|Collection by_status
     * @property Grid\Column|Collection pd_status
     * @property Grid\Column|Collection cly_status
     * @property Grid\Column|Collection car_status
     * @property Grid\Column|Collection return_id
     * @property Grid\Column|Collection offset_car
     * @property Grid\Column|Collection offset_money
     * @property Grid\Column|Collection start_at
     * @property Grid\Column|Collection end_at
     * @property Grid\Column|Collection connection
     * @property Grid\Column|Collection queue
     * @property Grid\Column|Collection payload
     * @property Grid\Column|Collection exception
     * @property Grid\Column|Collection failed_at
     * @property Grid\Column|Collection secd_company
     * @property Grid\Column|Collection refund
     * @property Grid\Column|Collection refund_mark
     * @property Grid\Column|Collection email
     * @property Grid\Column|Collection email_verified_at
     *
     * @method Grid\Column|Collection id(string $label = null)
     * @method Grid\Column|Collection username(string $label = null)
     * @method Grid\Column|Collection name(string $label = null)
     * @method Grid\Column|Collection roles(string $label = null)
     * @method Grid\Column|Collection permissions(string $label = null)
     * @method Grid\Column|Collection created_at(string $label = null)
     * @method Grid\Column|Collection updated_at(string $label = null)
     * @method Grid\Column|Collection avatar(string $label = null)
     * @method Grid\Column|Collection user(string $label = null)
     * @method Grid\Column|Collection method(string $label = null)
     * @method Grid\Column|Collection path(string $label = null)
     * @method Grid\Column|Collection ip(string $label = null)
     * @method Grid\Column|Collection input(string $label = null)
     * @method Grid\Column|Collection slug(string $label = null)
     * @method Grid\Column|Collection version(string $label = null)
     * @method Grid\Column|Collection alias(string $label = null)
     * @method Grid\Column|Collection authors(string $label = null)
     * @method Grid\Column|Collection enable(string $label = null)
     * @method Grid\Column|Collection imported(string $label = null)
     * @method Grid\Column|Collection config(string $label = null)
     * @method Grid\Column|Collection require(string $label = null)
     * @method Grid\Column|Collection require_dev(string $label = null)
     * @method Grid\Column|Collection client_name(string $label = null)
     * @method Grid\Column|Collection client_mobile(string $label = null)
     * @method Grid\Column|Collection client_wechat(string $label = null)
     * @method Grid\Column|Collection client_qq(string $label = null)
     * @method Grid\Column|Collection client_email(string $label = null)
     * @method Grid\Column|Collection id_card(string $label = null)
     * @method Grid\Column|Collection prove_img(string $label = null)
     * @method Grid\Column|Collection car_type(string $label = null)
     * @method Grid\Column|Collection car_num(string $label = null)
     * @method Grid\Column|Collection cp_id(string $label = null)
     * @method Grid\Column|Collection inspection_at(string $label = null)
     * @method Grid\Column|Collection hinsure_at(string $label = null)
     * @method Grid\Column|Collection binsure_at(string $label = null)
     * @method Grid\Column|Collection car_engine_num(string $label = null)
     * @method Grid\Column|Collection car_spot_num(string $label = null)
     * @method Grid\Column|Collection car_img(string $label = null)
     * @method Grid\Column|Collection type(string $label = null)
     * @method Grid\Column|Collection by_at(string $label = null)
     * @method Grid\Column|Collection car_mileage(string $label = null)
     * @method Grid\Column|Collection remark(string $label = null)
     * @method Grid\Column|Collection op_id(string $label = null)
     * @method Grid\Column|Collection service_at(string $label = null)
     * @method Grid\Column|Collection service_moeny(string $label = null)
     * @method Grid\Column|Collection pay_at(string $label = null)
     * @method Grid\Column|Collection pay_money(string $label = null)
     * @method Grid\Column|Collection cars_id(string $label = null)
     * @method Grid\Column|Collection mobile(string $label = null)
     * @method Grid\Column|Collection license(string $label = null)
     * @method Grid\Column|Collection staff_status(string $label = null)
     * @method Grid\Column|Collection driver_status(string $label = null)
     * @method Grid\Column|Collection staff_type(string $label = null)
     * @method Grid\Column|Collection photo_img(string $label = null)
     * @method Grid\Column|Collection staff_id(string $label = null)
     * @method Grid\Column|Collection basic_wage(string $label = null)
     * @method Grid\Column|Collection tc_money(string $label = null)
     * @method Grid\Column|Collection bonus(string $label = null)
     * @method Grid\Column|Collection violate_num(string $label = null)
     * @method Grid\Column|Collection deduction(string $label = null)
     * @method Grid\Column|Collection surplus(string $label = null)
     * @method Grid\Column|Collection work_days(string $label = null)
     * @method Grid\Column|Collection leave_days(string $label = null)
     * @method Grid\Column|Collection public_days(string $label = null)
     * @method Grid\Column|Collection driver_id(string $label = null)
     * @method Grid\Column|Collection cycle_start(string $label = null)
     * @method Grid\Column|Collection cycle_end(string $label = null)
     * @method Grid\Column|Collection duration(string $label = null)
     * @method Grid\Column|Collection duration_strat(string $label = null)
     * @method Grid\Column|Collection duration_end(string $label = null)
     * @method Grid\Column|Collection rent_num(string $label = null)
     * @method Grid\Column|Collection client_id(string $label = null)
     * @method Grid\Column|Collection car_id(string $label = null)
     * @method Grid\Column|Collection is_secd(string $label = null)
     * @method Grid\Column|Collection secd_money(string $label = null)
     * @method Grid\Column|Collection rent_type(string $label = null)
     * @method Grid\Column|Collection rent_at(string $label = null)
     * @method Grid\Column|Collection rent_day(string $label = null)
     * @method Grid\Column|Collection deposit(string $label = null)
     * @method Grid\Column|Collection rent(string $label = null)
     * @method Grid\Column|Collection oil_volume(string $label = null)
     * @method Grid\Column|Collection redriving(string $label = null)
     * @method Grid\Column|Collection odrive_price(string $label = null)
     * @method Grid\Column|Collection timeout_price(string $label = null)
     * @method Grid\Column|Collection is_long(string $label = null)
     * @method Grid\Column|Collection rush_type(string $label = null)
     * @method Grid\Column|Collection deduction_num(string $label = null)
     * @method Grid\Column|Collection current_mileage(string $label = null)
     * @method Grid\Column|Collection rent_id(string $label = null)
     * @method Grid\Column|Collection rent_money(string $label = null)
     * @method Grid\Column|Collection rent_over(string $label = null)
     * @method Grid\Column|Collection deposit_money(string $label = null)
     * @method Grid\Column|Collection deposit_over(string $label = null)
     * @method Grid\Column|Collection next_at(string $label = null)
     * @method Grid\Column|Collection is_checkout(string $label = null)
     * @method Grid\Column|Collection return_at(string $label = null)
     * @method Grid\Column|Collection return_mileage(string $label = null)
     * @method Grid\Column|Collection return_oil(string $label = null)
     * @method Grid\Column|Collection is_odrive(string $label = null)
     * @method Grid\Column|Collection is_time(string $label = null)
     * @method Grid\Column|Collection kilometers(string $label = null)
     * @method Grid\Column|Collection outime_num(string $label = null)
     * @method Grid\Column|Collection cost_json(string $label = null)
     * @method Grid\Column|Collection wz_deposit(string $label = null)
     * @method Grid\Column|Collection receivable(string $label = null)
     * @method Grid\Column|Collection paid(string $label = null)
     * @method Grid\Column|Collection fixColumns(string $label = null)
     * @method Grid\Column|Collection contact(string $label = null)
     * @method Grid\Column|Collection phone(string $label = null)
     * @method Grid\Column|Collection address(string $label = null)
     * @method Grid\Column|Collection bits(string $label = null)
     * @method Grid\Column|Collection money(string $label = null)
     * @method Grid\Column|Collection illegal_at(string $label = null)
     * @method Grid\Column|Collection advance_at(string $label = null)
     * @method Grid\Column|Collection outs_at(string $label = null)
     * @method Grid\Column|Collection oute_at(string $label = null)
     * @method Grid\Column|Collection parent_id(string $label = null)
     * @method Grid\Column|Collection order(string $label = null)
     * @method Grid\Column|Collection icon(string $label = null)
     * @method Grid\Column|Collection uri(string $label = null)
     * @method Grid\Column|Collection deleted_at(string $label = null)
     * @method Grid\Column|Collection user_id(string $label = null)
     * @method Grid\Column|Collection permission_id(string $label = null)
     * @method Grid\Column|Collection menu_id(string $label = null)
     * @method Grid\Column|Collection http_method(string $label = null)
     * @method Grid\Column|Collection http_path(string $label = null)
     * @method Grid\Column|Collection role_id(string $label = null)
     * @method Grid\Column|Collection password(string $label = null)
     * @method Grid\Column|Collection remember_token(string $label = null)
     * @method Grid\Column|Collection by_mileage(string $label = null)
     * @method Grid\Column|Collection pd_mileage(string $label = null)
     * @method Grid\Column|Collection cly_mileage(string $label = null)
     * @method Grid\Column|Collection by_status(string $label = null)
     * @method Grid\Column|Collection pd_status(string $label = null)
     * @method Grid\Column|Collection cly_status(string $label = null)
     * @method Grid\Column|Collection car_status(string $label = null)
     * @method Grid\Column|Collection return_id(string $label = null)
     * @method Grid\Column|Collection offset_car(string $label = null)
     * @method Grid\Column|Collection offset_money(string $label = null)
     * @method Grid\Column|Collection start_at(string $label = null)
     * @method Grid\Column|Collection end_at(string $label = null)
     * @method Grid\Column|Collection connection(string $label = null)
     * @method Grid\Column|Collection queue(string $label = null)
     * @method Grid\Column|Collection payload(string $label = null)
     * @method Grid\Column|Collection exception(string $label = null)
     * @method Grid\Column|Collection failed_at(string $label = null)
     * @method Grid\Column|Collection secd_company(string $label = null)
     * @method Grid\Column|Collection refund(string $label = null)
     * @method Grid\Column|Collection refund_mark(string $label = null)
     * @method Grid\Column|Collection email(string $label = null)
     * @method Grid\Column|Collection email_verified_at(string $label = null)
     */
    class Grid {}

    class MiniGrid extends Grid {}

    /**
     * @property Show\Field|Collection id
     * @property Show\Field|Collection username
     * @property Show\Field|Collection name
     * @property Show\Field|Collection roles
     * @property Show\Field|Collection permissions
     * @property Show\Field|Collection created_at
     * @property Show\Field|Collection updated_at
     * @property Show\Field|Collection avatar
     * @property Show\Field|Collection user
     * @property Show\Field|Collection method
     * @property Show\Field|Collection path
     * @property Show\Field|Collection ip
     * @property Show\Field|Collection input
     * @property Show\Field|Collection slug
     * @property Show\Field|Collection version
     * @property Show\Field|Collection alias
     * @property Show\Field|Collection authors
     * @property Show\Field|Collection enable
     * @property Show\Field|Collection imported
     * @property Show\Field|Collection config
     * @property Show\Field|Collection require
     * @property Show\Field|Collection require_dev
     * @property Show\Field|Collection client_name
     * @property Show\Field|Collection client_mobile
     * @property Show\Field|Collection client_wechat
     * @property Show\Field|Collection client_qq
     * @property Show\Field|Collection client_email
     * @property Show\Field|Collection id_card
     * @property Show\Field|Collection prove_img
     * @property Show\Field|Collection car_type
     * @property Show\Field|Collection car_num
     * @property Show\Field|Collection cp_id
     * @property Show\Field|Collection inspection_at
     * @property Show\Field|Collection hinsure_at
     * @property Show\Field|Collection binsure_at
     * @property Show\Field|Collection car_engine_num
     * @property Show\Field|Collection car_spot_num
     * @property Show\Field|Collection car_img
     * @property Show\Field|Collection type
     * @property Show\Field|Collection by_at
     * @property Show\Field|Collection car_mileage
     * @property Show\Field|Collection remark
     * @property Show\Field|Collection op_id
     * @property Show\Field|Collection service_at
     * @property Show\Field|Collection service_moeny
     * @property Show\Field|Collection pay_at
     * @property Show\Field|Collection pay_money
     * @property Show\Field|Collection cars_id
     * @property Show\Field|Collection mobile
     * @property Show\Field|Collection license
     * @property Show\Field|Collection staff_status
     * @property Show\Field|Collection driver_status
     * @property Show\Field|Collection staff_type
     * @property Show\Field|Collection photo_img
     * @property Show\Field|Collection staff_id
     * @property Show\Field|Collection basic_wage
     * @property Show\Field|Collection tc_money
     * @property Show\Field|Collection bonus
     * @property Show\Field|Collection violate_num
     * @property Show\Field|Collection deduction
     * @property Show\Field|Collection surplus
     * @property Show\Field|Collection work_days
     * @property Show\Field|Collection leave_days
     * @property Show\Field|Collection public_days
     * @property Show\Field|Collection driver_id
     * @property Show\Field|Collection cycle_start
     * @property Show\Field|Collection cycle_end
     * @property Show\Field|Collection duration
     * @property Show\Field|Collection duration_strat
     * @property Show\Field|Collection duration_end
     * @property Show\Field|Collection rent_num
     * @property Show\Field|Collection client_id
     * @property Show\Field|Collection car_id
     * @property Show\Field|Collection is_secd
     * @property Show\Field|Collection secd_money
     * @property Show\Field|Collection rent_type
     * @property Show\Field|Collection rent_at
     * @property Show\Field|Collection rent_day
     * @property Show\Field|Collection deposit
     * @property Show\Field|Collection rent
     * @property Show\Field|Collection oil_volume
     * @property Show\Field|Collection redriving
     * @property Show\Field|Collection odrive_price
     * @property Show\Field|Collection timeout_price
     * @property Show\Field|Collection is_long
     * @property Show\Field|Collection rush_type
     * @property Show\Field|Collection deduction_num
     * @property Show\Field|Collection current_mileage
     * @property Show\Field|Collection rent_id
     * @property Show\Field|Collection rent_money
     * @property Show\Field|Collection rent_over
     * @property Show\Field|Collection deposit_money
     * @property Show\Field|Collection deposit_over
     * @property Show\Field|Collection next_at
     * @property Show\Field|Collection is_checkout
     * @property Show\Field|Collection return_at
     * @property Show\Field|Collection return_mileage
     * @property Show\Field|Collection return_oil
     * @property Show\Field|Collection is_odrive
     * @property Show\Field|Collection is_time
     * @property Show\Field|Collection kilometers
     * @property Show\Field|Collection outime_num
     * @property Show\Field|Collection cost_json
     * @property Show\Field|Collection wz_deposit
     * @property Show\Field|Collection receivable
     * @property Show\Field|Collection paid
     * @property Show\Field|Collection fixColumns
     * @property Show\Field|Collection contact
     * @property Show\Field|Collection phone
     * @property Show\Field|Collection address
     * @property Show\Field|Collection bits
     * @property Show\Field|Collection money
     * @property Show\Field|Collection illegal_at
     * @property Show\Field|Collection advance_at
     * @property Show\Field|Collection outs_at
     * @property Show\Field|Collection oute_at
     * @property Show\Field|Collection parent_id
     * @property Show\Field|Collection order
     * @property Show\Field|Collection icon
     * @property Show\Field|Collection uri
     * @property Show\Field|Collection deleted_at
     * @property Show\Field|Collection user_id
     * @property Show\Field|Collection permission_id
     * @property Show\Field|Collection menu_id
     * @property Show\Field|Collection http_method
     * @property Show\Field|Collection http_path
     * @property Show\Field|Collection role_id
     * @property Show\Field|Collection password
     * @property Show\Field|Collection remember_token
     * @property Show\Field|Collection by_mileage
     * @property Show\Field|Collection pd_mileage
     * @property Show\Field|Collection cly_mileage
     * @property Show\Field|Collection by_status
     * @property Show\Field|Collection pd_status
     * @property Show\Field|Collection cly_status
     * @property Show\Field|Collection car_status
     * @property Show\Field|Collection return_id
     * @property Show\Field|Collection offset_car
     * @property Show\Field|Collection offset_money
     * @property Show\Field|Collection start_at
     * @property Show\Field|Collection end_at
     * @property Show\Field|Collection connection
     * @property Show\Field|Collection queue
     * @property Show\Field|Collection payload
     * @property Show\Field|Collection exception
     * @property Show\Field|Collection failed_at
     * @property Show\Field|Collection secd_company
     * @property Show\Field|Collection refund
     * @property Show\Field|Collection refund_mark
     * @property Show\Field|Collection email
     * @property Show\Field|Collection email_verified_at
     *
     * @method Show\Field|Collection id(string $label = null)
     * @method Show\Field|Collection username(string $label = null)
     * @method Show\Field|Collection name(string $label = null)
     * @method Show\Field|Collection roles(string $label = null)
     * @method Show\Field|Collection permissions(string $label = null)
     * @method Show\Field|Collection created_at(string $label = null)
     * @method Show\Field|Collection updated_at(string $label = null)
     * @method Show\Field|Collection avatar(string $label = null)
     * @method Show\Field|Collection user(string $label = null)
     * @method Show\Field|Collection method(string $label = null)
     * @method Show\Field|Collection path(string $label = null)
     * @method Show\Field|Collection ip(string $label = null)
     * @method Show\Field|Collection input(string $label = null)
     * @method Show\Field|Collection slug(string $label = null)
     * @method Show\Field|Collection version(string $label = null)
     * @method Show\Field|Collection alias(string $label = null)
     * @method Show\Field|Collection authors(string $label = null)
     * @method Show\Field|Collection enable(string $label = null)
     * @method Show\Field|Collection imported(string $label = null)
     * @method Show\Field|Collection config(string $label = null)
     * @method Show\Field|Collection require(string $label = null)
     * @method Show\Field|Collection require_dev(string $label = null)
     * @method Show\Field|Collection client_name(string $label = null)
     * @method Show\Field|Collection client_mobile(string $label = null)
     * @method Show\Field|Collection client_wechat(string $label = null)
     * @method Show\Field|Collection client_qq(string $label = null)
     * @method Show\Field|Collection client_email(string $label = null)
     * @method Show\Field|Collection id_card(string $label = null)
     * @method Show\Field|Collection prove_img(string $label = null)
     * @method Show\Field|Collection car_type(string $label = null)
     * @method Show\Field|Collection car_num(string $label = null)
     * @method Show\Field|Collection cp_id(string $label = null)
     * @method Show\Field|Collection inspection_at(string $label = null)
     * @method Show\Field|Collection hinsure_at(string $label = null)
     * @method Show\Field|Collection binsure_at(string $label = null)
     * @method Show\Field|Collection car_engine_num(string $label = null)
     * @method Show\Field|Collection car_spot_num(string $label = null)
     * @method Show\Field|Collection car_img(string $label = null)
     * @method Show\Field|Collection type(string $label = null)
     * @method Show\Field|Collection by_at(string $label = null)
     * @method Show\Field|Collection car_mileage(string $label = null)
     * @method Show\Field|Collection remark(string $label = null)
     * @method Show\Field|Collection op_id(string $label = null)
     * @method Show\Field|Collection service_at(string $label = null)
     * @method Show\Field|Collection service_moeny(string $label = null)
     * @method Show\Field|Collection pay_at(string $label = null)
     * @method Show\Field|Collection pay_money(string $label = null)
     * @method Show\Field|Collection cars_id(string $label = null)
     * @method Show\Field|Collection mobile(string $label = null)
     * @method Show\Field|Collection license(string $label = null)
     * @method Show\Field|Collection staff_status(string $label = null)
     * @method Show\Field|Collection driver_status(string $label = null)
     * @method Show\Field|Collection staff_type(string $label = null)
     * @method Show\Field|Collection photo_img(string $label = null)
     * @method Show\Field|Collection staff_id(string $label = null)
     * @method Show\Field|Collection basic_wage(string $label = null)
     * @method Show\Field|Collection tc_money(string $label = null)
     * @method Show\Field|Collection bonus(string $label = null)
     * @method Show\Field|Collection violate_num(string $label = null)
     * @method Show\Field|Collection deduction(string $label = null)
     * @method Show\Field|Collection surplus(string $label = null)
     * @method Show\Field|Collection work_days(string $label = null)
     * @method Show\Field|Collection leave_days(string $label = null)
     * @method Show\Field|Collection public_days(string $label = null)
     * @method Show\Field|Collection driver_id(string $label = null)
     * @method Show\Field|Collection cycle_start(string $label = null)
     * @method Show\Field|Collection cycle_end(string $label = null)
     * @method Show\Field|Collection duration(string $label = null)
     * @method Show\Field|Collection duration_strat(string $label = null)
     * @method Show\Field|Collection duration_end(string $label = null)
     * @method Show\Field|Collection rent_num(string $label = null)
     * @method Show\Field|Collection client_id(string $label = null)
     * @method Show\Field|Collection car_id(string $label = null)
     * @method Show\Field|Collection is_secd(string $label = null)
     * @method Show\Field|Collection secd_money(string $label = null)
     * @method Show\Field|Collection rent_type(string $label = null)
     * @method Show\Field|Collection rent_at(string $label = null)
     * @method Show\Field|Collection rent_day(string $label = null)
     * @method Show\Field|Collection deposit(string $label = null)
     * @method Show\Field|Collection rent(string $label = null)
     * @method Show\Field|Collection oil_volume(string $label = null)
     * @method Show\Field|Collection redriving(string $label = null)
     * @method Show\Field|Collection odrive_price(string $label = null)
     * @method Show\Field|Collection timeout_price(string $label = null)
     * @method Show\Field|Collection is_long(string $label = null)
     * @method Show\Field|Collection rush_type(string $label = null)
     * @method Show\Field|Collection deduction_num(string $label = null)
     * @method Show\Field|Collection current_mileage(string $label = null)
     * @method Show\Field|Collection rent_id(string $label = null)
     * @method Show\Field|Collection rent_money(string $label = null)
     * @method Show\Field|Collection rent_over(string $label = null)
     * @method Show\Field|Collection deposit_money(string $label = null)
     * @method Show\Field|Collection deposit_over(string $label = null)
     * @method Show\Field|Collection next_at(string $label = null)
     * @method Show\Field|Collection is_checkout(string $label = null)
     * @method Show\Field|Collection return_at(string $label = null)
     * @method Show\Field|Collection return_mileage(string $label = null)
     * @method Show\Field|Collection return_oil(string $label = null)
     * @method Show\Field|Collection is_odrive(string $label = null)
     * @method Show\Field|Collection is_time(string $label = null)
     * @method Show\Field|Collection kilometers(string $label = null)
     * @method Show\Field|Collection outime_num(string $label = null)
     * @method Show\Field|Collection cost_json(string $label = null)
     * @method Show\Field|Collection wz_deposit(string $label = null)
     * @method Show\Field|Collection receivable(string $label = null)
     * @method Show\Field|Collection paid(string $label = null)
     * @method Show\Field|Collection fixColumns(string $label = null)
     * @method Show\Field|Collection contact(string $label = null)
     * @method Show\Field|Collection phone(string $label = null)
     * @method Show\Field|Collection address(string $label = null)
     * @method Show\Field|Collection bits(string $label = null)
     * @method Show\Field|Collection money(string $label = null)
     * @method Show\Field|Collection illegal_at(string $label = null)
     * @method Show\Field|Collection advance_at(string $label = null)
     * @method Show\Field|Collection outs_at(string $label = null)
     * @method Show\Field|Collection oute_at(string $label = null)
     * @method Show\Field|Collection parent_id(string $label = null)
     * @method Show\Field|Collection order(string $label = null)
     * @method Show\Field|Collection icon(string $label = null)
     * @method Show\Field|Collection uri(string $label = null)
     * @method Show\Field|Collection deleted_at(string $label = null)
     * @method Show\Field|Collection user_id(string $label = null)
     * @method Show\Field|Collection permission_id(string $label = null)
     * @method Show\Field|Collection menu_id(string $label = null)
     * @method Show\Field|Collection http_method(string $label = null)
     * @method Show\Field|Collection http_path(string $label = null)
     * @method Show\Field|Collection role_id(string $label = null)
     * @method Show\Field|Collection password(string $label = null)
     * @method Show\Field|Collection remember_token(string $label = null)
     * @method Show\Field|Collection by_mileage(string $label = null)
     * @method Show\Field|Collection pd_mileage(string $label = null)
     * @method Show\Field|Collection cly_mileage(string $label = null)
     * @method Show\Field|Collection by_status(string $label = null)
     * @method Show\Field|Collection pd_status(string $label = null)
     * @method Show\Field|Collection cly_status(string $label = null)
     * @method Show\Field|Collection car_status(string $label = null)
     * @method Show\Field|Collection return_id(string $label = null)
     * @method Show\Field|Collection offset_car(string $label = null)
     * @method Show\Field|Collection offset_money(string $label = null)
     * @method Show\Field|Collection start_at(string $label = null)
     * @method Show\Field|Collection end_at(string $label = null)
     * @method Show\Field|Collection connection(string $label = null)
     * @method Show\Field|Collection queue(string $label = null)
     * @method Show\Field|Collection payload(string $label = null)
     * @method Show\Field|Collection exception(string $label = null)
     * @method Show\Field|Collection failed_at(string $label = null)
     * @method Show\Field|Collection secd_company(string $label = null)
     * @method Show\Field|Collection refund(string $label = null)
     * @method Show\Field|Collection refund_mark(string $label = null)
     * @method Show\Field|Collection email(string $label = null)
     * @method Show\Field|Collection email_verified_at(string $label = null)
     */
    class Show {}

    /**
     * @method \Dcat\Admin\Form\Field\Button button(...$params)
     */
    class Form {}

}

namespace Dcat\Admin\Grid {
    /**
     
     */
    class Column {}

    /**
     
     */
    class Filter {}
}

namespace Dcat\Admin\Show {
    /**
     
     */
    class Field {}
}
