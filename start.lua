local composer = require('composer')
local device   = require('device')
local scene    = composer.newScene()

---------------------------------------------------------------------------------
-- All code outside of the listener functions will only be executed ONCE
-- unless 'composer.removeScene()' is called.
---------------------------------------------------------------------------------

local _W = display.contentWidth
local _H = display.contentHeight

---------------------------------------------------------------------------------

function scene:create( event )

end

function scene:show( event )
  local group = self.view
  local phase = event.phase

  if (phase == 'will') then
  elseif (phase == 'did') then
  end
end

function scene:hide( event )
  local group = self.view
  local phase = event.phase

  if (phase == 'will') then
  elseif (phase == 'did') then
  end
end

function scene:destroy( event )
  local group = self.view
end

---------------------------------------------------------------------------------

scene:addEventListener('create', scene)
scene:addEventListener('show', scene)
scene:addEventListener('hide', scene)
scene:addEventListener('destroy', scene)

---------------------------------------------------------------------------------

return scene
