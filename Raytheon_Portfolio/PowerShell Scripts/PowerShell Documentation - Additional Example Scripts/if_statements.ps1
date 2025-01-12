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