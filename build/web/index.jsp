<jsp:include page="templates/header.jsp" flush="true">
    <jsp:param name="title" value="Halaman Depan" />    
</jsp:include>

<jsp:include page="templates/navigation.jsp" flush="true">
    <jsp:param name="active" value="0" />    
</jsp:include>  
<!--========================================================================== Intro and FlexSlider =====================================================================================-->    
<jsp:include page="templates/flex-slider.jsp" flush="true" />


<!--========================================================================== Content Part 1 =====================================================================================-->             
<hr />
<div class="wrapper">
    <div class="grids">
        <div class="grid-10 grid">
            <h2>About Us</h2>
            <p>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Proin in orci eu quam fringilla elementum. Nam viverra, risus dapibus euismod iaculis, tellus ligula convallis purus, eget posuere arcu erat non tellus. Sed id imperdiet massa. Nam semper, urna ut elementum mollis, lorem velit pretium tellus, sed dictum mauris nunc vitae eros. Cras sit amet est at sapien dapibus volutpat at at tellus. Nunc urna diam, congue ut viverra eget, fermentum quis diam. Duis eu lectus tellus, nec pharetra dui. Sed elit turpis, hendrerit at tincidunt nec, lacinia vel dolor. Nullam tristique laoreet lorem, in pharetra ipsum tempor eget. Morbi cursus suscipit vestibulum. Nunc sollicitudin aliquet arcu eget pretium. </p>

            <p>Nullam urna lectus, pulvinar vel mollis ut, placerat sed arcu. Phasellus mollis mattis velit, at scelerisque justo ultrices eget. Vestibulum ante ipsum primis in faucibus orci luctus et ultrices posuere cubilia Curae; Class aptent taciti sociosqu ad litora torquent per conubia nostra, per inceptos himenaeos. Curabitur blandit pretium laoreet. Donec sollicitudin ligula eu nibh venenatis feugiat. Nunc interdum magna nec lectus fermentum tempor. </p>
        </div><!--end of grid-10--> 

        <div class="grid-6 grid grey">
            <span style="text-align: center"><h2>Login Form</h2></span>
            <p class="quote">
            <form style="border: 1px solid #eee; padding-left: 20px;" class="login" method="get" action="SessionManager">
                <input type="hidden" name="action" value="login" />
                <div style="padding:10px; margin-left:auto;"> <span style="width:80px; float:left"> Username </span> <input name="username" type="text" placeholder="Enter your username" style="width:200px" /></div>
                <div style="padding:10px; margin-left:auto;"> <span style="width:80px; float:left"> Password </span> <input name="password" type="password" placeholder="Enter your password" style="width:200px"  /></div>
                <div style="padding-right:50px; float:right;"> <input type="submit" value="Sign In" class="button" /> </div>									
                <br /><br /><div>
                    <a href="SessionManager?action=forgot-password">Reset Password</a>
                    <br />Don't have an account?<br />
                    <a href="signup.jsp" class="button">Sign Up Now</a>
                </div>
            </form>
            </p>            
        </div>
    </div><!--end of grids-->
</div><!--end of wrapper-->
<hr /> 		

<!--========================================================================== Content Part 2 =====================================================================================-->         

<div class=" grids flexslider intro ticker top"><!--http://flex.madebymufffin.com/-->
    <noscript>You have Javascript set to disabled. This ticker runs with Javascript and will only be shown if you turn it on.<br />
    Sie haben Javascript deaktiviert. Dieser Ticker wird nur vollständig angezeigt, wenn Sie Javascript aktivieren.</noscript> 

    <ul class="slides">
        <li>
            <p class="text-center">
            <div class="grid-5 grid" style="border:1px dashed #aaa; width:340px; margin-left:20px"> 
                <span style="text-align:center"><h4>Restoran Sakura Sake</h4></span>
                <hr />
                <span style="float:left; margin-left:20px;">
                    <img src="img/profil.png" width="60px" heigth="60px" style="border:3px solid #eee; margin-left: 20px"/>
                    <a class="button" href="RestoranManager?action=lihat-profil&id=10" style="width:80px; font-size:10px; margin-left: 8px">Lihat profil restoran!</a></span>
                <span style="float:right; width:200px; margin-right:10px; text-align: justify">
                        Lorem ipsum dolor sit amet, consectetur adipiscing elit. Proin in orci eu quam fringilla elementum.
                 </span>
            </div>
            </p>	
             <p class="text-center">
            <div class="grid-5 grid" style="border:1px dashed #aaa; width:340px; margin-left:20px"> 
                <span style="text-align:center"><h4>Restoran Sakura Sake</h4></span>
                <hr />
                <span style="float:left; margin-left:20px;">
                    <img src="img/profil.png" width="60px" heigth="60px" style="border:3px solid #eee; margin-left: 20px"/>
                    <a class="button" href="RestoranManager?action=lihat-profil&id=10" style="width:80px; font-size:10px; margin-left: 8px">Lihat profil restoran!</a></span>
                <span style="float:right; width:200px; margin-right:10px; text-align: justify">
                        Lorem ipsum dolor sit amet, consectetur adipiscing elit. Proin in orci eu quam fringilla elementum.
                 </span>
            </div>
            </p>
             <p class="text-center">
            <div class="grid-5 grid" style="border:1px dashed #aaa; width:340px; margin-left:20px"> 
                <span style="text-align:center"><h4>Restoran Sakura Sake</h4></span>
                <hr />
                <span style="float:left; margin-left:20px;">
                    <img src="img/profil.png" width="60px" heigth="60px" style="border:3px solid #eee; margin-left: 20px"/>
                    <a class="button" href="RestoranManager?action=lihat-profil&id=10" style="width:80px; font-size:10px; margin-left: 8px">Lihat profil restoran!</a></span>
                <span style="float:right; width:200px; margin-right:10px; text-align: justify">
                        Lorem ipsum dolor sit amet, consectetur adipiscing elit. Proin in orci eu quam fringilla elementum.
                 </span>
            </div>
            </p>
        </li>
         <li>
            <p class="text-center">
            <div class="grid-5 grid" style="border:1px dashed #aaa; width:340px; margin-left:20px"> 
                <span style="text-align:center"><h4>Restoran Sakura Sake</h4></span>
                <hr />
                <span style="float:left; margin-left:20px;">
                    <img src="img/profil.png" width="60px" heigth="60px" style="border:3px solid #eee; margin-left: 20px"/>
                    <a class="button" href="RestoranManager?action=lihat-profil&id=10" style="width:80px; font-size:10px; margin-left: 8px">Lihat profil restoran!</a></span>
                <span style="float:right; width:200px; margin-right:10px; text-align: justify">
                        Lorem ipsum dolor sit amet, consectetur adipiscing elit. Proin in orci eu quam fringilla elementum.
                 </span>
            </div>
            </p>	
             <p class="text-center">
            <div class="grid-5 grid" style="border:1px dashed #aaa; width:340px; margin-left:20px"> 
                <span style="text-align:center"><h4>Restoran Sakura Sake</h4></span>
                <hr />
                <span style="float:left; margin-left:20px;">
                    <img src="img/profil.png" width="60px" heigth="60px" style="border:3px solid #eee; margin-left: 20px"/>
                    <a class="button" href="RestoranManager?action=lihat-profil&id=10" style="width:80px; font-size:10px; margin-left: 8px">Lihat profil restoran!</a></span>
                <span style="float:right; width:200px; margin-right:10px; text-align: justify">
                        Lorem ipsum dolor sit amet, consectetur adipiscing elit. Proin in orci eu quam fringilla elementum.
                 </span>
            </div>
            </p>
             <p class="text-center">
            <div class="grid-5 grid" style="border:1px dashed #aaa; width:340px; margin-left:20px"> 
                <span style="text-align:center"><h4>Restoran Sakura Sake</h4></span>
                <hr />
                <span style="float:left; margin-left:20px;">
                    <img src="img/profil.png" width="60px" heigth="60px" style="border:3px solid #eee; margin-left: 20px"/>
                    <a class="button" href="RestoranManager?action=lihat-profil&id=10" style="width:80px; font-size:10px; margin-left: 8px">Lihat profil restoran!</a></span>
                <span style="float:right; width:200px; margin-right:10px; text-align: justify">
                        Lorem ipsum dolor sit amet, consectetur adipiscing elit. Proin in orci eu quam fringilla elementum.
                 </span>
            </div>
            </p>
        </li>
    </ul>

</div><!--end of div flexslider-->
<hr /> 

<!--========================================================================== Footer =====================================================================================-->     
<div class="wrapper">
    <div id="footer">
        <div class="grids">
            <div class="grid-5 grid text-center" style="padding:10px">
                <span>&copy; Group 10, LAW Fasilkom UI 2012</span>
            </div>
        </div><!--end of grids-->
    </div><!--end of footer-->
</div><!--end of wrapper-->


<script type="text/javascript"> <!--Outdated browsers warning/message and link to Browser-Update. Comment or delete it if you don´t want to use it-->
    var $buoop = {} 
    $buoop.ol = window.onload; 
    window.onload=function(){ 
        try {if ($buoop.ol) $buoop.ol();}catch (e) {} 
        var e = document.createElement("script"); 
        e.setAttribute("type", "text/javascript"); 
        e.setAttribute("src", "http://browser-update.org/update.js"); 
        document.body.appendChild(e); 
    } 
</script> 

</body>
</html>