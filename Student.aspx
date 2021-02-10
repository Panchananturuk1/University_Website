<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Student.aspx.cs" Inherits="Registration_Student" MasterPageFile="MasterPage1.master" %>

<asp:Content ID="Content12" ContentPlaceHolderID=ContentPlaceHolder1 runat=server >

    <head id="Head1" runat="server">
    <title>  Student Registration Form </title>
        </head>

    <div>
    
        <table class="auto-style1">
            <h1> Studen Registration Form</h1>
            <tr>
                <td class="auto-style31" style="text-align: right; height: 49px; width: 363px;">Name</td>
                <td class="auto-style3" style="width: 266px; height:100px;">
                    &nbsp;<asp:TextBox ID="TextBoxNAME" runat="server" Width="246px" Height="36px"></asp:TextBox>
                </td>
                <td style="width: 606px; height: 49px;">
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="TextBoxNAME" ErrorMessage="Please Enter The Name" ForeColor="Red"></asp:RequiredFieldValidator>
                </td>
            </tr>
            <tr>
                <td class="auto-style31" style="text-align: right; height: 43px; width: 363px;">Fathers Name</td>
                <td class="auto-style3" style="width: 266px; height:100px;">
                    <asp:TextBox ID="TextBoxFNAME" runat="server" Width="246px" Height="36px"></asp:TextBox>
                </td>
                <td style="width: 606px; height: 43px;">
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ControlToValidate="TextBoxFNAME" ErrorMessage="Fathers Name Required" ForeColor="Red"></asp:RequiredFieldValidator>
                </td>
            </tr>
            <tr>
                <td class="auto-style31" style="text-align: right; width: 363px;">Gender</td>
                <td class="auto-style3" style="width: 266px; height:100px;">
                    <asp:DropDownList ID="DropDownGender" runat="server" Width="246px" Height="36px">
                        <asp:ListItem>--Select--</asp:ListItem>
                        <asp:ListItem>MALE</asp:ListItem>
                        <asp:ListItem>FMALE</asp:ListItem>
                    </asp:DropDownList>
                </td>
                <td style="width: 606px">
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" ControlToValidate="DropDownGender" ErrorMessage="Please select the gender *" InitialValue="--Select--" ForeColor="Red"></asp:RequiredFieldValidator>
                </td>
            </tr>
            <tr>
                <td class="auto-style31" style="text-align: right; color: #000000; width: 363px;">DOB</td>
                <td class="auto-style5" style="width: 266px; height:100px;">&nbsp;<asp:TextBox ID="TextBox2" runat="server" Width="246px" Height="36px"></asp:TextBox>
</td>
                <td class="auto-style6" style="width: 606px">
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator11" runat="server" ControlToValidate="TextBox2" ErrorMessage="Enter Your Date Of Birth" ForeColor="Red"></asp:RequiredFieldValidator>
                </td>
            </tr>
            <tr>
                <td class="auto-style31" style="text-align: right; width: 363px;">Category</td>
                <td class="auto-style3" style="width: 266px; height:100px;">&nbsp;<asp:DropDownList ID="DropDownCategory" runat="server" Width="246px" Height="36px">
                        <asp:ListItem>--Select--</asp:ListItem>
                        <asp:ListItem>SC</asp:ListItem>
                        <asp:ListItem>ST</asp:ListItem>
                        <asp:ListItem>GENERAL</asp:ListItem>
                        <asp:ListItem>OBC</asp:ListItem>
                    </asp:DropDownList>
                </td>
                <td style="width: 606px">
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server" ControlToValidate="DropDownCategory" ErrorMessage="Please select Category *" InitialValue="--Select--" ForeColor="Red"></asp:RequiredFieldValidator>
                </td>
            </tr>
            <tr>
                <td class="auto-style31" style="text-align: right; width: 363px;">&nbsp;Email</td>
                <td class="auto-style3" style="width: 266px; height:100px;">&nbsp;<asp:TextBox ID="TextBoxEmail" runat="server" Width="246px" Height="36px"></asp:TextBox>
                </td>
                <td style="width: 606px">
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator12" runat="server" ControlToValidate="TextBoxEmail" ErrorMessage="Email Required" ForeColor="Red"></asp:RequiredFieldValidator>
                    <br />
                    <asp:RegularExpressionValidator ID="RegularExpressionValidator1" runat="server" ControlToValidate="TextBoxEmail" ErrorMessage="You must enter the valid email" ForeColor="Red" ValidationExpression="\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*"></asp:RegularExpressionValidator>
                </td>
            </tr>
            <tr>
                <td class="auto-style31" style="text-align: right; width: 363px;">Mobile Number</td>
                <td class="auto-style3" style="width: 266px; height:100px;"> 
                    <asp:TextBox ID="TextBoxMobile" runat="server" Width="246px" Height="36px"></asp:TextBox>
                </td>
                <td style="width: 606px">
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator6" runat="server" ControlToValidate="TextBoxMobile" ErrorMessage="Please Enter Your Mobile Number" ForeColor="Red"></asp:RequiredFieldValidator>
                </td>
            </tr>
        </table>
        <table class="auto-style1">
            <tr>
                <td class="auto-style31" style="text-align: right; width: 363px">Address</td>
                <td class="auto-style25" style="width: 266px; height:100px;">
                    <asp:TextBox ID="TextBoxAdddress" runat="server" Width="344px" Height="175px"></asp:TextBox>
                </td>
                <td class="auto-style9">
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator7" runat="server" ControlToValidate="TextBoxAdddress" ErrorMessage="Please Fill the Address" ForeColor="Red"></asp:RequiredFieldValidator>
                </td>
            </tr>
            <tr>
                <td class="auto-style31" style="text-align: right; width: 363px">City</td>
                <td class="auto-style11" style="width: 266px; text-align: left; height:100px;">
                    <asp:TextBox ID="TextBoxCity" runat="server" Width="246px" Height="36px"></asp:TextBox>
                </td>
                <td>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator8" runat="server" ControlToValidate="TextBoxCity" ErrorMessage="Enter Your City Name" ForeColor="Red"></asp:RequiredFieldValidator>
                </td>
            </tr>
            <tr>
                <td class="auto-style31" style="text-align: right; width: 363px">Pin Code</td>
                <td class="auto-style11" style="width: 266px; text-align: left; height:100px;">
                    <asp:TextBox ID="TextBoxPinCode" runat="server" Width="246px" Height="36px"></asp:TextBox>
                </td>
                <td>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator9" runat="server" ControlToValidate="TextBoxPinCode" ErrorMessage="Please insert your Pin" ForeColor="Red"></asp:RequiredFieldValidator>
                </td>
            </tr>
        </table>
        <table class="auto-style1">
            <tr>
                <td class="auto-style2" style="text-align: right; width: 363px; font-size: large;">State</td>
                <td class="auto-style3" style="width: 266px; text-align: left; height:100px;">
                    <asp:DropDownList ID="DropDownState" runat="server" Width="246px" Height="36px">
                        <asp:ListItem>--Select--</asp:ListItem>
                        <asp:ListItem>Odisha</asp:ListItem>
                        <asp:ListItem>Andhra Pradesh</asp:ListItem>
                        <asp:ListItem>Assam</asp:ListItem>
                        <asp:ListItem>Bihar</asp:ListItem>
                        <asp:ListItem>Chandigarh</asp:ListItem>
                        <asp:ListItem>Dadra and Nagar Haveli </asp:ListItem>
                        <asp:ListItem>Daman and Diu</asp:ListItem>
                        <asp:ListItem>Goa</asp:ListItem>
                        <asp:ListItem>Gujarat</asp:ListItem>
                        <asp:ListItem>Haryana</asp:ListItem>
                    </asp:DropDownList>
                </td>
                <td>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator10" runat="server" ControlToValidate="DropDownState" ErrorMessage="Please select the State*" ForeColor="Red" InitialValue="--Select--"></asp:RequiredFieldValidator>
                </td>

                

            </tr>
        </table>



    
        <table class="auto-style54">
            <tr>
                <td style="width:363px; height:100px; text-align: right;" class="auto-style31" >
                    Semester</td>
                <td style="width:266px">
                    <asp:DropDownList ID="Drop_semester" runat="server" Width="246px" Height="36px">
                        <asp:ListItem>--Select--</asp:ListItem>
                        <asp:ListItem>1st Sem</asp:ListItem>
                        <asp:ListItem>2nd Sem</asp:ListItem>
                        <asp:ListItem>3rd Sem</asp:ListItem>
                        <asp:ListItem>4th Sem</asp:ListItem>
                        <asp:ListItem>5th</asp:ListItem>
                        <asp:ListItem>6th Sem</asp:ListItem>
                        <asp:ListItem>7th Sem</asp:ListItem>
                        <asp:ListItem>8th Sem</asp:ListItem>
                    </asp:DropDownList>
                </td>
                <td>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator17" runat="server" ErrorMessage="Enter Semester" style="color: #FF0000" ControlToValidate="Drop_semester" InitialValue="--Select--"></asp:RequiredFieldValidator>
                </td>
            </tr>
        </table>



    
        <table style="width: 100%">
            <tr>
                <td class="auto-style31" style="text-align: right; width: 363px">Rollno</td>
                <td class="auto-style3" style="width: 266px; text-align: left; height:100px;">&nbsp;<asp:TextBox ID="TextBox_Rollno" runat="server" Width="246px" Height="36px"></asp:TextBox>
                </td>
                <td>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator13" runat="server" ControlToValidate="TextBox_Rollno" ErrorMessage="Enter your Rollno" style="color: #FF0000"></asp:RequiredFieldValidator>
                </td>
            </tr>
            <tr>
                <td class="auto-style31" style="text-align: right; width: 363px">Program</td>
                <td class="auto-style3" style="width: 266px; text-align: left; height:100px;">
                    <asp:DropDownList ID="Drop_Programs" runat="server" Width="246px" Height="36px">
                        <asp:ListItem>--Select--</asp:ListItem>
                        <asp:ListItem>BCA</asp:ListItem>
                        <asp:ListItem>MBA</asp:ListItem>
                        <asp:ListItem>B.ED</asp:ListItem>
                        <asp:ListItem>Integrated Msc</asp:ListItem>
                        <asp:ListItem>Odiya</asp:ListItem>
                        <asp:ListItem>English</asp:ListItem>
                        <asp:ListItem>Sociology</asp:ListItem>
                    </asp:DropDownList>
                </td>
                <td>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator14" runat="server" ControlToValidate="Drop_Programs" ErrorMessage="Enter Program Name" style="color: #FF0000" InitialValue="--Select--"></asp:RequiredFieldValidator>
                </td>
            </tr>
            <tr>
                <td class="auto-style31" style="text-align: right; width: 363px">Amount</td>
                <td class="auto-style3" style="width: 266px; text-align: left; height:100px;">&nbsp;<asp:TextBox ID="TextBox_Amt" runat="server" Width="246px" Height="36px"></asp:TextBox>
                </td>
                <td>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator15" runat="server" ControlToValidate="TextBox_Amt" ErrorMessage="Enter Amount" style="color: #FF0000"></asp:RequiredFieldValidator>
                </td>
            </tr>
            <tr>
                <td class="auto-style31" style="text-align: right; width: 363px">Remarks</td>
                <td class="auto-style3" style="width: 266px; text-align: left; height:100px;">&nbsp;<asp:TextBox ID="TextBox5" runat="server" Width="246px" Height="36px"></asp:TextBox>
                </td>
                <td>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator16" runat="server" ControlToValidate="TextBox5" ErrorMessage="Write your Remarks" style="color: #FF0000"></asp:RequiredFieldValidator>
                </td>
            </tr>
        </table>
    
        <table class="auto-style1">
            <tr>
                <td class="auto-style12" style="width: 363px">&nbsp;</td>
                <td style="width: 271px" class="auto-style25">
                    <asp:Button ID="Button4" runat="server" OnClick="Button4_Click" Text="Submit" Height="40px" Width="100px" />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; <a href="Student.aspx"> <asp:Button ID="Button5" runat="server" Text="Reset" OnClick="Button5_Click" Height="40px" Width="100px" /></a>
                </td>
                <td>&nbsp;</td>
            </tr>
        </table>

        <br />
        <br />
    
    </div>
    </asp:Content>
