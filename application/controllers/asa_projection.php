<?php

if (!defined('BASEPATH'))
    exit('No direct script access allowed');

class asa_projection extends CI_Controller {

    //
    public function __construct() {
        session_regenerate_id();
        parent::__construct();
    }

    public function index() {
        $reg_pemasukan =  linear_regression(
                array(1, 2, 3,4,5,6,7,8,9,10,11,12), 
                array(9.0, 5.0, 3.5, 8.4, 13.5, 17.0, 18.6, 17.9, 14.3, 19.0, 23.9, 7.0) );
        
        $reg_pengeluaran =  linear_regression(
                array(1, 2, 3,4,5,6,7,8,9,10,11,12), 
                array(3.9, 4.2, 5.7, 8.5, 11.9, 15.2, 17.0, 16.6, 14.2, 10.3, 6.6, 4.8) );
        
 //               array(3.9, 4.2, 5.7, 8.5, 11.9, 15.2, 17.0, 16.6, 14.2, 10.3, 6.6, 4.8)) );
        
        //var_dump($reg_pemasukan);
        //var_dump($reg_pengeluaran);
        
        $total = 0;
        
        for($i=13;$i<=26;$i++) {
            $total += ($i*$reg_pemasukan['m']+$reg_pemasukan['b']) - ($i*$reg_pengeluaran['m']+$reg_pengeluaran['b'] );
        }
    
        echo 0.75 * $total;
    }

}

/**
 * linear regression function
 * @param $x array x-coords
 * @param $y array y-coords
 * @returns array() m=>slope, b=>intercept
 */
function linear_regression($x, $y) {

  // calculate number points
  $n = count($x);
  
  // ensure both arrays of points are the same size
  if ($n != count($y)) {

    trigger_error("linear_regression(): Number of elements in coordinate arrays do not match.", E_USER_ERROR);
  
  }

  // calculate sums
  $x_sum = array_sum($x);
  $y_sum = array_sum($y);

  $xx_sum = 0;
  $xy_sum = 0;
  
  for($i = 0; $i < $n; $i++) {
  
    $xy_sum+=($x[$i]*$y[$i]);
    $xx_sum+=($x[$i]*$x[$i]);
    
  }
  
  // calculate slope
  $m = (($n * $xy_sum) - ($x_sum * $y_sum)) / (($n * $xx_sum) - ($x_sum * $x_sum));
  
  // calculate intercept
  $b = ($y_sum - ($m * $x_sum)) / $n;
    
  // return result
  return array("m"=>$m, "b"=>$b);

}