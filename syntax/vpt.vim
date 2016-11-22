" Vim syntax file
"
" Language: VPT (virtual parse tree)
" Author: Adrian Thurston

syntax clear

" C/C++ Keywords
syntax keyword hcType unsigned signed void char short int long float double bool
syntax keyword hcType inline static extern register const volatile auto
syntax keyword hcType union enum struct class typedef
syntax keyword hcType namespace template typename mutable
syntax keyword hcKeyword break continue default do else for
syntax keyword hcKeyword goto if return switch while
syntax keyword hcKeyword new delete this using friend public private protected sizeof
syntax keyword hcKeyword throw try catch operator typeid
syntax keyword hcKeyword and bitor xor compl bitand and_eq or_eq xor_eq not not_eq
syntax keyword hcKeyword static_cast dynamic_cast
syntax region  hcComment start="\/\*" end="\*\/"
syntax match   hcComment "\/\/.*$"
syntax match   hcPreproc "#\(.\|\\\n\)*$"
syntax region  hcPreproc start="#" end="[^\\]$"
syntax match   hcLiteral "'\(\\.\|[^'\\]\)*'"
syntax match   hcLiteral "\"\(\\.\|[^\"\\]\)*\""
syntax match   hcNumber "[0-9][0-9]*"
syntax match   hcNumber "0x[0-9a-fA-F][0-9a-fA-F]*"
syntax keyword hcBoolean true false
syntax match   hcIdentifier "[a-zA-Z_][a-zA-Z_0-9]*"

syntax region virtualParseTree matchgroup=beginVPT start="%%" end="%%" contains=@vptItems

syntax cluster vptItems contains=vptComment,vptIdentifier,vptNumber,vptGroupDelim,embeddedCode,vptAction,vptLiteral,vptKeyword
syntax cluster hostItems contains=embeddedCode,hcType,hcKeyword,hcComment,hcPreproc,hcLiteral,hcNumber,hcBoolean,hcIdentifier

" Blocks of code. 
syntax region embeddedCode matchgroup=none start="{" end="}" contained contains=@hostItems

" Identifiers
"syntax match vptId "[a-zA-Z_][a-zA-Z_0-9]*" contained

" Literals
syntax match vptLiteral "'\(\\.\|[^'\\]\)*'[i]*" contained
syntax match vptLiteral "\"\(\\.\|[^\"\\]\)*\"[i]*" contained
syntax match vptLiteral "\[\(\\.\|[^\]\\]\)*\]" contained

" Numbers
"syntax match vptNumber "[0-9][0-9]*" contained
"syntax match vptNumber "0x[0-9a-fA-F][0-9a-fA-F]*" contained

" Operators
syntax match vptAction "->" contained
syntax match vptAction "--" contained
syntax match vptAction "<-" contained
syntax match vptAction "==" contained

syntax match String "'\(\\.\|[^'\\]\)*'" contained
syntax match String "\"\(\\.\|[^\"\\]\)*\"" contained

"
" Other stuff
"

syntax match vptGroupDelim "\[" contained
syntax match vptGroupDelim "\]" contained
syntax match vptGroupDelim "(" contained
syntax match vptGroupDelim ")" contained

syntax match vptComment "#.*$" contained
syntax match vptIdentifier "[a-zA-Z_][a-zA-Z_0-9]*" contained
syntax match vptNumber "[0-9][0-9]*" contained
syntax match vptNumber "nil" contained
syntax match vptNumber "true" contained
syntax match vptNumber "false" contained

syntax keyword vptKeyword
	\ pattern queue var limit
	\ block def type

syntax sync fromstart

hi link hcComment Comment
hi link hcPreproc Macro
hi link hcLiteral String
hi link hcType Type
hi link hcKeyword Keyword
hi link hcNumber Number
hi link hcBoolean Boolean

hi link vptComment Comment
hi link vptNumber Number
hi link vptNumber Number
hi link vptLiteral String
hi link vptKeyword Type
hi link defKeywords Type
hi link typeKeywords Type
hi link vptGroupDelim Type
hi link char String
hi link tokenName Function
hi link beginVPT Type
hi link curly String
hi link vptAction Keyword

 
let b:current_syntax = "vpt"
