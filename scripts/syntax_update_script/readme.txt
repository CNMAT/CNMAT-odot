odot_update_syntax.py

converts one or more files from older syntax to newer -- does update lambda functions in object, but not in message strings

python odot_update_syntax.py <list of filename>

- or -

use the -f flag followed by a folder path, to iterate that folder,

either:
python odot_update_syntax.py -f/tmp/testfolder

or 

python odot_update_syntax.py -fthis

to iterate files in the script's directory