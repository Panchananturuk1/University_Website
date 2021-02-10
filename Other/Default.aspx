<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage1.master" AutoEventWireup="true" CodeFile="Default.aspx.cs" Inherits="Other_Default" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">





    <div>
    
        <table class="auto-style1">
            <h1> Registration</h1>
            <tr>
                <td class="auto-style2" style="text-align: right; height: 49px; width: 363px;">Name</td>
                <td class="auto-style3" style="width: 266px; height: 49px;">
                    &nbsp;<asp:TextBox ID="TextBoxNAME" runat="server" Width="180px"></asp:TextBox>
                </td>
                <td style="width: 606px; height: 49px;">
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="TextBoxNAME" ErrorMessage="Please Enter The Name" ForeColor="Red"></asp:RequiredFieldValidator>
                </td>
            </tr>
            <tr>
                <td class="auto-style2" style="text-align: right; height: 43px; width: 363px;">Fathers Name</td>
                <td class="auto-style3" style="width: 266px; height: 43px;">
                    <asp:TextBox ID="TextBoxFNAME" runat="server" Width="180px"></asp:TextBox>
                </td>
                <td style="width: 606px; height: 43px;">
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ControlToValidate="TextBoxFNAME" ErrorMessage="Fathers Name Required" ForeColor="Red"></asp:RequiredFieldValidator>
                </td>
            </tr>
            <tr>
                <td class="auto-style2" style="text-align: right; width: 363px;">Gender</td>
                <td class="auto-style3" style="width: 266px">
                    <asp:DropDownList ID="DropDownGender" runat="server" Width="133px">
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
                <td class="auto-style4" style="text-align: right; color: #000000; width: 363px;">DOB</td>
                <td class="auto-style5" style="width: 266px">
                    <asp:TextBox ID="TextBox2" runat="server" Width="180px"></asp:TextBox>
&nbsp;</td>
                <td class="auto-style6" style="width: 606px">
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator11" runat="server" ControlToValidate="TextBox2" ErrorMessage="Enter Your Date Of Birth" ForeColor="Red"></asp:RequiredFieldValidator>
                </td>
            </tr>
            <tr>
                <td class="auto-style2" style="text-align: right; width: 363px;">Category</td>
                <td class="auto-style3" style="width: 266px">
                    <asp:DropDownList ID="DropDownCategory" runat="server" Width="133px">
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
                <td class="auto-style2" style="text-align: right; width: 363px;">&nbsp;Email</td>
                <td class="auto-style3" style="width: 266px">
                    <asp:TextBox ID="TextBoxEmail" runat="server" Width="184px"></asp:TextBox>
                </td>
                <td style="width: 606px">
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator12" runat="server" ControlToValidate="TextBoxEmail" ErrorMessage="Email Required" ForeColor="Red"></asp:RequiredFieldValidator>
                    <br />
                    <asp:RegularExpressionValidator ID="RegularExpressionValidator1" runat="server" ControlToValidate="TextBoxEmail" ErrorMessage="You must enter the valid email" ForeColor="Red" ValidationExpression="\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*"></asp:RegularExpressionValidator>
                </td>
            </tr>
            <tr>
                <td class="auto-style2" style="text-align: right; width: 363px;">Mobile Number</td>
                <td class="auto-style3" style="width: 266px"> 
                    <asp:TextBox ID="TextBoxMobile" runat="server" Width="183px"></asp:TextBox>
                </td>
                <td style="width: 606px">
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator6" runat="server" ControlToValidate="TextBoxMobile" ErrorMessage="Please Enter Your Mobile Number" ForeColor="Red"></asp:RequiredFieldValidator>
                </td>
            </tr>
        </table>
        <table class="auto-style1">
            <tr>
                <td class="auto-style8" style="text-align: right; width: 363px">Address</td>
                <td class="auto-style10" style="width: 260px">
                    <asp:TextBox ID="TextBoxAdddress" runat="server" Width="254px" Height="80px"></asp:TextBox>
                </td>
                <td class="auto-style9">
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator7" runat="server" ControlToValidate="TextBoxAdddress" ErrorMessage="Please Fill the Address" ForeColor="Red"></asp:RequiredFieldValidator>
                </td>
            </tr>
            <tr>
                <td class="auto-style7" style="text-align: right; width: 363px">City</td>
                <td class="auto-style11" style="width: 260px">
                    <asp:TextBox ID="TextBoxCity" runat="server" Width="181px"></asp:TextBox>
                </td>
                <td>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator8" runat="server" ControlToValidate="TextBoxCity" ErrorMessage="Enter Your City Name" ForeColor="Red"></asp:RequiredFieldValidator>
                </td>
            </tr>
            <tr>
                <td class="auto-style7" style="text-align: right; width: 363px">Pin Code</td>
                <td class="auto-style11" style="width: 260px">
                    <asp:TextBox ID="TextBoxPinCode" runat="server" Width="180px"></asp:TextBox>
                </td>
                <td>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator9" runat="server" ControlToValidate="TextBoxPinCode" ErrorMessage="Please insert your Pin" ForeColor="Red"></asp:RequiredFieldValidator>
                </td>
            </tr>
        </table>
        <table class="auto-style1">
            <tr>
                <td class="auto-style2" style="text-align: right; width: 365px">State</td>
                <td class="auto-style3" style="width: 182px">&nbsp;
                    <asp:DropDownList ID="DropDownState" runat="server" Width="133px">
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
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator10" runat="server" ControlToValidate="DropDownState" ErrorMessage="Please select the State*" ForeColor="Red"></asp:RequiredFieldValidator>
                </td>
            </tr>
        </table>
    
        <table class="auto-style1">
            <tr>
                <td class="auto-style12" style="width: 363px">&nbsp;</td>
                <td style="width: 188px">
                    <asp:Button ID="Button4" runat="server" OnClick="Button4_Click" Text="Submit" />
&nbsp;<asp:Button ID="Button5" runat="server" Text="Reset" OnClick="Button5_Click" />
                </td>
                <td>&nbsp;</td>
            </tr>
        </table>
    
    </div>
    



</asp:Content>

