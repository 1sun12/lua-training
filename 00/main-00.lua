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
        
        for x in cordATable do
                print(x)
        end

        for x in cordBTable do
                print(x)
        end

end

function grabCords()
        cordA = _grabCordA()
        cordB = _grabCordB()
        _delimitCords()
end


function main()
        grabCords()
end

main()
