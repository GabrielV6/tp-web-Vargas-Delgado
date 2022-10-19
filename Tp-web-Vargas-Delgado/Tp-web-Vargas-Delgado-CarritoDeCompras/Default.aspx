<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.Master" AutoEventWireup="true" CodeBehind="Default.aspx.cs" Inherits="Tp_web_Vargas_Delgado_CarritoDeCompras.Default" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">

   
    <div class="mx-auto p-5" style="width: 400px;">
        <h2 class="text-center">Articulos disponibles</h2>
    </div>

   <div class="row row-cols-1 row-cols-md-4 g-5">

       <asp:Repeater ID="Repeater1" runat="server">
            <ItemTemplate>
                <div class="col">
                    <div class="card h-100">
                         <img src="<%#Eval("ImagenUrl")%>" class="card-imgage" alt="image">
                         <div class="card-body">
                            <h5 class="card-title"><%#Eval("Nombre")%></h5>
                            <p class="card-text"><%#Eval("Descripcion")%></p>
                            <p class="card-price"><%#Eval("Precio")%></p>
                            <div class="buttons">
                               <a href="DetalleArticulo.aspx?id=<%#Eval("Id")%>" class="btn btn-primary">Ver detalle</a>
                               <asp:Button id="btnAgregar" runat="server" Text="Agregar al carrito" class="btn btn-success"/>
                            </div>
                         </div>
                    </div>
                </div>
            </ItemTemplate>
       </asp:Repeater>

    </div>
</asp:Content>
