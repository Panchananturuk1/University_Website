


<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Details.aspx.cs" Inherits="Login_related_details.Details" %>
 
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
 
<html xmlns="http://www.w3.org/1999/xhtml" >
<head id="Head1" runat="server">
    <title>Untitled Page</title>
    <style type="text/css">
        .auto-style1 {
            width: 77px;
            font-size: x-large;
            font-weight: bold;
        }
        .auto-style2 {
            font-size: x-large;
            font-weight: bold;
        }
        .auto-style3 {
            font-size: x-large;
        }
        .auto-style5 {
            width: 222px;
        }
        .auto-style6 {
            text-align: center;
        }
        .auto-style7 {
            font-size: xx-large;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
    <div>
        
        <table style="width:100%">
            <tr>
                <td class="auto-style5"><img src="Logo/cuo logo.png" style="height: 115px; margin-left:250px; width: 134px" /></td>
                <td class="auto-style6"><span class="auto-style7"><strong>CENTRAL UNIVERSITY OF ORISSA </strong></span> <br />
                    <span class="auto-style3">LANDIGUDA , KORAPUT-764020

                </span>

                </td>
            </tr>
        </table>
        
     <h1><font color="olive" style="margin-left:250px">Student Details</font></h1>
    <table border="1" style="width:70%; height:700px; margin-left:250PX; border-collapse: collapse"  cellspacing="1">
    <tr>
      <td width="77" height="16" align="left" class="auto-style2" ><font color="red">Name:</font></td>
      <td height="16" align="left" class="auto-style1" ><font size="2">&nbsp;</font><span class="auto-style3"><asp:Label
              ID="lbl_UserName" runat="server" Font-Bold="True"></asp:Label><br /></span></td>
    </tr>
    <tr>
      <td width="77" height="16" align="left" class="auto-style2" ><font color="red">Gender:</font></td>
      <td height="16" align="left" class="auto-style1" ><font size="2">&nbsp;</font><span class="auto-style3"><asp:Label
              ID="gender" runat="server" Font-Bold="True"></asp:Label><br /></span></td>
    </tr>
    <tr>
      <td width="77" height="16" align="left" class="auto-style2" ><font color="red">DOB:</font></td>
      <td height="16" align="left" class="auto-style1" ><font size="2">&nbsp;</font><span class="auto-style3"><asp:Label
              ID="dob" runat="server" Font-Bold="True"></asp:Label><br /></span></td>
    </tr>
    <tr>
      <td width="77" height="16" align="left" class="auto-style2" ><font color="red">Category:</font></td>
      <td height="16" align="left" class="auto-style1" ><font size="2">&nbsp;</font><span class="auto-style3"><asp:Label
              ID="category" runat="server" Font-Bold="True"></asp:Label><br /></span></td>
    </tr>

        <tr>
      <td width="77" height="16" align="left" class="auto-style2" ><font color="red">Email:</font></td>
      <td height="16" align="left" class="auto-style1" ><font size="2">&nbsp;</font><span class="auto-style3"><asp:Label
              ID="email" runat="server" Font-Bold="True"></asp:Label><br /></span></td>
    </tr>

        <tr>
      <td width="77" height="16" align="left" class="auto-style2" ><font color="red">Mobile No:</font></td>
      <td height="16" align="left" class="auto-style1" ><font size="2">&nbsp;</font><span class="auto-style3"><asp:Label
              ID="mobileno" runat="server" Font-Bold="True"></asp:Label><br /></span></td>
    </tr>

        <tr>
      <td width="77" height="16" align="left" class="auto-style2" ><font color="red">City:</font></td>
      <td height="16" align="left" class="auto-style1" ><font size="2">&nbsp;</font><span class="auto-style3"><asp:Label
              ID="city" runat="server" Font-Bold="True"></asp:Label><br /></span></td>
    </tr>

        <tr>
      <td width="77" height="16" align="left" class="auto-style2" ><font color="red">State:</font></td>
      <td height="16" align="left" class="auto-style1" ><font size="2">&nbsp;</font><span class="auto-style3"><asp:Label
              ID="state" runat="server" Font-Bold="True"></asp:Label><br /></span></td>
    </tr>

        <tr>
      <td width="77" height="16" align="left" class="auto-style2" ><font color="red">Rollno:</font></td>
      <td height="16" align="left" class="auto-style1" ><font size="2">&nbsp;</font><span class="auto-style3"><asp:Label
              ID="rollno" runat="server" Font-Bold="True"></asp:Label><br /></span></td>
    </tr>

        <tr>
      <td width="77" height="16" align="left" class="auto-style2" ><font color="red">Program:</font></td>
      <td height="16" align="left" class="auto-style1" ><font size="2">&nbsp;</font><span class="auto-style3"><asp:Label
              ID="program" runat="server" Font-Bold="True"></asp:Label><br /></span></td>
    </tr>

        <tr>
      <td width="77" height="16" align="left" class="auto-style2" ><font color="red">Amount:</font></td>
      <td height="16" align="left" class="auto-style1" ><font size="2">&nbsp;</font><span class="auto-style3"><asp:Label
              ID="amount" runat="server" Font-Bold="True"></asp:Label><br /></span></td>
    </tr>

        <tr>
      <td width="77" height="16" align="left" class="auto-style2" ><font color="red">Semester:</font></td>
      <td height="16" align="left" class="auto-style1" ><font size="2">&nbsp;</font><span class="auto-style3"><asp:Label
              ID="sem" runat="server" Font-Bold="True"></asp:Label><br /></span></td>
    </tr>
    </table>
    </div>
    </form>
</body>
</html>