;; extends
[
  "export"
  "async"
  "await"
] @keyword

[
  (property_identifier)
] @property

[
  (type_identifier)
] @type

[
  (jsx_attribute
    (property_identifier)) 
] @tag.attribute

[
  (jsx_opening_element
    name: (identifier)) 
  (jsx_closing_element
    name: (identifier))
] @tag
