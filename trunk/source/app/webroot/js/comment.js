// <![CDATA[

	$(document).ready(function(){
		//khi bấm nút bình luận
		$('#shareButton').click(function(){
			var a = $("#watermark").val();
			var token = $("#token").val();
			var items = $("#itemid").val();
			//if(a!='' && )
			if(a != "" && token !='')
			{
				$.post("../../commons/writePost/"+a+"/"+token+"/"+items, {
				}, function(response){
					$('#posting').prepend($(response).fadeIn('slow'));
					$("#watermark").val('');
				});
			}
		});

		//showCommentBox
		//hiển thị ô trả lời khi bấm link(#nút) trả lời ý kiến đánh giá
		//$('a.showCommentBox').click(function(e){
		$('a.showCommentBox').livequery("click", function(e){
			var getpID =  $(this).attr('id').replace('post_id','');
			$("#commentBox-"+getpID).css('display','');
		});

		//SubmitComment
		//khi bấm nút trả lời
		//$('a.replyCmt').click(function(e){
		$('a.replyCmt').livequery("click", function(e){
			var token = $("#token").val();
			var getpID =  $(this).parent().parent().attr('id').replace('commentBox-','');
			var comment_text = $("#commentMark-"+getpID).val();
			var items = $("#itemid").val().split('_');
			if(comment_text != "")
			{
				$.post("../../commons/replypost/"+items[0]+"/"+getpID+"/"+comment_text+"/"+token, {
				}, function(response2){
					$('#CommentPosted'+getpID).append($(response2).fadeIn('slow'));
					$("#commentMark-"+getpID).val("");
				});
			}

		});

		//more records show showmorepost
		$('a.more_records').livequery("click", function(e){
			var next =  $('a.more_records').attr('id').replace('more_','');
			var items = $("#itemid").val();
			$.post("../../commons/morepost/"+next+'/'+items, {}, function(response){
				$('#bottomMoreButton').remove();
					$('#posting').append($(response).fadeIn('slow'));
			});
		});


		$('a.delete').livequery("click", function(e){
			if(confirm('Bạn có chắc muốn xóa bình luận này ?')==false)
			return false;
			e.preventDefault();
			var parent  = $(this).parent().parent().parent();
			var pid    = parent.attr('id').replace('record-','');
			var token = $("#token").val();
			var items = $("#itemid").val().split('_');
			$.ajax({
				type: 'get',
				url: '../../commons/deleteCmt/'+ pid+"/"+items[0]+"/"+token,
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

		//deleteChild Comment
		$('a.c_delete').livequery("click", function(e){

			if(confirm('Bạn có chắc muốn xóa bình luận này ?')==false)
			return false;
			e.preventDefault();
			var token = $("#token").val();
			var parent  = $(this).parent().parent();
			var items = $("#itemid").val().split('_');
			var c_id =  $(this).attr('id').replace('CID-','');

			$.ajax({
				type: 'get',
				url: '../../commons/deleteCmtChild/'+ c_id+"/"+items[0]+"/"+token,
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

	});

	// ]]>