<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="ControlesHTML.aspx.cs" Inherits="HolaWeb.ControlesHTML" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
    <div>
        <input id="htmlText" type="text" runat="server"/><br />
        <input id="htmlCheckbox" type="checkbox" runat="server"/>Mark Here?<br />
        <input id="htmlButton" type="button" value="Is Marked?" /><br />
        <input id="htmlSubmit" type="submit" value="Marked?" /><br />
        <select id="htmlSelect">
            <option selected="selected">Number 1</option>
            <option>Number 2</option>
            <option>Number 3</option>
            <option>Number 4</option>

        </select>
    </div>
    </form>
</body>
</html>
