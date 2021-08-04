<%@ Page Title="" Language="vb" AutoEventWireup="false" MasterPageFile="~/Principal.Master" CodeBehind="AgregarUsuario.aspx.vb" Inherits="MedidorWeb.AgregarUsuario" %>
<asp:Content ID="Content1" ContentPlaceHolderID="Contenido" runat="server">
    <div class="row-mt-5" >
        <div class="col-lg-6 mx-auto">
            <div class="card">
                <div class="card-header bg-primary text-white">
                    <h3>Ingresar usuario </h3>
                </div>
                <div class="card-body">
                    <div class="form-group">
                        <label for="rutTxt">Rut</label>
                        <asp:TextBox ID="rutTXT" CssClass="form-control" runat="server"></asp:TextBox>
                    </div>
                    <div class="form-group">
                        <label for="nombreTxt">Nombre</label>
                        <asp:TextBox ID="nombreTxt" CssClass="form-control" runat="server"></asp:TextBox>
                    </div>
                    <div class="form-group">
                        <label for="apellidoTxt">Apellido</label>
                        <asp:TextBox ID="apellidoTxt" CssClass="form-control" runat="server"></asp:TextBox>
                    </div>
                    <div class="form-group">
                        <label for="contraseñaTxt">Contraseña</label>
                        <asp:TextBox ID="contraseñaTxt" CssClass="form-control" runat="server"></asp:TextBox>
                    </div>
                    <div class="form-group">
                        <label for="emailTxt">Email</label>
                        <asp:TextBox ID="emailTxt" CssClass="form-control" runat="server"></asp:TextBox>
                    </div>
                    <div class="form-group">
                        <label for="estadoRb1">Estado</label>
                        <asp:RadioButtonList ID="estadoRb1" runat="server">
                            <asp:ListItem Text="Pagada" Selected="True" Value="Pagada"></asp:ListItem>
                            <asp:ListItem Text="Con Deuda" Value="Con Deuda"></asp:ListItem>
                        </asp:RadioButtonList>
                    </div>
                    <div class="form-group">
                        <label for="medidorDDL">Medidor</label>
                        <asp:DropDownList ID="medidorDDL" runat="server"></asp:DropDownList>
                    </div>
                    <asp:Button runat="server" CssClass="btn btn-secondary" ID="ingresarBtn" Text="Ingresar" />
                </div>
            </div>
        </div>

    </div>

</asp:Content>
