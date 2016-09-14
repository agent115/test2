<?php

namespace app\controllers;

use yii\models\User;
use yii\web\Controller;
use yii\filters\AccessControl;

/**
 * Default controller for the `admin` module
 */
class AppAdminController extends Controller
{


    public function behaviors()
    {
        return [
            'access' => [
                'class' => AccessControl::className(),

                'rules' => [
                    [
                        'allow' => true,

                        'roles' => ['@'],
                    ],

                ],
            ],
        ];
    }

}
