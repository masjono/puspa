<?php  if ( ! defined('BASEPATH')) exit('No direct script access allowed');
/**
    
 */
if ( ! function_exists('check_for_intersect'))
{
	function check_for_intersect($a, $b) {
            $c = array_flip($a);
            foreach ($b as $v) :
                if (isset($c[$v])):
                    return true;
                endif;
            endforeach;
            return false;
        }
}