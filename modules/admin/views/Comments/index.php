<?php

use yii\helpers\Html;
use yii\grid\GridView;

/* @var $this yii\web\View */
/* @var $dataProvider yii\data\ActiveDataProvider */

$this->title = 'Comments';
$this->params['breadcrumbs'][] = $this->title;
?>
<div class="comments-index container">

    <h1><?= Html::encode($this->title) ?></h1>

    <p>

        <button  type="button" class="btn btn-primary"><a href="<?= \yii\helpers\Url::to(['category/index'])?>">Категории</a></button>
        <button  type="button" class="btn btn-primary"><a href="<?= \yii\helpers\Url::to(['maps/index'])?>">Отметка на карте</a></button>
        <button  type="button" class="btn btn-primary"><a href="<?= \yii\helpers\Url::to(['organizat/index'])?>">Организации</a></button>

    </p>
    <?= GridView::widget([
        'dataProvider' => $dataProvider,
        'columns' => [
            ['class' => 'yii\grid\SerialColumn'],

            'comment_id',
            'comment_author',
            'comment_text:ntext',
            'parent',
            'approver',
            // 'comment_product',
            // 'created',
            // 'is_admin',

            ['class' => 'yii\grid\ActionColumn'],
        ],
    ]); ?>
</div>
