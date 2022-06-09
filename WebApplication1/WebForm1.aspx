<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="WebForm1.aspx.cs" Inherits="WebApplication1.WebForm1" %>

<%@ Register assembly="CKEditor.NET" namespace="CKEditor.NET" tagprefix="CKEditor" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <style type="text/css">

        .auto-style2 {
            width: 786px;
            height: 484px;
        }
        #TextArea1 {
            height: 358px;
            width: 518px;
        }
        .Button1{
            background-image:url('Save-icon.png');
            background-repeat:no-repeat; 
        }
        .Button2{
            background-image:url('Actions-window-close-icon.png');
            background-repeat:no-repeat;
        }
        .Button3{
            background-image:url('Actions-document-edit-icon.png');
            background-repeat:no-repeat;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">   
    <div> 
        <table class="auto-style2" border="0" style="background-color: #CCCCCC">
            <tr>
                <td colspan="3" style="background-color: #333333">
                    <asp:Image ID="Image1" runat="server" Height="16px" ImageUrl="~/Diary-icon.png" Width="16px" />
                    <asp:Label ID="Label1" runat="server" ForeColor="White" Text="Günlük Programı"></asp:Label>
                </td>
            </tr>
            <tr>
                <td style="background-color: #CCCCCC" class="auto-style4">
                    <asp:Menu ID="Menu2" runat="server" StaticSubMenuIndent="16px">
                        <Items>
                            <asp:MenuItem Text="Rapor" Value="Rapor" NavigateUrl="~/rapor.aspx"></asp:MenuItem>
                        </Items>
                    </asp:Menu>
                </td>
                <td style="background-color: #CCCCCC" class="auto-style4">
                    <asp:Menu ID="Menu5" runat="server" OnMenuItemClick="Menu5_MenuItemClick">
                        <Items>
                            <asp:MenuItem Text="Dosyaya Kaydet" Value="Dosyaya Kaydet"></asp:MenuItem>
                        </Items>
                    </asp:Menu>
                </td>
                <td class="auto-style4" style="background-color: #CCCCCC">
                    <asp:Menu ID="Menu4" runat="server" StaticSubMenuIndent="16px">
                        <Items>
                            <asp:MenuItem NavigateUrl="~/yardim.aspx" Text="Yardım" Value="Yardım"></asp:MenuItem>
                        </Items>
                    </asp:Menu>
                </td>
            </tr>
            <tr>
                <td style="background-color: #CCCCCC" colspan="3">
                    <asp:TextBox ID="TextBox1" runat="server" TextMode="Date" Height="20px" Width="200px"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td rowspan="4" style="background-color: #CCCCCC" colspan="2">
                    <CKEditor:CKEditorControl ID="CKEditorControl1" runat="server" FormatTags="p;h1;h2;h3;h4;h5;h6;pre;address;div" Height="358px" ToolbarFull="NewPage
Bold|Italic|Underline|Strike|
|BulletedList|-|Outdent|Indent|
JustifyLeft|JustifyCenter|JustifyRight|JustifyBlock
|Font|FontSize
TextColor|" Width="571px"></CKEditor:CKEditorControl>
                </td>
                <td style="background-color: #CCCCCC">
                    <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" BackColor="White" DataKeyNames="id" DataSourceID="SqlDataSource1" Height="186px" Width="229px" AllowPaging="True" OnSelectedIndexChanged="GridView1_SelectedIndexChanged" AutoGenerateSelectButton="True" AutoPostBack="True">
                        <Columns>
                            <asp:BoundField DataField="id" HeaderText="id" InsertVisible="False" ReadOnly="True" SortExpression="id" />
                            <asp:BoundField DataField="tarih" HeaderText="tarih" SortExpression="tarih" />
                        </Columns>
                        <SelectedRowStyle BackColor="Blue" ForeColor="White" />
                    </asp:GridView>
                    <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString2 %>" SelectCommand="SELECT [id], [tarih] FROM [gunluk]"></asp:SqlDataSource>
                </td>
            </tr>
            <tr>
                <td style="background-color: #CCCCCC">
                    <asp:Button ID="Button1" runat="server" Height="51px" Text="Kaydet" Width="229px" CssClass="Button1" OnClick="Button1_Click" />
                </td>
            </tr>
            <tr>
                <td style="background-color: #CCCCCC">
                    <asp:Button ID="Button2" runat="server" Height="51px" Text="Sil" Width="229px" CssClass="Button2" OnClick="Button2_Click" />
                </td>
            </tr>
            <tr>
                <td style="background-color: #CCCCCC">
                    <asp:Button ID="Button3" runat="server" Height="51px" Text="Güncelle" Width="229px" CssClass="Button3" OnClick="Button3_Click" />
                </td>
            </tr>
        </table>
    </div>
    </form>
</body>
</html>
