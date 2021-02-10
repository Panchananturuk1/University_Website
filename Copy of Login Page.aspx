<%@ Page Title="" Language="C#"  AutoEventWireup="true" CodeFile="Copy of Login Page.aspx.cs" Inherits="Login_related_details.Login" %>

<html>




         <head id="Head1" runat="server">
    <title>Untitled Page</title>
    <script type="text/javascript" language="javascript">
        function Validate() {
            var UName = document.getElementById('TextBox1');
            var Password = document.getElementById('TextBox2');
            if ((UName.value == '') || (Password.value == '')) {
                alert('UserName or Password should not be blank');
                return false;
            }
            else {
                return true;
            }
        }
    </script>

        <meta charset="utf-8" />
        <link rel="Stylesheet" href="CSS/Login.css" type="text/css" />
         <link rel="Stylesheet" href="CSS/Menus.css" type="text/css" />
<link rel="Stylesheet" href="CSS/Header_Footer.css" type="text/css" />
         <link rel="Stylesheet" href="CSS/AutoStyle.css" type="text/css" />
        <style type="text/css">
            .auto-style1 {
                color: #00FF00;
                font-size: xx-large;
            }
            .auto-style2 {
                font-size: x-large;
            }



              .auto-style1 {
                color: #00FF00;
                font-size: xx-large;
            }
            .auto-style2 {
                font-size: x-large;
            }

        </style>
    </head>




<body style="background: url(wlp.jpg)">

     
           
            <div id="nav">
        <div id="fixedheader"> 
                <table class="auto-style18">
                    <tr>
                        <td class="auto-style50"> 
            <asp:Image ID="Image1" runat="server" ImageUrl="~/Logo/cuo logo.png" Width="111px" Height="94px" />
                        </td>
                        <td class="auto-style51"><span class="auto-style45"><span class="auto-style48">CENTRAL UNIVERSITY OF ORISSA</span></span><span class="auto-style47"> </span> <br class="auto-style48" />
                                               <span class="auto-style45"><span class="auto-style48">केंद्रीय विश्वविद्या , कोरापुट</span></span>
                    </td>
                        <td class="auto-style40">
                            
                        
                   <a href="https://www.facebook.com/"> <asp:Image ID="Image20" runat="server" Height="40px" ImageUrl="~/Logo/FB.png" /></a>
          <a href="https://twitter.com/login"><asp:Image ID="Image21" runat="server" Height="40px" ImageUrl="~/Logo/Twt.png" /></a>
              <a href="https://www.instagram.com/?hl=en"><asp:Image ID="Image22" runat="server" Height="40px" ImageUrl="~/Logo/Insta.png" /></a>
                     
                            <span class="auto-style67" style="border:20px; padding:10px;"><a href="Login Page.aspx" style="text-decoration:none"> <span class="auto-style68">Login || Register</span> </a></span>

                        </td>
                    </tr>
                </table>
                  
          <table class="auto-style18">
                <tr>
                    <td>
                  
            <ul style="height:100px;">
	       <li><a href="index.aspx">HOME</a>
	       </li>
                <li><a href="#">ABOUT US</a>
                <ul>
                    <li><a href="About Us.aspx">INTRODUCTION</a></li>
                    <li><a href="Gallery.aspx">PHOTO GALLEY</a></li>
                    <li><a href="Downloads.aspx">DOWNLOADS</a></li>
                </ul>
            </li>
			<li><a href="#">ACADEMICS</a>
                <ul>
                   <li><a href="Program Offered.aspx">PROGRAME OFFERED</a>
                      </li>

                     <li> <a href="Syllabus.aspx"> Syllabus</a>
                      </li>

                        
                     <li><a href="Regulation.aspx">REGULATION</a>
                         <ul>
                             <li><a href="#">CALENDER</a></li>
                             <li><a href="#">TIME TABLE</a></li>
                             <li><a href="#">GUIDE LINES</a></li>
                         </ul>
                     </li>
               </ul>
			</li>
             <li><a href="#">ADMISSIONS</a>
                 <ul>
                     
                     <li><a href="Administration.aspx">ADMINISTRATION</a></li>
                     <li><a href="Procedure.aspx">PORCEDURE</a></li>
                     <li><a href="Fees_Stucture.aspx">FEES STUCTURE</a></li>                 
                     <li><a href="Student.aspx">REGISTRATION</a></li>
                 </ul>
             </li>
             <li><a href="#">FACILITIES</a>
                 <ul>
                     <li><a href="Lodging_Boarding.aspx">Lodging & Boarding</a>
                         <ul>
                            <li><a href="#">HOSTEL</a></li>
                     <li><a href="#">CANTEEN</a></li>
                     <li><a href="#">DISPENSARY</a></li>
                     <li><a href="#">TRANSPORTATION</a></li>
                         </ul>
                     </li>
                     <li><a href="Campus Facilities.aspx">Campus Facilities</a>
                         <ul>
                    <li><a href="#">COMPUTER LAB</a></li>
                     <li><a href="#">CENTRAL LIBRARY</a></li>
                     <li><a href="#">SCOLARSHIP</a></li>
                   
                     <li><a href="#">TEACHING LEARNING PROCESS</a></li>                                  

                         </ul>
                     </li>                     
                 </ul>
             </li>
           
        
                 <li><a href="Contact Us.aspx">CONTACT US</a></li>
      </ul>
                    </td>
                </tr>
            </table>

   </div>
                </div>



    
    <div class="loginBox">
        <img src="user.png" class="user" /><form id="Form1" runat="server">
                &nbsp;<asp:Label ID="lb1" runat="server" Text="Label"></asp:Label>
        <h2 class="auto-style1" style="text-align:center">Log In Here</h2>
            <asp:Label ID="Label1" runat="server" Text="UserName" Font-Bold="True" Width="100px" BackColor="#FFFF66" ForeColor="#FF3300"></asp:Label>
                <asp:TextBox ID="TextBox1" runat="server" ForeColor="Black" placeholder="Enter Email"></asp:TextBox>
&nbsp;<asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="TextBox1" ErrorMessage="Email Required" style="color: #FF0000"></asp:RequiredFieldValidator>
&nbsp;<asp:Label ID="Label2" runat="server" Text="Password" Font-Bold="True" Width="100px" BackColor="#FFFF66" ForeColor="#FF3300"></asp:Label>
                <asp:TextBox ID="TextBox2" runat="server" placeholder="Enter Password"></asp:TextBox>
                &nbsp;
                <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ControlToValidate="TextBox2" ErrorMessage="Enter Password" style="color: #FF0000"></asp:RequiredFieldValidator>
                <br />
                &nbsp;<a href="#"></a><br />



                <asp:Button ID="btn_login" runat="server" Text="Login" Font-Bold="True"
            BackColor="#CCFF99"   OnClientClick="Validate()" onclick="btn_login_Click"
            />

               

                <br />
                <br />

                <br />

             <a href="Registration Form.aspx" style="text-decoration:none; font-size: large;"><p style="color:red">Not a Member? Register Here</p> </a>








                
                </form>


            
            









    </div>















    <div id="fixedfooter" style="margin-top:800px;">
            
   
            
                       
                <table style="width:100%">
                    <tr>
                        <td style=" width: 270px;" class="auto-style45"><span style="color: #FFFFFF;"><h8><strong>ADDRESS</strong></h8></span>
                            <ul style="list-style-type:none; height:100px;">
                                <li class="auto-style46"> Central Univrsity Of Orissa</li>
                                 <li class="auto-style46">Main Campus, Sunabeda-764 020, </li>
                                 <li class="auto-style46">Odisha Tel: 06852-288200, 288210 </li>
                                 <li class="auto-style46">Fax: 06852-288225</li>
                                 <li><span class="auto-style46">Website: </span> <a href="http://www.cuo.ac.in" style="text-decoration:none"><span class="auto-style33">www.cuo.ac.in</span></a></li>
                            </ul>

                        </td>
                        

                        <td style=" width: 270px;"  class="auto-style45"><span style="color: #FFFFFF;"><h8><strong>GENERAL</strong></h8></span>
                            <ul style="list-style-type:none; height:100px;">
                                <li class="auto-style46"><a href="Login Page.aspx" style="text-decoration:none"><span class="auto-style45">Cuo User Login</span></a></li>
                                 <li class="auto-style46"><a href="Gallery.aspx" style="text-decoration:none"><span class="auto-style45">Galleryy</span></a> </li>
                                 <li class="auto-style46"><a href="Downloads.aspx" style="text-decoration:none"><span class="auto-style45">Downloads</span></a></li>
                                  <li class="auto-style46"><a href="Contact Us.aspx"><span class="auto-style45">Contact Us</span></a></li>
                                 <li class="auto-style46">Alumni</li>
                                                             
                            </ul>

                        </td>





                         <td style=" width: 270px;"><span style="color: #FFFFFF;"><h8><strong>ADMISSION</strong></h8></span>
                            <ul style="list-style-type:none; height:100px;">
                                <li class="auto-style46"><a href="Procedure.aspx" style="text-decoration:none"> <span class="auto-style45">Addmission Procedure</span></a></li>
                                 <li class="auto-style46"><a href="Registration Form.aspx" style="text-decoration:none"><span class="auto-style45">Regstration</span></a></li>
                                 <li class="auto-style46"><a href="Administration.aspx"><span class="auto-style45">Administration</span></a></li>
                                 <li class="auto-style46"><a href="Program Offered.aspx" style="text-decoration:none"><span class="auto-style45">Programs</span></a></li>
                                 <li class="auto-style46">Scolarship</li>
                                
                            </ul>

                        </td>


                        <td style=" width: 270px;"><span style="color: #FFFFFF;"><h8><strong>IMPORTANT LINKS</strong></h8></span>
                            <ul style="list-style-type:none; height:100px;">
                                <li class="Fore_Color"><a href="http://cuo.ac.in/" style="text-decoration:none; " class="auto-style45">CUO</a></li>
                                 <li class="Fore_Color"> <a href="http://nptel.ac.in/" style="text-decoration:none; color: #FFFFFF;" >NPTEL</li>
                                 <li class="Fore_Color"><a href="https://www.aicte-india.org/" style="text-decoration:none; " class="auto-style45">AICTE</a></li>
                                 <li class="Fore_Color"><a href="https://www.ugc.ac.in/" style="text-decoration:none; " class="auto-style45">UGC</a></li>

                             
                            </ul>

                        </td>
                        

                    </tr>
                </table>
             <br />
                <table class="auto-style18">
                    <tr>
                        <td><iframe id="I1" allowfullscreen="" frameborder="0" name="I1" src="https://www.google.com/maps/embed?pb=!1m14!1m8!1m3!1d15105.056894671105!2d82.8039551!3d18.8309159!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x0%3A0x39ed11d6cdb996f2!2sCentral+University+of+Orissa%2C+Koraput!5e0!3m2!1sen!2sin!4v1504939739918" style="border-style: none; border-color: inherit; border-width: 0; height: 126px; width: 1028px;"></iframe></td>
                    </tr>
                </table>
            
                       
        </div>








    </body>

    

</asp:Content>

</body>

</html>
