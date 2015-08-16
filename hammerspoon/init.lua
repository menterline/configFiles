-- Refresh config
hs.hotkey.bind({"cmd", "alt", "ctrl"}, "R", function()
  hs.reload()
  hs.alert.show("Config loaded")
end)

-- Shifting windows 5 pixels at a time
hs.hotkey.bind({"cmd", "alt", "Shift"}, "K", function()
  local win = hs.window.focusedWindow()
  local f = win:frame()

  f.y = f.y - 5
  win:setFrame(f)
end)

hs.hotkey.bind({"cmd", "alt", "Shift"}, "H", function()
  local win = hs.window.focusedWindow()
  local f = win:frame()

  f.x = f.x - 5
  win:setFrame(f)
end)

hs.hotkey.bind({"cmd", "alt", "Shift"}, "L", function()
  local win = hs.window.focusedWindow()
  local f = win:frame()

  f.x = f.x + 5
  win:setFrame(f)
end)

hs.hotkey.bind({"cmd", "alt", "Shift"}, "J", function()
  local win = hs.window.focusedWindow()
  local f = win:frame()

  f.y = f.y + 5
  win:setFrame(f)
end)

-- Moving windows to half of screen
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


-- Moving windows to corners
hs.hotkey.bind({"cmd", "alt", "ctrl"}, "Down", function()
	local win = hs.window.focusedWindow()
	local f = win:frame()
	local screen = win:screen()
	local max = screen:frame()
	
	f.x = max.x + (max.w / 2) + 5
	f.w = max.w / 2 - 10
	f.y = max.y + (max.h / 2)
	f.h = max.h / 2 - 10
	win:setFrame(f)
end)

hs.hotkey.bind({"cmd", "alt", "ctrl"}, "Right", function()
	local win = hs.window.focusedWindow()
	local f = win:frame()
	local screen = win:screen()
	local max = screen:frame()
	
	f.x = max.x + (max.w / 2) + 5
	f.w = max.w / 2 - 10
	f.y = max.y
	f.h = max.h / 2 - 10
	win:setFrame(f)
end)

hs.hotkey.bind({"cmd", "alt", "ctrl"}, "Left", function()
	local win = hs.window.focusedWindow()
	local f = win:frame()
	local screen = win:screen()
	local max = screen:frame()
	
	f.x = max.x + 10
	f.w = max.w / 2 - 10
	f.y = max.y + (max.h / 2)
	f.h = max.h / 2 - 10
	win:setFrame(f)
end)

hs.hotkey.bind({"cmd", "alt", "ctrl"}, "Up", function()
	local win = hs.window.focusedWindow()
	local f = win:frame()
	local screen = win:screen()
	local max = screen:frame()
	
	f.x = max.x + 10
	f.w = max.w / 2 - 10
	f.y = max.y + 10
	f.h = max.h / 2 - 10
	win:setFrame(f)
end)

-- Full screen
hs.hotkey.bind({"cmd", "alt"}, "F", function()
  local win = hs.window.focusedWindow()
  local f = win:frame()
  local screen = win:screen()
  local max = screen:frame()

  f.x = max.x + 5
  f.w = max.w - 10
  f.y = max.y + 5
  f.h = max.h - 10
  win:setFrame(f)
end)

-- Moving window focus
hs.hotkey.bind({"cmd", "alt"}, "L", function()
  hs.window.focusedWindow():focusWindowEast()
end)

hs.hotkey.bind({"cmd", "alt"}, "H", function()
  hs.window.focusedWindow():focusWindowWest()
end)

hs.hotkey.bind({"cmd", "alt"}, "J", function()
  hs.window.focusedWindow():focusWindowSouth()
end)

hs.hotkey.bind({"cmd", "alt"}, "K", function()
  hs.window.focusedWindow():focusWindowNorth()
end)

-- Functions to open apps
local function openchrome()
	hs.application.launchOrFocus("Google Chrome")
end

local function openiTerm()
	hs.application.launchOrFocus("iTerm")
end

local function openSafari()
	hs.application.launchOrFocus("Safari")
end

local function openSpotify()
	hs.application.launchOrFocus("Spotify")
end

local function openEmacs()
	hs.application.launchOrFocus("Emacs")
end
-- Bind opening/focusing apps
hs.hotkey.bind({"cmd", "alt"}, "T", openiTerm)
hs.hotkey.bind({"cmd", "alt"}, "C", openchrome)
hs.hotkey.bind({"cmd", "alt"}, "A", openSafari)
hs.hotkey.bind({"cmd", "alt"}, "S", openSpotify)
hs.hotkey.bind({"cmd", "alt"}, "E", openEmacs)

-- Hints
hs.hints.showTitleThresh = 1
local function hints()
	hs.hints.windowHints()
end

hs.hotkey.bind({"cmd", "ctrl"}, "Space", hints)
