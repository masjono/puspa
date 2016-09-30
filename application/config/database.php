<?php  if ( ! defined('BASEPATH')) exit('No direct script access allowed');
/*
| -------------------------------------------------------------------
| DATABASE CONNECTIVITY SETTINGS
| -------------------------------------------------------------------
| This file will contain the settings needed to access your database.
|
| For complete instructions please consult the 'Database Connection'
| page of the User Guide.
|
| -------------------------------------------------------------------
| EXPLANATION OF VARIABLES
| -------------------------------------------------------------------
|
|	['hostname'] The hostname of your database server.
|	['username'] The username used to connect to the database
|	['password'] The password used to connect to the database
|	['database'] The name of the database you want to connect to
|	['dbdriver'] The database type. ie: mysql.  Currently supported:
				 mysql, mysqli, postgre, odbc, mssql, sqlite, oci8
|	['dbprefix'] You can add an optional prefix, which will be added
|				 to the table name when using the  Active Record class
|	['pconnect'] TRUE/FALSE - Whether to use a persistent connection
|	['db_debug'] TRUE/FALSE - Whether database errors should be displayed.
|	['cache_on'] TRUE/FALSE - Enables/disables query caching
|	['cachedir'] The path to the folder where cache files should be stored
|	['char_set'] The character set used in communicating with the database
|	['dbcollat'] The character collation used in communicating with the database
|				 NOTE: For MySQL and MySQLi databases, this setting is only used
| 				 as a backup if your server is running PHP < 5.2.3 or MySQL < 5.0.7
|				 (and in table creation queries made with DB Forge).
| 				 There is an incompatibility in PHP with mysql_real_escape_string() which
| 				 can make your site vulnerable to SQL injection if you are using a
| 				 multi-byte character set and are running versions lower than these.
| 				 Sites using Latin-1 or UTF-8 database character set and collation are unaffected.
|	['swap_pre'] A default table prefix that should be swapped with the dbprefix
|	['autoinit'] Whether or not to automatically initialize the database.
|	['stricton'] TRUE/FALSE - forces 'Strict Mode' connections
|							- good for ensuring strict SQL while developing
|
| The $active_group variable lets you choose which connection group to
| make active.  By default there is only one group (the 'default' group).
|
| The $active_record variables lets you determine whether or not to load
| the active record class
*/

$active_group = 'mysql';
$active_record = TRUE;

// $db['mssql1']['hostname'] = 'avemasterdata';
// $db['mssql1']['username'] = 'sa';
// $db['mssql1']['password'] = 'a';
// $db['mssql1']['database'] = 'avemasterdata';
// $db['mssql1']['dbdriver'] = 'odbc';
// $db['mssql1']['dbprefix'] = '';
// $db['mssql1']['pconnect'] = TRUE;
// $db['mssql1']['db_debug'] = FALSE;
// $db['mssql1']['cache_on'] = FALSE;
// $db['mssql1']['cachedir'] = '';
// $db['mssql1']['char_set'] = 'utf8';
// $db['mssql1']['dbcollat'] = 'utf8_general_ci';
// $db['mssql1']['swap_pre'] = '';
// $db['mssql1']['autoinit'] = TRUE;
// $db['mssql1']['stricton'] = FALSE;


// $db['mssql2']['hostname'] = 'aveoperatingdata';
// $db['mssql2']['username'] = 'sa';
// $db['mssql2']['password'] = 'a';
// $db['mssql2']['database'] = 'aveoperatingdata';
// $db['mssql2']['dbdriver'] = 'odbc';
// $db['mssql2']['dbprefix'] = '';
// $db['mssql2']['pconnect'] = TRUE;
// $db['mssql2']['db_debug'] = FALSE;
// $db['mssql2']['cache_on'] = FALSE;
// $db['mssql2']['cachedir'] = '';
// $db['mssql2']['char_set'] = 'utf8';
// $db['mssql2']['dbcollat'] = 'utf8_general_ci';
// $db['mssql2']['swap_pre'] = '';
// $db['mssql2']['autoinit'] = TRUE;
// $db['mssql2']['stricton'] = FALSE;


$db['mysql']['hostname'] = 'localhost';
$db['mysql']['username'] = 'root';
$db['mysql']['password'] = '';
$db['mysql']['database'] = 'asadb';
$db['mysql']['dbdriver'] = 'mysql';
$db['mysql']['dbprefix'] = '';
$db['mysql']['pconnect'] = TRUE;
$db['mysql']['db_debug'] = TRUE;
$db['mysql']['cache_on'] = FALSE;
$db['mysql']['cachedir'] = '';
$db['mysql']['char_set'] = 'utf8';
$db['mysql']['dbcollat'] = 'utf8_general_ci';
$db['mysql']['swap_pre'] = '';
$db['mysql']['autoinit'] = TRUE;
$db['mysql']['stricton'] = FALSE;


// $db['ora']['hostname'] = '(DESCRIPTION =(ADDRESS_LIST =(ADDRESS = (PROTOCOL = TCP)(HOST = 192.168.12.21)(PORT = 1521)))(CONNECT_DATA =(SERVICE_NAME = XE)))';
// $db['ora']['username'] = 'amrdashboard';
// $db['ora']['password'] = '1234';
// $db['ora']['database'] = '';
// $db['ora']['dbdriver'] = 'oci8';
// $db['ora']['dbprefix'] = '';
// $db['ora']['pconnect'] = TRUE;
// $db['ora']['db_debug'] = FALSE;
// $db['ora']['cache_on'] = FALSE;
// $db['ora']['cachedir'] = '';
// $db['ora']['char_set'] = 'utf8';
// $db['ora']['dbcollat'] = 'utf8_general_ci';
// $db['ora']['swap_pre'] = '';
// $db['ora']['autoinit'] = TRUE;
// $db['ora']['stricton'] = FALSE;


/* End of file database.php */
/* Location: ./application/config/database.php */