<div class="row" >
    <div class="table-wrapper col-md-12" >
        <div class="table-responsive table-wrapper fixed-solution" data-pattern="priority-columns">
            <div class="sticky-table-header border-radius-fix" style="height: 80px; width: auto; height: auto;">
                <table class="custom-data-table dataTable table dt-checkboxes-select table-bordered complex-headers dataTable table-text-center" id="grid-table-clone">
                    <thead>
                    <th colspan="8" style="background-color: #f8f8f8;">租车单</th>
                    </tr>
                    </thead>
                    <tbody>
                    <tr>
                        <td style="background-color:#f8f8f8; ">租车编号</td>
                        <td> {{$rent['rent_num']}} </td>
                        <td style="background-color:#f8f8f8; "> 承租方 </td>
                        <td> {{$client['client_name']}} </td>
                        <td style="background-color:#f8f8f8; "> 租赁时间 </td>
                        <td> {{$rent['rent_at']}} </td>
                        <td style="background-color:#f8f8f8; "> 预租 </td>
                        <td> {{$rent['rent_day']}}　天</td>
                    </tr>
                    <tr>
                        <td style="background-color:#f8f8f8; ">租车车型</td>
                        <td> {{$cars['title']}}/{{$cars['car_num']}} </td>
                        <td style="background-color:#f8f8f8; "> 司机 </td>
                        <td> {{$staff['name']}} </td>
                        <td style="background-color:#f8f8f8; "> 已交车辆押金 </td>
                        <td> {{$rent['deposit']}} 元  </td>
                        <td style="background-color:#f8f8f8; "> 已付租金 </td>
                        <td> {{$rent['rent']}} 元  </td>
                    </tr>
                    <tr>
                        <td style="background-color:#f8f8f8; ">发车里程</td>
                        <td>　{{$rent['current_mileage']}} Km　</td>
                        <td style="background-color:#f8f8f8; "> 发车油量 </td>
                        <td>　{{$rent['oil_volume']}} </td>
                        <td style="background-color:#f8f8f8; "> 限驶 </td>
                        <td> {{$rent['odrive_price']}} 元/Km </td>
                        <td style="background-color:#f8f8f8; "> 超时 </td>
                        <td> {{$rent['timeout_price']}} 元/h  </td>
                    </tr>
                    <tr>
                        <td style="background-color:#f8f8f8; ">备注</td>
                        <td colspan="5"> {{$rent['remark']}} </td>
                        <td style="background-color:#f8f8f8; "> 签字　</td>
                        <td style="width: 100px;"> 　</td>

                    </tr>
                    </tbody>
                </table>
            </div>
        </div>
    </div>
</div>
<div class="row" >
    <div class="table-wrapper col-md-12" style="margin-bottom: 50px;">
        <div class="table-responsive table-wrapper fixed-solution" data-pattern="priority-columns">
            <div class="sticky-table-header border-radius-fix" style="height: 80px; width: auto; height: auto;">
                <table class="custom-data-table dataTable table dt-checkboxes-select table-bordered complex-headers dataTable table-text-center" id="grid-table-clone">
                    <thead>
                    <th colspan="8" style="background-color: #f8f8f8;">还车单</th>
                    </tr>
                    </thead>
                    <tbody>
                    <tr>
                        <td style="background-color:#f8f8f8; ">租车状态</td>
                        <td> {{$rentstatus[$detail['is_checkout']]}} </td>
                        <td style="background-color:#f8f8f8; "> 还车日期 </td>
                        <td> {{$detail['return_at']}} </td>
                        <td style="background-color:#f8f8f8; "> 还车历程 </td>
                        <td> {{$detail['return_mileage']}}　Km </td>
                        <td style="background-color:#f8f8f8; ">　还车油量 </td>
                        <td> {{$detail['return_oil']}} </td>
                    </tr>
                    <tr>
                        <td style="background-color:#f8f8f8; ">是否超时</td>
                        <td colspan="3"> {{$detail['is_time'] ? '是':'否'}} </td>
                        <td style="background-color:#f8f8f8; "> 是否超驶 </td>
                        <td colspan="3"> {{$detail['is_odrive'] ? '是':'否'}} </td>
                    </tr>
                    <tr>
                        <td style="background-color:#f8f8f8; ">费用</td>
                        <td>　{{$detail['oy_price']}} 元　</td>
                        <td style="background-color:#f8f8f8; "> 违章押金 </td>
                        <td>　{{$detail['wz_deposit']}} 元 </td>
                        <td style="background-color:#f8f8f8; "> 应收金额 </td>
                        <td> {{$detail['receivable']}} 元 </td>
                        <td style="background-color:#f8f8f8; "> 实收金额 </td>
                        <td> {{$detail['paid']}} 元  </td>
                    </tr>
                    <tr>
                        <td style="background-color:#f8f8f8; ">还车备注</td>
                        <td colspan="5"> {{$detail['remark']}} </td>
                        <td style="background-color:#f8f8f8; "> 签字　</td>
                        <td style="width: 100px;"> 　</td>
                    </tr>
                    </tbody>
                </table>
            </div>
        </div>
    </div>
</div>
