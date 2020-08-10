<?php


namespace App\Services;


class HttpSend
{
    public static  function send_dingding_message($remote_server, $post_string) {

        if( $remote_server == '' ) {
            $accessToken = 'fafc5e3fef83a643e18f48a34251f8bf620b403cebb9be1e567a9209a4671ac3';
            $remote_server = 'https://oapi.dingtalk.com/robot/send?access_token='.$accessToken;
        }
        $ch = curl_init();
        curl_setopt($ch, CURLOPT_URL, $remote_server);
        curl_setopt($ch, CURLOPT_POST, 1);
        curl_setopt($ch, CURLOPT_CONNECTTIMEOUT, 5);
        curl_setopt($ch, CURLOPT_HTTPHEADER, array ('Content-Type: application/json;charset=utf-8'));
        curl_setopt($ch, CURLOPT_POSTFIELDS, $post_string);
        curl_setopt($ch, CURLOPT_RETURNTRANSFER, true);
        // 线下环境不用开启curl证书验证, 未调通情况可尝试添加该代码
        // curl_setopt ($ch, CURLOPT_SSL_VERIFYHOST, 0);
        // curl_setopt ($ch, CURLOPT_SSL_VERIFYPEER, 0);
        $data = curl_exec($ch);
        curl_close($ch);
        return $data;
    }
}
