# Write-Host Examples
Write-Host "Hello Word"
Write-Host "Hello Word, with color!" -ForegroundColor Green
Write-Host "Hello Word, with color!" -ForegroundColor Magenta -BackgroundColor Blue
Write-Host "Hello World! " -NoNewline
Write-Host "Hello Again World!"

# Write-Output Examples
$currentDirectory = Get-Location
Write-Output "The Current Working Directory is $($currentDirectory)"

# Read-Host Examples
$number = Read-Host "Enter a number"
Write-Output "The number you entered was: $($number)"
[Int32] $castedNumber = Read-Host "Enter a number (Must be an Integer)"
Write-Output "The number you entered was: $castedNumber"
$combinedNumber = [Int32] $number + $castedNumber
Write-Output "The sum of the two numbers you entered is: $combinedNumber"