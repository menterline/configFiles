hs.hotkey.bind({"cmd", "alt"}, "K", function()
  local win = hs.window.focusedWindow()
  local f = win:frame()

  f.y = f.y - 5
  win:setFrame(f)
end)

hs.hotkey.bind({"cmd", "alt"}, "H", function()
  local win = hs.window.focusedWindow()
  local f = win:frame()

  f.x = f.x - 5
  win:setFrame(f)
end)

hs.hotkey.bind({"cmd", "alt"}, "L", function()
  local win = hs.window.focusedWindow()
  local f = win:frame()

  f.x = f.x + 5
  win:setFrame(f)
end)

hs.hotkey.bind({"cmd", "alt"}, "J", function()
  local win = hs.window.focusedWindow()
  local f = win:frame()

  f.y = f.y + 5
  win:setFrame(f)
end)

hs.hotkey.bind({"cmd", "alt", "ctrl"}, "R", function()
  hs.reload()
end)
hs.alert.show("Config loaded")

hs.hotkey.bind({"cmd", "alt"}, "Left", function()
  local win = hs.window.focusedWindow()
  local f = win:frame()
  local screen = win:screen()
  local max = screen:frame()

  f.w = max.w / 2 - 20
  f.x = max.x + 10
  f.y = max.y + 5
  f.h = max.h - 20
  win:setFrame(f)
end)

hs.hotkey.bind({"cmd", "alt"}, "Right", function()
  local win = hs.window.focusedWindow()
  local f = win:frame()
  local screen = win:screen()
  local max = screen:frame()

  f.w = max.w / 2 - 20
  f.x = max.x + (max.w / 2) + 10
  f.y = max.y + 5
  f.h = max.h - 20
  win:setFrame(f)
end)

hs.hotkey.bind({"cmd", "alt"}, "Up", function()
  local win = hs.window.focusedWindow()
  local f = win:frame()
  local screen = win:screen()
  local max = screen:frame()

  f.w = max.w - 10
  f.x = max.x + 5
  f.y = max.y 
  f.h = max.h / 2 - 10
  win:setFrame(f)
end)

hs.hotkey.bind({"cmd", "alt"}, "Down", function()
  local win = hs.window.focusedWindow()
  local f = win:frame()
  local screen = win:screen()
  local max = screen:frame()

  f.w = max.w - 10
  f.x = max.x + 5
  f.y = max.y + (max.h / 2)
  f.h = max.h / 2 - 10
  win:setFrame(f)
end)

hs.hotkey.bind({"cmd", "alt"}, "F", function()
  local win = hs.window.focusedWindow()
  local f = win:frame()
  local screen = win:screen()
  local max = screen:frame()

  f.w = max.w - 10
  f.x = max.x + 5
  f.y = max.y - 10
  f.h = max.h - 5
  win:setFrame(f)
end)

hs.hotkey.bind({"cmd", "alt", "ctrl"}, "L", function()
  hs.window.focusedWindow():focusWindowEast()
end)

hs.hotkey.bind({"cmd", "alt", "ctrl"}, "H", function()
  hs.window.focusedWindow():focusWindowWest()
end)

hs.hotkey.bind({"cmd", "alt", "ctrl"}, "J", function()
  hs.window.focusedWindow():focusWindowSouth()
end)

hs.hotkey.bind({"cmd", "alt", "ctrl"}, "K", function()
  hs.window.focusedWindow():focusWindowNorth()
end)
