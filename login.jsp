<%@page import="javax.servlet.http.HttpServletRequest"%>
<%@page import="com.google.appinventor.server.util.UriBuilder"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!doctype html>
<%
   String error = request.getParameter("error");
   String useGoogleLabel = (String) request.getAttribute("useGoogleLabel");
   String locale = request.getParameter("locale");
   String redirect = request.getParameter("redirect");
   String repo = (String) request.getAttribute("repo");
   String galleryId = (String) request.getAttribute("galleryId");
   if (locale == null) {
       locale = "en";
   }

%>
<html>
  <head>
     <meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <meta name="viewport" content="width=device-width, initial-scale=1">

    <meta HTTP-EQUIV="pragma" CONTENT="no-cache"/>
    <meta HTTP-EQUIV="Cache-Control" CONTENT="no-cache, must-revalidate"/>
    <meta HTTP-EQUIV="expires" CONTENT="0"/>


     <title>Hybro Studio</title>


  <link rel="stylesheet" href="https://builder.whatcraft.net/css/responsive.css">
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">

  
<style>
body, html {
    height: 100%;
    margin: 0;
}

* { box-sizing:border-box; }

/* basic stylings ------------------------------------------ */
body        
{ 
    
    
}

/* form starting stylings ------------------------------- */
.group        { 
  position:relative; 
  margin-top:45px;
  margin-bottom:45px;
  padding:20px 20px 30px 30px;
  background-color:rgba(70,70,70,0.5); 

}


.mtl-input        { 
  position:relative; 
  margin-bottom:25px;
}

.mtl-grn-link         { 
    color:#ff4433;
    text-decoration: none;
    font-family: brandon-grotesque, sans-serif;
font-style: normal;
font-weight: 100;
}

.mtl-grn-link:hover     { 
    color: white;
    text-decoration: none;
}





.login-btn        { 

    /* border: 1px solid #4CAF50; */

    color:#ff4433;
    background-color:transparent;
    border: 1px solid #ff4433; 

     padding: 10px 25px;
    text-align: center;
    text-decoration: none;
    display: inline-block;
    position: relative;
    border-radius:1500px;
    width:300px;
}

.login-btn:hover        { 
    color:white;
    background-color:#ff4433;
    
}

input         {
  font-size:18px;
  padding:10px 10px 10px 5px;
  background-color:transparent;
  color:white;
  display:block;
  width:300px;
  border:none;
  border-bottom:1px solid #757575;
}
input:focus     { outline:none; }

::placeholder {
    color: white;
    opacity:0.7;
        font-family: "Courier New", Courier, monospace;
}

:-ms-input-placeholder { /* Internet Explorer 10-11 */
   color: white;
   opacity:0.7;
       font-family: "Courier New", Courier, monospace;
}

::-ms-input-placeholder { /* Microsoft Edge */
   color: white;
   opacity:0.7;
       font-family: "Courier New", Courier, monospace;
}

/* BOTTOM BARS ================================= */
.bar  { position:relative; display:block; width:300px; }
.bar:before, .bar:after   {
  content:'';
  height:2px; 
  width:0;
  bottom:1px; 
  position:absolute;
  background:#ff4433; 
  transition:0.2s ease all; 
  -moz-transition:0.2s ease all; 
  -webkit-transition:0.2s ease all;
}
.bar:before {
  left:50%;
}
.bar:after {
  right:50%; 
}

/* active state */
input:focus ~ .bar:before, input:focus ~ .bar:after {
  width:50%;
}

/* HIGHLIGHTER ================================== */
.highlight {
  position:absolute;
  height:60%; 
  width:100px; 
  top:25%; 
  left:0;
  pointer-events:none;
  opacity:0.5;
}

/* active state */
input:focus ~ .highlight {
  -webkit-animation:inputHighlighter 0.3s ease;
  -moz-animation:inputHighlighter 0.3s ease;
  animation:inputHighlighter 0.3s ease;
}

/* ANIMATIONS ================ */
@-webkit-keyframes inputHighlighter {
  from { background:#5264AE; }
  to  { width:0; background:transparent; }
}
@-moz-keyframes inputHighlighter {
  from { background:#5264AE; }
  to  { width:0; background:transparent; }
}
@keyframes inputHighlighter {
  from { background:#5264AE; }
  to  { width:0; background:transparent; }
}

.bgimg {
    background-image: url('https://homebuilder.whatcraft.net/login/programmingbg.jpg');
    height: 100%;
    background-position: center;
    background-size: cover;
    position: relative;
    color: white;
    /* font-family: "Courier New", Courier, monospace;
    font-size: 25px; */
}

.bgdarklayer{
    background-color: rgba(0,0,0,0.5); 
    height: 100%;
    width: 100%;
}

.topleft {
    position: absolute;
    top: 0;
    left: 16px;
    font-family: "Courier New", Courier, monospace;
    font-size: 25px;
}

.topright {
    position: absolute;
    top: 0;
    right: 16px;
}

.bottomleft {
    position: absolute;
    bottom: 0;
    left: 16px;
    font-family: "Courier New", Courier, monospace;
}

.bottomright {
    position: absolute;
    bottom: 0;
    right: 16px;
    font-family: "Courier New", Courier, monospace;
}

.middle {
    position: absolute;
    top: 50%;
    left: 50%;
    transform: translate(-50%, -50%);
    text-align: center;
}

.bottomleft {
    font-size:14px;
}

hr {
    margin: auto;
    width: 40%;
}

#login {
}

#register {
 display:none;
}


@media only screen and (max-width: 600px) {
    body {
        font-size:70%;
    }
    
    
}


</style>
   
  </head>
<body>


<div class="bgimg">
  <div class="bgdarklayer">
  <div class="topleft">
    <p>HYBRO STUDIO</p>
  </div>

    <div class="topright">
   <p><i class="fa fa-close"></i></p>
  </div>
  </div>




<div id="login">
  <div class="middle">
<div class="group">

<center>
  <br><br>
     <img src="https://hybro.io/hybrostudioicon.png" height="90">
  <br><br><br>
</center>

    <form method=POST action="/login">


<% if (error != null) {
out.println("<center><font color=red><b>" + error + "</b></font></center><br/>");
   } %>


    <div class="mtl-input">
      <input type=text name=email value="" placeholder="Username" required>
      <span class="bar"></span>
 </div>

      
       <div class="mtl-input">
      <input type=password name=password value="" placeholder="Password" required>
      <span class="bar"></span>
  </div>
<br>
<% if (locale != null && !locale.equals("")) {
   %>
<input type=hidden name=locale value="<%= locale %>">
<% }
   if (repo != null && !repo.equals("")) {
   %>
<input type=hidden name=repo value="<%= repo %>">
<% }
   if (galleryId != null && !galleryId.equals("")) {
   %>
<input type=hidden name=galleryId value="<%= galleryId %>">
<% } %>
<% if (redirect != null && !redirect.equals("")) {
   %>
<input type=hidden name=redirect value="<%= redirect %>">
<% } %>
<p></p>
<center><input class="login-btn" type=Submit value="LOGIN" ></center>
     
  </form>
  

<p></p>
<%    if (useGoogleLabel != null && useGoogleLabel.equals("true")) { %>
<center><p><a class="login-btn" href="<%= new UriBuilder("/login/google")
                              .add("locale", locale)
                              .add("repo", repo)
                              .add("galleryId", galleryId)
                              .add("redirect", redirect).build() %>" style="text-decoration:none;">SIGN IN WITH GOOGLE</a></p></center>
<%    } %>
<center><p><a class="mtl-grn-link" href="/login/sendlink"  style="text-decoration:none;">Forgot password ?</a></p></center>


<center>

   <div id="google_translate_element"></div><script type="text/javascript">
function googleTranslateElementInit() {
  new google.translate.TranslateElement({pageLanguage: 'en', includedLanguages: 'de,el,en,es,fi,fr,id,it,ja,ko,la,ms,pt,zh-CN,zh-TW', layout: google.translate.TranslateElement.InlineLayout.SIMPLE}, 'google_translate_element');
}
</script><script type="text/javascript" src="//translate.google.com/translate_a/element.js?cb=googleTranslateElementInit"></script>

  </div>
</div>
</div>
</form>


</body></html>

