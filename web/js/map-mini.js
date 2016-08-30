  var maps = new ymaps.Map("map", {
            center: [43.03804730, 44.66129850], 
            zoom: 5

             myPlacemark = new ymaps.Placemark([43.00076082, 44.68593824], { 
            balloonContentHeader: 'Столица России!', 
            
            balloonContentBody: 'Адрес <a href="http://business/organizat/1">ССылка</a>', 
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

              myMap.geoObjects.add(myPlacemark);

        });