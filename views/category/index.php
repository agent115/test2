<title>Главная - Мой Владикавказ</title>
<?php
use yii\helpers\Html;

//use yii\helpers\Url;

?>

<script src="https://api-maps.yandex.ru/2.1/?lang=ru_RU" type="text/javascript"></script>
<script>
    ymaps.ready(init);
    var myMap,
        myPlacemark;

    function init() {
        myMap = new ymaps.Map("map", {
            center: [43.00076082, 44.68593824],
            zoom: 12
        });

     <?php foreach ($maps as $map):?>
        myPlacemark<?= $map->id?> = new ymaps.Placemark([<?= $map->maps?>], {
            balloonContentHeader: '<?= $map->title ?> ',

            balloonContentBody: 'Адрес <a href="<?= $map->link?>">ССылка</a>',
        }, {
            // Опции.
            // Необходимо указать данный тип макета.
            iconLayout: 'default#image',
            // Своё изображение иконки метки.
            iconImageHref: '<?= $map->images?>',
            // Размеры метки.
            iconImageSize: [30, 30],
            // Смещение левого верхнего угла иконки относительно
            // её "ножки" (точки привязки).
            iconImageOffset: [-3, -42]
        });

        myMap.geoObjects.add(myPlacemark<?= $map->id?>);

        <?php endforeach;?>
    }


</script>
<?php $this->title = 'Главная' ?>
<section>
    <div class=".container-fluid">
        <div id="map"
             style="width: 100%; height: 400px; position: relative; overflow: hidden; transform: translateZ(0px); background-color: rgb(229, 227, 223);">
            <!--  <script type="text/javascript" charset="utf-8" src="https://api-maps.yandex.ru/services/constructor/1.0/js/?sid=29uD3jKC-8XFdTlfCwkxSmnSQkYPbrYH"></script> -->


        </div>
    </div>
</section>
<div class="container">
    <div class="row">
        <div class="col-md-8 col-md-offset-2">
            <form method="get" action="<?= \yii\helpers\Url::to(['category/search']) ?>">
                <input type="text" placeholder="ПОИСК" name="q" id="poisc">
                <button type="submite" class="btn btn-primary" style="padding-bottom:12px;padding-top:12px;"><b>НАЙТИ
                        ОРГАНИЗАЦИЮ</b></button>
            </form>
        </div>
    </div>
</div>

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
