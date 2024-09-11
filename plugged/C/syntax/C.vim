syn match C_braket 	        "[=*,;(){}]"                  containedin=ALLBUT,cComment,C_string,cComment,C_not
syn match C_string 	        "\".*\""                      containedin=ALLBUT,cComment
syn match C_string 	        "<[a-zA-Z0-9.][a-zA-Z0-9.]*>" containedin=ALLBUT,cComment
syn match C_constant 	    "\s[A-Z][A-Z][A-Z]\w*"        containedin=ALLBUT,C_braket,cComment,Comment,C_string,cComment,C_funtion
syn match C_constant 	    "\s[A-Z][0-9][A-Z]\w*"        containedin=ALLBUT,C_braket,cComment,Comment,C_string,cComment,C_funtion
syn match C_constant 	    "__[A-Z][A-Z][A-Z]\w*"        containedin=ALLBUT,C_braket,cComment,Comment,C_string,cComment,C_funtion
syn match C_constant 	    "[(=][A-Z][A-Z][A-Z]\w*"      containedin=ALLBUT,cComment,Comment,C_string,cComment
syn match C_funtion 		"\s\w*("                      containedin=ALLBUT,C_braket,cComment,C_condition,C_string,cComment
syn match C_funtion 		"[(,=]\w*("                   containedin=ALLBUT,C_braket,cComment,C_condition,C_string,cComment
syn match C_funtion 		"*\w*("                       containedin=ALLBUT,C_braket,cComment,C_condition,C_string,cComment
syn match C_funtion 		"\s\w*\s*("                   containedin=ALLBUT,C_braket,cComment,C_condition,C_string,cComment
syn match C_funtion 		"uint\d*"                     containedin=ALLBUT,C_braket,cComment,C_condition,C_string,cComment
syn match C_addr 			"[&|]"                        containedin=ALLBUT,C_braket,cComment
syn match C_not 			"!\w\w*"                      containedin=ALLBUT,C_braket,cComment
syn match C_not 			"#ifndef"                     containedin=ALLBUT,C_braket,cComment
syn match C_not 			"!="                          containedin=ALLBUT,C_braket,cComment
syn match C_not 			"\\[nr]"                      containedin=ALLBUT,C_braket,cComment
syn match C_not 			"%\d*[dxs]"                   containedin=ALLBUT,C_braket,cComment
syn match C_not 			"\~\w*"                       containedin=ALLBUT,C_braket,cComment
syn match C_index 		    "\[\w*\]"                     containedin=ALLBUT,C_braket,cComment
syn match C_include 		"#\w*"                        containedin=ALLBUT,C_braket,cComment
syn match C_number 		    "0b[01]*"                     containedin=ALLBUT,cComment
syn match C_property 	    "->\w\w*"                     containedin=ALLBUT,cComment
syn match C_struct 	        "\.\w*"                       containedin=ALLBUT,cComment
syn keyword C_condition     if else return do while for   containedin=ALLBUT,C_braket,cComment,C_include,C_string,cComment
syn keyword C_void          void                          containedin=ALLBUT,C_braket,cComment,C_include,C_string,cComment


syn match C_type 		"\su\d\d*\s" 	containedin=ALL,cComment
syn match C_type 		"\Wu\d\d*\W" 	containedin=ALL,cComment,C_braket
syn match C_type 		"\su\d\d*\s" 	containedin=ALL,cComment

syn match Ccomment 		"//.*" 	containedin=ALL


highlight C_constant  ctermfg=13"cyan
highlight C_type      ctermfg=blue
highlight C_funtion   ctermfg=blue
highlight C_addr      ctermfg=red
highlight C_not       ctermfg=42
highlight C_index     ctermfg=42
highlight C_condition ctermfg=176"139
highlight C_include   ctermfg=139
highlight C_number    ctermfg=brown
highlight C_void      ctermfg=yellow
highlight C_property  ctermfg=215
highlight C_string    ctermfg=215
highlight C_struct    ctermfg=215
highlight Statement   ctermfg=139
highlight Normal      ctermfg=254

set dictionary+=~/gen_aarch32_reg/cpu.c

" get and upper the file name
" <c-r>=substitute(toupper(expand('%:t')), '\.', '_', 'g')
inorea c_template_c_Ent /* Includes ------------------------------------------------------------------*/<cr>
            \#include <stdio.h><cr>
            \#include "system_lx61102.h"<cr>
            \#include "csv_uvmc_sdk.h"<cr>
            \#include "user_lib.h"<cr>
            \<cr>
            \/* Private typedef -----------------------------------------------------------*/<cr>
            \<cr>
            \/* Private define ------------------------------------------------------------*/<cr>
            \<cr>
            \/* Private macro -------------------------------------------------------------*/<cr>
            \<cr>
            \/* Private variables ---------------------------------------------------------*/<cr>
            \unsigned int err_code;<cr>
            \<cr>
            \/* external variables --------------------------------------------------------*/<cr>
            \<cr>
            \/* Private function prototypes -----------------------------------------------*/<cr>
            \<cr>
            \/* Exported functions --------------------------------------------------------*/<cr>
            \int main(void){<cr>
            \/* User start */<cr>
            \<cr>
            \/* End simulation */<cr>
            \ if (err_code == 0) {<cr>
            \csv_none("TEST PASSED");<cr>
            \}<cr>
            \else {<cr>
            \csv_error("TEST FAILED");<cr>
            \csv_none("err_code = %x", err_code);<cr>
            \}<cr>
            \csv_sim_end();<cr>
            \return 0;<cr>
            \}<cr><esc><esc>ggVG=/User start<cr>

inorea c_template_h_Ent #ifndef __<c-r>=substitute(toupper(expand('%:t')), '\.', '_', 'g')<cr>__<cr>
            \#define __<c-r>=substitute(toupper(expand('%:t')), '\.', '_', 'g')<cr>__<cr>
            \<cr>
            \/* Includes ------------------------------------------------------------------*/<cr> 
            \<cr>
            \/* Private typedef -----------------------------------------------------------*/<cr>
            \<cr>
            \/* Private define ------------------------------------------------------------*/<cr>
            \<cr>
            \/* Private macro -------------------------------------------------------------*/<cr>
            \<cr>
            \/* Private variables ---------------------------------------------------------*/<cr>
            \<cr>
            \/* external variables --------------------------------------------------------*/<cr>
            \<cr>
            \/* Private function prototypes -----------------------------------------------*/<cr>
            \<cr>
            \/* Exported functions --------------------------------------------------------*/<cr>
            \<cr>
            \#endif /* __<c-r>=substitute(toupper(expand('%:t')), '\.', '_', 'g')<cr>__ */<esc>

inorea sv_guardian k
