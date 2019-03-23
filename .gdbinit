set disassembly-flavor intel
set history save on
set history filename ~/.gdb_history
set history size 32768
set history expansion on
#define hook-stop
#x/24wx $esp
#x/2i $eip
#end
source /usr/share/gef/gef.py

