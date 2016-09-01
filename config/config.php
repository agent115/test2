<?php

$params = require(__DIR__ . '/params.php');

'components' => [
    'comment' => [
        'class' => 'yii2mod\comments\Module'
    ],
    'controllerMap' => [
        'comments' => 'yii2mod\comments\controllers\ManageController'
    ] ,
 'authManager' => [
            'class' => 'yii\rbac\DbManager', // or use 'yii\rbac\DbManager'
        ],
    'mailer' => [
            'class' => 'yii\swiftmailer\Mailer'
            ]
]
//.....
'params => $params,
//....

