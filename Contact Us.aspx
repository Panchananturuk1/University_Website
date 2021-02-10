<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage1.master" AutoEventWireup="true" CodeFile="Contact Us.aspx.cs" Inherits="Contact_Us" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <head id="Head1" runat="server">
    <title> CONTACT US  </title>
        </head>

   <link rel="Stylesheet" href="CSS/contact us.css" type="text/css" />

<div>
    <header><img src="Contact-us1.jpg" style="width:100%"/></header>
    
    <link href="https://netdna.bootstrapcdn.com/font-awesome/4.0.3/css/font-awesome.css" rel="stylesheet">



    <br />
    <br />

    <table class="auto-style53">
        <tr>
             <td style=" width: 270px;" class="auto-style45"><span style="color: #FFFFFF;" class="auto-style48"><h8><strong>ADDRESS</strong></h8></span>
                            <ul style="list-style-type:none; height:100px;">
                                <li class="auto-style48" > Central Univrsity Of Orissa</li>
                                 <li class="auto-style48" >Main Campus, Sunabeda-764 020, </li>
                                 <li class="auto-style48" >Odisha Tel: 06852-288200, 288210 </li>
                                 <li class="auto-style48" >Fax: 06852-288225</li>
                                 <li><span class="auto-style48">Website:</span><a href="http://www.cuo.ac.in" style="text-decoration:none"><span class="auto-style48">www.cuo.ac.in</span></a></li>
                            </ul>

                        </td>
        </tr>
    </table>

    <br />
    <br />
    <br />
    <br />
    <br />
    <br />

<div class="wrapper">
    <form method="post" action="" class="ccform">
    <div class="ccfield-prepend">
        <span class="ccform-addon"><i class="fa fa-user fa-2x"></i></span>
        <input class="ccformfield" type="text" placeholder="Full Name" required>
    </div>
    <div class="ccfield-prepend">
        <span class="ccform-addon"><i class="fa fa-envelope fa-2x"></i></span>
        <input class="ccformfield" type="text" placeholder="Email" required>
    </div>
    <div class="ccfield-prepend">
        <span class="ccform-addon"><i class="fa fa-mobile-phone fa-2x"></i></span>
        <input class="ccformfield" type="text" placeholder="Phone">
    </div>
     <div class="ccfield-prepend">
        <span class="ccform-addon"><i class="fa fa-info fa-2x"></i></span>
        <input class="ccformfield" type="text" placeholder="Subject" required>
    </div>
    <div class="ccfield-prepend">
        <span class="ccform-addon"><i class="fa fa-comment fa-2x"></i></span>
        <textarea class="ccformfield" name="comments" rows="8" placeholder="Message" required></textarea>
    </div>
    <div class="ccfield-prepend">
        <input class="ccbtn" type="submit" value="Submit">
    </div>
    </form>
</div>



    <table class="auto-style53">
        <tr>
            <td><iframe id="I2" allowfullscreen="" frameborder="0" name="I2" src="https://www.google.com/maps/embed?pb=!1m14!1m8!1m3!1d15105.056894671105!2d82.8039551!3d18.8309159!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x0%3A0x39ed11d6cdb996f2!2sCentral+University+of+Orissa%2C+Koraput!5e0!3m2!1sen!2sin!4v1504939739918" style="border-style: none; border-color: inherit; border-width: 0; height: 400px; width: 100%;"></iframe></td>
        </tr>
    </table>



<div class="credit">
<p>The Central University of Orissa (CUO), Koraput and The Hindustan Aeronautics Limited(HAL), Sunabeda signed a Memorandum of Understanding (MoU) to promote and enhance mutual academic and institutional ties among them. CUO Vice-chancellor, Prof. Sachidananda Mohanty and HAL Executive Director, Debasish Deb signed the MoU in presence of the top officials of the CUO and the HAL. </p>

</div>

    </div>

</asp:Content>

