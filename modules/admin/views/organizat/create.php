<?php

use yii\helpers\Html;


/* @var $this yii\web\View */
/* @var $model app\modules\admin\models\Organizat */

$this->title = 'Добавить организацию';
$this->params['breadcrumbs'][] = ['label' => 'Organizats', 'url' => ['index']];
$this->params['breadcrumbs'][] = $this->title;
?>
<div class="organizat-create container">

    <h1><?= Html::encode($this->title) ?></h1>

    <?= $this->render('_form', [
        'model' => $model,
    ]) ?>

</div>
