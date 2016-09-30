<?php  if ( ! defined('BASEPATH')) exit('No direct script access allowed');
/**
    
 */
if ( ! function_exists('acquis_encoder'))
{
	function acquis_encoder($action, $string) {
	$output = false;
        $CI =& get_instance();
        $CI->load->config('acquis');
	$key = $CI->config->item('salt_base64');

	// initialization vector 
	$iv = md5(md5($key));

	if( $action == 'encrypt' ) {
            $output = mcrypt_encrypt(MCRYPT_RIJNDAEL_256, md5($key), $string, MCRYPT_MODE_CBC, $iv);
            $output = base64_encode($output);
            $output = str_replace(array('/'),array('@'),$output);
        }
	else if( $action == 'decrypt' ){
            $string = str_replace(array('@'),array('/'),$string);
            $output = mcrypt_decrypt(MCRYPT_RIJNDAEL_256, md5($key), base64_decode($string), MCRYPT_MODE_CBC, $iv);
            $output = rtrim($output, "");
	}
            return $output;
        }
}
if ( ! function_exists('sha1_hash')){
    function sha1_hash($string){
        $hash = sha1($string);
        return $hash;
    }
}
if (!function_exists('striphtmltags')){
    function striphtmltags($str)
    {
        $t = preg_replace('/<[^<|>]+?>/', '', htmlspecialchars_decode($str));
        $t = htmlentities($t, ENT_QUOTES, "UTF-8");
        return $t;
    }
}
if ( ! function_exists('getCurrentStringTime'))
{
    function getCurrentStringTime() {
        date_default_timezone_set('Asia/Jakarta');
        $currentstringtime = strtotime("NOW");
        return $currentstringtime;
    }
}
if ( ! function_exists('getCurrentYYYY'))
{
    function getCurrentYYYY() {
        date_default_timezone_set('Asia/Jakarta');
        $currentYYYY = date("Y");
        return $currentYYYY;
    }
}
if ( ! function_exists('getCurrentMM'))
{
    function getCurrentMM() {
        date_default_timezone_set('Asia/Jakarta');
        $currentMM = date("m");
        return $currentMM;
    }
}
if ( ! function_exists('getCurrentDD'))
{
    function getCurrentDD() {
        date_default_timezone_set('Asia/Jakarta');
        $currentDD = date("d");
        return $currentDD;
    }
}
if ( ! function_exists('getCurrentYYYYMM'))
{
    function getCurrentYYYYMM() {
        date_default_timezone_set('Asia/Jakarta');
        $currentDD = date("Y-m");
        return $currentDD;
    }
}
if ( ! function_exists('getCurrentYYYYMMDD'))
{
    function getCurrentYYYYMMDD() {
        date_default_timezone_set('Asia/Jakarta');
        $current_date = date("Y-m-d");
        return $current_date;
    }
}