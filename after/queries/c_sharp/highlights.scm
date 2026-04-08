;; extends

; Keep the C# override conservative.
; The upstream nvim-treesitter query already provides most semantic captures.
; This file only reinforces a few Rider-relevant keyword classes with syntax that
; is known to be valid for the installed parser.

[
  "async"
  "await"
  "yield"
] @keyword.coroutine

[
  "return"
] @keyword.return

[
  "case"
  "default"
  "else"
  "if"
  "switch"
  "when"
] @keyword.conditional

[
  "for"
  "foreach"
  "do"
  "while"
] @keyword.repeat

[
  "catch"
  "finally"
  "throw"
  "try"
] @keyword.exception

[
  "as"
  "is"
  "in"
  "new"
  "ref"
  "sizeof"
  "stackalloc"
  "typeof"
] @keyword.operator

; Rider-like semantic refinements that are safe with the installed parser.

(enum_member_declaration
  name: (identifier) @constant)

(type_parameter
  name: (identifier) @type.parameter)
