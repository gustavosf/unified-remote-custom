local keyboard = libs.keyboard;
local dev = require("device");

--@help Launch YouTube
actions.launch = function()
	os.start("google-chrome", "--profile-directory=Default", "--start-fullscreen", "--app=http://www.youtube.com/tv");
end

actions.open_youtube = function()
	os.start("google-chrome", "--profile-directory=Default", "--start-fullscreen", "--app=http://www.youtube.com/tv");
end

actions.open_netflix = function()
	os.start("google-chrome", "--profile-directory=Default", "--start-fullscreen", "--app=http://www.netflix.com");
end

actions.open_premiere_tv = function()
	os.start("google-chrome", "--profile-directory=Default", "--start-fullscreen", "--app=http://globosatplay.globo.com/premierefc/ao-vivo/");
end

actions.open_globo_play = function()
	os.start("google-chrome", "--profile-directory=Default", "--start-fullscreen", "--app=http://globoplay.globo.com/");
end

actions.open_globosat_play = function()
	os.start("google-chrome", "--profile-directory=Default", "--start-fullscreen", "--app=http://globosatplay.globo.com/");
end

actions.open_sportv_play = function()
	os.start("google-chrome", "--profile-directory=Default", "--start-fullscreen", "--app=http://globosatplay.globo.com/sportv/ao-vivo/");
end

actions.open_kodi = function()
	os.start("kodi");
end

--@help Volume down
actions.volume_down = function()
	keyboard.stroke("volumedown");
end

--@help Volume up
actions.volume_up = function()
	keyboard.stroke("volumeup");
end

--@help Move down
actions.down = function()
	keyboard.stroke("down");
end

--@help Move up
actions.up = function()
	keyboard.stroke("up");
end

--@help Move left
actions.left = function()
	keyboard.stroke("left");
end

--@help Move right
actions.right = function()
	keyboard.stroke("right");
end

--@help Toggle fullscreen
actions.fullscreen = function()
	keyboard.stroke("f11");
end

--@help Perform search
actions.search = function()
	keyboard.stroke("s");
end

--@help Hit enter
actions.enter = function()
	keyboard.stroke("enter");
end

--@help Toggle play/pause
actions.play_pause = function()
	keyboard.stroke("K");
end

actions.back = function()
	keyboard.stroke("backspace");
end

actions.more = function()
	keyboard.stroke("i");
end

actions.exit = function()
	keyboard.stroke("ctrl", "w");
end

actions.alert_exit = function()
	dev.vibrate();
	dev.toast("hold to exit");
end

actions.alert_shutdown = function()
	dev.vibrate();
	dev.toast("hold to shutdown");
end

actions.sleep = function ()
	os.execute('dbus-send --system --print-reply --dest="org.freedesktop.UPower" /org/freedesktop/UPower org.freedesktop.UPower.Suspend');
end

actions.wol = function()
	os.start("google-chrome", "--profile-directory=Default", "--start-fullscreen", "--app=http://www.netflix.com");
end

actions.shutdown = function ()
	os.execute('dbus-send --system --print-reply --dest="org.freedesktop.login1" /org/freedesktop/login1 org.freedesktop.login1.Manager.PowerOff boolean:true');
end

