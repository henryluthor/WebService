<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="WebForm1.aspx.cs" Inherits="WebService.WebForm1" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <style type="text/css">
        .accountGrid > tbody > tr > th,
        .accountGrid > tbody > tr > td{
            border: 1px ridge
        }
    </style>
</head>
<body>
    <h1>BANCO XYZ</h1>
    <h2>Consultas</h2>

    <form id="form1" runat="server">
        <div>
            <asp:RadioButton ID="cedula" GroupName="filtro" runat="server" Text="Cedula" OnClick="HideInput()" />
            <asp:TextBox ID="cedulaTextInput" runat="server" ></asp:TextBox>
            
            <%--<input id="cedula" name="filtro" type="radio" onclick="HideInput()" />
            <label for="cedula">Cedula</label>
            <input id="cedulaTextInput" name="cedula" type="text" runat="server" />--%>
        </div>
        <div>
            <asp:RadioButton ID="numcuenta" GroupName="filtro" runat="server" Text="Numero de Cuenta" OnClick="HideInput()" />
            <asp:TextBox ID="idProductoTextInput" runat="server"></asp:TextBox>

            <%--<input id="numcuenta" name="filtro" type="radio" onclick="HideInput()" />
            <label for="numcuenta">Numero de Cuenta</label>
            <input id="idProductoTextInput" name="idProducto" type="text" runat="server" />--%>
        </div>
        <div>
            <asp:Button ID="btnExecuteSP" runat="server" Text="Consultar (SP)" OnClick="btnExecuteSP_Click" CssClass="btn btn-primary" />
        </div>
        <div>
            <asp:GridView ID="gridView1" runat="server" AutoGenerateColumns="true" CssClass="accountGrid"></asp:GridView>

            <asp:GridView ID="gridView2" runat="server" AutoGenerateColumns="true" CssClass="accountGrid"></asp:GridView>
        </div>

        <%--<textbox id="texto1" runat="server"></textbox>--%>

    </form>
</body>
</html>

<script src="https://ajax.googleapis.com/ajax/libs/jquery/1.10.2/jquery.min.js" type="text/javascript"></script>

<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.2.3/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-rbsA2VBKQhggwzxH7pPCaAqO46MgnOM80zW1RWuH61DGLwZJEdK2Kadq2F9CUG65" crossorigin="anonymous" />
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.2.3/dist/js/bootstrap.bundle.min.js" integrity="sha384-kenU1KFdBIe4zVF0s0G1M5b4hcpxyD9F7jL+jjXkk+Q2h455rYXK/7HAuoJl+0I4" crossorigin="anonymous"></script>


<script>

    $(document).ready(function () {
        $('#cedulaTextInput').hide();
        $('#idProductoTextInput').hide();

        $('#cedula').prop("checked", false);
        $('#numcuenta').prop("checked", false);
        
    })


    function HideInput()
    {
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
