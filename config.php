<?php
require 'environment.php';

define("BASE", "http://localhost/ead/");//url raiz do projeto/

$config = array();

if(ENVIRONMENT == 'development') {
	define("BASE_URL", "http://localhost/ead/");
	$config['dbname'] = 'ead';
	$config['host'] = 'localhost';
	$config['dbuser'] = 'root';
	$config['dbpass'] = '';
} else {
	define("BASE_URL", "http://ead.awregulagens.com.br/");
	$config['dbname'] = 'ead-mysql';
	$config['host'] = '108.181.92.71';
	$config['dbuser'] = 'carlosaw';
	$config['dbpass'] = 'N1e2c3a4mysql';
}

global $db;
try {
	$db = new PDO("mysql:dbname=".$config['dbname'].";host=".$config['host'],$config['dbuser'],$config['dbpass']);
} catch(PDOException $e) {
	echo "ERRO: ".$e->getMessage();
	exit;
}

?>