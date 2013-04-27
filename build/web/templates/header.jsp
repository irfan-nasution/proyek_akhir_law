<!DOCTYPE html>
<html lang="en"><!-- use class="debug" here if you develope a template and want to check-->
<head>
    <meta charset="UTF-8" />
    <meta name="viewport" content="width=device-width, minimum-scale=1.0, maximum-scale=1.0" />
    <!-- some meta tags, important for SEO"--> 
    <meta name="description" content="online interaction media" />
    <meta name="keywords" content="makanapa, restaurant, online" />
    <meta name="revisit-after" content="7 days" />
    
    <title><%= request.getParameter("title") %></title>
    <link rel="stylesheet" href="css/inuit.css" />
    <link rel="stylesheet" href="css/fluid-grid16-1100px.css" />
    <link rel="stylesheet" href="css/eve-styles.css" />
    <link rel="shortcut icon" href="icon.png" />
    <link rel="apple-touch-icon-precomposed" href="img/icon.png" />

    <script src="js/respond-min.js" type="text/javascript"></script>
    <script src="js/jquery.js" type="text/javascript"></script>
    <script src="js/jquery.flexslider-min.js" type="text/javascript"></script>
    <link rel="stylesheet" href="css/flexslider.css" />

    <script type="text/javascript">
      $(window).load(function() {
            $('.flexslider').flexslider({
                      animation: "slide",<!--you can also choose fade here-->
                      directionNav: true,<!--Attention: if you choose true here, the nav-buttons will also appear in the ticker! -->
                      keyboardNav: true,
                      mousewheel: false
            });
      });
    </script>
</head>