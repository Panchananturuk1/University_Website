<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Login.aspx.cs" Inherits="Login" MasterPageFile="~/MasterPage2.master" %>


   <asp:Content ID="Content1" ContentPlaceHolderID=ContentPlaceHolder1 runat=server >
       <div class="auto-style1">
    
        <strongLogin Page<br />
        </strong>
    
    </div>
        <table class="auto-style2">
            <tr>
                <td class="auto-style5"><strong>User Name</strong></td>
                <td class="auto-style6">
                    <asp:TextBox ID="TextBoxUSN" runat="server" Width="187px" Height="26px"></asp:TextBox>
                </td>
                <td class="auto-style7">
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="TextBoxUSN" ErrorMessage="Please Enter your User Name" ForeColor="Red"></asp:RequiredFieldValidator>
                </td>
            </tr>
            <tr>
                <td class="auto-style3" style="height: 59px"><strong>Password</strong></td>
                <td class="auto-style4" style="height: 59px">
                    <asp:TextBox ID="TextBoxPSW" runat="server" TextMode="Password" Width="187px" Height="30px"></asp:TextBox>
                </td>
                <td class="auto-style3" style="height: 59px">
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ControlToValidate="TextBoxPSW" ErrorMessage="Please Enter the Password" ForeColor="Red"></asp:RequiredFieldValidator>
                </td>
            </tr>
            <tr>
                <td class="auto-style2"></td>
                <td class="auto-style4" style="height: 40px">
                    <asp:Button ID="Button1" runat="server" OnClick="Button1_Click" Text="Login" style="font-weight: 700" Width="89px" />
                </td>
                <td class="auto-style2">
                    <asp:HyperLink ID="HyperLink1" runat="server" NavigateUrl="~/reg.aspx">New User Registe Here</asp:HyperLink>
                </td>
            </tr>
            <tr>
                <td class="auto-style2" style="height: 36px"></td>
                <td class="auto-style4" style="height: 36px"></td>
                <td class="auto-style2" style="height: 36px"></td>
            </tr>
        </table>
    
       </asp:Content>