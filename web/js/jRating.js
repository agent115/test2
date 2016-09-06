$(document).ready(function() {


    $("#res").hide();

    $(".basic").each(function() {

        var vote;

        if($(this).hasClass('disable')) {
            vote = true;
        }
        else {
            vote = false;
        }

        $(this).jRating({
            bigStarsPath:'/web/icons/stars.png',
            smallStarsPath:'/small.png',
            phpPath:'/controllers/CategoryController.php',
            type:'big',
            length:5,
            step:false,
            showrateInfo:true,
            canRateAgain:false,
            rateMax:5,
            rateInfosX:-45,
            rateInfosY:5,
            nbRates:5,

            isDisabled:vote,

            onSuccess : function(html1, html2, html3) {
                $("#res").html(html3.message + '<br />' + 'Ваши баллы - ' + html3.rait);
                if($("#res").hasClass('error')) {
                    $("#res").removeClass('error');
                }
                $("#res").addClass('success')
                    .fadeIn(1000)
                    .delay(1000)
                    .fadeOut(500);
            },
            onError : function(html1, html2, html3) {
                $("#res").html(html3.message);

                if($("#res").hasClass('success')) {
                    $("#res").removeClass('success');
                }
                $("#res").addClass('error')
                    .fadeIn(1000)
                    .delay(1000)
                    .fadeOut(500);
            }

        });

    });

});