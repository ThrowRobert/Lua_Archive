function init(x,y,refe,text)
	-- Code here...
	term.clear()
	term.setCursorPos(x, y)
	os.sleep(refe)
	print("# ================== #")
	print("# ",text)
	print("# ================== #")
end

function isKeyInserted(side)
	-- Code here...
	diskHere = disk.isPresent(side)
	diskInfo = disk.hasData(side)
	os.sleep(.1)
	if diskHere and diskInfo == true then
		allowed = true
	else
		allowed = false
	end
	return allowed
end

function isKeyValid(side)
	-- Code here...
	lable = disk.getLabel(side)

end

function spit(side)
	-- Code here...
	disk.eject(side)
end

function useIt(value,side)
	-- Code here...
	if value = "bypass" then
		break
	else

	end

end

-- Init function to automaticly find a monitor attached
function init()
	-- Code here...
	if peripheral.getType("top") == "monitor" then
		side = "top"
	elseif peripheral.getType("bottom") == "monitor" then
		side = "bottom"
	elseif peripheral.getType("front") == "monitor" then
		side = "front"
	elseif peripheral.getType("back") == "monitor" then
		side = "back"
	elseif peripheral.getType("left") == "monitor" then
		side = "left"
	elseif peripheral.getType("right") == "monitor" then
		side = "right"
	end
	return side
end
function containerCheck()
	-- Code here...
	if redstone.getSides("top") then
		side = "top"
	elseif redstone.getSides("bottom") then
		side = "bottom"
	elseif redstone.getSides("front") then
		side = "front"
	elseif redstone.getSides("back") then
		side = "back"
	elseif redstone.getSides("left") then
		side = "left"
	elseif redstone.getSides("right") then
		side = "right"
	end
	return side
end