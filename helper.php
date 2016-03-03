<?php
echo in_array('mod_rewrite', apache_get_modules());


function t($str){
  return gettext($str);
}
$code = 'en';
if (isset($_GET["locale"])) {
  // $locale = $_GET["locale"];
  $code = $_GET["locale"];
  switch ($code) {
  	case 'es':
  		$locale = 'es_ES.utf8';
  		break;
  	case 'vn':
  		$locale = 'vi_VN.utf8';
  		break;
  	default:
  		$locale = 'en_US.utf8';
  		break;
  }  
  // putenv("LANG=$locale");
  setlocale(LC_MESSAGES, $locale);
  bindtextdomain("messages", dirname(__FILE__)."/lang");
  textdomain("messages");
  bind_textdomain_codeset('messages', 'UTF-8');
}

?>