syntax clear

syn keyword asm_keyword adc adcs add addcc addeq addge addgt addle addls addlt addne addpl adds and andcc andeq andgt containedin=ALLBUT, asm_comment 
syn keyword asm_keyword andhi andle andls andne ands andsne asr asrcs asrs b bcc bcs beq bfi bge bgt bhi bic biceq bicge containedin=ALLBUT, asm_comment 
syn keyword asm_keyword bichi biclt bicne bl ble bleq bls blt blx bmi bne bpl bx bxeq bxls bxne c cbnz cbz clz cmn cmnmi containedin=ALLBUT, asm_comment 
syn keyword asm_keyword cmp cmpcs cmpeq cmphi cmpne cmppl cpsie dsb eor eoreq eorne isb it itt ldm ldmdb ldmeq ldmib ldr containedin=ALLBUT, asm_comment 
syn keyword asm_keyword ldrb ldrbeq ldrbne ldrcc ldrd ldreq ldrge ldrgt ldrh ldrheq ldrhi ldrhlt ldrhne ldrle ldrls ldrlt containedin=ALLBUT, asm_comment 
syn keyword asm_keyword ldrne ldrsh lsl lslcc lslcs lsleq lslgt lslle lslls lslne lsls lsr lsrcc lsreq lsrhi lsrls lsrne containedin=ALLBUT, asm_comment 
syn keyword asm_keyword lsrs lsrseq mcr mcrr mla mls mov movcc movcs moveq movge movgt movhi movle movls movlt movmi movne containedin=ALLBUT, asm_comment 
syn keyword asm_keyword movpl movs movt movtle movtne movw movwle movwne mrc mrrc mul mvn mvncc mvncs mvneq mvnhi mvnlt containedin=ALLBUT, asm_comment 
syn keyword asm_keyword mvnne mvns mvnseq mvnsne nop orr orrcc orrcs orreq orrge orrgt orrle orrne orrs orrseq orrsne pop containedin=ALLBUT, asm_comment 
syn keyword asm_keyword popcc popeq popge popgt pophi pople popls popne push rev rrx rrxs rsb rsbeq rsbge rsbgt rsble rsblt containedin=ALLBUT, asm_comment 
syn keyword asm_keyword rsbmi rsbne rsbs rsbsgt rsc rscs sbc sbcs sdiv smull stm stmfd stmia stmib str strb strbls strbne containedin=ALLBUT, asm_comment 
syn keyword asm_keyword strcc strd streq strge strgt strh strheq strhi strhlt strhne strls strlt strmi strne strpl sub subcs containedin=ALLBUT, asm_comment 
syn keyword asm_keyword subeq subgt suble subne subs subseq svc teq teqeq teqne tst ubfx udiv udiveq umlal umull uxtah uxtb containedin=ALLBUT, asm_comment 
syn keyword asm_keyword uxtbne uxth vmov vmsr wfi bs 

syn keyword asm_keyword ADC ADCS ADD ADDCC ADDEQ ADDGE ADDGT ADDLE ADDLS ADDLT ADDNE ADDPL ADDS AND ANDCC ANDEQ ANDGT CONTAINEDIN=ALLBUT, ASM_COMMENT 
syn keyword asm_keyword ANDHI ANDLE ANDLS ANDNE ANDS ANDSNE ASR ASRCS ASRS B BCC BCS BEQ BFI BGE BGT BHI BIC BICEQ BICGE CONTAINEDIN=ALLBUT, ASM_COMMENT 
syn keyword asm_keyword BICHI BICLT BICNE BL BLE BLEQ BLS BLT BLX BMI BNE BPL BX BXEQ BXLS BXNE C CBNZ CBZ CLZ CMN CMNMI CONTAINEDIN=ALLBUT, ASM_COMMENT 
syn keyword asm_keyword CMP CMPCS CMPEQ CMPHI CMPNE CMPPL CPSIE DSB EOR EOREQ EORNE ISB IT ITT LDM LDMDB LDMEQ LDMIB LDR CONTAINEDIN=ALLBUT, ASM_COMMENT 
syn keyword asm_keyword LDRB LDRBEQ LDRBNE LDRCC LDRD LDREQ LDRGE LDRGT LDRH LDRHEQ LDRHI LDRHLT LDRHNE LDRLE LDRLS LDRLT CONTAINEDIN=ALLBUT, ASM_COMMENT 
syn keyword asm_keyword LDRNE LDRSH LSL LSLCC LSLCS LSLEQ LSLGT LSLLE LSLLS LSLNE LSLS LSR LSRCC LSREQ LSRHI LSRLS LSRNE CONTAINEDIN=ALLBUT, ASM_COMMENT 
syn keyword asm_keyword LSRS LSRSEQ MCR MCRR MLA MLS MOV MOVCC MOVCS MOVEQ MOVGE MOVGT MOVHI MOVLE MOVLS MOVLT MOVMI MOVNE CONTAINEDIN=ALLBUT, ASM_COMMENT 
syn keyword asm_keyword MOVPL MOVS MOVT MOVTLE MOVTNE MOVW MOVWLE MOVWNE MRC MRRC MUL MVN MVNCC MVNCS MVNEQ MVNHI MVNLT CONTAINEDIN=ALLBUT, ASM_COMMENT 
syn keyword asm_keyword MVNNE MVNS MVNSEQ MVNSNE NOP ORR ORRCC ORRCS ORREQ ORRGE ORRGT ORRLE ORRNE ORRS ORRSEQ ORRSNE POP CONTAINEDIN=ALLBUT, ASM_COMMENT 
syn keyword asm_keyword POPCC POPEQ POPGE POPGT POPHI POPLE POPLS POPNE PUSH REV RRX RRXS RSB RSBEQ RSBGE RSBGT RSBLE RSBLT CONTAINEDIN=ALLBUT, ASM_COMMENT 
syn keyword asm_keyword RSBMI RSBNE RSBS RSBSGT RSC RSCS SBC SBCS SDIV SMULL STM STMFD STMIA STMIB STR STRB STRBLS STRBNE CONTAINEDIN=ALLBUT, ASM_COMMENT 
syn keyword asm_keyword STRCC STRD STREQ STRGE STRGT STRH STRHEQ STRHI STRHLT STRHNE STRLS STRLT STRMI STRNE STRPL SUB SUBCS CONTAINEDIN=ALLBUT, ASM_COMMENT 
syn keyword asm_keyword SUBEQ SUBGT SUBLE SUBNE SUBS SUBSEQ SVC TEQ TEQEQ TEQNE TST UBFX UDIV UDIVEQ UMLAL UMULL UXTAH UXTB CONTAINEDIN=ALLBUT, ASM_COMMENT 
syn keyword asm_keyword UXTBNE UXTH VMOV VMSR WFI BS 

syn match asm_num        "\s[0-9a-z]*\s"   containedin=ALLBUT,asm_comment,asm_addr,asm_keyword
syn match asm_num        "^[0-9a-z]*\s"    containedin=ALLBUT,asm_comment,asm_addr,asm_keyword
syn match asm_num        "\s0x[0-9a-z]*$"  containedin=ALLBUT,asm_comment,asm_addr,asm_keyword
syn match asm_comment    ";.*"             containedin=ALL
syn match asm_type_data  "\.\w*"           containedin=ALL,asm_comment
syn match asm_addr       "\w*:"            containedin=ALL,asm_comment
syn match asm_in_braket  "{.*}"            containedin=ALLBUT,asm_comment
syn match asm_in_braket  "\[.*\]"          containedin=ALLBUT,asm_comment,asm_function
syn match asm_function   "<.*>"            containedin=ALLBUT,asm_comment
syn match asm_constant   "#\d*"            containedin=ALLBUT,asm_comment
syn match asm_constant   "#-\d*"           containedin=ALLBUT,asm_comment

highlight   asm_num         ctermfg=blue
highlight   asm_comment     ctermfg=107
highlight   asm_type_data   ctermfg=13
highlight   asm_addr        ctermfg=250"215
highlight   asm_in_braket   ctermfg=42
highlight   asm_function    ctermfg=139
highlight   Normal          ctermfg=252
highlight   asm_keyword     ctermfg=130"215
highlight   asm_constant     ctermfg=139
