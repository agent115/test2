<?php

use yii\helpers\Html;
use app\components\MenuWidget;

/* @var $this yii\web\View */
/* @var $model app\modules\admin\models\Organizat */

$this->title = 'Create Organizat';
$this->params['breadcrumbs'][] = ['label' => 'Organizats', 'url' => ['index']];
$this->params['breadcrumbs'][] = $this->title;
?>
<div class="organizat-create">

    <h1><?= Html::encode($this->title) ?></h1>

    <?= $this->render('_form', [
        'model' => $model,
    ]) ?>

</div>
