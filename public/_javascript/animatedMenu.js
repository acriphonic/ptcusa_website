$(document).ready(function(){  
  
    //When mouse rolls over  
    $("#nav li").mouseover(function(){  
        $(this).stop().animate({height:'100px'},{queue:false, duration:400, easing: 'easeInSine'})  
    });  
  
    //When mouse is removed  
    $("#nav li").mouseout(function(){  
        $(this).stop().animate({height:'50px'},{queue:false, duration:500, easing: 'easeOutSine'})  
    });  
  
});  