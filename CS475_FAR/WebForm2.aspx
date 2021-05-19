<%--<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="WebForm2.aspx.cs" Inherits="CS475_FAR.WebForm2" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">

    <p style="color:#a33f3f">@msg</p>

<fieldset>
<legend>Add user to role</legend>

<div class="elements">
    <label for="user">User:</label>
    <select name="user" id="user">
    @foreach (var person in users){
        <option>@person.Email</option>
    }
    </select>
</div>

    <div class="elements">
    <label for="role">Role:</label>
    <select name="role" id="role">
    @foreach (var uRole in roles){
        <option>@uRole</option>
    }
    </select>
</div>

    <input type="submit" class="submitform"/>
</fieldset>

</form>
        <div>
        </div>
    </form>
</body>
</html>--%>
