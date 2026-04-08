;; extends

[
  (type_identifier)
  (primitive_type)
] @type

[
  (field_identifier)
] @property

[
  (parameter
    pattern: (identifier))
] @variable.parameter

[
  (lifetime
    (identifier))
] @label

[
  (call_expression
    function: (identifier))
] @function.call

[
  (call_expression
    function: (field_expression
      field: (field_identifier)))
] @function.method.call

[
  (macro_invocation)
] @function.macro

[
  (line_comment)
  (block_comment)
] @comment

[
  (line_comment
    (doc_comment))
  (block_comment
    (doc_comment))
] @comment.documentation
