# Expand-Csv
Expand-Csv is a simple csv template engine. It is written as a Powershell function. It is intended to be used like a cmdlet.

The two inputs are the filespec for a csv file and the filespec for a template.

The csv file contains data to be plugged into the template when an expansion is produced.  The csv file has one record for each expansion to be generated and one field for each variable in the template.

The second input is a template.  In this context, a template is plain text with embedded variables.  The variables begin with a dollar sign, as in powershell.  The variables will be replaced by values drawn from the csv file.  The text itself can be in a language like SQL or HTML.  With certain limitations, it can even be in PS1 itself.

The idea is to produce a very simple tool that can be used in a wide range of situations,  where the data stream is easily reduced to csv format.  The template then provides the form that the data should take. I built this little tool as a way of coming up to speed on Powershell.  I'm hoping that others will find it useful.


