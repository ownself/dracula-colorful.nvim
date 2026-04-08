local M = {}

local function clamp(value)
  return math.max(0, math.min(255, value))
end

local function hex_to_rgb(hex)
  hex = hex:gsub("#", "")
  return tonumber(hex:sub(1, 2), 16), tonumber(hex:sub(3, 4), 16), tonumber(hex:sub(5, 6), 16)
end

local function rgb_to_hex(r, g, b)
  return string.format("#%02X%02X%02X", clamp(r), clamp(g), clamp(b))
end

function M.blend(fg, bg, alpha)
  if fg == "NONE" or bg == "NONE" then
    return fg
  end

  local fr, fg_g, fb = hex_to_rgb(fg)
  local br, bg_g, bb = hex_to_rgb(bg)

  return rgb_to_hex(
    math.floor((alpha * fr) + ((1 - alpha) * br)),
    math.floor((alpha * fg_g) + ((1 - alpha) * bg_g)),
    math.floor((alpha * fb) + ((1 - alpha) * bb))
  )
end

function M.darken(color, alpha, bg)
  return M.blend(color, bg or "#000000", alpha)
end

return M
