<div class="wrapper">
    <div class="grids top">
    <div class="grid-6 grid intro">
        <% 
           if(session.getAttribute("message") == null);
           else{
              String[] messageInfo = (String[])session.getAttribute("message");
              String message = messageInfo[1];
              int type = Integer.parseInt(messageInfo[0]);
              switch(type){
                  case 0:  //success message
                      out.print("<p class='message success'>"+message+"</p>");
                      break;
                  case 1:  //informative message
                      out.print("<p class='message info'>"+message+"</p>");
                      break;                      
                  case 2:  //warning message
                      out.print("<p class='message warning'>"+message+"</p>");
                      break; 
                  case 3:  //error message
                      out.print("<p class='message error'>"+message+"</p>");
                      break;       
              }
              session.removeAttribute("message");
           }
        %>
        
        <hr />
        <span style="text-align:center"><h3> Selamat datang di makanapa.com </h3></span>
        <hr />
        <p style="text-align:justify; font-size:28px">Melalui website ini, kamu dapat mencari melakukan pemesanan maupun reservasi
            di restoran favoritmu hanya dengan beberapa klik saja.</p>

     </div><!--end of slogan div-->

     <div class="grid-10 grid"> 
      <div class="flexslider">
          <noscript>You should get javascript support in your browser activated</noscript> 
            <ul class="slides">
            <li>
                <a href="http://www."><img src="img/img1.jpg" alt="top foods 1" />
                    <p class="flex-caption">Restoran minang</p>
                </a>
            </li>
            <li>
                <a href="http://www."><img src="img/img2.jpg" alt="top foods 2" />
                <p class="flex-caption">Restoran bhineka</p>
                </a>
            </li> 
            <li>
                <a href="http://www."><img src="img/img3.jpg" alt="top foods 3" />
                <p class="flex-caption">Restoran nusa bangsa</p>
                </a>
            </li> 
            <li>
                <a href="http://www."><img src="img/img4.jpg" alt="top foods 4" />
                <p class="flex-caption">Restoran hambaran</p>
                </a>
            </li> 
            <li>
                <a href="http://www."><img src="img/img5.jpg" alt="top foods 5" />
                <p class="flex-caption">Restoran pinang mas</p>
                </a>
            </li> 
        </ul>
      </div><!--end of div flexslider-->
    </div><!--end of div grid-10-->
    </div><!--end of div grids-->
    <!--<span class="slidershadow"></span>-->				
</div><!--end of div wrapper-->