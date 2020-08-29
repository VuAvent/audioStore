<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE HTML>
<html>
<head>
<title>Register</title>
<meta name="viewport" content="width=device-width, initial-scale=1, maximum-scale=1">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<link href="resource/css/style.css" rel="stylesheet" type="text/css" media="all" />
<link href='http://fonts.googleapis.com/css?family=Open+Sans:400,300,600,700,800' rel='stylesheet' type='text/css'>
<script type="text/javascript" src="resource/js/jquery.min.js"></script>
<script type="text/javascript">
        $(document).ready(function() {
            $(".dropdown img.flag").addClass("flagvisibility");

            $(".dropdown dt a").click(function() {
                $(".dropdown dd ul").toggle();
            });
                        
            $(".dropdown dd ul li a").click(function() {
                var text = $(this).html();
                $(".dropdown dt a span").html(text);
                $(".dropdown dd ul").hide();
                $("#result").html("Selected value is: " + getSelectedValue("sample"));
            });
                        
            function getSelectedValue(id) {
                return $("#" + id).find("dt a span.value").html();
            }

            $(document).bind('click', function(e) {
                var $clicked = $(e.target);
                if (! $clicked.parents().hasClass("dropdown"))
                    $(".dropdown dd ul").hide();
            });


            $("#flagSwitcher").click(function() {
                $(".dropdown img.flag").toggleClass("flagvisibility");
            });
        });
     </script>
<!-- start menu -->     
<link href="resource/css/megamenu.css" rel="stylesheet" type="text/css" media="all" />
<script type="text/javascript" src="resource/js/megamenu.js"></script>
<script>$(document).ready(function(){$(".megamenu").megamenu();});</script>
<!-- end menu -->
<!-- top scrolling -->
<script type="text/javascript" src="resource/js/move-top.js"></script>
<script type="text/javascript" src="resource/js/easing.js"></script>
   <script type="text/javascript">
		jQuery(document).ready(function($) {
			$(".scroll").click(function(event){		
				event.preventDefault();
				$('html,body').animate({scrollTop:$(this.hash).offset().top},1200);
			});
		});
	</script>
</head>
<body>
	<jsp:include page="header.jsp"></jsp:include>
	<div class="register_account">
          	<div class="wrap">
    	      <h4 class="title">Create an Account</h4>			
    	      <div style="color: red">${errorMessage}</div>
    		   <form action="${pageContext.request.contextPath}/register"
			method="post">
    			 <div class="col_1_of_2 span_1_of_2">
		   			 <div><input type="text" name="username" placeholder="Username"></div>
		    			<div><input type="password" name="password" placeholder="Password" style="width: 250px; height:18px;margin:9.8px 0; padding:8px; border: 1px solid #f0f0f0"></div>
		    			<div><input type="text" name= "firstname" placeholder="First-Name" ></div>
		    			<div><input type="text" name ="lastname" placeholder="lastname"></div>
		    	 </div>
		    	  <div class="col_1_of_2 span_1_of_2">	
		    		<div><input type="text" name ="address" placeholder="Address" ></div>
		    		<div><input type="text" name="phone" placeholder="Phone" ></div> 
		          <div><input type="text" name="city" placeholder="City" ></div>
		          <div><input type="text" name="email" placeholder="Email" ></div>
				</div>
		         <button class="grey" type="submit">Create account</button>
		         <p class="terms">By clicking 'Create Account' you agree to the <a href="#">Terms &amp; Conditions</a>.</p>
		         <div class="clear"></div>
		    </form>
    	  </div> 
        </div>
        	<div style="height: 137px"></div>
        
	<jsp:include page="footer.jsp"></jsp:include>


  <script type="text/javascript">
			$(document).ready(function() {
			
				var defaults = {
		  			containerID: 'toTop', // fading element id
					containerHoverID: 'toTopHover', // fading element hover id
					scrollSpeed: 1200,
					easingType: 'linear' 
		 		};
				
				
				$().UItoTop({ easingType: 'easeOutQuart' });
				
			});
		</script>
        <a href="#" id="toTop" style="display: block;"><span id="toTopHover" style="opacity: 1;"></span></a>
</body>
</html>