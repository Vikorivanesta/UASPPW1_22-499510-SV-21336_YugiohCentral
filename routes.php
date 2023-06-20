<?php

require_once __DIR__.'/router.php';

// ##################################################
// ##################################################
// ##################################################

// Static GET
any('/', 'index.php');
any('/cardDatabase', 'cardList.php');
any('/Login', 'login.php');
