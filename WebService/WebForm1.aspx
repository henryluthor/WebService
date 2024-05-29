<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="WebForm1.aspx.cs" Inherits="WebService.WebForm1" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            
            <input id="cedula" name="filtro" type="radio" />
            <label for="cedula">Cedula</label>

            <input id="cedulaTextInput" name="cedula" type="text" runat="server" />
        </div>
        <div>
            <input id="numcuenta" name="filtro" type="radio" />
            <label for="numcuenta">Numero de Cuenta</label>

            <input id="idProductoTextInput" name="idProducto" type="text" runat="server" />
        </div>
        <div>
            <asp:Button ID="btnExecuteSP" runat="server" Text="Consultar (SP)" OnClick="btnExecuteSP_Click" />
        </div>
        <div>
            <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="true"></asp:GridView>
        </div>
        <textbox id="texto1" runat="server"></textbox>
    </form>
</body>
</html>

<script src="https://ajax.googleapis.com/ajax/libs/jquery/1.10.2/jquery.min.js" type="text/javascript"></script>


<script>

    //$(document).ready(function () {
    //    $('#cedulaTextInput').hide();
    //    $('#idProductoTextInput').hide();
    //})


    function HideInput()
    {
        console.log("funcion Hideinput");

        var cedulaChecked = $('#cedula').is(':checked');
        console.log("cedulaChecked:");
        console.log(cedulaChecked);

        if ($('#cedula').is(':checked'))
        {
            $('#idProductoTextInput').hide();
            $('#cedulaTextInput').show();
        }

        if ($('#numcuenta').prop("checked"))
        {
            $('#cedulaTextInput').hide();
            $('#idProductoTextInput').show();
        }
    }
</script>
