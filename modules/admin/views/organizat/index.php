<?php

use yii\helpers\Html;
use yii\grid\GridView;

/* @var $this yii\web\View */
/* @var $dataProvider yii\data\ActiveDataProvider */

$this->title = 'Организации';
$this->params['breadcrumbs'][] = $this->title;
?>
<div class="organizat-index container">

    <h1><?= Html::encode($this->title) ?></h1>

    <p>
        <?= Html::a('Добавить организацию', ['create'], ['class' => 'btn btn-success']) ?>
        <button type="button" class="btn btn-primary"><a href="<?= \yii\helpers\Url::to(['category/index']) ?>">Категории</a>
        </button>
        <button  type="button" class="btn btn-primary"><a href="<?= \yii\helpers\Url::to(['maps/index'])?>">Отметка на карте</a></button>

        <button type="button" class="btn btn-primary"><a href="<?= \yii\helpers\Url::to(['comments/index']) ?>">Комментарии</a>
        </button>
    </p>
    <?= GridView::widget([
        'dataProvider' => $dataProvider,
        'columns' => [
            ['class' => 'yii\grid\SerialColumn'],


            'id',
            'category_id',
            'name',
            'phone',
            //'phone_2',
            // 'adress',
            // 'mars:ntext',
            // 'grafic',
            // 'keywords',
            // 'description',
            // 'logo',
            // 'images',
            // 'maps',

            ['class' => 'yii\grid\ActionColumn'],
        ],
    ]); ?>
</div>
