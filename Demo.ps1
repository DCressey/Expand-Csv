<#  
.SYNOPSIS
    Produces sample results for Expand-csv
.NOTES
    Script:  Demo               Rev: 1.3
    By:   DGC                   Date: 7-15-23
#>


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


'    Example 1:  CSV File'
'    --------------------'
'    '
Type Jars.csv
'   '
'    CSV Data viewed as a table'
'    '
Import-Csv Jars.csv | Format-table -auto 
'    '
'    Example 1:  Template'
'    --------------------'
'    '

type Jars.tmplt
'    '
'    Example 1:  Results'
'    -------------------'
Expand-csv -Driver Jars.csv -Template Jars.tmplt

#    Example 2:  Set up input files

@'
privs,table,user
ALL,Employees,DBA
READ,Employees,Analyst
"READ, WRITE", Employees, Application
ALL,Departments,DBA
READ,Departments,"Analyst, Application"
'@  | Out-File Grants.csv

@'
grant $privs 
   on $table 
   to $user;

'@ | Out-File Grants.tmplt

'    '
'    '
'    '
'    Example 2:  CSV File'
'    --------------------'
'    '
Type Grants.csv
'    '
'    CSV DAta viewed as a table'
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

