$(document).ready(function(){
    $(window).resize(function(){
        if(window.innerWidth > 768) {
                $("#left").removeAttr("style");
                $("#main").removeAttr("style");
            }
        });
    	$('#hiddenmenu a').click(function(){
    		var s = $(".topmenu").css('display');
    		if(s=="none"){
    			$(".topmenu").slideDown('show');
    		}else{
    			$(".topmenu").slideUp('show');
    		}
    	});
    	$('#hiddenmenu span').click(function(){
    		if ($('#left').is(':hidden')) {
                    $('#left').css({'height': $('#main').height(),'overflow': 'hidden'});
                    $('#main').css({
                        'left': '260px',
                        'position': 'relative',
                        'float':"left"
                    });
                    $('#left').css({'height': $('#main').height(),'overflow': 'hidden'}).show('slow');
                } else {
                    $('#left').hide('slow');
                    $('#main').css({
                        'left': '0',
                    });
                    $('#viewport').css({
                        'height': 'auto',
                        'overflow': 'auto'
                    });
                }

                return false;
	});
    $('.checkall').click(function(){
       // console.log(this.checked);
        if(this.checked == true){
            $('input[name="check"]').prop("checked" , true);
        }else{
            $('input[name="check"]').prop( "checked" , false );
        }
    });
    $(".delall").click(function(){
        var str = "";
        $('input[name="check"]:checked').each(function(){
           str +=$(this).val()+",";
        });
        str = str.substring(0,(str.length-1));
        var path = $(location).attr('href');
        arpath = path.split('/');
        arpath.pop();
        var a = new Array("Wind","Rain","Fire");
        var path = arpath.join('/')+'/multidel/'+str;
        window.location.href = path;

    });
});
function jumpTo(link,mess){
    if(confirm(mess)){
        window.location.href = link;
    }
    else return;
}