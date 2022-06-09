<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="yardim.aspx.cs" Inherits="WebApplication1.yardim" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <style type="text/css">
        .auto-style1 {
            width: 752px;
            height: 200px;
        }

        .auto-style2 {
            height: 322px;
        }
        .auto-style3 {
            height: 10px;
        }
        </style>
</head>
<body>
    <form id="form1" runat="server">
    <div>
    
        <table class="auto-style1" style="background-color: #CCCCCC">
            <tr>
                <td style="background-color: #333333" class="auto-style3">
                    <asp:Image ID="Image1" runat="server" Height="16px" ImageUrl="~/Diary-icon.png" Width="16px" />
                    <asp:Label ID="Label3" runat="server" ForeColor="White" Text="Yardım"></asp:Label>
                </td>
            </tr>
            <tr>
                <td class="auto-style2">
                    <asp:TextBox ID="TextBox1" runat="server" BackColor="#CCCCCC" Height="350px" TextMode="MultiLine" Width="736px">Günlük Programı&#39;na hoşgeldiniz. Bu Program sayesinde tuttuğunuz günlüklerinizi programın kendi veritabanında ve isterseniz .html formatına ayrı bir dosyada güvenli bir şekilde saklayabileceksiniz. Programın ana menüsünde hemen dikkat çeken bir metin kutusu vardır. Bu metin kutusuna günlük yazınızı yazıyorsunuz akabinde metin kutusunun sol üstünde yer alan tarih seçme aracından günlük yazınızı kaydedeceğiniz tarihi seçiyorsunuz ve sağ altta yer alan &quot;Kaydet&quot; butonuna tıklayarak yazının kaydını gerçekleştiriyorsunuz. &quot;Kaydet&quot; butonunu üstünde is veritabanına kaydedilen verileri görmektesiniz. Yalnız bu listeyi kullanabilmek için bir günlük kaydı gerçekleştirmeniz gerekmektedir. Yine bu listeyi kullanarak altta yer alan &quot;Sil&quot; butonunu kullanmak için listeden seçmek istediğiniz bir satırı &quot;Select&quot; butonuna basarak seçtikten sonra &quot;Sil&quot; butonuna tıklamanız yeterli. &quot;Sil&quot; butonunun hemen altında yer alan &quot;Güncelle&quot; butonu ise listeden seçtiğiniz bir veriyi tarihini ve/veya yazıyı değiştirmek için kullanabilirsiniz.

Üst tarafta yer alan butonlardan bahsetmek gerekirse &quot;Rapor&quot;, &quot;Dosyaya Kaydet&quot; ve &quot;Yardım&quot; adlı butonlar aynı hizada yer alıyorlar. &quot;Rapor&quot; butonu programın veritabanında yer alan bütün verileri alıp rapor haline getirebileceğiniz bir pencere açar ve bu pencerede excel dosyasına veya pdf çevirme işlemlerini yapabilirsiniz.&quot;Dosyaya Kaydet&quot; butonu ise listeden seçtiğiniz günlüğünüzü .html formatında indirmek için kullanabilirsiniz. &quot;Yardım&quot; butonu sizi tam olarak bu pencereye getirecektir. Metin kutusunun hemen üstünde yer alan küçük butonlar metin kutusuna direkt etki eden butonlardır. Soldan başlamak gerekirse, ilk buton metin kutusunu temizler. Sonraki dört buton ise sırayla Kalın, İtalik, Altı-Çizili ve Üstü-Çizili butonlarıdır. Sonraki üç buton ise sırayla sırasız listeleme, girdiyi azaltma ve girdiyi arttırma butonlarıdır. Sonraki dört buton ise hizalama butonlarıdır. Hemen sağlarında yer alanlar ise listeli butonlardır. İlkinde yazı fontu, ortadakinde yazı boyutu ve sondaki ise yazı rengi seçmemize olanak sağlar.</asp:TextBox>
                </td>
            </tr>
            <tr>
                <td>
                    <asp:Menu ID="Menu1" runat="server">
                        <Items>
                            <asp:MenuItem NavigateUrl="~/WebForm1.aspx" Text="Geri Dön" Value="Geri Dön"></asp:MenuItem>
                        </Items>
                    </asp:Menu>
                </td>
            </tr>
        </table>
    
    </div>
    </form>
</body>
</html>
