syn match     python_not         "{\w*"                         containedin=pythonString
syn match     python_not         "}"                            containedin=pythonString
syn match     python_braket      "[;()={}.]"                    containedin=ALLBUT,pythonString,python_not,pythonComment,pythonString
syn match     python_function    "\.\w*("                       containedin=ALLBUT,python_braket,pythonString,pythonComment
syn match     python_function    "\s\w*("                       containedin=ALLBUT,python_braket,pythonString,pythonComment
syn match     python_function    "^\w\w*("                      containedin=ALLBUT,python_braket,pythonString,pythonComment
syn match     python_constant    "\s[A-Z][A-Z][A-Z_0-9]*\s"     containedin=ALLBUT,pythonString,python_not,pythonComment
syn match     python_not         "!="                           containedin=ALLBUT,pythonComment
syn match     python_not         "\[\w*\]"                      containedin=ALLBUT,pythonComment
syn match     python_not         "\\n"                          containedin=ALLBUT,pythonComment
syn match     python_constant    "__\d\d*__"                    containedin=pythonString
syn match     python_fmtspec     "%[-]*\d*[sxdYMSHm]"           containedin=pythonString
syn match     python_bw          '\.\w\w*\.'                    containedin=ALLBUT,pythonString,pythonComment

syn keyword   python_obj         self                           containedin=ALLBUT,pythonString
syn keyword   python_csh_cmd     echo rm mkdir cp               containedin=pythonString

highlight python_function  ctermfg=blue
highlight python_braket    ctermfg=252
highlight python_constant  ctermfg=13
highlight python_statement ctermfg=176
highlight Normal           ctermfg=253
highlight python_not       ctermfg=70
highlight python_fmtspec   ctermfg=13
highlight python_bw        ctermfg=252
highlight python_obj       ctermfg=3
highlight python_csh_cmd   ctermfg=13

