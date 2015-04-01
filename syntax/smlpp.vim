" Vim syntax file
" Language: SML++
" Maintainer: Michele Lacchia
" License: MIT

" For version 5.x: Clear all syntax items
" For version 6.x: Quit when a syntax file was already loaded
if version < 600
  syntax clear
elseif exists("b:current_syntax") && b:current_syntax == 'smlpp'
  finish
endif

syn match   smlHalt "#" display skipwhite
syn keyword smlInstruction read write load store cmp
syn keyword smlArithmetic add sub mul div mod pow
syn keyword smlMark jmpz jmpnz jmpneg jmppos jmp place

if version >= 508 || !exists("did_smlpp_syn_inits")
  if version <= 508
    let did_smlpp_syn_inits = 1
    command -nargs=+ HiLink hi link <args>
  else
    command -nargs=+ HiLink hi def link <args>
  endif

    HiLink smlInstruction Statement
    HiLink smlArithmetic Type
    HiLink smlMark PreProc
    HiLink smlHalt Constant
  delcommand HiLink
endif

let b:current_syntax = 'smlpp'
