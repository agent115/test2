<?php

use yii\helpers\Html;
use yii\grid\GridView;

/* @var $this yii\web\View */
/* @var $dataProvider yii\data\ActiveDataProvider */


$this->params['breadcrumbs'][] = $this->title;
?>
<title>Админка</title>
<div class="organizat-index container">

    <h1><?= Html::encode($this->title) ?></h1>

    <p>
        <?= Html::a('Create Organizat', ['create'], ['class' => 'btn btn-success']) ?>
    </p>
    <?= GridView::widget([
        'dataProvider' => $dataProvider,
        'columns' => [
            ['class' => 'yii\grid\SerialColumn'],

            'id',
            'category_id',
            /*['attribute'=> 'category_id',
            'value'=>function($data){
              return $data->category->name;  
            },
                ],/*/
            'name',
            'phone',
            //'phone_2',
            'adress',
            // 'mars',
            'grafic',
            // 'keywords',
            // 'description',
            // 'logo',
            // 'images',

            ['class' => 'yii\grid\ActionColumn'],
        ],
    ]); ?>
</div>
