<?php

namespace App\Console\Commands;

use App\Services\HttpSend;
use Illuminate\Console\Command;
use Illuminate\Support\Facades\Log;

class CostoDingDing extends Command
{
    /**
     * The name and signature of the console command.
     *
     * @var string
     */
    protected $signature = 'costodingding';

    /**
     * The console command description.
     *
     * @var string
     */
    protected $description = '催帐钉钉提醒';

    /**
     * Create a new command instance.
     *
     * @return void
     */
    public function __construct()
    {
        parent::__construct();
    }

    /**
     * Execute the console command.
     *
     * @return mixed
     */
    public function handle()
    {
        $send_info = [
            'msgtype' => 'markdown',
            'markdown' => [
                'title' => "要说庄里天气怎么样",
                'text' =>"#### 多云有点风 \n> 23～32度，南风那个吹啊3～4级，空气不良106\n> ![screenshot](https://ss2.bdstatic.com/70cFvnSh_Q1YnxGkpoWK1HF6hhy/it/u=3731080696,1704664700&fm=26&gp=0.jpg)\n> ###### 16点19分发布 [天气](https://www.baidu.com/s?ie=utf-8&f=8&rsv_bp=1&tn=baidu&wd=%E7%9F%B3%E5%AE%B6%E5%BA%84%E5%A4%A9%E6%B0%94&oq=%25E9%2592%2589%25E9%2592%2589%25E5%25BC%2580%25E5%258F%2591%25E8%2580%2585%25E6%258E%25A5%25E5%258F%25A3%25E6%2596%2587%25E6%25A1%25A3&rsv_pq=eeebc8b20002e075&rsv_t=86d0pYeEQnSbretL%2B3pdN%2BfF6Wogqr5CFhN618SvBOKTQjHEFdX91WgW%2F1Y&rqlang=cn&rsv_enter=1&rsv_dl=tb&rsv_btype=t&inputT=13890&rsv_sug3=51&rsv_sug1=48&rsv_sug7=100&rsv_sug2=0&rsv_sug4=13890) \n",
                ]
        ];
        $res = HttpSend::send_dingding_message('',json_encode($send_info));
        Log::info("mesg",['msg'=>json_encode($res)]);
    }
}
