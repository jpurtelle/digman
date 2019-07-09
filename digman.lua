local component = require ("component")
local robot = require ("robot")
local sides = require ("sides")
local io = require ("io")

local function checkAllBlocks ()
	print ("Forward: ", geolyzer.analyze (sides.posz)["name"])
	print ("Right: "), geolyzer.analyze (sides.negx)["name"])
	print ("Left: "), geolyzer.analyze (sides.posx)["name"])
end

local function whichToMine ()
	print ("Which direction to mine? (left, right or forward)")
	input = io.read ()
	
	if input == "forward" then
		robot.swing ()
		robot.forward ()
	elseif input == "left" then
		robot.turnLeft ()
		robot.swing ()
		robot.forward ()
	elseif input == "right" then
		robot.turnRight ()
		robot.swing ()
		robot.forward ()
	end
end

while true do
	os.execute ("cls")
	checkAllBlocks ()
	whichToMine ()
end
