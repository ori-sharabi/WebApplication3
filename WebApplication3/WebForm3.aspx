<%@ Page Title="" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="WebForm3.aspx.cs" Inherits="WebApplication3.WebForm3" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <script type="text/javascript">
        function DogPic() {
            pic.src = "images/dog.jpg";
        }
        function CatPic() {
            pic.src = "images/cat.jpg";
        }

        function setBackgroundColor() {
            var color;
            color = window.prompt("Choose background color");

            document.body.style.backgroundColor = color;
        }
    </script>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    
    <img name="pic" src="images/dog.jpg" onmouseover="CatPic()" onmouseout="DogPic()" />
    <br /><br /><br />
    
    <button type="button" onclick="setBackgroundColor()">Set background color</button>
</asp:Content>
