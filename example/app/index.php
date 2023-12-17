<?php
declare(strict_types=1);

use Whoops\Run as Whoops;
use Whoops\Handler\PrettyPageHandler;

require_once __DIR__.'/vendor/autoload.php';

// bootstrap
ini_set('display_startup_errors', 1);
ini_set('display_errors', 1);
error_reporting(-1);
mb_internal_encoding('UTF-8');
date_default_timezone_set('UTC');
setlocale(LC_ALL, 'en_US.utf8', 'en_US', 'C.UTF-8');

$whoops = new Whoops();
$whoops->pushHandler(new PrettyPageHandler);
$whoops->register();

// hello world
echo 'Hello, World!';
