# Resources for Zebra LP-2824 #

## Summary ##

This repository contains various shell scripts that I've used to interface with my Zebra LP-2824 thermal printer. Most of these files are used to print five lines of text onto 1 by 3 thermal labels. Since the printer only supports labels up to 2" in width, all of the text be rotated 90 degrees to fit onto the labels properly.

Most Zebra printers use the ZPL programming language. However, this particular model uses EPL because it is a rebranded Epson product. Plain-text data is sent to the printer via the parallel port. 

## Files ##

### quickPrint.sh ###

```quickPrint.sh``` prompts the user for five lines of text, which will then be printed in the form of a mail address label. Write access must be given to ```/dev/lp0```.  
