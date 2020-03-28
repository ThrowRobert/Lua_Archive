containerMax = 8
containers = {8,9}
-- ##### DO NOT CHANGE ##### --

os.loadAPI("api/uTable.lua")
side = uTable.init()

function storageBox(container,side)
	-- Code here...
	function spaceSize(container,side)
		-- Code here...

		id,size = rednet.receive("container"..container,2)
		return size
	end
	mon.setCursorPos(1, container+1)
	mon.write(container.."|"..spaceSize(container,side))
end


-- Server Instance to Monitors
while true do
	mon = peripheral.wrap(side)
	mon.clear()
	mon.setCursorPos(1,1)
	mon.write(" |    STORAGE    |")
	for i = 1, containerMax do
		-- Code here...
		storageBox(i,side)
	end	
	mon.setCursorPos(1,containerMax+2)
	mon.write(" |     INFO      |")
	local time = os.time()
	local formattedTime = textutils.formatTime(time, false)
	mon.setCursorPos(1,containerMax+3)
	mon.write("Time: "..formattedTime)
	if formattedTime >= "6:27 PM" then
		if formattedTime <= "5:30 AM" then
			mon.setCursorPos(1,containerMax+4)
			mon.write(" > Bedtime")
		end
	end
	os.sleep(.1)
end