# Lesvoorbereidingsformulier-UH
LaTeX versie van het lesvoorbereidingsformulier in gebruik in de Educatieve Masters aan de Universiteit Hasselt

## How to use
Step 1. Download this repository

Step 2. Edit the files in the Lesvoorbereiding subdirectory (with the exception of identificatie.tex)

Step 3. Compile lvb-main.tex using pdflatex

## Classoptions
Adding the following options will show the respective texts. 
The texts are present throughout the document as \help... commands, removing these permanently removes them from the document.
The helping text commands and contents are defined in uhlvb_helptext.tex file.
Any other class option will be ignored

showextra: Shows a short helpful description for most sections

showhelp: Shows an extensive explanation of what is expected of the student for most sections

darkmode: When added the PDF is printed as black with gray writing for ease of reading in dark environments.
Do not forget to disable this feature before printing.

## Features to add:
1. Commands to emphasize questions, answers and actions
2. Commands for particular lesson types (such as OLG)
3. Automatic numbering of the `lesdoelen' according to their type
4. Automatic referencing to the lesdoelen
5. Add a way to differentiate between different 'lesdelen' in a 'lesfase'. They seem continuous at the moment but it would be helpful to differentiate them from one another in a clear way.