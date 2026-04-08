;; extends

[
  (namespace_identifier)
  (type_identifier)
] @type

[
  (field_identifier)
] @property

[
  (statement_identifier)
] @label

[
  (primitive_type)
] @type.builtin

[
  (template_type
    name: (type_identifier))
] @type

[
  (parameter_declaration
    declarator: (identifier))
] @variable.parameter

[
  (function_declarator
    declarator: (identifier))
] @function

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
  (preproc_def)
  (preproc_function_def)
] @keyword.directive.define
