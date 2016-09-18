<?php

$params = require(__DIR__ . '/params.php');

'components' => [
    'comment' => [
        'class' => 'yii2mod\comments\Module'
    ],
    'controllerMap' => [
        'comments' => 'yii2mod\comments\controllers\ManageController',


    ],

    'mailer' => [
        'class' => 'yii\swiftmailer\Mailer'
    ]
];
$ip = $_SERVER['REMOTE_ADDR'];
//.....
'params => $params,
//....

