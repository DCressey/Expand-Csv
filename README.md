# Expand-Csv

Expand-Csv is a powershell function that generates repeated expansions of a templates, using data from a csv file.  It steps through the csv file one record at a time.  Each reocrd produces one expansion.  The data in the csv record replaces variable data in the template.  The variables in the template look like powershell variables.  Except for the dollar sign, they match the names in the csv field names.  

This function is useful for generating repetitive code blocks in SQL,  HTML, or even PS1 itself, with certain limitations.  There are some examples in this repository to get you started.

