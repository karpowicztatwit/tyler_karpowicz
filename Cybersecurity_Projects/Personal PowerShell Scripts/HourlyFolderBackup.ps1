# Define the source and destination paths
$SourceFolder = "C:\Steam CMD\steamapps\common\PalServer\Pal\Saved\SaveGames" # Replace with your source folder path
$DestinationFolderRoot = "C:\Users\Server\Desktop\PalWorld_Server_Save_Backups" # Replace with your destination root folder path

# Function to create a timestamped backup
function Backup-Folder {
    $Timestamp = Get-Date -Format "yyyy-MM-dd_HH-mm-ss"
    $DestinationFolder = Join-Path -Path $DestinationFolderRoot -ChildPath $Timestamp

    try {
        Copy-Item -Path $SourceFolder -Destination $DestinationFolder -Recurse -Force
        Write-Output "Backup created successfully at $DestinationFolder"
    } catch {
        Write-Output "Failed to create backup: $_"
    }
}

# Create the backup immediately (can be removed if only using Task Scheduler)
Backup-Folder

# Schedule the task to run every hour
$NextHour = (Get-Date).AddHours(1).Date.AddHours((Get-Date).AddHours(1).Hour)
$Action = New-ScheduledTaskAction -Execute "PowerShell.exe" -Argument "-NoProfile -WindowStyle Hidden -Command `"& { & '$($MyInvocation.MyCommand.Path)' }`""
$Trigger = New-ScheduledTaskTrigger -Once -At $NextHour -RepetitionInterval (New-TimeSpan -Hours 1)
$Settings = New-ScheduledTaskSettingsSet -AllowStartIfOnBatteries -DontStopIfGoingOnBatteries -StartWhenAvailable

Register-ScheduledTask -TaskName "HourlyFolderBackup" -Action $Action -Trigger $Trigger -Settings $Settings

Write-Output "Task 'HourlyFolderBackup' has been created in Task Scheduler."
