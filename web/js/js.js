$(document).ready(function(){
    $('.service-wrapper img').hover(
        function(){
           $(this).animate({'width':'100px'});
           //$(this).next().css({'display':'none'});
        },
        function(){
            $(this).animate({'width':'50px'}); 
            //$(this).next().css({'display':'block'});
            
        }
        );
})


/*$(document).ready(function(){
    $('img').hover(
        function(){
           $(this).animate({'width':'100px'});
           //$(this).next().css({'display':'none'});
        },
        function(){
            $(this).animate({'width':'50px'}); 
            //$(this).next().css({'display':'block'});
            
        }
        );
})*/