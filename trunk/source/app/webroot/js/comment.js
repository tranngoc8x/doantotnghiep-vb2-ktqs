// <![CDATA[

	$(document).ready(function(){
		$('#shareButton').click(function(){
			var a = $("#watermark").val();
			if(a != "")
			{
				$.post("commons/showpost/"+a, {
				}, function(response){
					console.log(response);
					$('#posting').prepend($(response).fadeIn('slow'));
					$("#watermark").val("What's on your mind?");
				});
			}
		});


		$('.commentMark').livequery("focus", function(e){

			var parent  = $('.commentMark').parent();
			$(".commentBox").children(".commentMark").css('width','320px');
			$(".commentBox").children("a#SubmitComment").hide();
			// $(".commentBox").children(".CommentImg").hide();

			var getID =  parent.attr('id').replace('record-','');
			$("#commentBox-"+getID).children("a#SubmitComment").show();
			$('.commentMark').css('width','300px');
			$("#commentBox-"+getID).children(".CommentImg").show();
		});

		//showCommentBox
		$('a.showCommentBox').livequery("click", function(e){

			var getpID =  $(this).attr('id').replace('post_id','');

			$("#commentBox-"+getpID).css('display','');
			$("#commentMark-"+getpID).focus();
			$("#commentBox-"+getpID).children("CommentImg").show();
			$("#commentBox-"+getpID).children("a#SubmitComment").show();
		});

		//SubmitComment
		$('a.comment').livequery("click", function(e){

			var getpID =  $(this).parent().attr('id').replace('commentBox-','');
			var comment_text = $("#commentMark-"+getpID).val();

			if(comment_text != "Write a comment...")
			{
				$.post("add_comment.php?comment_text="+comment_text+"&post_id="+getpID, {

				}, function(response){

					$('#CommentPosted'+getpID).append($(response).fadeIn('slow'));
					$("#commentMark-"+getpID).val("Write a comment...");
				});
			}

		});

		//more records show
		$('a.more_records').livequery("click", function(e){

			var next =  $('a.more_records').attr('id').replace('more_','');

			$.post("posts.php?show_more_post="+next, {

			}, function(response){
				$('#bottomMoreButton').remove();
				$('#posting').append($(response).fadeIn('slow'));

			});

		});

		//deleteComment
		$('a.c_delete').livequery("click", function(e){

			if(confirm('Are you sure you want to delete this comment?')==false)

			return false;

			e.preventDefault();
			var parent  = $('a.c_delete').parent();
			var c_id =  $(this).attr('id').replace('CID-','');

			$.ajax({

				type: 'get',

				url: 'delete_comment.php?c_id='+ c_id,

				data: '',

				beforeSend: function(){

				},

				success: function(){

					parent.fadeOut(200,function(){

						parent.remove();

					});

				}

			});
		});

		/// hover show remove button
		$('.friends_area').livequery("mouseenter", function(e){
			$(this).children("a.delete").show();
		});
		$('.friends_area').livequery("mouseleave", function(e){
			$('a.delete').hide();
		});
		/// hover show remove button


		$('a.delete').livequery("click", function(e){

		if(confirm('Are you sure you want to delete this post?')==false)

		return false;

		e.preventDefault();

		var parent  = $('a.delete').parent();

		var temp    = parent.attr('id').replace('record-','');

		var main_tr = $('#'+temp).parent();

			$.ajax({

				type: 'get',

				url: 'delete.php?id='+ parent.attr('id').replace('record-',''),

				data: '',

				beforeSend: function(){

				},

				success: function(){

					parent.fadeOut(200,function(){

						main_tr.remove();

					});

				}

			});

		});

	});

	// ]]>