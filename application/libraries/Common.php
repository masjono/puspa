<?php

if (!defined('BASEPATH'))
    exit('No direct script access allowed');

class Common {

    public function Common() {
        date_default_timezone_set('Asia/Jakarta');
    }

    function combo_id($id, $arr, $selected = false, $added_attribute = '') {
        $acc = '<select id="' . $id . '"' . (strlen($added_attribute) > 0 ? ' ' . $added_attribute : '');
        $acc .= '>';
        foreach ($arr as $key => $val) {
            $acc .= '<option value="' . $key . '"';
            if ($selected) {
                if ($key == $selected)
                    $acc .= ' selected="selected"';
            }
            $acc .= '>' . $val . '</option>';
        }
        $acc .= '</select>';
        return $acc;
    }

    function get_xml_response($msg, $extraTags = array()) {
        if (!is_array($msg))
            return '<?xml version="1.0"><data>' . $msg . '</data>';
        $xml = '<?xml version="1.0"><data>';
        $xml .= '<code>' . $msg[0] . '</code>';
        array_shift($msg);
        $xml .= '<desc>' . implode('crlf', $msg) . '</desc>';
        foreach ($extraTags as $k => $v) {
            $xml .= "<$k>$v</$k>";
        }
        $xml .= '</data>';
        return $xml;
    }

    function remove_keys_in_array($keys, $arr) {
        $result = array();
        foreach ($arr as $k => $v) {
            if (in_array($k, $keys))
                continue;
            $result = array_merge($result, array($k => $v));
        }
        return $result;
    }

    function is_keys_exist($arr_search, $arr_source) {
        foreach ($arr_search as $val) {
            if (key_exists($val, $arr_source))
                return true;
        }
        return false;
    }

    function get_file_extension($file_name) {
        $x = explode('.', $file_name);
        return strtolower(end($x));
    }

    function reverse2($str) { // yyyy-mm -> mm-yyyy atau sebaliknya
        $a = explode('-', $str);
        if (count($a) != 2)
            return $str;
        return $a[1] . '-' . $a[0];
    }

    function reverse_date_format($str) {
        $a = @explode('-', $str);
        if (count($a) != 3)
            return $str;
        return @$a[2] . '-' . @$a[1] . '-' . @$a[0] . '';
    }

    function reverse_date_format2($str) { // 20-07-2011 -> 20110720
        $a = @explode('-', $str);
        if (count($a) != 3)
            return $str;
        return @$a[2] . @$a[1] . @$a[0];
    }

    function reverse_date_format3($str) { // 20110720 -> 20-07-2011
        if (strlen($str) != 8)
            return $str;
        return substr($str, 6, 2) . '-' . substr($str, 4, 2) . '-' . substr($str, 0, 4);
    }

    function get_dmy_from_mysql_datetime($string) { // 2012-12-31 09:00:12 -> 31-12-2012
        $arr = explode(' ', $string);
        return $this->reverse_date_format($arr[0]);
    }
    
    function get_ymd_from_mysql_datetime($string) { // 2012-12-31 09:00:12 -> 31-12-2012
        $arr = explode(' ', $string);
        return $arr[0];
    }

    function get_dmyhi_from_mysql_datetime($string) { // 2012-12-31 09:00:12 -> 31-12-2012
        $arr = explode(' ', $string);
        return $this->reverse_date_format($arr[0]) . ' ' . substr($string, 11, 5);
    }

    function get_time_from_mysql_datetime($string) { // 2012-12-31 09:00:12 -> 09:00
        $arr = explode(" ", $string);
        return substr($arr[1], 0, 5);
    }

    function decode_month($index) {
        $arr = array('', 'Januari', 'Februari', 'Maret', 'April', 'Mei', 'Juni', 'Juli', 'Agustus', 'September', 'Oktober', 'November', 'Desember');
        if (isset($arr[$index]))
            return $arr[$index];
        return '';
    }

    function decode_ymd($ymd) { // 20120117 -> 17 Januari 2012
        if (strlen($ymd) != 8)
            return '';
        return intval(substr($ymd, 6, 2)) . ' ' . $this->decode_month(intval(substr($ymd, 4, 2))) . ' ' . substr($ymd, 0, 4);
    }
    
    function decode_tanggal($tanggal) { // 2012-01-17 -> 17 Januari 2012
        $ymd = str_replace('-', '', $tanggal);
        if (strlen($ymd) != 8)
            return '';
        return intval(substr($ymd, 6, 2)) . ' ' . $this->decode_month(intval(substr($ymd, 4, 2))) . ' ' . substr($ymd, 0, 4);
    }
    
    function decode_ymd_jam($tanggal) { // 2012-12-31 09:00:12 -> 31 Desember 2012
        $arr = explode(" ", $tanggal);
        $ymd = str_replace('-', '', $arr[0]);
        if (strlen($ymd) != 8)
            return '';
        return intval(substr($ymd, 6, 2)) . ' ' . $this->decode_month(intval(substr($ymd, 4, 2))) . ' ' . substr($ymd, 0, 4);
    }

    function decode_my($my) { // 11-2012 -> November 2012
        if (strlen($my) != 7)
            return '';
        return $this->decode_month(intval(substr($my, 0, 2))) . ' ' . substr($my, 3, 4);
    }

    function telnet($ip, $port, $command) {
        error_reporting(E_ALL && ~E_NOTICE); // supaya error PHP bisa di-override
        $arr = array();
        $fp = fsockopen($ip, $port, $errno, $errstr, 10);
        if (!$fp) {
            $arr[0] = 'f'; // gagal
            //$arr[1] = "$errstr ($errno)";
        } else {
            fwrite($fp, $command . "\r\n\r\n");
            $result = '';
            while (!feof($fp)) {
                $result .= fgets($fp, 128);
            }
            fclose($fp);
            $arr[0] = 't'; // berhasil
            $arr[1] = $result;
        }
        return $arr;
    }

    //Generate a random n character A-Z0-9 string
    function my_rand($num_digit) {
        $str = '';
        for ($i = 0; $i < $num_digit; $i++) {
            $d = rand(1, 30) % 2;
            $str .= $d ? chr(rand(65, 90)) : chr(rand(48, 57));
        }
        return $str;
    }

    //Generate a random n digit numeric 0-9
    function my_rand_number($num_digit) {
        $str = '';
        for ($i = 0; $i < $num_digit; $i++) {
            $str .= chr(rand(48, 57));
        }
        return $str;
    }

    function msisdn62($msisdn) {
        if (substr($msisdn, 0, 1) === '0') // triple equal, memastikan tipe data adalah string
            return '62' . substr($msisdn, 1);
        return $msisdn;
    }

    function number_format_ind($str, $return_0 = false) {
        if (strlen($str) == 0 || !is_numeric($str)) {
            if ($return_0)
                return '0';
            return '';
        }
        // string number_format ( float $number , int $decimals = 0 , string $dec_point = '.' , string $thousands_sep = ',' )
        return number_format($str, 0, ',', '.');
    }

    function percent_ind($str) {
        if (strlen($str) == 0 || !is_numeric($str))
            return '';
        // string number_format ( float $number , int $decimals = 0 , string $dec_point = '.' , string $thousands_sep = ',' )
        return number_format($str * 100, 2, ',', '.') . ' %';
    }

    function percent_round($str) {
        if (strlen($str) == 0 || !is_numeric($str))
            return '';
        // string number_format ( float $number , int $decimals = 0 , string $dec_point = '.' , string $thousands_sep = ',' )
        return number_format($str * 100, 0, ',', '.');
    }

    function get_num_days($dmy1, $dmy2) { // input dd-mm-yyyy
        if (strlen($dmy1) == 0 || strlen($dmy2) == 0)
            return 0;
        $arr1 = explode('-', $dmy1);
        $arr2 = explode('-', $dmy2);
        $mktime1 = mktime(0, 0, 0, intval($arr1[1]), intval($arr1[0]), intval($arr1[2]));
        $mktime2 = mktime(0, 0, 0, intval($arr2[1]), intval($arr2[0]), intval($arr2[2]));
        $diff = $mktime2 - $mktime1;
        return ($diff / 86400) + 1; // ditambah satu karena untuk mencari jumlah hari, misal antara tgl 25 dan 27 berjumlah 3 hari
    }

    function get_mysql_date() {
        return date('Y-m-d H:i:s');
    }

    function add_days($dmy, $num) { // input dd-mm-yyyy
        $arr = explode('-', $dmy);
        $mktime = mktime(0, 0, 0, intval($arr[1]), intval($arr[0]) + $num, intval($arr[2]));
        return date('d-m-Y', $mktime);
    }

    function add_days_ymd($ymd, $num) { // input yyyymmdd
        $year = substr($ymd, 0, 4);
        $month = substr($ymd, 4, 2);
        $day = substr($ymd, 6, 2);
        $mktime = mktime(0, 0, 0, intval($month), intval($day) + $num, intval($year));
        return date('Ymd', $mktime);
    }

    function is_valid_dmy($dmy) { // input dd-mm-yyyy
        $a = explode('-', $dmy);
        if (count($a) != 3)
            return false;
        if (strlen($a[0]) != 2 || strlen($a[1]) != 2 || strlen($a[2]) != 4)
            return false;
        if (!ctype_digit($a[0]) || !ctype_digit($a[1]) || !ctype_digit($a[2]))
            return false;
        if (checkdate(intval($a[1]), intval($a[0]), $a[2]))
            return true;
        return false;
    }

    function is_valid_hhmm($hhmm) {
        if (strlen($hhmm) != 5)
            return false;
        $a = explode(':', $hhmm);
        if (count($a) != 2)
            return false;
        if (strlen($a[0]) != 2 || strlen($a[1]) != 2)
            return false;
        if (!ctype_digit($a[0]) || !ctype_digit($a[1]))
            return false;
        if (intval($a[0]) < 0 || intval($a[0]) > 23) // jam
            return false;
        if (intval($a[1]) < 0 || intval($a[1]) > 59) // menit
            return false;
        return true;
    }

    function is_valid_email($str) {
        return (!preg_match("/^([a-z0-9\+_\-]+)(\.[a-z0-9\+_\-]+)*@([a-z0-9\-]+\.)+[a-z]{2,6}$/ix", $str)) ? false : true;
    }

    function is_authorized_ip($ip) {
        if (substr($ip, 0, 6) == '10.98.')
            return true;
        if (substr($ip, 0, 9) == '198.11.3.')
            return true;
        return false;
    }

    function is_valid_ip($str) {
        $a = explode(".", $str);
        if (count($a) != 4)
            return false;
        if (!ctype_digit($a[0]) || !ctype_digit($a[1]) || !ctype_digit($a[2]) || !ctype_digit($a[3]))
            return false;
        for ($i = 0; $i < 4; $i++) {
            if ($a[$i] < 0 || $a[$i] > 255)
                return false;
        }
        return true;
    }

    function get_host() {
        $pc = '';
        if (isset($_SERVER['HTTP_X_FORWARDED_FOR'])) {
            // echo "Proxy yang anda gunakan...<br><br>"; 
            // echo "Terhubung melalui : " . $HTTP_VIA . " - " . $REMOTE_ADDR; 
            // echo "<br>IP kamu: " . $HTTP_X_FORWARDED_FOR;
            $pc = @$_SERVER['HTTP_VIA'] . '-' . @$_SERVER['REMOTE_ADDR'] . '-' . @$_SERVER['HTTP_X_FORWARDED_FOR'];
        } else {
            $host = gethostbyaddr(@$_SERVER['REMOTE_ADDR']);
            $pc = @$_SERVER['REMOTE_ADDR'] . ' - ' . $host;
            if (@$_SERVER['REMOTE_ADDR'] == $host)
                $pc = $host;
        }
        return $pc;
    }

    function is_valid_password($password) {
        if (strlen($password) < MIN_LENGTH_PASSWORD)
            return false;
        if (!ctype_alnum($password))
            return false;
        return true;
    }

    // jika null atau string kosong, convert jadi 0
    function nval($val) {
        if (strlen($val) == 0)
            return 0;
        return $val;
    }

    // input: trans_date 0424233618 (mmddhhmiss)
    function add_hour($input, $num_hour) {
        if (strlen($input) != 10)
            return '';
        $hour = substr($input, 4, 2);
        $hour += $num_hour;
        if (intval($hour) < 0)
            $hour += 24;
        elseif (intval($hour) >= 24)
            $hour -= 24;
        return sprintf("%02s", $hour) . ':' . substr($input, 6, 2) . ':' . substr($input, 8, 2);
    }

    function combo_year($id, $selected, $start, $end, $added_attribute = '') {
        $acc = '<select id="' . $id . '"' . (strlen($added_attribute) > 0 ? ' ' . $added_attribute : '');
        $acc .= '>';

        $x = date('Y') + $start;
        $y = date('Y') + $end;

        for ($i = $x; $i <= $y; $i++) {
            $acc .= '<option value="' . $i . '"';
            if ($i == $selected)
                $acc .= ' selected="selected"';
            $acc .= '>' . $i . '</option>';
        }
        $acc .= '</select>';
        return $acc;
    }

    function combo_month($id, $start = 1, $end = 12, $selected = 0) {
        $arr = array('', 'Januari', 'Februari', 'Maret', 'April', 'Mei', 'Juni', 'Juli', 'Agustus', 'September', 'Oktober', 'November', 'Desember');
        $acc = '<select id="' . $id . '">';
        for ($i = $start; $i <= $end; $i++) {
            $acc .= '<option value="' . $i . '"';
            if ($i == $selected)
                $acc .= ' selected="selected"';
            $acc .= '>' . $arr[$i] . '</option>';
        }
        $acc .= '</select>';
        return $acc;
    }

    function filter($string) {
        $string = trim(str_replace("'", '', $string));
        return $string;
    }

    function set_2digit_num($str) {
        return sprintf("%02s", intval($str));
    }

    function is_positive_int($str) {
        return (intval($str) > 0 && ctype_digit($str));
    }

    function array_to_comma_delimited($arr) {
        $str = '';
        foreach ($arr as $val) {
            $str .= $val . ','; // contoh: 4,5,7,12,20,
        }
        return substr($str, 0, strlen($str) - 1); // hilangkan koma terakhir
    }

    function limit_char($string, $limit) {
        if (strlen($string) <= $limit)
            return $string;
        return substr($string, 0, $limit) . ' .....';
    }

    function get_max_day($month, $year) {
        if ($month == 2 && $year % 4 == 0)
            return 29;
        elseif ($month == 2)
            return 28;
        elseif (in_array($month, array(3, 5, 6, 9, 11)))
            return 30;
        else
            return 31;
    }

    function format_hour($hour) {
        $hour = intval($hour);
        if ($hour >= 10)
            return $hour . ':00';
        else
            return '0' . $hour . ':00';
    }

    function common_log($msg) {
        $filepath = '/var/www/htdocs/pgn-logs/log-' . date('Y-m-d') . '.php';
        $message = '';
        if (!file_exists($filepath)) {
            $message .= "<" . "?php  if ( ! defined('BASEPATH')) exit('No direct script access allowed'); ?" . ">\r\n\r\n";
        }
        $message .= date('H:i:m') . ': ' . $msg . "\r\n";


        /*
          if ( ! $fp = fopen($filepath, 'ab')) {
          die('jjo');
          }
          //flock($fp, LOCK_EX);
          fwrite($fp, $message);
          //flock($fp, LOCK_UN);
          fclose($fp);
         */

        @file_put_contents($filepath, $message, FILE_APPEND);

        return TRUE;
    }

    function generateRandomString($length = 10) {
        $characters = '0123456789abcdefghijklmnopqrstuvwxyz';
        $randomString = '';
        for ($i = 0; $i < $length; $i++) {
            $randomString .= $characters[rand(0, strlen($characters) - 1)];
        }
        return $randomString;
    }

    function get_m_from_mysql_datetime($string_yyyy_mm_dd) { // 2012-12-31 09:00:12 -> 31-12-2012
        $arr = explode('-', $string_yyyy_mm_dd);
        return $arr[1];
    }

    function roman_numeral($integer, $upcase = true) {
        $table = array('M' => 1000, 'CM' => 900, 'D' => 500, 'CD' => 400, 'C' => 100, 'XC' => 90, 'L' => 50, 'XL' => 40, 'X' => 10, 'IX' => 9, 'V' => 5, 'IV' => 4, 'I' => 1);
        $return = '';
        while ($integer > 0):
            foreach ($table as $rom => $arb):
                if ($integer >= $arb):
                    $integer -= $arb;
                    $return .= $rom;
                    break;
                endif;
            endforeach;
        endwhile;
        return $return;
    }
    function format_hundreds($number){
        if (strlen($number) == 1):
            $returnval = "00".$number;
        elseif (strlen($number) == 2):
            $returnval = "0".$number;
        elseif (strlen($number) == 3):
            $returnval = $number;
        endif;
        return $returnval;
    }
}
?>
