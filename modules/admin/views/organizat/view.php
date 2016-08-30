<?php

use yii\helpers\Html;
use yii\widgets\DetailView;

/* @var $this yii\web\View */
/* @var $model app\modules\admin\models\Organizat */

$this->title = $model->name;
$this->params['breadcrumbs'][] = ['label' => 'Organizats', 'url' => ['index']];
$this->params['breadcrumbs'][] = $this->title;
?>
<div class="organizat-view">

    <h1><?= Html::encode($this->title) ?></h1>

    <p>
        <?= Html::a('Update', ['update', 'id' => $model->id], ['class' => 'btn btn-primary']) ?>
        <?= Html::a('Delete', ['delete', 'id' => $model->id], [
            'class' => 'btn btn-danger',
            'data' => [
                'confirm' => 'Are you sure you want to delete this item?',
                'method' => 'post',
            ],
        ]) ?>
    </p>

    <?= DetailView::widget([
        'model' => $model,
        'attributes' => [
            'id',
            /*'category_id',*/
            ['attribute'=>'category_id',
            'value'=>function($data){
                return $data->Category->name;
            },
                ],
            'name',
            'phone',
            'phone_2',
            'adress',
            'mars',
            'grafic',
            'keywords',
            'description',
            'logo',
            'images',
        ],
    ]) ?>

</div>
