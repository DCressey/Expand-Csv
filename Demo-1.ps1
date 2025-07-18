<#  
.SYNOPSIS
    Produces an Example result for Expand-csv
.NOTES
    Script:  Demo-1              Rev: 1.0
    By:   DGC                   Date:  7-17-25
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




# Example 1:  Set up input files
@'
NAME,ID
John,18
Dave,19
Carmen,20
Eric,21
Tom,22
Lisa,23
Kyle,24
'@ | Out-File jars.csv

@'
java -jar --create -user $name -id $id -file D:/HR/$name-$id-form.pdf
'@ | Out-file jars.tmplt


'    Example 1: CSV File'
'    --------------------'
'    '
Type Jars.csv
'   '
'    Example 1: Template'
'    --------------------'
'    '
type Jars.tmplt
'    '
'    Example 1:  Results'
'    -------------------'
Expand-csv -Driver Jars.csv -Template Jars.tmplt

