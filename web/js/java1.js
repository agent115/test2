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

    function init(){     
        myMap = new ymaps.Map("map", {
            center: [43.00076082, 44.68593824],
            zoom: 12
        });

       
           myPlacemark28 = new ymaps.Placemark([43.055816574500504,44.642289999999996], { 
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
         myPlacemark29 = new ymaps.Placemark([43.019877574506616,44.67609349999998], { 
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
                    myPlacemark30 = new ymaps.Placemark([43.05088207451249,44.644382999999976], { 
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
                           myPlacemark31 = new ymaps.Placemark([43.06766042515652,44.630881107697824], { 
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
        
                                      myPlacemark32 = new ymaps.Placemark([43.06766042515652,44.630881107697824], { 
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
        
                   myPlacemark33 = new ymaps.Placemark([43.161776500188324,44.155245999999956], { 
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
               /*  myMap.geoObjects.add(myPlacemark33);
                 myMap.geoObjects.add(myPlacemark32);
                            myMap.geoObjects.add(myPlacemark31);
                          myMap.geoObjects.add(myPlacemark30);
                     myMap.geoObjects.add(myPlacemark29);
                    myMap.geoObjects.add(myPlacemark28);*/
                  
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