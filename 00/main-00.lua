-- Chapter 5: Tables
cordA = ""
cordB = ""

cordATable = {}
cordBTable = {}

--[[ Chapter7: The External World
remembering how to grab user input
function testingInput()
        test = io.read()
        io.write("What you typed: ")
        print(test)
end

testingInput()
]] --

function _grabCordA()
        print("Type cord A (x,y,z) format:")
        temp = io.read()
        return temp
end

function _grabCordB()
        print("Type cord B (x,y,z) format:")
        temp = io.read()
        return temp
end

function _delimitCords()
        i = 1
        for a in string.gmatch(cordA, "([^,]+)") do
                cordATable[i] = a
                i = i + 1
        end

        i = 1
        for b in string.gmatch(cordB, "([^,]+)") do
                cordBTable[i] = b
                i = i + 1
        end
end

function grabCords()
        cordA = _grabCordA()
        cordB = _grabCordB()
        _delimitCords()
end

function computeDistance()
	temp = {}
	for i=1, 3 do
		temp[i] = (cordATable[i] - cordBTable[i]) * (cordATable[i] - cordBTable[i])
		print(temp[i])
	end

	return math.sqrt(math.abs(temp[1] + temp[2] + temp[3]))
end

function main()
        grabCords()
	result = computeDistance()
	print(string.format("%.4f", result))
end

main()
