-- Launch or focus on applications
local mods_app = {'cmd', 'shift'}
remap = hs.hotkey.bind
remap(mods_app, '1', function () hs.application.launchOrFocus('1Password 7') end)
remap(mods_app, 'a', function () hs.application.launchOrFocus('Alacritty') end)
remap(mods_app, 'b', function () hs.application.launchOrFocus('Brave Browser') end)
remap(mods_app, 'c', function () hs.application.launchOrFocus('Visual Studio Code') end)
remap(mods_app, 'm', function () hs.application.launchOrFocus('Mail') end)
remap(mods_app, 'n', function () hs.application.launchOrFocus('Brave Browser Nightly') end)
remap(mods_app, 's', function () hs.application.launchOrFocus('Slack') end)
remap(mods_app, 't', function () hs.application.launchOrFocus('iTerm') end)
remap(mods_app, 'v', function () hs.application.launchOrFocus('SonicWall Mobile Connect') end)
remap(mods_app, 'y', function () hs.application.launchOrFocus('Kitty') end)
remap(mods_app, 'z', function () hs.application.launchOrFocus('Zoom.us') end)
