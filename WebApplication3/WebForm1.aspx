<%@ Page Title="" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="WebForm1.aspx.cs" Inherits="WebApplication3.WebForm1" %>
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
        function makeTable() {

            var rowmum, colnum;
            rownum = window.prompt("type num of rows");
            colnum = window.prompt("type second cols");

            document.write("<table>");
            for (var i = 1; i <= rownum; i++)
            {
                document.write("<tr>");
                for (var j = 1; j <= colnum; j++)
                {
                    document.write("<td>");

                    document.write(i+","+j);

                    document.write("</td>");
                }
                document.write("</tr>");
            }
            document.write("</table>");

        }


        window.onload = function () {
            // פעולה המתבצעת כשהדף נטען, ומאתחלת את האלבום
            var album = document.querySelector(".album");
            var image = album.querySelector("img");
            var caption = album.querySelector("figcaption");
            album.onchange = function (event) {
                // פעולה המקבלת אירוע שינוי, ומחליפה את התמונה בהתאם 
                var button = event.target;
                image.src = "Images/" + button.value;
                caption.innerHTML = button.title;
            };
        };
    </script>
    <style type="text/css">
        .auto-style1 {
            width: 100%;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    
    <img name="pic" src="images/dog.jpg" onmouseover="CatPic()" onmouseout="DogPic()" />
    <button type="button" onclick="setBackgroundColor()">Set background color</button>
    <br /><br /><br />
    <button type="button" onclick="makeTable()">Make a table</button>



    <div class="album">
		<figure>
			<img src="Images/cat.jpg" width="640" height="320" />
			<figcaption>תיאור התמונה הראשונה</figcaption>
		</figure>
		<div>
			<input type="radio" name="album" value="cat.jpg" title="תיאור התמונה הראשונה" checked />
			<input type="radio" name="album" value="dog.jpg" title="תיאור התמונה השנייה" />
			<input type="radio" name="album" value="ethan.jpg" title="תיאור התמונה השלישית" />
			<!-- וכן הלאה -->
		</div>
    </div>
</asp:Content>
