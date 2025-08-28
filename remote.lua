local keyboard = libs.keyboard;
local win = libs.win;
local utf8 = libs.utf8;


dragging = false;

local mouse = libs.mouse;

function update (r)
	--server.update({id = "touch", text = r });
end

actions.down = function ()
	update("down");
end

actions.up = function ()
	update("up");
end

actions.tap = function ()
	update("tap");
	if (dragging) then
		dragging = false;
		mouse.dragend();
		mouse.up();
	else
		mouse.click("left");
	end
end

actions.double = function ()
	update("double");
	mouse.double("left");
end

actions.hold = function ()
	update("hold");
	mouse.down();
	mouse.dragbegin();
	dragging = true;
end

actions.delta = function  (id, x, y)
	update("delta: " .. x .. " " .. y);
	mouse.moveraw(x, y);
end

actions.left = function ()
	mouse.click("left");
end

actions.right = function ()
	mouse.click("right");
end


-- function FindPlayerWindow(browserClass)
-- 	-- 1. Find all windows for the specified browser window class (i.e. all tabs)
-- 	-- 2. For each "tab" check if the title starts with "Hotstar" (i.e. a Hotstar tab)
-- 	local hwnds = win.findall(0, browserClass, nil, false);
-- 	for i,hwnd in ipairs(hwnds) do
-- 		local title = win.title(hwnd);
-- 		print(title);
-- 		if utf8.startswith(title, "Disney") then
-- 			return hwnd;
-- 		end
-- 	end
-- 	return 0;
-- end

-- function FindWindow()
-- 	local hwnd = 0;
-- 	-- Check Chrome
-- 	hwnd = FindPlayerWindow("Chrome_WidgetWin_1");
-- 	if (hwnd ~= 0) then 
-- 		print("chrome");
-- 		return hwnd; 
-- 	end
-- 	-- Check FF
-- 	hwnd = FindPlayerWindow("MozillaWindowClass");
-- 	if (hwnd ~= 0) then 
-- 		print("ff");   
-- 		return hwnd; 
-- 	end
-- 	-- Check Edge
-- 	hwnd = FindPlayerWindow("ApplicationFrameWindow");
-- 	if (hwnd ~= 0) then
-- 		print("edge");
-- 		return hwnd;
-- 	end
-- 	return 0;
-- end

-- actions.switch = function ()
-- 	local hwnd = FindWindow();
-- 	if (hwnd ~= 0) then
-- 		win.switchto(hwnd);
-- 		os.sleep(100);
-- 		win.switchto(hwnd);
-- 	end
-- end

--@help Launch Hotstar site
actions.launch_hotstar = function ()
	os.open("http://www.hotstar.com/");
end

--@help Launch Youtube site
actions.launch_yt = function ()
	os.open("http://www.youtube.com/");
end

--@help Launch Sony Liv site
actions.launch_jc = function ()
	os.open("http://www.sonyliv.com/");
end

--@help Launch Home site
actions.launch_home = function ()
   keyboard.stroke("alt", "Home");
end

--@help Lower volume
actions.volume_down = function()
	keyboard.stroke("volumedown");
end

--@help Mute volume
actions.volume_mute = function()
	keyboard.stroke("volumemute");
end

actions.m_mute = function()
	keyboard.stroke("m");
end
	

--@help Raise volume
actions.volume_up = function()
	keyboard.stroke("volumeup");
end

--@help Pause playback
actions.pause = function()
	-- actions.switch();
	keyboard.stroke("next");
end

--@help Toggle playback state
actions.play_pause = function()
	-- actions.switch();
	keyboard.stroke("space");
end

--@help Select current item
actions.select = function()
	os.open("http://www.hotstar.com/");
end

--@help Seek forward
actions.forward = function()
	-- actions.switch();
	keyboard.stroke("right");  
end

--@help Seek backward
actions.rewind = function()
	-- actions.switch();
	keyboard.stroke("left");
end

--@help Fullscreen view
actions.fullscreen = function()
	-- actions.switch();
	keyboard.stroke("F");
end

--@help Windowed view
actions.window = function()
	-- actions.switch();
	keyboard.stroke("escape");
end

actions.skip_intro = function()
	keyboard.stroke("s");
end

--@help Scroll page down
actions.scroll_down = function()
	-- actions.switch();
	keyboard.stroke("down");
end

--@help Scroll page up
actions.scroll_up = function()
	-- actions.switch();
	keyboard.stroke("up");
end

--@help Scroll page down
actions.pg_down = function()
	-- actions.switch();
	keyboard.stroke("pgdown");
end

--@help Scroll page up
actions.pg_up = function()
	-- actions.switch();
	keyboard.stroke("pgup");
end

--@help Refresh current page
actions.refresh = function()
	-- actions.switch();
	keyboard.stroke("f5");
end


actions.back = function()
	-- actions.switch();
	keyboard.stroke("menu", "left");
end

--@help Close current tab
actions.close_tab = function()
	-- actions.switch();
	keyboard.stroke("control", "W");
end

--@help Navigate tab forward
actions.next_page = function()
	-- actions.switch();
	keyboard.stroke("menu", "right");
end

--@help Open new tab
actions.new_tab = function()
	-- actions.switch();
	keyboard.stroke("control", "T");
end

--@help Go to next tab
actions.next_tab = function()
	-- actions.switch();
	keyboard.stroke("lctrl", "pagedown");
end

--@help Go to previous tab
actions.previous_tab = function()
	-- actions.switch();
	keyboard.stroke("lctrl", "pageup");
end
	
