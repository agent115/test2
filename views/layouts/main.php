<?php

/* @var $this \yii\web\View */
/* @var $content string */

//use yii\helpers\Html;
//use yii\bootstrap\Nav;
//use yii\bootstrap\NavBar;
//use yii\widgets\Breadcrumbs;
use app\assets\AppAsset;
use yii\helpers\Html;


AppAsset::register($this);
?>

<?php $this->beginPage() ?>
<!DOCTYPE html>


<head>

    <meta charset="utf-8">


    <meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1">

    <meta name="description" content="">
    <meta name="viewport" content="width=device-width">


    <?php $this->head() ?>
</head>
<body>
<!--[if lt IE 7]>
<p class="chromeframe">You are using an <strong>outdated</strong> browser. Please <a href="http://browsehappy.com/">upgrade
    your browser</a> or <a href="http://www.google.com/chromeframe/?redirect=true">activate Google Chrome Frame</a> to
    improve your experience.</p>
<![endif]-->

<?php $this->beginBody() ?>
<!-- Navigation & Logo-->
<div class="mainmenu-wrapper">

    <div class="container">

        <div class="menuextras">
            <div class="extras">
                <ul>
                    <form method="get" action="<?= \yii\helpers\Url::to(['category/search']) ?>">
                        <input type="text" placeholder="ПОИСК" name="q">
                    </form>
                    <?php if (\Yii::$app->user->identity->username == 'Manager'): ?>
                        <li><a href="<?= \yii\helpers\Url::to(['/admin']) ?>">Admin</a></li>
                    <?php endif; ?>
                    <?php if (Yii::$app->user->isGuest): ?>
                        <li><a href="<?= \yii\helpers\Url::to(['site/login']) ?>">Вход</a></li>
                        <li><a href="<?= \yii\helpers\Url::to(['site/signup']) ?>">Регистрация</a></li>
                    <?php endif; ?>
                    <?php if (!Yii::$app->user->isGuest): ?>
                        <li><a href="<?= yii\helpers\Url::to(['/site/logout']) ?>"><i
                                    class="fa fa-user"></i> <?= Yii::$app->user->identity['username'] ?> (Выход)</a>
                        </li>

                    <?php endif; ?>


                </ul>
            </div>
        </div>
        <a href="<?= yii\helpers\Url::home() ?> "><?= Html::img("@web/images/logo.png", ['id' => 'logo','class'=>'text-center']) ?></a>
        <nav id="mainmenu" class="mainmenu navbar navbar-default main" >

            <div class="container-fluid">

                <!-- Brand and toggle get grouped for better mobile display -->
                <div class="navbar-header">
                    <button type="button" class="navbar-toggle collapsed" data-toggle="collapse" data-target="#bs-example-navbar-collapse-1" aria-expanded="false">
                        <span class="sr-only">Toggle navigation</span>
                        <span class="icon-bar"></span>
                        <span class="icon-bar"></span>
                        <span class="icon-bar"></span>
                    </button>

                </div>
            <div class="collapse navbar-collapse" id="bs-example-navbar-collapse-1">
            <ul class="nav navbar-nav">

                <li class="active">
                    <a href="<?= \yii\helpers\Url::to(['category/index'])?>">ГЛАВНАЯ</a>
                </li>
                <li>
                    <a href="<?= \yii\helpers\Url::to(['/category/categ']) ?>">КАТЕГОРИИ</a>
                </li>

                <li>
                    <a href="<?= \yii\helpers\Url::to(['/site/contact']) ?>">ОБРАТНАЯ СВЯЗЬ</a>
                </li>
            </ul>
            </div>
        </nav>


    </div>
</div>


<?= $content ?>
<!-- Footer -->
<div class="footer">
    <div class="container">
        <div class="row">
            <div class="col-footer col-md-3 col-xs-6">

            </div>
            <div class="row">
                <div class="col-md-12">
                    <div class="footer-copyright"> Справочник - Мой Владикавказ &copy; 2016</div>
                </div>
            </div>
        </div>
    </div>



    <?php $this->endBody() ?>
</body>

</html>
<?php $this->endPage() ?>

