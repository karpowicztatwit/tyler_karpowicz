<#
    .SYNOPSIS
    This is a custom script for testing different types of if statements.

    .DESCRIPTION
    This script takes in a variable input from the user, and utilizes if, elseif, and else statements to  calculate a result.
    This calculated result is then output to the terminal

    .INPUTS
    An [Int32] variable, which the user is prompted to enter into the terminal. 

    .OUTPUTS
    System.String

    .EXAMPLE
    C:\PS> .\if_statements_with_Get-Help_functionality.ps1
    Please enter a number 1-10: 2
    2 is a number between 1 and 10!
#>


# Example PowerShell 7 Script for if statements

# Get input from the user, in the PowerShell Terminal
[Int32] $numberInput = Read-Host "Please enter a number 1-10"

# Checks if the number is less than 1
if ($numberInput -lt 1) {

    Write-Output "$numberInput is less than 1. The number must be between 1 and 10."

}

# Checks if the number is greater than 10
elseif ($numberInput -gt 10) {

    Write-Output "$numberInput is greater than 10. The number must be between 1 and 10."

}

# Checks if the number is between 1 and 10
# Checks if the number is Greater than or equal to 1, and Less than or equal to 10
elseif ($numberInput -ge 1 && $numberInput -le 10) {

    Write-Output "$numberInput is a number between 1 and 10!"

}

else {

    Write-Output "$numberInput is not a number. Make sure you enter a number between 1 and 10."

}
