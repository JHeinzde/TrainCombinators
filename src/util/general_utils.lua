-- general utility functions

local Object = {}

local function setdefault_global(key, default) 
    if global[key] == nil then
       global[key] = default
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

-- Shamelessly copied from https://github.com/Yousei9/Opteras-Library/blob/master/data/utilities.lua
-- All credits for this function go to him
local function copy_prototype(prototype, new_name)
  if not prototype.type or not prototype.name then
    error("Invalid prototype: prototypes must have name and type properties.")
    return nil
  end
  local p = table.deepcopy(prototype)
  p.name = new_name
  if p.minable and p.minable.result then
    p.minable.result = new_name
  end
  if p.place_result then
    p.place_result = new_name
  end
  if p.result then
    p.result = new_name
  end
  if p.results then
		for _,result in pairs(p.results) do
			if result.name == prototype.name then
				result.name = new_name
			end
		end
	end
return p
end


Object.map = map
Object.filter = filter
Object.setdefault = setdefault
Object.copy_prototype = copy_prototype

return Object