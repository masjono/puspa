<?php  if ( ! defined('BASEPATH')) exit('No direct script access allowed');  
/* 
| ------------------------------------------------------------------- 
| EMAIL CONFIG 
| ------------------------------------------------------------------- 
| Konfigurasi email keluar melalui mail server
| */  
$config['protocol']='smtp';  
$config['smtp_host']='ssl://smtp.mail.yahoo.com';  
$config['smtp_port']='465';  
//$config['smtp_timeout']='30';  
$config['smtp_user']='acquisdev@yahoo.com';  
$config['smtp_pass']='malloci123';  
$config['charset']='iso-8859-1';  
$config['newline']="\r\n"; 
$config['mailtype']="html"; 
$config['wordwrap']=TRUE;
$config['alias_sender']="E-Procurement PT. Gapura Angkasa";

   
/* End of file email.php */ 
/* Location: ./system/application/config/email.php */