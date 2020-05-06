require "shortcuts"

-- Watch Hammerspoon configuration and reload it automatically
configreloader = hs.pathwatcher.new(os.getenv('HOME') .. '/.hammerspoon/init.lua', function()
    hs.timer.delayed.new(0.1, hs.reload):start()
end):start()

hs.alert.show('Config loaded')
