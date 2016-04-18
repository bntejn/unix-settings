if exists("b:current_syntax")
	finish
endif

syn keyword smvKeywords MODULE DEFINE ASSIGN INIT INVAR SPEC LTLSPEC VAR FROZENVAR
syn keyword smvFuncKeywords init next case esac array of in unsigned word extend sizeof
syn region smvComment start="--" end="\n"

let b:current_syntax = "smv"

hi def link smvKeywords		Type
hi def link smvFuncKeywords	Statement
hi def link smvComment		Comment
