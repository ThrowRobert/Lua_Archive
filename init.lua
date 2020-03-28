KeyBoxSide = "right"
print("Starting...")
os.sleep(1)
os.loadAPI("api/uTable.lua")
while true do
	uTable.init(1,1,.1,"Door System v1")
	if  uTable.isKeyInserted(KeyBoxSide) == true then
			if uTable.isKeyValid(KeyBoxSide) == true then
					-- Code here...
					uTable.useIt(KeyBoxSide)
			else
				uTable.spit(KeyBoxSide)
			end
	end
end
