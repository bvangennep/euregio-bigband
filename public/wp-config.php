<?php

require_once __DIR__.'/../config/db.php';
require_once __DIR__.'/../config/secrets.php';

$table_prefix = 'wp_';
define( 'WP_DEBUG', false );
require_once ABSPATH.'wp-settings.php';
