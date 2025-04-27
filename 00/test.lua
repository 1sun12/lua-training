for i=0, 10 do
	print(i)
end

-- basic array with some elements
array = {
	'banana',
	'apple',
	'soda',
	'peach',
	'pear'
}

-- iterate through array
for _, word in ipairs(array) do
	print(word)
end
