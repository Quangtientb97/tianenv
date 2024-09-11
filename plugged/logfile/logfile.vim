syn match log_Index "\[\d*\]"
syn match log_Info "UVM_INFO"
syn match log_Fatal "UVM_FATAL" 
syn match log_Waring "\*W" 
syn match log_Waring "\*W,\w*" 
syn match log_Hierachy "\s\w\w*\.[a-zA-Z_.0-9-\[\]][a-zA-Z_.0-9-\[\]]*" 
syn match log_Hierachy "(\w\w*\.[a-zA-Z_.0-9-\[\]][a-zA-Z_.0-9-\[\]]*)" 
syn match log_Hierachy "\[\w\w*\.[a-zA-Z_.0-9-\[\]][a-zA-Z_.0-9-\[\]]*\]" 
syn match log_Link "\s\/[a-zA-Z_/0-9-.]*"
syn match log_Time "@\d\d*"
syn match log_Time "@\d[0-9_]*"
syn match log_Id "\[\S* \S*\w\]"
syn match log_Source_sv "\.\.\.\S*(\d*)"
syn match log_Num "'h[0-9abcdef][0-9abcdef]*"
syn match log_Num "'d[0-9][0-9]*"
syn match log_Num "'b[01][01]*"

syn keyword log_Waring WARNING warnings warning WARN warn UVM_WARNING
syn keyword log_Error Error errors ERROR error UVM_ERROR

highlight   log_Hierachy    ctermfg=blue
highlight   log_Link        ctermfg=blue
highlight   log_Info        cterm=underline ctermfg=blue      
highlight   log_Error       cterm=underline ctermfg=darkred   
highlight   log_Fatal       cterm=underline ctermfg=176       
highlight   log_Waring      cterm=underline ctermfg=228    
highlight   log_Time 		ctermfg=blue
highlight   log_Id 		    ctermfg=brown
highlight   log_Source_sv 	ctermfg=249
highlight   log_Index 		ctermfg=215
highlight   log_Num 		ctermfg=blue
