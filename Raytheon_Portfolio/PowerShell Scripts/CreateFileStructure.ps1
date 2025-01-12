# PowerShell 7+
# This script creates all of the nessacary folders for a secure system
# These folders are usually created by hand, but this script creates them automatically.

# Parameter options for specifying the root drive letter of the system, the current year, and the current quarter
Param(

  # Parameter option for specifying the root drive letter of the system
  [Parameter(Mandatory=$false)]
  [String]$RootDriveLetter = "C",

  # Parameter option for specifying the current year
  [Parameter(Mandatory=$false)]
  [String]$CurrentYear = "2023",

  # Parameter option for specifying the current quarter
  [Parameter(Mandatory=$false)]
  [Int32]$CurrentQuarter = 3

)

$CurrentYear = Read-Host "Enter Current Year (Ex: 2023)"

[Int32] $CurrentQuarter = Read-Host "Enter Current Quarter of the Year (Ex: 3)"

# Keeps Track of the Current Quarter for Incremential Counts
$CurrentQuarterCounter = $CurrentQuarter

# Calculates the run-time of the script
$StartTime = get-date

# Creates the "C:\Admin" Folder
New-Item -Path "$($RootDriveLetter):\Admin" -ItemType Directory

# Creates the "C:\Admin\1. Checklists" folder
New-Item -Path "$($RootDriveLetter):\Admin\1. Checklists" -ItemType Directory

# Creates the Current Year sub-folder for the "C:\Admin\1. Checklists" folder
New-Item -Path "$($RootDriveLetter):\Admin\1. Checklists\$($CurrentYear)" -ItemType Directory

# Creates all the sub-folders for the "C:\Admin\1. Checklists\CurrentYear" folder
while ($CurrentQuarter -le 4) {
  New-Item -Path "$($RootDriveLetter):\Admin\1. Checklists\$($CurrentYear)\Q$($CurrentQuarter)" -ItemType Directory
  $CurrentQuarter = $CurrentQuarter + 1
}


# Creates the "C:\Admin\2. Monthly Updates" folder
New-Item -Path "$($RootDriveLetter):\Admin\2. Monthly Updates" -ItemType Directory

# Creates the "C:\Admin\3. SCAP Scans" folder
New-Item -Path "$($RootDriveLetter):\Admin\3. SCAP Scans" -ItemType Directory

# Creates the Current Year sub-folder for the "C:\Admin\3. SCAP Scans" folder
New-Item -Path "$($RootDriveLetter):\Admin\3. SCAP Scans\$($CurrentYear)" -ItemType Directory

# Creates all the sub-folders for the "C:\Admin\3. SCAP Scans\CurrentYear" folder
while ($CurrentQuarterCounter -le 4) {
    New-Item -Path "$($RootDriveLetter):\Admin\3. SCAP Scans\$($CurrentYear)\Q$($CurrentQuarterCounter)" -ItemType Directory
    $CurrentQuarterCounter = $CurrentQuarterCounter + 1
}

# Resets the Current Quarter Counter
$CurrentQuarterCounter = $CurrentQuarter


# Creates all the rest of the sub-folders for the "C:\Admin" folder
New-Item -Path "$($RootDriveLetter):\Admin\4. Instructions" -ItemType Directory

New-Item -Path "$($RootDriveLetter):\Admin\5. Security Tools" -ItemType Directory

New-Item -Path "$($RootDriveLetter):\Admin\6. Programs" -ItemType Directory

New-Item -Path "$($RootDriveLetter):\Admin\7. Scripts" -ItemType Directory

New-Item -Path "$($RootDriveLetter):\Admin\8. ETC" -ItemType Directory

# Creates the "C:\Audits" Folder
New-Item -Path "$($RootDriveLetter):\Audits" -ItemType Directory

# Creates the "C:\Temp" Folder
New-Item -Path "$($RootDriveLetter):\Temp" -ItemType Directory


# Computes, and outputs, the total run-time of the script.
$RunTime = New-TimeSpan -Start $StartTime -End (get-date)
"Execution time was {0} hours, {1} minutes, {2} seconds and {3} milliseconds." -f $RunTime.Hours,  $RunTime.Minutes,  $RunTime.Seconds,  $RunTime.Milliseconds
