<script type="text/javascript" src="jquery-1.2.6.min.js"></script>
<script type="text/javascript" src="jquery.livequery.js"></script>
<script type="text/javascript" src="comment.js"></script>
<link href="dependencies/screen.css" type="text/css" rel="stylesheet" />

	<div align="center">
		
		<br clear="all" />
		<div id="posting" align="center">
		<?php
			while ($row = mysql_fetch_array($result))
			{
				$comments = mysql_query("SELECT *,
				NOW() - date_created AS CommentTimeSpent FROM facebook_posts_comments where post_id = ".$row['p_id']." order by c_id asc");		?>
			   <div class="friends_area" id="record-<?php  echo $row['p_id']?>">

			   <img src="99.jpeg" style="float:left;" alt="" />

				   <label style="float:left" class="name">

				   <b><?php echo $row['f_name'];?></b>

				   <em><?php  echo clickable_link($row['post']);?></em>
				   <br clear="all" />

				   <span>
				   <?php

				    // echo strtotime($row['date_created'],"Y-m-d H:i:s");

				    $days = floor($row['TimeSpent'] / (60 * 60 * 24));
					$remainder = $row['TimeSpent'] % (60 * 60 * 24);
					$hours = floor($remainder / (60 * 60));
					$remainder = $remainder % (60 * 60);
					$minutes = floor($remainder / 60);
					$seconds = $remainder % 60;

					if($days > 0)
					echo @date('F d Y', $row['date_created']);
					elseif($days == 0 && $hours == 0 && $minutes == 0)
					echo "few seconds ago";
					elseif($days == 0 && $hours == 0)
					echo $minutes.' minutes ago';
					else
					echo "few seconds ago";

				   ?>

				   </span>
				   <a href="javascript: void(0)" id="post_id<?php  echo $row['p_id']?>" class="showCommentBox">Comments</a>

				   </label>
				   <?php
					$userip = $_SERVER['REMOTE_ADDR'];
					if($row['userip'] == $userip){?>
				  	<a href="#" class="delete"> Remove</a>
				   <?php
					}?>
				    <br clear="all" />
					<div id="CommentPosted<?php  echo $row['p_id']?>">
						<?php
						$comment_num_row = mysql_num_rows(@$comments);
						if($comment_num_row > 0)
						{
							while ($rows = mysql_fetch_array($comments))
							{
								$days2 = floor($rows['CommentTimeSpent'] / (60 * 60 * 24));
								$remainder = $rows['CommentTimeSpent'] % (60 * 60 * 24);
								$hours = floor($remainder / (60 * 60));
								$remainder = $remainder % (60 * 60);
								$minutes = floor($remainder / 60);
								$seconds = $remainder % 60;
								?>
							<div class="commentPanel" id="record-<?php  echo $rows['c_id'];?>" align="left">
								<img src="small.png" width="40" class="CommentImg" style="float:left;" alt="" />
								<label class="postedComments">
									<?php  echo clickable_link($rows['comments']);?>
								</label>
								<br clear="all" />
								<span style="margin-left:43px; color:#666666; font-size:11px">
								<?php

								if($days2 > 0)
								echo @date('F d Y', $rows['date_created']);
								elseif($days2 == 0 && $hours == 0 && $minutes == 0)
								echo "few seconds ago";
								elseif($days2 == 0 && $hours == 0)
								echo $minutes.' minutes ago';
								else
								echo "few seconds ago";
								?>
								</span>
								<?php
								$userip = $_SERVER['REMOTE_ADDR'];
								if($rows['userip'] == $userip){?>
								&nbsp;&nbsp;<a href="#" id="CID-<?php  echo $rows['c_id'];?>" class="c_delete">Delete</a>
								<?php
								}?>
							</div>
							<?php
							}?>
							<?php
						}?>
					</div>
					<div class="commentBox" align="right" id="commentBox-<?php  echo $row['p_id'];?>" <?php echo (($comment_num_row) ? '' :'style="display:none"')?>>
						<img src="small.png" width="40" class="CommentImg" style="float:left;" alt="" />
						<label id="record-<?php  echo $row['p_id'];?>">
							<textarea class="commentMark" id="commentMark-<?php  echo $row['p_id'];?>" name="commentMark" cols="60"></textarea>
						</label>
						<br clear="all" />
						<a id="SubmitComment" class="small button comment">Trả lời</a>
					</div>
			   </div>
			<?php
			}
			if($show_more_button == 1){?>
			<div id="bottomMoreButton">
			<a id="more_<?php echo @$next_records?>" class="more_records" href="javascript: void(0)">Older Posts</a>
			</div>
			<?php
			}?>
		</div>
	</div>