<%@ Page Language="C#" AutoEventWireup="true" CodeFile="reg.aspx.cs" Inherits="reg" MasterPageFile="~/MasterPage1.master" %>

<asp:Content ID="Content2" ContentPlaceHolderID=ContentPlaceHolder1 runat=server >
    <h1> Registration Page</h1>
    
        <table style="width: 77%">
            <tr>
                <td style="width: 231px; text-align: right">First Name</td>
                <td style="width: 212px">
                    <asp:TextBox ID="TextBoxFname" runat="server" Width="180px"></asp:TextBox>
                </td>
                <td>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator6" runat="server" ControlToValidate="TextBoxFname" ErrorMessage="Enter Your first name" ForeColor="#FF3300"></asp:RequiredFieldValidator>
                </td>
            </tr>
            <tr>
                <td style="width: 231px; text-align: right">Last Name</td>
                <td style="width: 212px">
                    <asp:TextBox ID="TextBoxLname" runat="server" Width="180px"></asp:TextBox>
                </td>
                <td>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator7" runat="server" ControlToValidate="TextBoxLname" ErrorMessage="Enter Your Last Name" ForeColor="#FF3300"></asp:RequiredFieldValidator>
                </td>
            </tr>
    </table>
    
        <table class="auto-style1" style="height: 487px; width: 786px">
            <tr>
                <td style="text-align: right; height: 10px">User Name</td>
                <td class="auto-style3" style="width: 212px; height: 10px">
                    <asp:TextBox ID="TextBoxUN" runat="server" Width="180px"></asp:TextBox>
                </td>
                <td class="auto-style2" style="height: 10px">
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="TextBoxUN" ErrorMessage="User Name Required" ForeColor="#FF3300"></asp:RequiredFieldValidator>
                </td>
            </tr>
            <tr>
                <td style="text-align: right; height: 5px">E-mail</td>
                <td class="auto-style3" style="width: 212px; height: 5px">
                    <asp:TextBox ID="TextBoxEMAIL" runat="server" Width="180px"></asp:TextBox>
                </td>
                <td class="auto-style2" style="height: 5px">
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ControlToValidate="TextBoxEMAIL" ErrorMessage="E-mail Required" ForeColor="#FF3300"></asp:RequiredFieldValidator>
                    <br />
                    <asp:RegularExpressionValidator ID="RegularExpressionValidator1" runat="server" ControlToValidate="TextBoxEMAIL" ErrorMessage="e-mail should be valid" ForeColor="#FF3300" ValidationExpression="\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*"></asp:RegularExpressionValidator>
                </td>
            </tr>
            <tr>
                <td style="text-align: right; height: 12px">Pssword</td>
                <td class="auto-style3" style="width: 212px; height: 12px">
                    <asp:TextBox ID="TextBoxPW" runat="server" TextMode="Password" Width="180px"></asp:TextBox>
                </td>
                <td class="auto-style2" style="height: 12px">
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" ControlToValidate="TextBoxPW" ErrorMessage="Password Required" ForeColor="#FF3300"></asp:RequiredFieldValidator>
                </td>
            </tr>
            <tr>
                <td class="auto-style2" style="text-align: right; height: 5px">Confirm Password</td>
                <td class="auto-style3" style="width: 212px; height: 5px">
                    <asp:TextBox ID="TextBoxCP" runat="server" TextMode="Password" Width="180px"></asp:TextBox>
                </td>
                <td style="height: 5px">
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server" ControlToValidate="TextBoxCP" ErrorMessage="Please enter the Password" ForeColor="#FF3300"></asp:RequiredFieldValidator>
                    <br />
                    <asp:CompareValidator ID="CompareValidator1" runat="server" ControlToCompare="TextBoxPW" ControlToValidate="TextBoxCP" ErrorMessage="Password is Not Matching" ForeColor="#FF3300"></asp:CompareValidator>
                </td>
            </tr>
            <tr>
                <td style="text-align: right; height: 29px">Contry</td>
                <td class="auto-style3" style="width: 212px; height: 29px">
                    <asp:DropDownList ID="DropDownListCN" runat="server" OnSelectedIndexChanged="DropDownListCN_SelectedIndexChanged" Width="180px">
                        <asp:ListItem>select country</asp:ListItem>
                        <asp:ListItem>INDIA</asp:ListItem>
                        <asp:ListItem>UK</asp:ListItem>
                        <asp:ListItem>USA</asp:ListItem>
                        <asp:ListItem>HONGKONG</asp:ListItem>
                        <asp:ListItem>AUSTRALIA</asp:ListItem>
                        <asp:ListItem>MAXICO</asp:ListItem>
                        <asp:ListItem>PARIS</asp:ListItem>
                    </asp:DropDownList>
                </td>
                <td class="auto-style2" style="height: 29px">
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator5" runat="server" ControlToValidate="DropDownListCN" ErrorMessage="Country Name Required" ForeColor="#FF3300" InitialValue="select country"></asp:RequiredFieldValidator>
                </td>
            </tr>
            <tr>
                <td class="auto-style2" style="text-align: right; height: 4px"></td>
                <td class="auto-style3" style="width: 212px; height: 4px">
                    <asp:Button ID="Button1" runat="server" ForeColor="Black" OnClick="Button1_Click" Text="Submit" />
&nbsp;
                    <input id="Reset1" type="reset" value="reset" /></td>
                <td class="auto-style2" style="height: 4px">
                    <asp:HyperLink ID="HyperLink1" runat="server" ForeColor="Blue" NavigateUrl="~/Login.aspx">Existing User</asp:HyperLink>
                </td>
            </tr>
            <tr>
                <td class="auto-style3" style="text-align: right; height: 18px"></td>
                <td class="auto-style3" style="width: 212px; height: 18px"></td>
                <td class="auto-style3" style="height: 18px">
                    <asp:HyperLink ID="HyperLink2" runat="server" ForeColor="Blue" NavigateUrl="~/Delete.aspx">Delete User</asp:HyperLink>
                </td>
            </tr>
        </table>
    <div>
    
    </div>
    
        </asp:Content>
