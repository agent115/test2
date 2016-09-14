/* ymaps.ready(init);
 var myMap;

 function init(){
 myMap = new ymaps.Map("map", {
 center: [55.75399400, 37.62209300],
 zoom: 7
 });
 }*/


ymaps.ready(init);
var myMap,
    myPlacemark;

function init() {
    myMap = new ymaps.Map("map", {
        center: [43.00076082, 44.68593824],
        zoom: 12
    });

    myPlacemark = new ymaps.Placemark([43.00076082, 44.68593824], {
        balloonContentHeader: 'Продажа Авиа\ЖД билетов!',

        balloonContentBody: 'Адрес <a href="http://agent1156.myjino.ru/web/organizat/1?idd=2">ССылка</a>',
    }, {
        // Опции.
        // Необходимо указать данный тип макета.
        iconLayout: 'default#image',
        // Своё изображение иконки метки.
        iconImageHref: '../web/images/img1.png',
        // Размеры метки.
        iconImageSize: [30, 30],
        // Смещение левого верхнего угла иконки относительно
        // её "ножки" (точки привязки).
        iconImageOffset: [-3, -42]
    });

    myPlacemark2 = new ymaps.Placemark([43.02983630, 44.68606500], {
        balloonContentHeader: 'Авиабилеты!',

        balloonContentBody: 'Адрес <a href="http://agent1156.myjino.ru/web/organizat/2?idd=2">ССылка</a>',
    }, {
        // Опции.
        // Необходимо указать данный тип макета.
        iconLayout: 'default#image',
        // Своё изображение иконки метки.
        iconImageHref: 'images/img1.png',
        // Размеры метки.
        iconImageSize: [30, 30],
        // Смещение левого верхнего угла иконки относительно
        // её "ножки" (точки привязки).
        iconImageOffset: [-3, -42]
    });

    myPlacemark3 = new ymaps.Placemark([43.03371130, 44.68340600], {
        balloonContentHeader: 'PLAZMA Автозапчасти!',

        balloonContentBody: 'Адрес <a href="http://agent1156.myjino.ru/web/organizat/3?idd=3</a>',
    }, {
        // Опции.
        // Необходимо указать данный тип макета.
        iconLayout: 'default#image',
        // Своё изображение иконки метки.
        iconImageHref: 'images/img2.png',
        // Размеры метки.
        iconImageSize: [30, 30],
        // Смещение левого верхнего угла иконки относительно
        // её "ножки" (точки привязки).
        iconImageOffset: [-3, -42]
    });

    myPlacemark4 = new ymaps.Placemark([43.03527930, 44.68519350], {
        balloonContentHeader: 'Аптека Надежда!',

        balloonContentBody: 'Адрес <a href="http://agent1156.myjino.ru/web/organizat/9">ССылка</a>',
    }, {
        // Опции.
        // Необходимо указать данный тип макета.
        iconLayout: 'default#image',
        // Своё изображение иконки метки.
        iconImageHref: 'images/img3.png',
        // Размеры метки.
        iconImageSize: [30, 30],
        // Смещение левого верхнего угла иконки относительно
        // её "ножки" (точки привязки).
        iconImageOffset: [-3, -42]
    });

    myPlacemark4 = new ymaps.Placemark([43.03804730, 44.66129850], {
        balloonContentHeader: 'SPECTR!',

        balloonContentBody: 'Адрес <a href="http://agent1156.myjino.ru/web/organizat/10">ССылка</a>',
    }, {
        // Опции.
        // Необходимо указать данный тип макета.
        iconLayout: 'default#image',
        // Своё изображение иконки метки.
        iconImageHref: 'images/img4.png',
        // Размеры метки.
        iconImageSize: [30, 30],
        // Смещение левого верхнего угла иконки относительно
        // её "ножки" (точки привязки).
        iconImageOffset: [-3, -42]
    });
    myPlacemark5 = new ymaps.Placemark([43.02709430, 44.68824750], {
        balloonContentHeader: 'Бытовая электроника',

        balloonContentBody: 'Адрес <a href="http://agent1156.myjino.ru/web/organizat/11">ССылка</a>',
    }, {
        // Опции.
        // Необходимо указать данный тип макета.
        iconLayout: 'default#image',
        // Своё изображение иконки метки.
        iconImageHref: 'images/img5.png',
        // Размеры метки.
        iconImageSize: [30, 30],
        // Смещение левого верхнего угла иконки относительно
        // её "ножки" (точки привязки).
        iconImageOffset: [-3, -42]
    });

    myPlacemark6 = new ymaps.Placemark([43.04931430, 44.62437750], {
        balloonContentHeader: 'РУС ТЕХНО МАГАЗИН',

        balloonContentBody: 'Адрес <a href="http://agent1156.myjino.ru/web/organizat/12">ССылка</a>',
    }, {
        // Опции.
        // Необходимо указать данный тип макета.
        iconLayout: 'default#image',
        // Своё изображение иконки метки.
        iconImageHref: 'images/img6.png',
        // Размеры метки.
        iconImageSize: [30, 30],
        // Смещение левого верхнего угла иконки относительно
        // её "ножки" (точки привязки).
        iconImageOffset: [-3, -42]
    });

    myPlacemark7 = new ymaps.Placemark([43.01496680, 44.66263650], {
        balloonContentHeader: 'ЧУДО СВЕТА',

        balloonContentBody: 'Адрес <a href="http://agent1156.myjino.ru/web/organizat/13">ССылка</a>',
    }, {
        // Опции.
        // Необходимо указать данный тип макета.
        iconLayout: 'default#image',
        // Своё изображение иконки метки.
        iconImageHref: 'images/img6.png',
        // Размеры метки.
        iconImageSize: [30, 30],
        // Смещение левого верхнего угла иконки относительно
        // её "ножки" (точки привязки).
        iconImageOffset: [-3, -42]
    });

    myPlacemark8 = new ymaps.Placemark([43.02808980, 44.68258850], {
        balloonContentHeader: 'МУЗЫКА И ИНСТРУМЕНТЫ',

        balloonContentBody: 'Адрес <a href="http://agent1156.myjino.ru/web/organizat/14">ССылка</a>',
    }, {
        // Опции.
        // Необходимо указать данный тип макета.
        iconLayout: 'default#image',
        // Своё изображение иконки метки.
        iconImageHref: 'images/img7.png',
        // Размеры метки.
        iconImageSize: [30, 30],
        // Смещение левого верхнего угла иконки относительно
        // её "ножки" (точки привязки).
        iconImageOffset: [-3, -42]
    });

    myPlacemark9 = new ymaps.Placemark([43.06918080, 44.67925550], {
        balloonContentHeader: 'ПАРАДИЗ СТУДИЯ ДИЗАЙНА ТЕЛА',

        balloonContentBody: 'Адрес <a href="http://agent1156.myjino.ru/web/organizat/15">ССылка</a>',
    }, {
        // Опции.
        // Необходимо указать данный тип макета.
        iconLayout: 'default#image',
        // Своё изображение иконки метки.
        iconImageHref: 'images/img8.png',
        // Размеры метки.
        iconImageSize: [30, 30],
        // Смещение левого верхнего угла иконки относительно
        // её "ножки" (точки привязки).
        iconImageOffset: [-3, -42]
    });

    myPlacemark10 = new ymaps.Placemark([43.07559530, 44.65783100], {
        balloonContentHeader: '5 ЗВЕЗД МОДЕЛЬ РЕСТОРАНА',

        balloonContentBody: 'Адрес <a href="http://agent1156.myjino.ru/web/organizat/17">ССылка</a>',
    }, {
        // Опции.
        // Необходимо указать данный тип макета.
        iconLayout: 'default#image',
        // Своё изображение иконки метки.
        iconImageHref: 'images/img9.gif',
        // Размеры метки.
        iconImageSize: [30, 30],
        // Смещение левого верхнего угла иконки относительно
        // её "ножки" (точки привязки).
        iconImageOffset: [-3, -42]
    });

    myPlacemark11 = new ymaps.Placemark([47.84766730, 35.18758450], {
        balloonContentHeader: 'ГОСТИНИЦА ЛЮКС',

        balloonContentBody: 'Адрес <a href="http://agent1156.myjino.ru/web/organizat/18">ССылка</a>',
    }, {
        // Опции.
        // Необходимо указать данный тип макета.
        iconLayout: 'default#image',
        // Своё изображение иконки метки.
        iconImageHref: 'images/img9.gif',
        // Размеры метки.
        iconImageSize: [30, 30],
        // Смещение левого верхнего угла иконки относительно
        // её "ножки" (точки привязки).
        iconImageOffset: [-3, -42]
    });

    myPlacemark12 = new ymaps.Placemark([43.04912230, 44.67146873], {
        balloonContentHeader: 'Султан кафе',

        balloonContentBody: 'Адрес <a href="http://agent1156.myjino.ru/web/organizat/19">ССылка</a>',
    }, {
        // Опции.
        // Необходимо указать данный тип макета.
        iconLayout: 'default#image',
        // Своё изображение иконки метки.
        iconImageHref: 'images/img10.png',
        // Размеры метки.
        iconImageSize: [30, 30],
        // Смещение левого верхнего угла иконки относительно
        // её "ножки" (точки привязки).
        iconImageOffset: [-3, -42]
    });

    myPlacemark13 = new ymaps.Placemark([43.03852830, 44.66346350], {
        balloonContentHeader: 'Султан кафе',

        balloonContentBody: 'Адрес <a href="http://agent1156.myjino.ru/web/organizat/20">ССылка</a>',
    }, {
        // Опции.
        // Необходимо указать данный тип макета.
        iconLayout: 'default#image',
        // Своё изображение иконки метки.
        iconImageHref: 'images/img10.png',
        // Размеры метки.
        iconImageSize: [30, 30],
        // Смещение левого верхнего угла иконки относительно
        // её "ножки" (точки привязки).
        iconImageOffset: [-3, -42]
    });
    myPlacemark14 = new ymaps.Placemark([43.02640954, 44.57165150], {
        balloonContentHeader: 'ШАШЛЫК НА ЗАКАЗ',

        balloonContentBody: 'Адрес <a href="http://agent1156.myjino.ru/web/organizat/21">ССылка</a>',
    }, {
        // Опции.
        // Необходимо указать данный тип макета.
        iconLayout: 'default#image',
        // Своё изображение иконки метки.
        iconImageHref: 'images/img10.png',
        // Размеры метки.
        iconImageSize: [30, 30],
        // Смещение левого верхнего угла иконки относительно
        // её "ножки" (точки привязки).
        iconImageOffset: [-3, -42]
    });
    myPlacemark15 = new ymaps.Placemark([43.03916903, 44.67478280], {
        balloonContentHeader: 'Транспортная компания Лидер',

        balloonContentBody: 'Адрес <a href="http://agent1156.myjino.ru/web/organizat/22">ССылка</a>',
    }, {
        // Опции.
        // Необходимо указать данный тип макета.
        iconLayout: 'default#image',
        // Своё изображение иконки метки.
        iconImageHref: 'images/img11.png',
        // Размеры метки.
        iconImageSize: [30, 30],
        // Смещение левого верхнего угла иконки относительно
        // её "ножки" (точки привязки).
        iconImageOffset: [-3, -42]
    });

    myPlacemark16 = new ymaps.Placemark([43.02818180, 44.68027596], {
        balloonContentHeader: 'АТМ-ЛОГИСТИК',

        balloonContentBody: 'Адрес <a href="http://agent1156.myjino.ru/web/organizat/23">ССылка</a>',
    }, {
        // Опции.
        // Необходимо указать данный тип макета.
        iconLayout: 'default#image',
        // Своё изображение иконки метки.
        iconImageHref: 'images/img11.png',
        // Размеры метки.
        iconImageSize: [30, 30],
        // Смещение левого верхнего угла иконки относительно
        // её "ножки" (точки привязки).
        iconImageOffset: [-3, -42]
    });

    myPlacemark17 = new ymaps.Placemark([43.03771130, 44.68178900], {
        balloonContentHeader: 'АТМ-ЛОГИСТИК',

        balloonContentBody: 'Адрес <a href="http://agent1156.myjino.ru/web/organizat/24">ССылка</a>',
    }, {
        // Опции.
        // Необходимо указать данный тип макета.
        iconLayout: 'default#image',
        // Своё изображение иконки метки.
        iconImageHref: 'images/img11.png',
        // Размеры метки.
        iconImageSize: [30, 30],
        // Смещение левого верхнего угла иконки относительно
        // её "ножки" (точки привязки).
        iconImageOffset: [-3, -42]
    });

    myPlacemark18 = new ymaps.Placemark([43.16177650, 44.15524600], {
        balloonContentHeader: 'DISNEI МАГАЗИН ЖЕНСКОЙ ОДЕЖДЫ',

        balloonContentBody: 'Адрес <a href="http://agent1156.myjino.ru/web/organizat/25">ССылка</a>',
    }, {
        // Опции.
        // Необходимо указать данный тип макета.
        iconLayout: 'default#image',
        // Своё изображение иконки метки.
        iconImageHref: 'images/img12.png',
        // Размеры метки.
        iconImageSize: [30, 30],
        // Смещение левого верхнего угла иконки относительно
        // её "ножки" (точки привязки).
        iconImageOffset: [-3, -42]
    });

    myPlacemark19 = new ymaps.Placemark([43.03819282, 44.67180690], {
        balloonContentHeader: 'ПРОДАЖА ПАМПЕРСОВ MERRIES',

        balloonContentBody: 'Адрес <a href="http://agent1156.myjino.ru/web/organizat/26">ССылка</a>',
    }, {
        // Опции.
        // Необходимо указать данный тип макета.
        iconLayout: 'default#image',
        // Своё изображение иконки метки.
        iconImageHref: 'images/img12.png',
        // Размеры метки.
        iconImageSize: [30, 30],
        // Смещение левого верхнего угла иконки относительно
        // её "ножки" (точки привязки).
        iconImageOffset: [-3, -42]
    });
    myPlacemark20 = new ymaps.Placemark([43.04211253, 44.70990650], {
        balloonContentHeader: 'ХУДОЖЕСТВЕННОЕ ЛИТЬЕ',

        balloonContentBody: 'Адрес <a href="http://agent1156.myjino.ru/web/organizat/27">ССылка</a>',
    }, {
        // Опции.
        // Необходимо указать данный тип макета.
        iconLayout: 'default#image',
        // Своё изображение иконки метки.
        iconImageHref: 'images/img13.png',
        // Размеры метки.
        iconImageSize: [30, 30],
        // Смещение левого верхнего угла иконки относительно
        // её "ножки" (точки привязки).
        iconImageOffset: [-3, -42]
    });
    myPlacemark21 = new ymaps.Placemark([43.05076380, 44.67559950], {
        balloonContentHeader: 'КОВАНЫЙ МИР',

        balloonContentBody: 'Адрес <a href="http://agent1156.myjino.ru/web/organizat/28">ССылка</a>',
    }, {
        // Опции.
        // Необходимо указать данный тип макета.
        iconLayout: 'default#image',
        // Своё изображение иконки метки.
        iconImageHref: 'images/img13.png',
        // Размеры метки.
        iconImageSize: [30, 30],
        // Смещение левого верхнего угла иконки относительно
        // её "ножки" (точки привязки).
        iconImageOffset: [-3, -42]
    });
    myPlacemark22 = new ymaps.Placemark([43.01728388, 44.68512600], {
        balloonContentHeader: 'NANO ДОКТОР',

        balloonContentBody: 'Адрес <a href="http://agent1156.myjino.ru/web/organizat/32">ССылка</a>',
    }, {
        // Опции.
        // Необходимо указать данный тип макета.
        iconLayout: 'default#image',
        // Своё изображение иконки метки.
        iconImageHref: 'images/img15.png',
        // Размеры метки.
        iconImageSize: [30, 30],
        // Смещение левого верхнего угла иконки относительно
        // её "ножки" (точки привязки).
        iconImageOffset: [-3, -42]
    });
    myPlacemark23 = new ymaps.Placemark([43.02800406, 44.65633950], {
        balloonContentHeader: 'ДОКТОР СЛУХ',

        balloonContentBody: 'Адрес <a href="http://agent1156.myjino.ru/web/organizat/33">ССылка</a>',
    }, {
        // Опции.
        // Необходимо указать данный тип макета.
        iconLayout: 'default#image',
        // Своё изображение иконки метки.
        iconImageHref: 'images/img15.png',
        // Размеры метки.
        iconImageSize: [30, 30],
        // Смещение левого верхнего угла иконки относительно
        // её "ножки" (точки привязки).
        iconImageOffset: [-3, -42]
    });
    myPlacemark24 = new ymaps.Placemark([43.02034530, 44.67456650], {
        balloonContentHeader: 'ВЕТЕРИНАРНАЯ АПТЕКА',

        balloonContentBody: 'Адрес <a href="http://agent1156.myjino.ru/web/organizat/34">ССылка</a>',
    }, {
        // Опции.
        // Необходимо указать данный тип макета.
        iconLayout: 'default#image',
        // Своё изображение иконки метки.
        iconImageHref: 'images/img16.png',
        // Размеры метки.
        iconImageSize: [30, 30],
        // Смещение левого верхнего угла иконки относительно
        // её "ножки" (точки привязки).
        iconImageOffset: [-3, -42]
    });
    myPlacemark25 = new ymaps.Placemark([43.03848201, 44.67765700], {
        balloonContentHeader: 'ВЕТЕРИНАРНАЯ ЛЕЧЕБНИЦА',

        balloonContentBody: 'Адрес <a href="http://agent1156.myjino.ru/web/organizat/35">ССылка</a>',
    }, {
        // Опции.
        // Необходимо указать данный тип макета.
        iconLayout: 'default#image',
        // Своё изображение иконки метки.
        iconImageHref: 'images/img16.png',
        // Размеры метки.
        iconImageSize: [30, 30],
        // Смещение левого верхнего угла иконки относительно
        // её "ножки" (точки привязки).
        iconImageOffset: [-3, -42]
    });
    myPlacemark26 = new ymaps.Placemark([43.03720330, 44.22213900], {
        balloonContentHeader: 'видеолайн',

        balloonContentBody: 'Адрес <a href="http://agent1156.myjino.ru/web/organizat/36">ССылка</a>',
    }, {
        // Опции.
        // Необходимо указать данный тип макета.
        iconLayout: 'default#image',
        // Своё изображение иконки метки.
        iconImageHref: 'images/img17.png',
        // Размеры метки.
        iconImageSize: [30, 30],
        // Смещение левого верхнего угла иконки относительно
        // её "ножки" (точки привязки).
        iconImageOffset: [-3, -42]
    });
    myPlacemark27 = new ymaps.Placemark([43.02484730, 44.67271600], {
        balloonContentHeader: 'ГЛОБАЛ АЛАНИЯ',

        balloonContentBody: 'Адрес <a href="http://agent1156.myjino.ru/web/organizat/37">ССылка</a>',
    }, {
        // Опции.
        // Необходимо указать данный тип макета.
        iconLayout: 'default#image',
        // Своё изображение иконки метки.
        iconImageHref: 'images/img17.png',
        // Размеры метки.
        iconImageSize: [30, 30],
        // Смещение левого верхнего угла иконки относительно
        // её "ножки" (точки привязки).
        iconImageOffset: [-3, -42]
    });
    myPlacemark28 = new ymaps.Placemark([43.055816574500504, 44.642289999999996], {
        balloonContentHeader: 'КИТ КАНЦТОВАРЫ ',

        balloonContentBody: 'Адрес <a href="http://agent1156.myjino.ru/web/organizat/38">ССылка</a>',
    }, {
        // Опции.
        // Необходимо указать данный тип макета.
        iconLayout: 'default#image',
        // Своё изображение иконки метки.
        iconImageHref: 'images/img18.png',
        // Размеры метки.
        iconImageSize: [30, 30],
        // Смещение левого верхнего угла иконки относительно
        // её "ножки" (точки привязки).
        iconImageOffset: [-3, -42]
    });
    myPlacemark29 = new ymaps.Placemark([43.019877574506616, 44.67609349999998], {
        balloonContentHeader: 'КОМПЬЮТЕРНЫЙ МИР ',

        balloonContentBody: 'Адрес <a href="http://agent1156.myjino.ru/web/organizat/40?idd=19">ССылка</a>',
    }, {
        // Опции.
        // Необходимо указать данный тип макета.
        iconLayout: 'default#image',
        // Своё изображение иконки метки.
        iconImageHref: 'images/img19.png',
        // Размеры метки.
        iconImageSize: [30, 30],
        // Смещение левого верхнего угла иконки относительно
        // её "ножки" (точки привязки).
        iconImageOffset: [-3, -42]
    });
    myPlacemark30 = new ymaps.Placemark([43.05088207451249, 44.644382999999976], {
        balloonContentHeader: 'Анечка ',

        balloonContentBody: 'Адрес <a href="http://agent1156.myjino.ru/web/organizat/42?idd=20">ССылка</a>',
    }, {
        // Опции.
        // Необходимо указать данный тип макета.
        iconLayout: 'default#image',
        // Своё изображение иконки метки.
        iconImageHref: 'images/img20.png',
        // Размеры метки.
        iconImageSize: [30, 30],
        // Смещение левого верхнего угла иконки относительно
        // её "ножки" (точки привязки).
        iconImageOffset: [-3, -42]
    });
    myPlacemark31 = new ymaps.Placemark([43.06766042515652, 44.630881107697824], {
        balloonContentHeader: '3D МЕБЕЛЬ ',

        balloonContentBody: 'Адрес <a href="http://agent1156.myjino.ru/web/organizat/43?idd=21">ССылка</a>',
    }, {
        // Опции.
        // Необходимо указать данный тип макета.
        iconLayout: 'default#image',
        // Своё изображение иконки метки.
        iconImageHref: 'images/img21.png',
        // Размеры метки.
        iconImageSize: [30, 30],
        // Смещение левого верхнего угла иконки относительно
        // её "ножки" (точки привязки).
        iconImageOffset: [-3, -42]
    });

    myPlacemark32 = new ymaps.Placemark([43.06766042515652, 44.630881107697824], {
        balloonContentHeader: 'МОНОЛИТ МЕБЕЛЬ  ',

        balloonContentBody: 'Адрес <a href="http://agent1156.myjino.ru/web/organizat/44?idd=21">ССылка</a>',
    }, {
        // Опции.
        // Необходимо указать данный тип макета.
        iconLayout: 'default#image',
        // Своё изображение иконки метки.
        iconImageHref: 'images/img21.png',
        // Размеры метки.
        iconImageSize: [30, 30],
        // Смещение левого верхнего угла иконки относительно
        // её "ножки" (точки привязки).
        iconImageOffset: [-3, -42]
    });

    myPlacemark33 = new ymaps.Placemark([43.161776500188324, 44.155245999999956], {
        balloonContentHeader: 'ГРАНДЕ МЕБЕЛЬ  ',

        balloonContentBody: 'Адрес <a href="http://agent1156.myjino.ru/web/organizat/45?idd=22">ССылка</a>',
    }, {
        // Опции.
        // Необходимо указать данный тип макета.
        iconLayout: 'default#image',
        // Своё изображение иконки метки.
        iconImageHref: 'images/img22.png',
        // Размеры метки.
        iconImageSize: [30, 30],
        // Смещение левого верхнего угла иконки относительно
        // её "ножки" (точки привязки).
        iconImageOffset: [-3, -42]
    });

    myPlacemark34 = new ymaps.Placemark([43.05302957449332, 44.64734749999998], {
        balloonContentHeader: 'Дали мебель  ',

        balloonContentBody: 'Адрес <a href="http://agent1156.myjino.ru/web/organizat/46?idd=22">ССылка</a>',
    }, {
        // Опции.
        // Необходимо указать данный тип макета.
        iconLayout: 'default#image',
        // Своё изображение иконки метки.
        iconImageHref: 'images/img22.png',
        // Размеры метки.
        iconImageSize: [30, 30],
        // Смещение левого верхнего угла иконки относительно
        // её "ножки" (точки привязки).
        iconImageOffset: [-3, -42]
    });
    myPlacemark35 = new ymaps.Placemark([43.03433057449451, 44.677512999999934], {
        balloonContentHeader: 'BOMOND Магазин женской одежды  ',

        balloonContentBody: 'Адрес <a href="http://agent1156.myjino.ru/web/organizat/47?idd=23">ССылка</a>',
    }, {
        // Опции.
        // Необходимо указать данный тип макета.
        iconLayout: 'default#image',
        // Своё изображение иконки метки.
        iconImageHref: 'images/img12.png',
        // Размеры метки.
        iconImageSize: [30, 30],
        // Смещение левого верхнего угла иконки относительно
        // её "ножки" (точки привязки).
        iconImageOffset: [-3, -42]
    });

    myPlacemark36 = new ymaps.Placemark([43.02427037887081, 44.67296749999996], {
        balloonContentHeader: 'СТРОИТЕЛЬСТВО ДЕРЕВЯННЫЙ ДОМОВ  ',

        balloonContentBody: 'Адрес <a href="http://agent1156.myjino.ru/web/organizat/49?idd=24">Ссылка</a>',
    }, {
        // Опции.
        // Необходимо указать данный тип макета.
        iconLayout: 'default#image',
        // Своё изображение иконки метки.
        iconImageHref: 'images/img24.png',
        // Размеры метки.
        iconImageSize: [30, 30],
        // Смещение левого верхнего угла иконки относительно
        // её "ножки" (точки привязки).
        iconImageOffset: [-3, -42]
    });
    myPlacemark37 = new ymaps.Placemark([43.039450574507725, 44.63523849999996], {
        balloonContentHeader: 'ЦЕНТР РАЗВИТИЯ МАЛЕНЬКИЙ  ',

        balloonContentBody: 'Адрес <a href="http://agent1156.myjino.ru/web/organizat/50?idd=25">Ссылка</a>',
    }, {
        // Опции.
        // Необходимо указать данный тип макета.
        iconLayout: 'default#image',
        // Своё изображение иконки метки.
        iconImageHref: 'images/img25.png',
        // Размеры метки.
        iconImageSize: [30, 30],
        // Смещение левого верхнего угла иконки относительно
        // её "ножки" (точки привязки).
        iconImageOffset: [-3, -42]
    });
    myPlacemark38 = new ymaps.Placemark([43.027753574477565, 44.68661299999999], {
        balloonContentHeader: 'РЕСПУБЛИКАНСКАЯ ШКОЛА ВОА  ',

        balloonContentBody: 'Адрес <a href="http://agent1156.myjino.ru/web/organizat/51?idd=25">Ссылка</a>',
    }, {
        // Опции.
        // Необходимо указать данный тип макета.
        iconLayout: 'default#image',
        // Своё изображение иконки метки.
        iconImageHref: 'images/img25.png',
        // Размеры метки.
        iconImageSize: [30, 30],
        // Смещение левого верхнего угла иконки относительно
        // её "ножки" (точки привязки).
        iconImageOffset: [-3, -42]
    });
    myPlacemark39 = new ymaps.Placemark([43.028004056218336, 44.656339500000016], {
        balloonContentHeader: 'ОКНА СТИЛЬ  ',

        balloonContentBody: 'Адрес <a href="http://agent1156.myjino.ru/web/organizat/52?idd=26">Ссылка</a>',
    }, {
        // Опции.
        // Необходимо указать данный тип макета.
        iconLayout: 'default#image',
        // Своё изображение иконки метки.
        iconImageHref: 'images/img26.png',
        // Размеры метки.
        iconImageSize: [30, 30],
        // Смещение левого верхнего угла иконки относительно
        // её "ножки" (точки привязки).
        iconImageOffset: [-3, -42]
    });

    myPlacemark40 = new ymaps.Placemark([43.047193074503, 44.66998499999996], {
        balloonContentHeader: 'ОКНА 21 ВЕК  ',

        balloonContentBody: 'Адрес <a href="http://agent1156.myjino.ru/web/organizat/53?idd=26">Ссылка</a>',
    }, {
        // Опции.
        // Необходимо указать данный тип макета.
        iconLayout: 'default#image',
        // Своё изображение иконки метки.
        iconImageHref: 'images/img26.png',
        // Размеры метки.
        iconImageSize: [30, 30],
        // Смещение левого верхнего угла иконки относительно
        // её "ножки" (точки привязки).
        iconImageOffset: [-3, -42]
    });


    myPlacemark41 = new ymaps.Placemark([43.04020857450964, 44.682103500000004], {
        balloonContentHeader: 'БАНКЕТЫ   ',

        balloonContentBody: 'Адрес <a href="http://agent1156.myjino.ru/web/organizat/55?idd=27">Ссылка</a>',
    }, {
        // Опции.
        // Необходимо указать данный тип макета.
        iconLayout: 'default#image',
        // Своё изображение иконки метки.
        iconImageHref: 'images/img27.png',
        // Размеры метки.
        iconImageSize: [30, 30],
        // Смещение левого верхнего угла иконки относительно
        // её "ножки" (точки привязки).
        iconImageOffset: [-3, -42]
    });
    myPlacemark42 = new ymaps.Placemark([43.04019557450959, 44.6607055], {
        balloonContentHeader: ' ОРИГИНАЛЬНЫЕ ПОДАРКИ    ',

        balloonContentBody: 'Адрес <a href="http://agent1156.myjino.ru/web/organizat/56?idd=28">Ссылка</a>',
    }, {
        // Опции.
        // Необходимо указать данный тип макета.
        iconLayout: 'default#image',
        // Своё изображение иконки метки.
        iconImageHref: 'images/img28.png',
        // Размеры метки.
        iconImageSize: [30, 30],
        // Смещение левого верхнего угла иконки относительно
        // её "ножки" (точки привязки).
        iconImageOffset: [-3, -42]
    });

    myPlacemark43 = new ymaps.Placemark([43.01932357450523, 44.67723449999999], {
        balloonContentHeader: '  ИМЕННЫЕ СУВЕНИРЫ    ',

        balloonContentBody: 'Адрес <a href="http://agent1156.myjino.ru/web/organizat/57?idd=28">Ссылка</a>',
    }, {
        // Опции.
        // Необходимо указать данный тип макета.
        iconLayout: 'default#image',
        // Своё изображение иконки метки.
        iconImageHref: 'images/img28.png',
        // Размеры метки.
        iconImageSize: [30, 30],
        // Смещение левого верхнего угла иконки относительно
        // её "ножки" (точки привязки).
        iconImageOffset: [-3, -42]
    });

    myPlacemark44 = new ymaps.Placemark([43.02434607449349, 44.672060499999986], {
        balloonContentHeader: '   EXPRESS PRINT     ',

        balloonContentBody: 'Адрес <a href="http://agent1156.myjino.ru/web/organizat/58?idd=29">Ссылка</a>',
    }, {
        // Опции.
        // Необходимо указать данный тип макета.
        iconLayout: 'default#image',
        // Своё изображение иконки метки.
        iconImageHref: 'images/img29.png',
        // Размеры метки.
        iconImageSize: [30, 30],
        // Смещение левого верхнего угла иконки относительно
        // её "ножки" (точки привязки).
        iconImageOffset: [-3, -42]
    });

    myPlacemark45 = new ymaps.Placemark([43.03523357449686, 44.675949999999986], {
        balloonContentHeader: '    МАВР ТИПОГРАФИЯ     ',

        balloonContentBody: 'Адрес <a href="http://agent1156.myjino.ru/web/organizat/59?idd=29">Ссылка</a>',
    }, {
        // Опции.
        // Необходимо указать данный тип макета.
        iconLayout: 'default#image',
        // Своё изображение иконки метки.
        iconImageHref: 'images/img29.png',
        // Размеры метки.
        iconImageSize: [30, 30],
        // Смещение левого верхнего угла иконки относительно
        // её "ножки" (точки привязки).
        iconImageOffset: [-3, -42]
    });

    myPlacemark46 = new ymaps.Placemark([43.022421574513224, 44.67815099999991], {
        balloonContentHeader: '  KOYROI РЕСТОРАН ',

        balloonContentBody: 'Адрес <a href="http://agent1156.myjino.ru/web/organizat/61?idd=30">Ссылка</a>',
    }, {
        // Опции.
        // Необходимо указать данный тип макета.
        iconLayout: 'default#image',
        // Своё изображение иконки метки.
        iconImageHref: 'images/img30.png',
        // Размеры метки.
        iconImageSize: [30, 30],
        // Смещение левого верхнего угла иконки относительно
        // её "ножки" (точки привязки).
        iconImageOffset: [-3, -42]
    });

    myPlacemark47 = new ymaps.Placemark([43.041770186831414, 44.63373350000001], {
        balloonContentHeader: '   РЕСТОРАН ЕЛЕНА ',

        balloonContentBody: 'Адрес <a href="http://agent1156.myjino.ru/web/organizat/62?idd=30">Ссылка</a>',
    }, {
        // Опции.
        // Необходимо указать данный тип макета.
        iconLayout: 'default#image',
        // Своё изображение иконки метки.
        iconImageHref: 'images/img30.png',
        // Размеры метки.
        iconImageSize: [30, 30],
        // Смещение левого верхнего угла иконки относительно
        // её "ножки" (точки привязки).
        iconImageOffset: [-3, -42]
    });

    myPlacemark48 = new ymaps.Placemark([43.055223574498925, 44.633244], {
        balloonContentHeader: '    ИР - КЛИМАТ САНТЕХНИКА  ',

        balloonContentBody: 'Адрес <a href="http://agent1156.myjino.ru/web/organizat/63?idd=31">Ссылка</a>',
    }, {
        // Опции.
        // Необходимо указать данный тип макета.
        iconLayout: 'default#image',
        // Своё изображение иконки метки.
        iconImageHref: 'images/img31.png',
        // Размеры метки.
        iconImageSize: [30, 30],
        // Смещение левого верхнего угла иконки относительно
        // её "ножки" (точки привязки).
        iconImageOffset: [-3, -42]
    });

    myPlacemark49 = new ymaps.Placemark([43.023278574515395, 44.66265499999999], {
        balloonContentHeader: '   САНТЕХНИКА  ',

        balloonContentBody: 'Адрес ул.Первомайская, 27 <a href="http://agent1156.myjino.ru/web/organizat/64?idd=31">Ссылка</a>',
    }, {
        // Опции.
        // Необходимо указать данный тип макета.
        iconLayout: 'default#image',
        // Своё изображение иконки метки.
        iconImageHref: 'images/img31.png',
        // Размеры метки.
        iconImageSize: [30, 30],
        // Смещение левого верхнего угла иконки относительно
        // её "ножки" (точки привязки).
        iconImageOffset: [-3, -42]
    });

    myPlacemark50 = new ymaps.Placemark([43.035167574496676, 44.69694349999998], {
        balloonContentHeader: '   УДАЧА МАГАЗИН  ',

        balloonContentBody: 'Адрес ул. Пушкинская, 43 <a href="http://agent1156.myjino.ru/web/organizat/65?idd=31">Ссылка</a>',
    }, {
        // Опции.
        // Необходимо указать данный тип макета.
        iconLayout: 'default#image',
        // Своё изображение иконки метки.
        iconImageHref: 'images/img31.png',
        // Размеры метки.
        iconImageSize: [30, 30],
        // Смещение левого верхнего угла иконки относительно
        // её "ножки" (точки привязки).
        iconImageOffset: [-3, -42]
    });

    myPlacemark51 = new ymaps.Placemark([43.037141311282284, 44.68257499999997], {
        balloonContentHeader: '   21 ВЕК  ',

        balloonContentBody: 'Адрес ул.Маркуса <a href="http://agent1156.myjino.ru/web/organizat/66?idd=32">Ссылка</a>',
    }, {
        // Опции.
        // Необходимо указать данный тип макета.
        iconLayout: 'default#image',
        // Своё изображение иконки метки.
        iconImageHref: 'images/img32.png',
        // Размеры метки.
        iconImageSize: [30, 30],
        // Смещение левого верхнего угла иконки относительно
        // её "ножки" (точки привязки).
        iconImageOffset: [-3, -42]
    });

    myPlacemark52 = new ymaps.Placemark([43.03342757449221, 44.67927349999991], {
        balloonContentHeader: ' DANCE ЛИДЕР',

        balloonContentBody: 'Адрес ул.Никитина, 21 <a href="http://agent1156.myjino.ru/web/organizat/67?idd=33">Ссылка</a>',
    }, {
        // Опции.
        // Необходимо указать данный тип макета.
        iconLayout: 'default#image',
        // Своё изображение иконки метки.
        iconImageHref: 'images/img33.png',
        // Размеры метки.
        iconImageSize: [30, 30],
        // Смещение левого верхнего угла иконки относительно
        // её "ножки" (точки привязки).
        iconImageOffset: [-3, -42]
    });
    myPlacemark53 = new ymaps.Placemark([43.03411357449395, 44.690583499999974], {
        balloonContentHeader: ' DANCE ЛИДЕР',

        balloonContentBody: 'Адрес ул.Маркова, 1а/44 <a href="http://agent1156.myjino.ru/web/organizat/68?idd=33">Ссылка</a>',
    }, {
        // Опции.
        // Необходимо указать данный тип макета.
        iconLayout: 'default#image',
        // Своё изображение иконки метки.
        iconImageHref: 'images/img33.png',
        // Размеры метки.
        iconImageSize: [30, 30],
        // Смещение левого верхнего угла иконки относительно
        // её "ножки" (точки привязки).
        iconImageOffset: [-3, -42]
    });

    myPlacemark54 = new ymaps.Placemark([43.0207340744841, 44.68416949999993], {
        balloonContentHeader: ' МАГИЯ ШТОР',

        balloonContentBody: 'Адрес ул.Димитрова, 37  <a href="http://agent1156.myjino.ru/web/organizat/71?idd=35">Ссылка</a>',
    }, {
        // Опции.
        // Необходимо указать данный тип макета.
        iconLayout: 'default#image',
        // Своё изображение иконки метки.
        iconImageHref: 'images/img35.png',
        // Размеры метки.
        iconImageSize: [30, 30],
        // Смещение левого верхнего угла иконки относительно
        // её "ножки" (точки привязки).
        iconImageOffset: [-3, -42]
    });

    myPlacemark55 = new ymaps.Placemark([43.03371157449291, 44.683406000000026], {
        balloonContentHeader: '  ТКАНИ EXCLUSIVE',

        balloonContentBody: 'Адрес ул.Маркуса, 29  <a href="http://agent1156.myjino.ru/web/organizat/72?idd=35">Ссылка</a>',
    }, {
        // Опции.
        // Необходимо указать данный тип макета.
        iconLayout: 'default#image',
        // Своё изображение иконки метки.
        iconImageHref: 'images/img35.png',
        // Размеры метки.
        iconImageSize: [30, 30],
        // Смещение левого верхнего угла иконки относительно
        // её "ножки" (точки привязки).
        iconImageOffset: [-3, -42]
    });

    myPlacemark56 = new ymaps.Placemark([43.033651574492765, 44.68092649999993], {
        balloonContentHeader: '   BEST TOUR',

        balloonContentBody: 'Адрес ул.Никитина, 22, 2 этаж   <a href="http://agent1156.myjino.ru/web/organizat/73?idd=36">Ссылка</a>',
    }, {
        // Опции.
        // Необходимо указать данный тип макета.
        iconLayout: 'default#image',
        // Своё изображение иконки метки.
        iconImageHref: 'images/img36.png',
        // Размеры метки.
        iconImageSize: [30, 30],
        // Смещение левого верхнего угла иконки относительно
        // её "ножки" (точки привязки).
        iconImageOffset: [-3, -42]
    });

    myPlacemark57 = new ymaps.Placemark([43.031477074511855, 44.68522949999997], {
        balloonContentHeader: '    ЗОЛОТОЙ ГЛОБУС',

        balloonContentBody: 'Адрес ул.Куйбышева, 21а, офис № 318   <a href="http://agent1156.myjino.ru/web/organizat/74?idd=36">Ссылка</a>',
    }, {
        // Опции.
        // Необходимо указать данный тип макета.
        iconLayout: 'default#image',
        // Своё изображение иконки метки.
        iconImageHref: 'images/img36.png',
        // Размеры метки.
        iconImageSize: [30, 30],
        // Смещение левого верхнего угла иконки относительно
        // её "ножки" (точки привязки).
        iconImageOffset: [-3, -42]
    });
    myPlacemark58 = new ymaps.Placemark([43.061672074490865, 44.69821049999998], {
        balloonContentHeader: '    МИР СПЕЦТЕХНИКИ',

        balloonContentBody: 'Адрес г.Владикавказ, ул. 1-ая Промышленная, 3а   <a href="http://agent1156.myjino.ru/web/organizat/75?idd=37">Ссылка</a>',
    }, {
        // Опции.
        // Необходимо указать данный тип макета.
        iconLayout: 'default#image',
        // Своё изображение иконки метки.
        iconImageHref: 'images/img37.png',
        // Размеры метки.
        iconImageSize: [30, 30],
        // Смещение левого верхнего угла иконки относительно
        // её "ножки" (точки привязки).
        iconImageOffset: [-3, -42]
    });

    myPlacemark59 = new ymaps.Placemark([43.023278574515395, 44.66265499999999], {
        balloonContentHeader: '  31 МАГАЗИН ',

        balloonContentBody: 'Адрес ул.Первомайска, 27   <a href="http://agent1156.myjino.ru/web/organizat/77?idd=38">Ссылка</a>',
    }, {
        // Опции.
        // Необходимо указать данный тип макета.
        iconLayout: 'default#image',
        // Своё изображение иконки метки.
        iconImageHref: 'images/img38.png',
        // Размеры метки.
        iconImageSize: [30, 30],
        // Смещение левого верхнего угла иконки относительно
        // её "ножки" (точки привязки).
        iconImageOffset: [-3, -42]
    });

    myPlacemark60 = new ymaps.Placemark([43.04209957451457, 44.657444499999954], {
        balloonContentHeader: ' ПРОРАБ МАГАЗИН ',

        balloonContentBody: 'Адрес ул.Калоева, 402   <a href="http://agent1156.myjino.ru/web/organizat/78?idd=38">Ссылка</a>',
    }, {
        // Опции.
        // Необходимо указать данный тип макета.
        iconLayout: 'default#image',
        // Своё изображение иконки метки.
        iconImageHref: 'images/img38.png',
        // Размеры метки.
        iconImageSize: [30, 30],
        // Смещение левого верхнего угла иконки относительно
        // её "ножки" (точки привязки).
        iconImageOffset: [-3, -42]
    });

    myPlacemark61 = new ymaps.Placemark([43.023278574515395, 44.66265499999999], {
        balloonContentHeader: '  ПРОКАТ И ПРОДАЖА ИНСТРУМЕНТОВ ',

        balloonContentBody: 'Адрес ул.Первомайская, 27    <a href="http://agent1156.myjino.ru/web/organizat/79?idd=39">Ссылка</a>',
    }, {
        // Опции.
        // Необходимо указать данный тип макета.
        iconLayout: 'default#image',
        // Своё изображение иконки метки.
        iconImageHref: 'images/img39.png',
        // Размеры метки.
        iconImageSize: [30, 30],
        // Смещение левого верхнего угла иконки относительно
        // её "ножки" (точки привязки).
        iconImageOffset: [-3, -42]
    });

    myPlacemark62 = new ymaps.Placemark([43.036380074475076, 44.6826695], {
        balloonContentHeader: '   ЦВЕТОК ',

        balloonContentBody: 'Адрес ул. Маркуса, 45    <a href="http://agent1156.myjino.ru/web/organizat/81?idd=40">Ссылка</a>',
    }, {
        // Опции.
        // Необходимо указать данный тип макета.
        iconLayout: 'default#image',
        // Своё изображение иконки метки.
        iconImageHref: 'images/img40.png',
        // Размеры метки.
        iconImageSize: [30, 30],
        // Смещение левого верхнего угла иконки относительно
        // её "ножки" (точки привязки).
        iconImageOffset: [-3, -42]
    });

    myPlacemark63 = new ymaps.Placemark([43.03095657448582, 44.690376999999955], {
        balloonContentHeader: 'МОЙ ГОРОД ',

        balloonContentBody: 'Адрес г.Владикавказ, ул.Ватутина, 62     <a href="http://agent1156.myjino.ru/web/organizat/82?idd=40">Ссылка</a>',
    }, {
        // Опции.
        // Необходимо указать данный тип макета.
        iconLayout: 'default#image',
        // Своё изображение иконки метки.
        iconImageHref: 'images/img40.png',
        // Размеры метки.
        iconImageSize: [30, 30],
        // Смещение левого верхнего угла иконки относительно
        // её "ножки" (точки привязки).
        iconImageOffset: [-3, -42]
    });

    myPlacemark64 = new ymaps.Placemark([43.032096574488726, 44.6841874999999], {
        balloonContentHeader: 'МАЛАХИТОВАЯ ШКАТУЛКА ',

        balloonContentBody: 'Адрес ул.Маркуса, 8     <a href="http://agent1156.myjino.ru/web/organizat/83?idd=41">Ссылка</a>',
    }, {
        // Опции.
        // Необходимо указать данный тип макета.
        iconLayout: 'default#image',
        // Своё изображение иконки метки.
        iconImageHref: 'images/img41.png',
        // Размеры метки.
        iconImageSize: [30, 30],
        // Смещение левого верхнего угла иконки относительно
        // её "ножки" (точки привязки).
        iconImageOffset: [-3, -42]
    });

    myPlacemark65 = new ymaps.Placemark([43.03366507451753, 44.68922699999999], {
        balloonContentHeader: ' ЮВЕЛИРНЫЙ МАГАЗИН ',

        balloonContentBody: 'Адрес Т.Ц. СТОЛИЦА      <a href="http://agent1156.myjino.ru/web/organizat/84?idd=41">Ссылка</a>',
    }, {
        // Опции.
        // Необходимо указать данный тип макета.
        iconLayout: 'default#image',
        // Своё изображение иконки метки.
        iconImageHref: 'images/img41.png',
        // Размеры метки.
        iconImageSize: [30, 30],
        // Смещение левого верхнего угла иконки относительно
        // её "ножки" (точки привязки).
        iconImageOffset: [-3, -42]
    });

    myPlacemark65 = new ymaps.Placemark([43.05209309648443, 44.639719063415484], {
        balloonContentHeader: '  ЦЕНТР ДЕЛОВОГО РАЗВИТИЯ  ',

        balloonContentBody: 'Адрес  ул.Джанаева, 42, офис № 304        <a href="http://agent1156.myjino.ru/web/organizat/85?idd=42">Ссылка</a>',
    }, {
        // Опции.
        // Необходимо указать данный тип макета.
        iconLayout: 'default#image',
        // Своё изображение иконки метки.
        iconImageHref: 'images/img42.png',
        // Размеры метки.
        iconImageSize: [30, 30],
        // Смещение левого верхнего угла иконки относительно
        // её "ножки" (точки привязки).
        iconImageOffset: [-3, -42]
    });

    myPlacemark66 = new ymaps.Placemark([43.002315574510725, 44.67419849999997], {
        balloonContentHeader: '   СТОМАТОЛОГИЯ ДЛЯ ВСЕЙ СЕМЬИ  ',

        balloonContentBody: 'Адрес угол пр.Коста, 180/ Островского, 13       <a href="http://agent1156.myjino.ru/web/organizat/87?idd=43">Ссылка</a>',
    }, {
        // Опции.
        // Необходимо указать данный тип макета.
        iconLayout: 'default#image',
        // Своё изображение иконки метки.
        iconImageHref: 'images/img43.png',
        // Размеры метки.
        iconImageSize: [30, 30],
        // Смещение левого верхнего угла иконки относительно
        // её "ножки" (точки привязки).
        iconImageOffset: [-3, -42]
    });


    myPlacemark66 = new ymaps.Placemark([43.002315574510725, 44.67419849999997], {
        balloonContentHeader: '   СТОМАТОЛОГИЯ ДЛЯ ВСЕЙ СЕМЬИ  ',

        balloonContentBody: 'Адрес угол пр.Коста, 180/ Островского, 13       <a href="http://agent1156.myjino.ru/web/organizat/87?idd=43">Ссылка</a>',
    }, {
        // Опции.
        // Необходимо указать данный тип макета.
        iconLayout: 'default#image',
        // Своё изображение иконки метки.
        iconImageHref: 'images/img43.png',
        // Размеры метки.
        iconImageSize: [30, 30],
        // Смещение левого верхнего угла иконки относительно
        // её "ножки" (точки привязки).
        iconImageOffset: [-3, -42]
    });

    myPlacemark67 = new ymaps.Placemark([43.028544574479575, 44.67185350000001], {
        balloonContentHeader: '    ПРЕЗИДЕНТ СТОМАТОЛОГИЧЕСКИЙ ЦЕНТР  ',

        balloonContentBody: 'Адрес г.Владикавказ, ул.К.Маркса, 44       <a href="http://agent1156.myjino.ru/web/organizat/88?idd=43">Ссылка</a>',
    }, {
        // Опции.
        // Необходимо указать данный тип макета.
        iconLayout: 'default#image',
        // Своё изображение иконки метки.
        iconImageHref: 'images/img43.png',
        // Размеры метки.
        iconImageSize: [30, 30],
        // Смещение левого верхнего угла иконки относительно
        // её "ножки" (точки привязки).
        iconImageOffset: [-3, -42]
    });

    myPlacemark68 = new ymaps.Placemark([43.03413957449401, 44.68306449999991], {
        balloonContentHeader: '  МАГИЯ МАГАЗИН ЧАЯ И КОФЕ  ',

        balloonContentBody: 'Адрес улиц Ленина и Никитина, 29        <a href="http://agent1156.myjino.ru/web/organizat/89?idd=44">Ссылка</a>',
    }, {
        // Опции.
        // Необходимо указать данный тип макета.
        iconLayout: 'default#image',
        // Своё изображение иконки метки.
        iconImageHref: 'images/img43.png',
        // Размеры метки.
        iconImageSize: [30, 30],
        // Смещение левого верхнего угла иконки относительно
        // её "ножки" (точки привязки).
        iconImageOffset: [-3, -42]
    });

    myPlacemark69 = new ymaps.Placemark([43.02555907449657, 44.70232449999996], {
        balloonContentHeader: '  ВЕТА ТЕХНИЧЕСКИЙ ЦЕНТР   ',

        balloonContentBody: 'Адрес ул.Шмулевича, 41       <a href="http://agent1156.myjino.ru/web/organizat/90?idd=45">Ссылка</a>',
    }, {
        // Опции.
        // Необходимо указать данный тип макета.
        iconLayout: 'default#image',
        // Своё изображение иконки метки.
        iconImageHref: 'images/img45.png',
        // Размеры метки.
        iconImageSize: [30, 30],
        // Смещение левого верхнего угла иконки относительно
        // её "ножки" (точки привязки).
        iconImageOffset: [-3, -42]
    });


    myPlacemark69 = new ymaps.Placemark([43.02751007450161, 44.68766399999997], {
        balloonContentHeader: '   МАСТЕР СЕРВИС   ',

        balloonContentBody: 'Адрес ул.Бородинская, 34 / Бутырина       <a href="http://agent1156.myjino.ru/web/organizat/91?idd=45">Ссылка</a>',
    }, {
        // Опции.
        // Необходимо указать данный тип макета.
        iconLayout: 'default#image',
        // Своё изображение иконки метки.
        iconImageHref: 'images/img45.png',
        // Размеры метки.
        iconImageSize: [30, 30],
        // Смещение левого верхнего угла иконки относительно
        // её "ножки" (точки привязки).
        iconImageOffset: [-3, -42]
    });

    myPlacemark70 = new ymaps.Placemark([43.02691007450007, 44.68364849999998], {
        balloonContentHeader: ' АЙКРАФТ ОПТИКА ',

        balloonContentBody: 'Адрес г.Владикавказ, ул.Бутырина, 11     <a href="http://agent1156.myjino.ru/web/organizat/92?idd=46">Ссылка</a>',
    }, {
        // Опции.
        // Необходимо указать данный тип макета.
        iconLayout: 'default#image',
        // Своё изображение иконки метки.
        iconImageHref: 'images/img46.png',
        // Размеры метки.
        iconImageSize: [30, 30],
        // Смещение левого верхнего угла иконки относительно
        // её "ножки" (точки привязки).
        iconImageOffset: [-3, -42]
    });

    myPlacemark71 = new ymaps.Placemark([43.04680407450194, 44.67647999999999], {
        balloonContentHeader: ' ХДМ  ',

        balloonContentBody: 'Адрес г.Владикавказ,пер. Партизанский, 2      <a href="http://agent1156.myjino.ru/web/organizat/93?idd=47">Ссылка</a>',
    }, {
        // Опции.
        // Необходимо указать данный тип макета.
        iconLayout: 'default#image',
        // Своё изображение иконки метки.
        iconImageHref: 'images/img47.png',
        // Размеры метки.
        iconImageSize: [30, 30],
        // Смещение левого верхнего угла иконки относительно
        // её "ножки" (точки привязки).
        iconImageOffset: [-3, -42]
    });

    myPlacemark71 = new ymaps.Placemark([43.03232057448928, 44.6506804999999], {
        balloonContentHeader: ' КАМИНЫ И САУНЫ   ',

        balloonContentBody: 'Адрес Доватора, 88       <a href="http://agent1156.myjino.ru/web/organizat/94?idd=47">Ссылка</a>',
    }, {
        // Опции.
        // Необходимо указать данный тип макета.
        iconLayout: 'default#image',
        // Своё изображение иконки метки.
        iconImageHref: 'images/img47.png',
        // Размеры метки.
        iconImageSize: [30, 30],
        // Смещение левого верхнего угла иконки относительно
        // её "ножки" (точки привязки).
        iconImageOffset: [-3, -42]
    });

    myPlacemark72 = new ymaps.Placemark([43.061672074490865, 44.69821049999998], {
        balloonContentHeader: '  БЕТОН   ',

        balloonContentBody: 'Адрес ул.Промышленная, 1       <a href="http://agent1156.myjino.ru/web/organizat/95?idd=48">Ссылка</a>',
    }, {
        // Опции.
        // Необходимо указать данный тип макета.
        iconLayout: 'default#image',
        // Своё изображение иконки метки.
        iconImageHref: 'images/img48.png',
        // Размеры метки.
        iconImageSize: [30, 30],
        // Смещение левого верхнего угла иконки относительно
        // её "ножки" (точки привязки).
        iconImageOffset: [-3, -42]
    });


    myPlacemark72 = new ymaps.Placemark([43.0225865745136, 44.660696499999936], {
        balloonContentHeader: '   ЛЕСТНИЦЫ   ',

        balloonContentBody: 'Адрес ул.Первомайская, 32        <a href="http://agent1156.myjino.ru/web/organizat/99?idd=48">Ссылка</a>',
    }, {
        // Опции.
        // Необходимо указать данный тип макета.
        iconLayout: 'default#image',
        // Своё изображение иконки метки.
        iconImageHref: 'images/img48.png',
        // Размеры метки.
        iconImageSize: [30, 30],
        // Смещение левого верхнего угла иконки относительно
        // её "ножки" (точки привязки).
        iconImageOffset: [-3, -42]
    });


    myPlacemark73 = new ymaps.Placemark([43.05849757450742, 44.684995999999956], {
        balloonContentHeader: '   ПРОМХОЛОД   ',

        balloonContentBody: 'Адрес ул.Пожарского, 36      <a href="http://agent1156.myjino.ru/web/organizat/97?idd=49">Ссылка</a>',
    }, {
        // Опции.
        // Необходимо указать данный тип макета.
        iconLayout: 'default#image',
        // Своё изображение иконки метки.
        iconImageHref: 'images/img49.png',
        // Размеры метки.
        iconImageSize: [30, 30],
        // Смещение левого верхнего угла иконки относительно
        // её "ножки" (точки привязки).
        iconImageOffset: [-3, -42]
    });

    myPlacemark74 = new ymaps.Placemark([43.01479557449353, 44.66111849999995], {
        balloonContentHeader: '    ТОРГСЕРВИС   ',

        balloonContentBody: 'Адрес пр.Доватора, 7     <a href="http://agent1156.myjino.ru/web/organizat/98?idd=49">Ссылка</a>',
    }, {
        // Опции.
        // Необходимо указать данный тип макета.
        iconLayout: 'default#image',
        // Своё изображение иконки метки.
        iconImageHref: 'images/img49.png',
        // Размеры метки.
        iconImageSize: [30, 30],
        // Смещение левого верхнего угла иконки относительно
        // её "ножки" (точки привязки).
        iconImageOffset: [-3, -42]
    });


    myPlacemark75 = new ymaps.Placemark([43.073784574497424, 44.67815099999991], {
        balloonContentHeader: '    CITYLINE   ',

        balloonContentBody: 'Адрес г.Владикавказ, ул.П.Морозова/Тельмана, 49/64а     <a href="http://agent1156.myjino.ru/web/organizat/101?idd=51">Ссылка</a>',
    }, {
        // Опции.
        // Необходимо указать данный тип макета.
        iconLayout: 'default#image',
        // Своё изображение иконки метки.
        iconImageHref: 'images/img49.png',
        // Размеры метки.
        iconImageSize: [30, 30],
        // Смещение левого верхнего угла иконки относительно
        // её "ножки" (точки привязки).
        iconImageOffset: [-3, -42]
    });



    myMap.geoObjects.add(myPlacemark65);


    /* myMap.geoObjects.add(myPlacemark75);
     myMap.geoObjects.add(myPlacemark74);
     myMap.geoObjects.add(myPlacemark73);
     myMap.geoObjects.add(myPlacemark72);
     myMap.geoObjects.add(myPlacemark71);
     myMap.geoObjects.add(myPlacemark70);
     myMap.geoObjects.add(myPlacemark69);
     myMap.geoObjects.add(myPlacemark68);
     myMap.geoObjects.add(myPlacemark67);
     myMap.geoObjects.add(myPlacemark66);
     myMap.geoObjects.add(myPlacemark65);
     myMap.geoObjects.add(myPlacemark64);
     myMap.geoObjects.add(myPlacemark63);
     myMap.geoObjects.add(myPlacemark62);
     myMap.geoObjects.add(myPlacemark61);
     myMap.geoObjects.add(myPlacemark60);
     myMap.geoObjects.add(myPlacemark59);
     myMap.geoObjects.add(myPlacemark58);
     myMap.geoObjects.add(myPlacemark57);

     myMap.geoObjects.add(myPlacemark56);
     myMap.geoObjects.add(myPlacemark55);
     myMap.geoObjects.add(myPlacemark54);
     myMap.geoObjects.add(myPlacemark53);
     myMap.geoObjects.add(myPlacemark52);
     myMap.geoObjects.add(myPlacemark51);
     myMap.geoObjects.add(myPlacemark50);
     myMap.geoObjects.add(myPlacemark49);
     myMap.geoObjects.add(myPlacemark48);
     myMap.geoObjects.add(myPlacemark47);
     myMap.geoObjects.add(myPlacemark46);
     myMap.geoObjects.add(myPlacemark45);
     myMap.geoObjects.add(myPlacemark44);
     myMap.geoObjects.add(myPlacemark43);
     myMap.geoObjects.add(myPlacemark42);
     myMap.geoObjects.add(myPlacemark41);
     myMap.geoObjects.add(myPlacemark40);
     myMap.geoObjects.add(myPlacemark39);
     myMap.geoObjects.add(myPlacemark38);
     myMap.geoObjects.add(myPlacemark37);

     myMap.geoObjects.add(myPlacemark36);

     myMap.geoObjects.add(myPlacemark35);
     myMap.geoObjects.add(myPlacemark34);
     myMap.geoObjects.add(myPlacemark33);
     myMap.geoObjects.add(myPlacemark32);
     myMap.geoObjects.add(myPlacemark31);
     myMap.geoObjects.add(myPlacemark30);
     myMap.geoObjects.add(myPlacemark29);
     myMap.geoObjects.add(myPlacemark28);
     myMap.geoObjects.add(myPlacemark27);
     myMap.geoObjects.add(myPlacemark26);
     myMap.geoObjects.add(myPlacemark25);
     myMap.geoObjects.add(myPlacemark24);
     myMap.geoObjects.add(myPlacemark23);
     myMap.geoObjects.add(myPlacemark22);
     myMap.geoObjects.add(myPlacemark21);
     myMap.geoObjects.add(myPlacemark20);
     myMap.geoObjects.add(myPlacemark19);
     myMap.geoObjects.add(myPlacemark18);
     myMap.geoObjects.add(myPlacemark17);
     myMap.geoObjects.add(myPlacemark17);
     myMap.geoObjects.add(myPlacemark16);

     myMap.geoObjects.add(myPlacemark15);
     myMap.geoObjects.add(myPlacemark14);
     myMap.geoObjects.add(myPlacemark13);
     myMap.geoObjects.add(myPlacemark12);
     myMap.geoObjects.add(myPlacemark11);
     myMap.geoObjects.add(myPlacemark10);
     myMap.geoObjects.add(myPlacemark9);
     myMap.geoObjects.add(myPlacemark8);
     myMap.geoObjects.add(myPlacemark7);
     myMap.geoObjects.add(myPlacemark6);
     myMap.geoObjects.add(myPlacemark5);
     myMap.geoObjects.add(myPlacemark4);
     myMap.geoObjects.add(myPlacemark3);
     myMap.geoObjects.add(myPlacemark2);*/
    /* myMap.geoObjects.add(myPlacemark);*/
}


/*    var myMap,
 myPlacemark;

 function init(){
 myMap = new ymaps.Map("map", {
 center: [43.022885, 44.681894],
 zoom: 12
 });

 myPlacemark = new ymaps.Placemark([43.022885, 44.681894], {
 hintContentHeader: 'Столица России!',

 balloonContentBody: 'Адрес <a href="http://business/organizat/1">ССылка</a>',

 });
 myPlacemark = new ymaps.Placemark(myMap.getCenter(), {
 balloonContentHeader: 'Столица России!',

 balloonContentBody: 'Адрес <a href="http://business/organizat/1">ССылка</a>',
 }, {
 // Опции.
 // Необходимо указать данный тип макета.
 iconLayout: 'default#image',
 // Своё изображение иконки метки.
 iconImageHref: 'images/img1.png',
 // Размеры метки.
 iconImageSize: [30, 42],
 // Смещение левого верхнего угла иконки относительно
 // её "ножки" (точки привязки).
 iconImageOffset: [-3, -42]
 });


 myMap.geoObjects.add(myPlacemark);
 }*/
/*
 function init() {
 var myMap = new ymaps.Map('map', {
 center: [55.74, 37.58],
 zoom: 13,
 controls: []
 });

 // Создадим экземпляр элемента управления «поиск по карте»
 // с установленной опцией провайдера данных для поиска по организациям.
 var searchControl = new ymaps.control.SearchControl({
 options: {
 provider: 'yandex#search'
 }
 });

 myMap.controls.add(searchControl);

 // Программно выполним поиск определённых кафе в текущей
 // прямоугольной области карты.
 searchControl.search('Шоколадница');
 }

 ymaps.ready(init);
 */