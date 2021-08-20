<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="WebForm1.aspx.cs" Inherits="Prestamos.WebForm1" %>

<!DOCTYPE html>

<html lang="en" xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootswatch@4.5.2/dist/superhero/bootstrap.min.css" integrity="sha384-HnTY+mLT0stQlOwD3wcAzSVAZbrBp141qwfR4WfTqVQKSgmcgzk+oP0ieIyrxiFO" crossorigin="anonymous" />
    <link rel="stylesheet" href="./style.css" />
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
    <title>Prestamos</title>
</head>
<body>
    <nav class="navbar navbar-dark bg-dark">
        <div class="container-fluid">
            <strong><a href="#" class="navbar-brand">Calculadora de prestamos</a></strong>
        </div>
    </nav>
    <div class="container-fluid">
        <div class="row pt-2">
            <div class="col-md-4">
                <form class="form" id="form1" runat="server">
                    <h4>
                        <strong>
                            CALCULAR PRESTAMO
                        </strong>
                    </h4>
                    <asp:Label ID="Label1" runat="server" Text="Nombre"></asp:Label>
                    <asp:TextBox class="input" ID="Nombre" runat="server"></asp:TextBox>

                    <asp:Label ID="Label2" runat="server" Text="Apellidos"></asp:Label>
                    <asp:TextBox class="input" ID="Apellidos" runat="server"></asp:TextBox>

                    <asp:Label ID="Label3" runat="server" Text="Monto"></asp:Label>
                    <asp:TextBox class="input" ID="Monto" runat="server" type="number" step="0.01" min="0"></asp:TextBox>

                    <asp:Label ID="Label4" runat="server" Text="Intereses(%)"></asp:Label>
                    <asp:TextBox class="input" ID="Intereses" runat="server" type="number" step="0.01" min="0"></asp:TextBox>

                    <asp:Label ID="Label5" runat="server" Text="Cuotas"></asp:Label>
                    <asp:DropDownList class="input" ID="Cuotas" runat="server">
                        <asp:ListItem Selected="True" Value="0" Text="Escoje una opción"></asp:ListItem>
                        <asp:ListItem Value="6">6</asp:ListItem>
                        <asp:ListItem Value="12">12</asp:ListItem>
                        <asp:ListItem Value="16">16</asp:ListItem>
                        <asp:ListItem Value="24">24</asp:ListItem>
                        <asp:ListItem Value="36">36</asp:ListItem>
                    </asp:DropDownList>

                    <asp:Button class="buttons" ID="Calcular" runat="server" Text="Calcular" OnClick="calcular_Prestamo" />
                    <asp:Button class="buttons buttons-green" ID="Limpiar" runat="server" Text="Limpiar" OnClick="limpiar" />

                    
                </form>
            </div>
           
            <div class="col-md-8">
                <div class="results">
                    <h4>
                        <strong>
                            RESULTADOS
                        </strong>
                    </h4>
                    <div class="ctHeader">
                        <h5>Nro.</h5>
                        <h5>Total</h5>
                        <h5>Fecha P.</h5>
                        <h5>Interes M.</h5>
                    </div>
                    <div id="CuotasP" runat="server">
                        
                    </div>



                </div>

            </div>
        </div>
    </div>
</body>
</html>
