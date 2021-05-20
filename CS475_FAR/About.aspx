<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="About.aspx.cs" Inherits="CS475_FAR.About" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>


    <!DOCTYPE html>
<html>
<head>
<meta name="viewport" content="width=device-width, initial-scale=1">
<style>
body {
  font-family: Arial, Helvetica, sans-serif;
  margin: 0;
}

html {
  box-sizing: border-box;
}

*, *:before, *:after {
  box-sizing: inherit;
}

.column {
  float: left;
  width: 33.3%;
  margin-bottom: 16px;
  padding: 0 8px;
}

.card {
  box-shadow: 0 4px 8px 0 rgba(0, 0, 0, 0.2);
  margin: 8px;
}

.about-section {
  padding: 50px;
  text-align: center;
  background-color: #474e5d;
  color: white;
}

.container {
  padding: 0 16px;
}

.container::after, .row::after {
  content: "";
  clear: both;
  display: table;
}

.title {
  color: grey;
}

.button {
  border: none;
  outline: 0;
  display: inline-block;
  padding: 8px;
  color: white;
  background-color: #000;
  text-align: center;
  cursor: pointer;
  width: 100%;
}

.button:hover {
  background-color: #555;
}

@media screen and (max-width: 650px) {
  .column {
    width: 100%;
    display: block;
  }
}
    .auto-style1 {
        float: left;
        width: 32%;
        display: block;
        height: 571px;
        margin-bottom: 16px;
        padding: 0 8px;
    }
</style>
</head>
<body>

<div class="about-section">
  <h1>About </h1>
  <p>FARS is a faculty activity reporting system that allows faculty members to create annual reports that consists of data such as tenure or annual reviews of a higher education institute. Faculty members can then access and download their reports they have uploaded. </p>
    <p>&nbsp;</p>
    <p>&nbsp;</p>
    <p>&nbsp;</p>
  <p>&nbsp;</p>
</div>

<h2 style="text-align:center">Our Team</h2>
<div class="row">
  <div class="column">
    <div class="card">
      &nbsp;<div class="container">
        <h2>Neha Jaffery</h2>
        <p><button class="button">Contact</button></p>
      </div>
    </div>
  </div>

  <div class="column">
    <div class="card">
      &nbsp;<div class="container">
        <h2>Joanna Kus</h2>
        <p><button class="button">Contact</button></p>
      </div>
    </div>
  </div>
  
  <div class="column">
    <div class="card">
      &nbsp;<div class="container">
        <h2>Theo Kozil</h2>
        <p><button class="button">Contact</button></p>
      </div>
    </div>
  </div>
</div>

</body>
</html>

    <form id="form1" runat="server">
        <div>
  
  <div class="auto-style1">
    <div class="card">
      &nbsp;<div class="container">
        <h2>Dominic Gallo</h2>
        <p><button class="button">Contact</button></p>
      </div>
    </div>
  </div>
        </div>
    </form>
</body>
</html>
