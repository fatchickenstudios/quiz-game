-- Create a table that will contain all of our tests we are setting up.
local M = {}

-- Set up some defaults...
M.isApple = false
M.isAndroid = false
M.isGoogle = false
M.isKindleFire = false
M.isNook = false
M.is_iPad = false
M.is_iPhone = false
M.is_iPhone5 = false
M.isTall = false
M.isSimulator = false

local model = system.getInfo('model')

-- Are we on the Simulator?
if ( 'simulator' == system.getInfo('environment') ) then
  M.isSimulator = true
end

-- Now identify the Apple family of devices:
if ( string.sub( model, 1, 2 ) == 'iP' ) then
  -- We are an iOS device of some sort
  M.isApple = true

  if ( string.sub( model, 1, 4 ) == 'iPad' ) then
    M.is_iPad = true
  elseif ( display.pixelHeight > 960 ) then
    M.is_iPhone5 = true
  else
    M.is_iPhone = true
  end
else
  -- Not Apple, so it must be one of the Android devices
  M.isAndroid = true

  -- Let's assume we are on Google Play for the moment
  M.isGoogle = true

  -- All of the Kindles start with 'K', although Corona builds before #976 returned
  -- 'WFJWI' instead of 'KFJWI' (this is now fixed, and our clause handles it regardless)
  if ( model == 'Kindle Fire' or model == 'WFJWI' or string.sub( model, 1, 2 ) == 'KF' ) then
    M.isKindleFire = true
    M.isGoogle = false  --revert Google Play to false
  end

  -- Are we on a Nook?
  if ( string.sub( model, 1 ,4 ) == 'Nook' or string.sub( model, 1, 4 ) == 'BNRV' ) then
    M.isNook = true
    M.isGoogle = false  --revert Google Play to false
  end
end

return M
