# Example PowerShell 7 Script for PowerShell 7 Scripting loops

# Get input from the user, in the PowerShell Terminal
[Int32] $numberInput = Read-Host "Please enter a number between 5 and 15"

# Checks if the number is in-between 5 and 15.
if ($numberInput -ge 5 && $numberInput -le 15) {

    # Used to store temporary number values, counting up and down.
    [Int32] $tempCounter = $numberInput - 1

    Write-Host "The following numbers are less than $numberInput - " -NoNewline -ForegroundColor DarkGreen
    # Counts down from the provided number, until it gets to the limit (5).
    # Ex: 9 -> Ouput: "8 7 6 5"
    while ($tempCounter -ge 5) {
        Write-Host "$tempCounter " -NoNewline
        $tempCounter = $tempCounter - 1
    }

    # Resets the temporary number counting variable
    $tempCounter = $numberInput + 1
    Write-Host ""

    Write-Host "The following numbers are greater than $numberInput - " -NoNewline -ForegroundColor DarkYellow
    # Counts up from the provided number, until it gets to the limit.
    # Ex: 9 -> Ouput: "10 11 12 13 14 15"
    for ([Int32] $i = $tempCounter; $i -le 15; $i++) {
        Write-Host "$i " -NoNewline
    }

    # Resets the temporary number counting variable
    $tempCounter = 5
    Write-Host ""

    # Creates an Int32 Array with all numbers 5 through 15.
    [Array] $allPossibleNumbers = 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15 

    Write-Host "The following numbers are all the possible numbers you could've input - " -NoNewline -ForegroundColor Magenta
    # Writes every number, individually, 5 through 15.
    # The -Parallel option allows the loop to run in a parallelized form (multithreaded).
    $allPossibleNumbers | ForEach-Object -Parallel {
        Write-Host "$_ " -NoNewline
    }

}
# The user-inputted number value was not a number betweeen 5 and 15.
else {
    Write-Output "$numberInput is not a number between 5 and 15. Make sure you enter a number between 5 and 15."
}