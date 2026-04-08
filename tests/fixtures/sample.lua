local PaletteRole = {}
PaletteRole.__index = PaletteRole

function PaletteRole.new(field_value, mutable_count)
  local self = setmetatable({}, PaletteRole)
  self.field_value = field_value
  self.mutable_count = mutable_count
  return self
end

function PaletteRole:format_value(input_value)
  local local_value = string.format("%s:%s:%s", input_value, self.field_value, "BD93F9")
  return local_value:upper()
end

return PaletteRole
