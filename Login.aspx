<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Login.aspx.cs" Inherits="Default2"  %>


<html>



     <head>


        <meta charset="utf-8" />
        <link rel="Stylesheet" href="CSS/Login Page.css" type="text/css" />
        <style type="text/css">
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
    <div class="loginBox">
        <img src="user.png" class="user" />
        <h2 class="auto-style1" style="text-align:center">Log In Here</h2>
            <form runat="server">
                <p class="auto-style2">Email</p>
                <asp:TextBox ID="TextBox1" runat="server" ForeColor="Black" placeholder="Enter Email"></asp:TextBox>
&nbsp;<asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="TextBox1" ErrorMessage="Email Required" style="color: #FF0000"></asp:RequiredFieldValidator>
&nbsp;<p class="auto-style2">Password</p>
                <asp:TextBox ID="TextBox2" runat="server" placeholder="Enter Password"></asp:TextBox>
                &nbsp;
                <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ControlToValidate="TextBox2" ErrorMessage="Enter Password" style="color: #FF0000"></asp:RequiredFieldValidator>
                <br />
                &nbsp;<a href="#"></a><br />
                <asp:Button ID="Button1" runat="server" Height="28px" OnClick="Button1_Click" Text="Login" Width="129px" />

                <br />
                <br />

                <br />

             <a href="Registration Form.aspx" style="text-decoration:none; font-size: large;"><p style="color:red">Not a Member? Register Here</p> </a>


                </form>
    </div>
    </body>


</asp:Content></html>