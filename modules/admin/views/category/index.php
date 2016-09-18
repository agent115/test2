<?php

use yii\helpers\Html;
use yii\grid\GridView;

/* @var $this yii\web\View */
/* @var $dataProvider yii\data\ActiveDataProvider */


$this->params['breadcrumbs'][] = $this->title;
?>

<?php if (\Yii::$app->user->identity->username == 'Manager'): ?>
    <div class="category-index container">
        <title>Админка</title>
        <h1><?= Html::encode($this->title) ?></h1>

        <p>


            <?= Html::a('Добавить категорию', ['create'], ['class' => 'btn btn-success',]) ?>


            <button type="button" class="btn btn-primary"><a href="<?= \yii\helpers\Url::to(['organizat/index']) ?>">Организации</a>
            </button>
            <button type="button" class="btn btn-primary"><a href="<?= \yii\helpers\Url::to(['maps/index']) ?>">Отметка
                    на карте</a></button>
            <button type="button" class="btn btn-primary"><a href="<?= \yii\helpers\Url::to(['comments/index']) ?>">Комментарии</a>
            </button>
        </p>
        <?= GridView::widget([
            'dataProvider' => $dataProvider,
            'columns' => [
                ['class' => 'yii\grid\SerialColumn'],

                'id',
                /* 'parent_id',*/
                /*['attribute'=> 'parent_id',
                'valuer'=> $data->category->name;
                    ],*/
                'name',
                //'keywords',
                //'description',

                ['class' => 'yii\grid\ActionColumn'],
            ],
        ]); ?>
    </div>
<?php else: ?>
    <?php \yii\helpers\Url::home() ?>
    <h1>Ты не АДМИН</h1>
<? endif; ?>