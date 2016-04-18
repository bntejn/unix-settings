if exists("b:current_syntax")
	finish
endif

syn keyword tasks c1 c2 c3 c4 c5 c6 c7 valid
syn keyword const RDY SUS rel hld WIT RUN clear set ready suspended released held waiting runnin 
syn keyword api ActivateTask TerminateTask ChainTask GetResource ReleaseResource Schedule WaitEvent SetEvent ClearEvent AT TT CT GR RR SC WE SE CE
syn region state start="->" end="<-\n"
syn region smvComment start="--" end="\n"

let b:current_syntax = "smv"

hi def link tasks			Type
hi def link smvComment		Comment
hi def link api				Preproc
hi def link state			Statement
hi def link const			Constant
