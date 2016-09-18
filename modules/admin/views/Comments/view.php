<?php

use yii\helpers\Html;
use yii\widgets\DetailView;

/* @var $this yii\web\View */
/* @var $model app\modules\admin\models\Comments */

$this->title = $model->comment_id;
$this->params['breadcrumbs'][] = ['label' => 'Comments', 'url' => ['index']];
$this->params['breadcrumbs'][] = $this->title;
?>
<div class="comments-view container">

    <h1><?= Html::encode($this->title) ?></h1>

    <p>
       <!-- --><?/*= Html::a('Обновить', ['update', 'id' => $model->comment_id], ['class' => 'btn btn-primary']) */?>
        <?= Html::a('Удалить', ['delete', 'id' => $model->comment_id], ['class' => 'btn btn-primary'],[
            'data'=>[
                'confirm'=>'Уверен ?',
            ]
        ]) ?>



       <!-- --><?/*= Html::a('Удалить', ['delete', 'id' => $model->comment_id], [
            'class' => 'btn btn-danger',
            'data' => [
                //'confirm' => 'Уверен ?',
                'method' => 'GET'
            ],
        ]) */?>
    </p>

    <?= DetailView::widget([
        'model' => $model,
        'attributes' => [
            'comment_id',
            'comment_author',
            'comment_text:ntext',
            'parent',
            'approver',
            'comment_product',
            'created',
            'is_admin',
        ],
    ]) ?>

</div>
