display.setStatusBar(display.HiddenStatusBar)

local device   = require('device')
local loadsave = require('loadsave')
local json     = require('json')
local composer = require('composer')

system.setIdleTimer(false)

function onSystemEvent( event )
  if (event.type == 'applicationExit') then
  elseif (event.type == 'applicationResume') then
  elseif (event.type == 'applicationStart') then
  elseif (event.type == 'applicationSuspend') then
  end
end

Runtime:addEventListener('system',onSystemEvent)

composer.gotoScene('start')
