﻿<%@ Page Title="" Language="C#" AutoEventWireup="true" CodeBehind="WebForm1.aspx.cs" Inherits="CS475_FAR.WebForm1" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
</asp:Content>
<form method="post">
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