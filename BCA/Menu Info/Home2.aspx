<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Home2.aspx.cs" Inherits="Menu_Info_Home2" %>

<html>

<style type="text/css">
body {
	background-color: #CCC;
	margin:80px 80px 100px 100px;
}
div#fixedheader {
	position:fixed;
	top:0px;
	left:0px;
	width:100%;
	height:71px;
	color:#CCC;
	background:#333;
	padding:20px;
}
div#fixedfooter {
	position:fixed;
	bottom:0px;
	left:0px;
	width:100%;
	color:#CCC;
	background:#333;
	padding:8px;
}


 #nav 
			{
                margin:0px;
             }
            #nav ul 
					{
                        padding:0;
                        list-style:none;
           
					}
							#nav ul li 
						{
                            float:left;
                            text-align:center;
                            width:120px;
                            margin: 1px;
   						}

                #nav ul li a
					{
                        color:#fff;
                        text-decoration:none;
                        font-family:Calibri;
                        background:#0a0;
                        display:block;
                        padding:10px;
                        
					}
					
				#nav ul li a:hover
				{
					background-color:#0e0;
					color: #000;
				}
				
				#nav ul li ul
				{
					display:none;
				}
							#nav ul li:hover ul
				{
					display:block;
				}	


</style>
<body>

 <table style="font-family:Arial">
   <div id="fixedheader">Top div content <div id="nav">
<ul>
			<li><a href="http://localhost:58274/Menu%20Info/Home.aspx">HOME</a></li>
			<li><a href="http://localhost:58274/Menu%20Info/About.aspx">ABOUT</a></li>
             <li><a href="#">Adiministration</a></li>
             <li><a href="#">Admission</a></li>
            <li><a href="http://localhost:58274/Registration/Student.aspx">Registration</a>
                <ul>
                    <li><a href="http://localhost:58274/reg.aspx">Account</a></li>
                    <li><a href="http://localhost:58274/Login.aspx">Login</a></li>
                </ul>
            </li>
             <li><a href="#">Facilities</a>
                 <ul>
                    <li><a href="#">Central Library</a></li>
                     <li><a href="#">Computer Center</a></li>
                 </ul>
                </li>
		        <li><a href="#">Contact</a></li>
		        <li><a href="#">Notiification</a></li>
        </ul>
</div></div>
<h1>Page Heading</h1>
 
<div id="fixedfooter">Bottom div content</div>
    
             <h3>content</h3>  
                
        
    
</table>

</body>
</html>
