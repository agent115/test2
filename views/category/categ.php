<title>Категории</title>
<?php
use yii\helpers\Html;

//use yii\helpers\Url;

?>

<ul class="breadcrumb">
    <li><a href="<?= \yii\helpers\Url::home() ?>"><i class="glyphicon glyphicon-home"> </i> Главная</a> <span
            class="divider">/</span></li>
    <li>категории</li>

</ul>
<div class="section" id="cats">
    <div class="container">
        <div class="row">
            <?php foreach ($category as $cat): ?>

                <div class="col-md-4 col-sm-6">

                    <div class="service-wrapper">
                        <a href="<?= \yii\helpers\Url::to(['category/view', 'id' => $cat['id']]) ?>"> <?= Html::img("@web/{$cat-> description}", ['class' => 'img']) ?></a>
                        <h3>
                            <a href="<?= \yii\helpers\Url::to(['category/view', 'id' => $cat['id']]) ?>"><?= $cat->name; ?></a>
                        </h3>


                    </div>

                </div>
            <?php endforeach; ?>

        </div>
    </div>
</div>