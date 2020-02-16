<?php

$database = parse_url(getenv('DATABASE_URL'));
define('DB_NAME', substr($database['path'], 1));
define('DB_USER', $database['user']);
define('DB_PASSWORD', $database['pass']);
define('DB_HOST', $database['host']);
define('DB_PORT', $database['port']);
define('DB_CHARSET', 'utf8mb4');
define('DB_COLLATE', '');
