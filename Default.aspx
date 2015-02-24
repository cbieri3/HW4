<%@ Page Language="VB" AutoEventWireup="false" CodeFile="Default.aspx.vb" Inherits="_Default" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <link rel="stylesheet" type="text/css" href="style.css"/>
    <title></title>
</head>
<body style="height: 520px">
    <form id="form1" runat="server">
    <div style="height: 400px; width: 200px;" class="border">
    
        <br />
        Hourly Wage: <br />
        <asp:TextBox runat="server" ID="hourlyWageTextBox"></asp:TextBox>

        <br />
        <br />

        Number of Hours Worked: <br />
        <asp:TextBox ID="numHoursWorkedTextBox" runat="server"></asp:TextBox>

        <br />
        <br />

        Pre-Tax Deductions: <br />
        <asp:TextBox ID="preTaxDeductionsTextBox" runat="server"></asp:TextBox>

        <br />
        <br />

       After-Tax Deductions: <br />
        <asp:TextBox ID="afterTaxDeductionsTextBox" runat="server"></asp:TextBox>

        <br />
        <br />

        <asp:Button ID="calculateButton" runat="server" EnableTheming="True" Text="Calculate" />
        <asp:Button ID="clearButton" runat="server" Text="Clear" />

        <br />
        <br />
        Net Income: 
        <asp:Label runat="server" ID="netIncomePost"></asp:Label>



        
    </div>
    </form>

</body>
</html>
