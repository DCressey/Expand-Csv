Expand-Csv is a simple csv template engine. It is written as a Powershell function. It is intended to be used like a cmdlet.

I built this little tool as a learning exercise.  I'm sharing it in the hopes that others wil find it  useful.

The two inputs identify a csv file and a template file.

The csv file contains data to be plugged into the template when an expansion is generated.  The csv file has one record for each expansion to be generated and one field for each variable in the template.

The template file contains plain text and embedded variables.  The variables begin with a dollar sign, as they do in powershell.  The variables will be replaced by values drawn from the csv file.  The text itself can take on the form of a series of simple powershell commands, but it is usually in some other language, like SQL or HTML.

The output can be sent to a file for further development and/or execution.  

The process part consists of three steps:

1.  for each record in the csv file,  generate an expansion of the template, usingsteps 2 and 3.
2.  for each field in the current record, generate a powershell variable that associates the name with the value.
3.  for each line in the template, generate an expanded version with the variables resolved.

This tool is useful in a wide range of situations.  It's often easy to obtain the actual data in csv form. It's often easy to construct a template file that reflects the form the expansion should take on for later use.  


