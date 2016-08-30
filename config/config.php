<?php

$params = require(__DIR__ . '/params.php');

'components' => [
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

