<#  
.SYNOPSIS
    Produces sample results for Expand-csv
.NOTES
    Script:  Demo               Rev: 1.3
    By:   DGC                   Date: 7-15-23
#>

'    Example 1:  CSV File'
'    --------------------'
'    '
Type Invoke.csv
'   '
'    Viewed as a table'
'    '
Import-Csv Invoke.csv | Format-table -auto 
'    '
'    Example 1:  Template'
'    --------------------'
'    '
type invoke.tmplt
'    '
'    Example 1:  Results'
'    -------------------'
Expand-csv -Driver invoke.csv -Template invoke.tmplt

'    '
'    Example 2:  CSV File'
'    --------------------'
'    '
Type Grants.csv
'    '
'    Viewed as a table'
'    '
Import-Csv Grants.csv | Format-Table -auto 
'    '
'    Example 2:  Template'
'    --------------------'
'    '
type grants.tmplt
'    '
'    Example 2:  Results'
'    -------------------'
'    '
Expand-csv -Driver Grants.csv -Template Grants.tmplt
'   '

