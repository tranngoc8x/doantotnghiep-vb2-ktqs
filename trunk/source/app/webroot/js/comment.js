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
				$.post("../../commons/showpost/"+a+"/"+token+"/"+items, {
				}, function(response){
					//console.log(response);
					var data = $.parseJSON(response);
					thoigian = data.Comment.TimeSpent;
					arts = thoigian.split(":");
					ts = arts[0]*3600+ arts[1]*60+arts[2];
					if(ts>2073600){
					    val = data.Comment.ngayviet;
					}
					else if(ts>86400) val=  'hôm qua';
					else if(ts>3600) val = arts[0]+' giờ trước.';
					else if(ts>60) val = arts[1]+' phút trước.';
					else val = 'vài giây trước.';


					value = "<div class='friends_area' id='record-"+data.Comment.id+"'>"+
					"<div class='span1'>"+
					"<img src='"+baseurl+"/img/surgeon.png' style='float:left;'/>"+
					"</div>"+
					"<div class='span11'>"+
					   "<label class='name'>"+
					   "<b>"+data.Member.ten+"</b>&nbsp;"+
					   "<em>"+data.Comment.content+"</em>"+
					   "<br />"+
					   "<span>"+
					  val+
					   "</span>"+
					   "<a href='javascript: void(0)' id='post_id"+data.Comment.id+"' class='showCommentBox'>Comments</a>"+
					   "</label>"+
					    "<a href='#' class='delete'> Remove</a>"+
					"</div>"+
					"<div class='clearfix'></div>"+
					"<div id='CommentPosted"+data.Comment.id+"'>"+
					    "<div class='clearfix'></div>"+
					"</div>"+
					"<div class='commentBox row' align='right' id='commentBox-"+data.Comment.id+"' style='display:none'>"+
					   " <div class='span1'>"+
					        "<img src='"+baseurl+"/img/surgeon_small.png' class='CommentImg' style='float:left;'/>"+
					    "</div>"+
					     "<div class='span11'>"+
					        "<label id='record-"+data.Comment.id+"'>"+
					            "<textarea class='span12' placeholder='Hãy viết ý kiến của bạn vào đây...' id='commentMark-"+data.Comment.id+"' name='commentMark' cols='60'></textarea>"+
					        "</label>"+
					        "<a id='SubmitComment' class='btn btn-icon btn-primary glyphicons circle_ok'>Trả lời</a>"+
					    "</div>"+
					"</div>";
					$('#posting').prepend($(value).fadeIn('slow'));
					$("#watermark").val('');
				});
			}
		});

		//showCommentBox
		//hiển thị ô trả lời khi bấm link(#nút) trả lời ý kiến đánh giá
		$('a.showCommentBox').click(function(e){
			var getpID =  $(this).attr('id').replace('post_id','');
			$("#commentBox-"+getpID).css('display','');
		});

		//SubmitComment
		//khi bấm nút trả lời
		$('a.replyCmt').click(function(e){
			var token = $("#token").val();
			var getpID =  $(this).parent().parent().attr('id').replace('commentBox-','');
			var comment_text = $("#commentMark-"+getpID).val();
			if(comment_text != "1")
			{
				$.post("../../commons/replypost/"+getpID+"/"+comment_text+"/"+token, {
				}, function(response){
					console.log(response);
					data2 = $.parseJSON(response);
					value2 = "<div class='commentPanel row' id='record-"+data2.ReplyComment.id+"' align='left'>"+
						"<div id='record-"+data2.ReplyComment.id+"' align='left'>"+
							"<img src='"+baseurl+"/img/surgeon_small.png' style='float:left;'/>"+
							"<label class='postedComments'>"+
								"<b>"+data2.Member.ten+"</b>&nbsp;"+
								data2.ReplyComment.content+
							"</label>"+
							"<br clear='all' />"+
							"<span style='margin-left:43px; color:#666666; font-size:11px'>"+
							"<?php ?>"+
							"</span>"+
							"&nbsp;&nbsp;<a href='#' id='CID-"+data2.ReplyComment.id+"' class='c_delete'>Delete</a>"+
						"</div>"+
					"</div>";
					$('#CommentPosted'+getpID).append($(value2).fadeIn('slow'));
					$("#commentMark-"+getpID).val("");
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

		$('a.delete').click(function(e){
			if(confirm('Bạn có chắc muốn xóa bình luận này ?')==false)
			return false;
			e.preventDefault();
			var parent  = $('a.delete').parent().parent().parent();
			var pid    = parent.attr('id').replace('record-','');
			var token = $("#token").val();
			//var main_tr = $('#'+temp).parent();
			$.ajax({
				type: 'get',
			//	url: 'delete.php?id='+ parent.attr('id').replace('record-',''),
				url: '../../commons/deleteCmt/'+ pid+"/"+token,
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
		$('a.c_delete').click(function(e){

			if(confirm('Bạn có chắc muốn xóa bình luận này ?')==false)
			return false;
			e.preventDefault();
			var token = $("#token").val();
			var parent  = $('a.c_delete').parent().parent();
			var c_id =  $(this).attr('id').replace('CID-','');
			$.ajax({
				type: 'get',
				url: '../../commons/deleteCmtChild/'+ c_id+"/"+token,
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