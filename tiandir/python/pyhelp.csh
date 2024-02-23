# Check if the argument count is less than 2
if ($#argv == 0) then
    echo "Please supply python library name"
    exit 1
endif

echo 'Library infomation :' $1
echo 'import sys'                                                            >  ~/tiandir/python/pyhelp.py
echo 'sys.path.append("/mnt/users/tientq/.local/lib/python3/site-packages")' >> ~/tiandir/python/pyhelp.py
echo 'sys.path.append("/mnt/users/tientq/python_dir")'                       >> ~/tiandir/python/pyhelp.py
echo 'import' $1                                                             >> ~/tiandir/python/pyhelp.py
echo 'help('$1')'                                                            >> ~/tiandir/python/pyhelp.py

python3 ~/tiandir/python/pyhelp.py |& tee ~/tiandir/python/libinfo.help
echo '+---------------------------------------------------------+'
echo '|  Infomation generated at: ~/tiandir/python/libinfo.help |'
echo '+---------------------------------------------------------+'
vim ~/tiandir/python/libinfo.help
