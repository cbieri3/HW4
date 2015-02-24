
Partial Class _Default
    Inherits System.Web.UI.Page

    Protected Sub calculateButton_Click(sender As Object, e As EventArgs) Handles calculateButton.Click

        ' declare variables
        Dim W As Decimal = Val(hourlyWageTextBox.Text)
        Dim H As Decimal = Val(numHoursWorkedTextBox.Text)
        Dim P As Decimal = Val(preTaxDeductionsTextBox.Text)
        Dim A As Decimal = Val(afterTaxDeductionsTextBox.Text)

        Dim GrossPay As Decimal = W * H

        Dim TaxRate As Decimal

        ' calculating tax rate with if else clause
        If GrossPay < 500 Then
            TaxRate = 0.18
        Else
            TaxRate = 0.22
        End If

        ' calculate deductions and net income
        Dim preTax As Decimal = GrossPay - P
        Dim netIncome As Decimal = preTax - (preTax * TaxRate) - A

        ' display net income
        netIncomePost.Text = "$" & netIncome.ToString
    End Sub

    Protected Sub clearButton_Click(sender As Object, e As EventArgs) Handles clearButton.Click

        ' clear results on click
        hourlyWageTextBox.Text = String.Empty
        numHoursWorkedTextBox.Text = String.Empty
        preTaxDeductionsTextBox.Text = String.Empty
        afterTaxDeductionsTextBox.Text = String.Empty
        netIncomePost.Text = String.Empty

    End Sub
End Class
