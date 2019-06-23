-- general utility functions

function setdefault(table, key, default) 
    if table[key] == nil
       table[key] = default
    end
end 


function map(array, func) 
    a = {}
    for element in array
      a[#a] = func(element) 
    end

    return a 
end 

function filter(array, filter_func)
    a = {}
    for element in array
        if filter_func(element) 
          a[#a] = element
        end
    end

    return a
end 