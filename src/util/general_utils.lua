-- general utility functions

local Object = {}

local function setdefault(table, key, default) 
    if table[key] == nil then
       table[key] = default
    end
end 


local function map(array, func) 
    a = {}
    for element in array do
      a[#a] = func(element) 
    end

    return a 
end 

local function filter(array, filter_func)
    a = {}
    for element in array do 
        if filter_func(element) then
          a[#a] = element
        end
    end

    return a
end 


Object.map = map
Object.filter = filter
Object.setdefault = setdefault


return Object