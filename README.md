Expand-Csv is a simple csv template engine. It is written as a Powershell function. It is intended to be used like a cmdlet.

The two inputs identify a csv file and a template file.

The csv file contains data to be plugged into the template when an expansion is generated.  The csv file has one record for each expansion to be generated and one field for each variable in the template.

The template file contains plain text and embedded variables.  The variables begin with a dollar sign, as they do in powershell.  The variables will be replaced by values drawn from the csv file.  The text itself can be in a language like SQL, HTML, or even a series of Pwoershell function calls.

This tool is useful in a wide range of situations,  where a data stream is easily reduced to csv format.  The template then provides the form that the data should take. I built this little tool as a way of coming up to speed on Powershell.  I'm hoping that others will find it useful.


