<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Delete.aspx.cs" Inherits="Delete" MasterPageFile="~/Registration/MasterPage4.master" %>

<asp:Content ID="Content8" ContentPlaceHolderID=ContentPlaceHolder1 runat=server >
    <form>
    
        <table class="auto-style1" style="height: 213px; width: 518px">
            <tr>
                <td class="auto-style2" style="width: 365px; height: 10px; text-align: right;">Enter User Name</td>
                <td style="height: 10px; width: 189px;">
                    
                    <asp:TextBox ID="TextBoxDelt" runat="server" Width="189px"></asp:TextBox>
                        
                </td>
            </tr>
            <tr>
                <td class="auto-style2" style="width: 365px; text-align: right;">&nbsp;</td>
                <td style="width: 189px">
                    <asp:Button ID="Button1" runat="server" OnClick="Button1_Click" Text="Delete" Width="75px" />
                </td>
            </tr>
            <tr>
                <td class="auto-style2" style="width: 365px; text-align: right;">&nbsp;</td>
                <td style="width: 266px">&nbsp;</td>
            </tr>
        </table>

    </form>
</asp:Content>