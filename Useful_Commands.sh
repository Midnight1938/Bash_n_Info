# Find files with the text
find /path/to/search -type f -exec grep -l "your-search-string" {} \;

# move and stuff filesthat are of the form
## Current Name
## New Name
while read FN1; do read FN2; mv $FN1 $FN2; done < Text.list


## Other useful:
https://stackoverflow.com/questions/16956810/how-do-i-find-all-files-containing-specific-text-on-linux
