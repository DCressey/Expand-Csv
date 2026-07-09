### Expand-Csv

Expand-Csv is a simple csv template engine. It combines its two inputs into a series of expansions of the template.  One input is a CSV file that contains a driver table.  THe other imput is a simple template file, with embedded variables.  Templates can be almost anything:  code fragments of HTML, SQL, or other language,  or commands to be stored in a script for later execution.

## The csv file

The CSV file contains data to replace the variable items in the template.  It can be thought of as a driver table, with rows (CSV Records) and columns (CSV fields).There is one row for each expansion to be generated.  There is one column for each variable item in the template.  The columns have the same names as the variables in the template, except for the initial dollar sign.

## The Template file

The template file is an ordinary text file with embedded variables.  The vasriables look like powershell variables.  These variables have the same name as the field names in the CSV file, except for the intial dollar sign.  Expand-csv attempts to resolve all powershell variables that it encounters in the template.  Someties, you want to insert a variable in the template, but it should be copied as is to the expansions.  In that case, you put a backtick in before the variable reference.


## This repository

This repository contains the source code to Expand-csv., some demo scripts that illustrate the use of Expand-Csv, Some demo scripts that generate the examples,  and some document files.  

## The implementation

The process block of Expand-Csv is just 6 lines long.  It uses Import-Csv, Set-Variable, and ExpandString to do all the heavy lifting.  THe code sets up three pipelines and three loops. I initially wrote Expand-csv as a learning exercise,. but I have found it useful.

It you want a full featured template-engine for poewrshell,  I suggest either MOLD or EPS.

## Commentary on Demo 1.

The first demo generates a series of Java commands that can be executed at the poershell command level.  Each java command sets up a new new java user with a default file space.  The CSV file has two fields, USER and ID.  The template in this case is one line long, and this is unusual.  The template variables are $user and $id.  The redults show seven expans of the template, one fr each record in the CSV file.  The powershell variables are gone, rplaced by CSV data.

The file Example-1.txt shows the result of running the demo.

## Commentary on Demo 2.

The second demo generates a series of SQL GRANT commands.  These commands set up access right on a table.  the CSV file has three fields, PRIVS, TABLE, and USER.
The template has three variables,  $privs, $table, and $user.  Expand-CSv knows nothing about SQL syntax.

## Commantary on Demo 3.

The third demo generates a series of HTML fragments, each of wich describes a hyperlink to one of the About_Topics in Microsoft learn. The CSV file has one fiel, Topic.  Note that when a csv file has only one field,  the comma that sperates fields is not present.  The template has one variable,  $topic.  The results show three hyperlinks coded in HTML.  Expand-Csv knows nothing about HTML syntax.

These results would have to be wrapped inside code that defines an HTML page.  This is not shown in the demo.




Hope it helps.

#powershell #template #csv
