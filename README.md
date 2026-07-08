### Expand-Csv

Expand-Csv is a simple csv template engine. It combines its two inputs into a series of expansions of the template.  One input is a CSV file that contains a driver table.  THe other imput is a simple template file, with embedded variables.  Templates can be almost anything:  code fragments of HTML, SQL, or other language,  or commands to be stored in a script for later execution.

## The csv file

The CSV file contains data to replace the variable items in the template.  It can be thought of as a driver table, with rows (CSV Records)and columns (CSV fields).There is one row for each expansion to be generated.  There is one column for each variable item in the template.  The columns have the same names as the variables in the template, except for the intial dollar sign.

## The Template file

The template file is an ordinary text file with embedded variables.  The vasriables look like powershell variables.  These variables have the same name as the field names in the CSV file, except for the intial dollar sign.  Expand-csv attempts to resolve all powershell variables that it encounters in the template.  If there are varaibles in the template that are intended to be passed through to the expansions, they should be prefixed by a backtick.

There are two example files that show two sample suses of Expand-Csv.  The fist one 

## This repository

This repository contains the source code to Expand-csv., a couple of example uses, a couple of demo scripts that generate the examples, and a few document files.  

## The implementation

The process block of Expand-Csv is all of 6 lines long.  It uses Import-Csv, Set-Variable, and ExpandString to do all the heavy lifting..THe code is just to set up three pipelines and three loops. I initially wrote it as a learning exercise, but I have found it useful.

It you want a more complete template-engine for poewrshell,  I suggest either MOLD or EPS.

Hope it helps.

#powershell #template #csv
