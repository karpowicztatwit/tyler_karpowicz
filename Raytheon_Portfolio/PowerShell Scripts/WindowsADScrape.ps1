<#
.Description
  Combination of the scripts Windows10ADScrape and WindowsServerADScrape
  Creates a .csv file in your current users home directory with script results
  Also prints out results to console with totals
  Can email results with totals as well
  Authors: Noah Gagnon
  Original Scripts Authors: Noah Gagnon, Grace Richmond, Tyler Karpowicz, Matthew Wong

.PARAMETER help
    Prints out help page
.PARAMETER desktop    
    Prints out all devices running any version of Windows 10 Desktop
.PARAMETER server     
    Prints out all devices running any version of Windows Server
.PARAMETER EOLCheck        
    Can be combined with -server to list all devices running any version of Windows Server that is end of life (does not work with -desktop)
.PARAMETER days       
    Specifies how many days since last logon you want to check (Ex. -days 30 prints out all devices that have logged onto AD within the past 30 days)
.PARAMETER email
    Emails scripts output as CSV file to specified email
#>




param(
    [switch]$help,

    [switch]$desktop, 

    [switch]$server, 

    [switch]$EOLCheck, 

    [int]$days = 30,

    [string]$email = ""

)

$fileLocation = $Home + "\ADScrapeResults.csv"


#Email Info
$smtphost = "smtp.bbn.com"
$to = $email
$from = "no-reply@rtx.com"
function Send-Mail {
    param($fromt, $to, $subject, $body)
    $smtp = New-Object system.net.mail.smtpClient($smtphost)
    $mail = New-Object System.Net.Mail.MailMessage
    $mail.from = $from
    $mail.To.add($to)
    $mail.subject = $subject
    $mail.body = $body
    $mail.isbodyhtml = $true
    $mail.Attachments.Add($fileLocation)
    $smtp.send($mail)
}

# Get-Date
$CurrentDate = Get-Date

$Subject = "Windows Ad Scrape Report: $CurrentDate"
$Body ="Totals:<br>"
$Output





#Days Searched
#$days = $(Read-Host "Input how many days back to search")

# Get the date according to Days Searched
$Past_Date = $CurrentDate.AddDays(-$days)

#WindowsCechk
#$WindowsCheck = $(Read-Host "Desktop or Server or Both? (d/s/b)")

<#if ($WindowsCheck -eq "s") {
    #EOL Check (Only works for machines running Windows Server)
    $EOLCheck = $(Read-Host "List only EOL devices? (y/n)")
}#>

#Totals for each Operating System
$2022Total = 0
$2019Total = 0
$2016Total = 0
$2012Total = 0
$2008Total = 0
$2003Total = 0
$2000Total = 0

$ThresholdTotal = 0
$Threshold2Total = 0
$RedstoneTotal = 0
$Redstone2Total = 0
$Redstone3Total = 0
$Redstone4Total = 0
$Redstone5Total = 0
$19H1Total = 0
$19H2Total = 0
$20H1Total = 0
$20H2Total = 0
$21H1Total = 0
$21H2Total = 0
$22H2Total = 0

# Properties Variable
$Properties = @{
    SearchBase = "dc=ad,dc=bbn,dc=com"

    Filter     = { operatingsystem -like "Windows*" }
    Properties = 'Name', 'LastLogonDate', 'OperatingSystem', 'OperatingSystemVersion'
}

$desktopProperties = @{
    SearchBase = "dc=ad,dc=bbn,dc=com"

    Filter     = { operatingsystem -like "Windows 10*" }
    Properties = 'Name', 'LastLogonDate', 'OperatingSystem', 'OperatingSystemVersion'
}

$list = Get-ADComputer @Properties
$desktopList = Get-ADComputer @desktopProperties

#Organizes data just for machines running Windows 10 Desktop
$desktopData = foreach ($System in $desktopList) {
    Switch -Wildcard ($System.OperatingSystemVersion) {
        '*19045*' {
            if ($System.LastLogonDate -ge $Past_Date) {
                [pscustomobject]@{
                    Name            = $System.name
                    LastLogonDate   = $System.LastLogonDate.ToString('MM/dd/yyyy')
                    OperatingSystem = $System.Operatingsystem
                    Version         = '22H2'
                }
                $22H2Total++
            }
        }
        '*19044*' {
            if ($System.LastLogonDate -ge $Past_Date) {
                [pscustomobject]@{
                    Name            = $System.name
                    LastLogonDate   = $System.LastLogonDate.ToString('MM/dd/yyyy')
                    OperatingSystem = $System.Operatingsystem
                    Version         = '21H2'
                }
                $21H2Total++
            }
        }
        '*19043*' {
            if ($System.LastLogonDate -ge $Past_Date) {
                [pscustomobject]@{
                    Name            = $System.name
                    LastLogonDate   = $System.LastLogonDate.ToString('MM/dd/yyyy')
                    OperatingSystem = $System.Operatingsystem
                    Version         = '21H1'
                }
                $21H1Total++
            }
        }
        '*19042*' {
            if ($System.LastLogonDate -ge $Past_Date) {
                [pscustomobject]@{
                    Name            = $System.name
                    LastLogonDate   = $System.LastLogonDate.ToString('MM/dd/yyyy')
                    OperatingSystem = $System.Operatingsystem
                    Version         = '20H2'
                }
                $20H2Total++
            }
        }
        '*19041*' {
            if ($System.LastLogonDate -ge $Past_Date) {
                [pscustomobject]@{
                    Name            = $System.name
                    LastLogonDate   = $System.LastLogonDate.ToString('MM/dd/yyyy')
                    OperatingSystem = $System.Operatingsystem
                    Version         = '2004'
                }
                $20H1Total++
            }
        }
        '*18363*' {
            if ($System.LastLogonDate -ge $Past_Date) {
                [pscustomobject]@{
                    Name            = $System.name
                    LastLogonDate   = $System.LastLogonDate.ToString('MM/dd/yyyy')
                    OperatingSystem = $System.Operatingsystem
                    Version         = '1909'
                }
                $19H2Total++
            }
        }
        '*18362*' {
            if ($System.LastLogonDate -ge $Past_Date) {
                [pscustomobject]@{
                    Name            = $System.name
                    LastLogonDate   = $System.LastLogonDate.ToString('MM/dd/yyyy')
                    OperatingSystem = $System.Operatingsystem
                    Version         = '1903'
                }
                $19H1Total++
            }
        }
        '*17763*' {
            if ($System.LastLogonDate -ge $Past_Date) {
                [pscustomobject]@{
                    Name            = $System.name
                    LastLogonDate   = $System.LastLogonDate.ToString('MM/dd/yyyy')
                    OperatingSystem = $System.Operatingsystem
                    Version         = '1809'
                }
                $Redstone5Total++
            }
        }
        '*17134*' {
            if ($System.LastLogonDate -ge $Past_Date) {
                [pscustomobject]@{
                    Name            = $System.name
                    LastLogonDate   = $System.LastLogonDate.ToString('MM/dd/yyyy')
                    OperatingSystem = $System.Operatingsystem
                    Version         = '1803'
                }
                $Redstone4Total++
            }
        }
        '*16299*' {
            if ($System.LastLogonDate -ge $Past_Date) {
                [pscustomobject]@{
                    Name            = $System.name
                    LastLogonDate   = $System.LastLogonDate.ToString('MM/dd/yyyy')
                    OperatingSystem = $System.Operatingsystem
                    Version         = '1709'
                }
                $Redstone3Total++
            }
        }
        '*15063*' {
            if ($System.LastLogonDate -ge $Past_Date) {
                [pscustomobject]@{
                    Name            = $System.name
                    LastLogonDate   = $System.LastLogonDate.ToString('MM/dd/yyyy')
                    OperatingSystem = $System.Operatingsystem
                    Version         = '1703'
                }
                $Redstone2Total++
            }
        }
        '*14393*' {
            if ($System.LastLogonDate -ge $Past_Date) {
                [pscustomobject]@{
                    Name            = $System.name
                    LastLogonDate   = $System.LastLogonDate.ToString('MM/dd/yyyy')
                    OperatingSystem = $System.Operatingsystem
                    Version         = '1607'
                }
                $RedstoneTotal++
            }
        }
        '*10586*' {
            if ($System.LastLogonDate -ge $Past_Date) {
                [pscustomobject]@{
                    Name            = $System.name
                    LastLogonDate   = $System.LastLogonDate.ToString('MM/dd/yyyy')
                    OperatingSystem = $System.Operatingsystem
                    Version         = '1511'
                }
                $Threshold2Total++
            }
        }
        '*10240*' {
            if ($System.LastLogonDate -ge $Past_Date) {
                [pscustomobject]@{
                    Name            = $System.name
                    LastLogonDate   = $System.LastLogonDate.ToString('MM/dd/yyyy')
                    OperatingSystem = $System.Operatingsystem
                    Version         = '1507'
                }
                $ThresholdTotal++
            }
        }
    }
}

#Organizes data just for machines running Windows Server 2022-2000
$serverData = foreach ($System in $List) {
    Switch -Wildcard ($System.OperatingSystem) {
        '*Windows Server 2022*' {
            if ($System.LastLogonDate -ge $Past_Date) {
                [pscustomobject]@{
                    Name            = $System.name
                    LastLogonDate   = $System.LastLogonDate.ToString('MM/dd/yyyy')
                    OperatingSystem = $System.Operatingsystem
                    Version         = $System.OperatingSystemVersion
                }
            }
            $2022Total++
        }
        '*Windows Server 2019*' {
            if ($System.LastLogonDate -ge $Past_Date) {
                [pscustomobject]@{
                    Name            = $System.name
                    LastLogonDate   = $System.LastLogonDate.ToString('MM/dd/yyyy')
                    OperatingSystem = $System.Operatingsystem
                    Version         = $System.OperatingSystemVersion
                }
            }
            $2019Total++
        }
        '*Windows Server 2016*' {
            if ($System.LastLogonDate -ge $Past_Date) {
                [pscustomobject]@{
                    Name            = $System.name
                    LastLogonDate   = $System.LastLogonDate.ToString('MM/dd/yyyy')
                    OperatingSystem = $System.Operatingsystem
                    Version         = $System.OperatingSystemVersion
                }
            }
            $2016Total++
        }
        '*Windows Server 2012*' {
            if ($System.LastLogonDate -ge $Past_Date) {
                [pscustomobject]@{
                    Name            = $System.name
                    LastLogonDate   = $System.LastLogonDate.ToString('MM/dd/yyyy')
                    OperatingSystem = $System.Operatingsystem
                    Version         = $System.OperatingSystemVersion
                }
            }
            $2012Total++
        }
        '*Windows Server 2008*' {
            if ($System.LastLogonDate -ge $Past_Date) {
                [pscustomobject]@{
                    Name            = $System.name
                    LastLogonDate   = $System.LastLogonDate.ToString('MM/dd/yyyy')
                    OperatingSystem = $System.Operatingsystem
                    Version         = $System.OperatingSystemVersion
                }
            }
            $2008Total++
        }
        '*Windows Server 2003*' {
            if ($System.LastLogonDate -ge $Past_Date) {
                [pscustomobject]@{
                    Name            = $System.name
                    LastLogonDate   = $System.LastLogonDate.ToString('MM/dd/yyyy')
                    OperatingSystem = $System.Operatingsystem
                    Version         = $System.OperatingSystemVersion
                }
            }
            $2003Total++
        }
        '*Windows 2000 Server*' {
            if ($System.LastLogonDate -ge $Past_Date) {
                [pscustomobject]@{
                    Name            = $System.name
                    LastLogonDate   = $System.LastLogonDate.ToString('MM/dd/yyyy')
                    OperatingSystem = $System.Operatingsystem
                    Version         = $System.OperatingSystemVersion
                }
            }
            $2000Total++
        }
    }
}   

#Organizes data for only machines running EOL Windows Server versions: Currently 2012-2000
$serverEOL = foreach ($System in $List) {
    Switch -Wildcard ($System.OperatingSystem) {
        '*Windows Server 2012*' {
            if ($System.LastLogonDate -ge $Past_Date) {
                [pscustomobject]@{
                    Name            = $System.name
                    LastLogonDate   = $System.LastLogonDate.ToString('MM/dd/yyyy')
                    OperatingSystem = $System.Operatingsystem
                    Version         = $System.OperatingSystemVersion
                }
            }
        }
        '*Windows Server 2008*' {
            if ($System.LastLogonDate -ge $Past_Date) {
                [pscustomobject]@{
                    Name            = $System.name
                    LastLogonDate   = $System.LastLogonDate.ToString('MM/dd/yyyy')
                    OperatingSystem = $System.Operatingsystem
                    Version         = $System.OperatingSystemVersion
                }
            }
        }
        '*Windows Server 2003*' {
            if ($System.LastLogonDate -ge $Past_Date) {
                [pscustomobject]@{
                    Name            = $System.name
                    LastLogonDate   = $System.LastLogonDate.ToString('MM/dd/yyyy')
                    OperatingSystem = $System.Operatingsystem
                    Version         = $System.OperatingSystemVersion
                }
            }
        }
        '*Windows 2000 Server*' {
            if ($System.LastLogonDate -ge $Past_Date) {
                [pscustomobject]@{
                    Name            = $System.name
                    LastLogonDate   = $System.LastLogonDate.ToString('MM/dd/yyyy')
                    OperatingSystem = $System.Operatingsystem
                    Version         = $System.OperatingSystemVersion
                }
            }
        }
    }
} 

#Prints out only EOL server machines
if ($EOLCheck -and $server) {
    $Output = $serverEOL | Sort-Object -Property @{Expression = { $_.LastLogonDate }; Descending = $true }, @{Expression = { $_.OperatinSystem }; Descending = $true }, @{Expression = { $_.Version }; Descending = $true }
    $Output | Export-Csv -Path $fileLocation
    $Output += ""
    if ($2012Total -gt 0) {

        $Output += "Windows Server 2012 - $2012Total"
        $Body += "Windows Server 2012 - $2012Total<br>"
    }
    
    if ($2008Total -gt 0) {
        $Output += "Windows Server 2008 - $2008Total"
        $Body += "Windows Server 2008 - $2008Total<br>"
    }
    
    if ($2003Total -gt 0) {
        $Output += "Windows Server 2003 - $2003Total"
        $Body += "Windows Server 2003 - $2003Total<br>"
    }
    
    if ($2000Total -gt 0) {
        $Output += "Windows 2000 Server - $2000Total"
        $Body += "Windows 2000 Server - $2000Total<br>"
    }

    Write-Output $Output

}

#Prints out all server machines
if (!$EOLCheck -and $server) {
    $Output = $serverData | Sort-Object -Property @{Expression = { $_.LastLogonDate }; Descending = $true }, @{Expression = { $_.OperatinSystem }; Descending = $true }, @{Expression = { $_.Version }; Descending = $true } 
    $Output | Export-Csv -Path $fileLocation
    $Output += ""
    if ($2022Total -gt 0) {
        $Output += "Windows Server 2022 - $2022Total"
        $Body += "Windows Server 2022 - $2022Total<br>"
    }

    if ($2019Total -gt 0) {
        $Output += "Windows Server 2019 - $2019Total"
        $Body += "Windows Server 2019 - $2019Total<br>"
    }

    if ($2016Total -gt 0) {
        $Output += "Windows Server 2016 - $2016Total"
        $Body += "Windows Server 2016 - $2016Total<br>"
    }

    if ($2012Total -gt 0) {
        $Output += "Windows Server 2012 - $2012Total"
        $Body += "Windows Server 2012 - $2012Total<br>"
    }

    if ($2008Total -gt 0) {
        $Output += "Windows Server 2008 - $2008Total"
        $Body += "Windows Server 2008 - $2008Total<br>"
    }

    if ($2003Total -gt 0) {
        $Output += "Windows Server 2003 - $2003Total"
        $Body += "Windows Server 2003 - $2003Total<br>"
    }

    if ($2000Total -gt 0) {
        $Output += "Windows 2000 Server - $2000Total"
        $Body += "Windows 2000 Server - $2000Total<br>"
    }

    Write-Output $Output
}

#Prints out all Desktop machines
if ($desktop) {
    $Output = $desktopData | Sort-Object -Property @{Expression = { $_.LastLogonDate }; Descending = $true }, @{Expression = { $_.Version }; Descending = $true }
    $Output | Export-Csv -Path $fileLocation
    $Output += ""
    if ($22H2Total -gt 0) {
        $Output += "Windows 10 22H2 - $22H2Total"
        $Body += "Windows 10 22H2 - $22H2Total<br>"
    }

    if ($21H2Total -gt 0) {
        $Output += "Windows 10 21H2 - $21H2Total"
        $Body += "Windows 10 21H2 - $21H2Total<br>"
    }

    if ($21H1Total -gt 0) {
        $Output += "Windows 10 21H1 - $21H1Total"
        $Body += "Windows 10 21H1 - $21H1Total<br>"
    }

    if ($20H2Total -gt 0) {
        $Output += "Windows 10 20H2 - $20H2Total"
        $Body += "Windows 10 20H2 - $20H2Total<br>"
    }

    if ($20H1Total -gt 0) {
        $Output += "Windows 10 2004 - $20H1Total"
        $Body += "Windows 10 2004 - $20H1Total<br>"
    }

    if ($19H2Total -gt 0) {
        $Output += "Windows 10 1909 - $19H2Total"
        $Body += "Windows 10 1909 - $19H2Total<br>"
    }

    if ($19H1Total -gt 0) {
        $Output += "Windows 10 1903 - $19H1Total"
        $Body += "Windows 10 1903 - $19H1Total<br>"
    }

    if ($Redstone5Total -gt 0) {
        $Output += "Windows 10 1809 - $Redstone5Total"
        $Body += "Windows 10 1809 - $Redstone5Total<br>"
    }

    if ($Redstone4Total -gt 0) {
        $Output += "Windows 10 1803 - $Redstone4Total"
        $Body += "Windows 10 1803 - $Redstone4Total<br>"
    }

    if ($Redstone3Total -gt 0) {
        $Output += "Windows 10 1709 - $Redstone3Total"
        $Body += "Windows 10 1709 - $Redstone3Total<br>"
    }

    if ($Redstone2Total -gt 0) {
        $Output += "Windows 10 1703 - $Redstone2Total"
        $Body += "Windows 10 1703 - $Redstone2Total<br>"
    }

    if ($RedstoneTotal -gt 0) {
        $Output += "Windows 10 1607 - $RedstoneTotal"
        $Body += "Windows 10 1607 - $RedstoneTotal<br>"
    }

    if ($Threshold2Total -gt 0) {
        $Output += "Windows 10 1511 - $Threshold2Total"
        $Body += "Windows 10 1511 - $Threshold2Total<br>"
    }

    if ($ThresholdTotal -gt 0) {
        $Output += "Windows 10 1507 - $ThresholdTotal"
        $Body += "Windows 10 1507 - $ThresholdTotal<br>"
    }

    Write-Output $Output
}

#Prints out all machines
if (!$desktop -and !$server -and !$help) {
    $Output = ($serverData + $desktopData) | Sort-Object -Property @{Expression = { $_.LastLogonDate }; Descending = $true }, @{Expression = { $_.OperatinSystem }; Descending = $true }, @{Expression = { $_.Version }; Descending = $true }
    $Output | Export-Csv -Path $fileLocation
    $Output += ""
    if ($2022Total -gt 0) {
        $Output += "Windows Server 2022 - $2022Total"
        $Body += "Windows Server 2022 - $2022Total<br>"
    }

    if ($2019Total -gt 0) {
        $Output += "Windows Server 2019 - $2019Total"
        $Body += "Windows Server 2019 - $2019Total<br>"
    }

    if ($2016Total -gt 0) {
        $Output += "Windows Server 2016 - $2016Total"
        $Body += "Windows Server 2016 - $2016Total<br>"
    }

    if ($2012Total -gt 0) {
        $Output += "Windows Server 2012 - $2012Total"
        $Body += "Windows Server 2012 - $2012Total<br>"
    }

    if ($2008Total -gt 0) {
        $Output += "Windows Server 2008 - $2008Total"
        $Body += "Windows Server 2008 - $2008Total<br>"
    }

    if ($2003Total -gt 0) {
        $Output += "Windows Server 2003 - $2003Total"
        $Body += "Windows Server 2003 - $2003Total<br>"
    }

    if ($2000Total -gt 0) {
        $Output += "Windows 2000 Server - $2000Total"
        $Body += "Windows 2000 Server - $2000Total<br>"
    }
    if ($22H2Total -gt 0) {
        $Output += "Windows 10 22H2 - $22H2Total"
        $Body += "Windows 10 22H2 - $22H2Total<br>"
    }
    
    if ($21H2Total -gt 0) {
        $Output += "Windows 10 21H2 - $21H2Total"
        $Body += "Windows 10 21H2 - $21H2Total<br>"
    }
    
    if ($21H1Total -gt 0) {
        $Output += "Windows 10 21H1 - $21H1Total"
        $Body += "Windows 10 21H1 - $21H1Total<br>"
    }
    
    if ($20H2Total -gt 0) {
        $Output += "Windows 10 20H2 - $20H2Total"
        $Body += "Windows 10 20H2 - $20H2Total<br>"
    }
    
    if ($20H1Total -gt 0) {
        $Output += "Windows 10 2004 - $20H1Total"
        $Body += "Windows 10 2004 - $20H1Total<br>"
    }
    
    if ($19H2Total -gt 0) {
        $Output += "Windows 10 1909 - $19H2Total"
        $Body += "Windows 10 1909 - $19H2Total<br>"
    }
    
    if ($19H1Total -gt 0) {
        $Output += "Windows 10 1903 - $19H1Total"
        $Body += "Windows 10 1903 - $19H1Total<br>"
    }
    
    if ($Redstone5Total -gt 0) {
        $Output += "Windows 10 1809 - $Redstone5Total"
        $Body += "Windows 10 1809 - $Redstone5Total<br>"
    }
    
    if ($Redstone4Total -gt 0) {
        $Output += "Windows 10 1803 - $Redstone4Total"
        $Body += "Windows 10 1803 - $Redstone4Total<br>"
    }
    
    if ($Redstone3Total -gt 0) {
        $Output += "Windows 10 1709 - $Redstone3Total"
        $Body += "Windows 10 1709 - $Redstone3Total<br>"
    }
    
    if ($Redstone2Total -gt 0) {
        $Output += "Windows 10 1703 - $Redstone2Total"
        $Body += "Windows 10 1703 - $Redstone2Total<br>"
    }
    
    if ($RedstoneTotal -gt 0) {
        $Output += "Windows 10 1607 - $RedstoneTotal"
        $Body += "Windows 10 1607 - $RedstoneTotal<br>"
    }
    
    if ($Threshold2Total -gt 0) {
        $Output += "Windows 10 1511 - $Threshold2Total"
        $Body += "Windows 10 1511 - $Threshold2Total<br>"
    }
    
    if ($ThresholdTotal -gt 0) {
        $Output += "Windows 10 1507 - $ThresholdTotal"
        $Body += "Windows 10 1507 - $ThresholdTotal<br>"
    }

    Write-Output $Output
}

if ($help){
    Get-Help $MyInvocation.InvocationName -full
}

if ($email -ne ""){
    Send-Mail $from $to $subject $Body 
}

