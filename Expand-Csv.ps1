 <#
.NOTES
    Script: Expand-Csv    Rev:  3.2
    By:     DGC           Date: 2-21-19
.SYNOPSIS
    Generates multiple expansions of a template,
    driven by data in a CSV file.
.DESCRIPTION
    This function is a table driven template tool. 

    It generates output from a template and
    a driver table.  The template file contains plain
    text and embedded variables.  The driver table 
    (in a csv file) has one column for each variable, 
    and one row for each expansion to be generated.
#>
function Expand-csv {
    [CmdletBinding()]
    Param (
       [Parameter(Mandatory=$true)] [string] $driver,
       [Parameter(Mandatory=$true)] [string] $template
    )
    Process {
       Import-Csv $driver | % {
           $_.psobject.properties | % {Set-variable -name $_.name -value $_.value}
           Get-Content $template | % {$ExecutionContext.InvokeCommand.ExpandString($_)} 
       }
    }
}

