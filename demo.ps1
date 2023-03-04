<#  
.SYNOPSIS
    Produces sample results for Expand-csv
.NOTES
    Script:  Demo               Rev: 1.2
    By:   DGC                   Date: 7-11-21
#>

'    '
'    Example 1:  CSV File'
'    --------------------'
'    '
Type Grants.csv
'    '
Import-Csv Grants.csv | Format-Table -auto 
'    '
'    Example 1:  Template'
'    --------------------'
'    '
type grants.tmplt
'    '
'    Example 1:  Results'
'    -------------------'
'    '
Expand-csv -Driver Grants.csv -Template Grants.tmplt
'   '
'    Example 2:  CSV File'
'    --------------------'
'    '
Type Invoke.csv
'   '
Import-Csv Invoke.csv | Format-table -auto 
'    '
'    Example 2:  Template'
'    --------------------'
'    '
type invoke.tmplt
'    '
'    Example 2:  Results'
'    -------------------'
Expand-csv -Driver invoke.csv -Template invoke.tmplt
