<#  
.SYNOPSIS
    Produces a sample result for Expand-csv
.NOTES
    Script:  Demo-3             Rev: 1.0
    By:   DGC                   Date: 7/9/26
#>

<#
.NOTES
    Script: Expand-Csv    Rev:  3.2
    Author: DGC           Date: 2-21-19
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


#    Example 3:  Set up input files

@'
topic
about_Scripts                     
about_Variables                   
about_Scopes                      
'@ | out-file topics.csv

@'
<a href=
"https://learn.microsoft.com/en-us/powershell/module/microsoft.powershell.core/about/$topic`?view=powershell-7.5" 
target="_blank">$topic</a><br>
'@ | out-file topics.tmplt

'    '
'    Example 3:  CSV File'
'    --------------------'
'    '
Type Topics.csv
'    '
'    Example 3:  Template'
'    --------------------'
'    '
type topics.tmplt
'    '

'    Example 3:  Results'
'    -------------------'
'    '
Expand-csv -Driver topics.csv -Template topics.tmplt
'   '

