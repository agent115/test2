<?php

use yii\helpers\Html;
use yii\widgets\DetailView;

/* @var $this yii\web\View */
/* @var $model app\modules\admin\models\Organizat */

$this->title = $model->name;
$this->params['breadcrumbs'][] = ['label' => 'Organizats', 'url' => ['index']];
$this->params['breadcrumbs'][] = $this->title;
?>
<div class="organizat-view container">

    <h1><?= Html::encode($this->title) ?></h1>

    <p>
        <?= Html::a('Обновит', ['update', 'id' => $model->id], ['class' => 'btn btn-primary']) ?>
        <?= Html::a('Удалить', ['del', 'id' => $model->id], [
            'class' => 'btn btn-danger',
            'data' => [
                //'confirm' => 'Вы уверенный ?',
                'method' => 'post',
            ],
        ]) ?>

    </p>

    <?= DetailView::widget([
        'model' => $model,
        'attributes' => [
            'id',
            'category_id',
            'name',
            'phone',
            'phone_2',
            'adress',
            'mars:ntext',
            'grafic',
            'keywords',
            'description:html',
            'logo',
            'images',
            'maps',
        ],
    ]) ?>

</div>
