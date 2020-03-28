hostPC = 7
container = 1
-- Hostfile
os.loadAPI("api/uTable.lua")
function size()
	-- Code here...
	rednet.send(hostPC,size,"container"..container)
end
function containerSize()
	-- Code here...
	
	return size
end


function seekRequest()
	-- Code here...
	id,msg,prot = rednet.receive("host")
	return msg
end