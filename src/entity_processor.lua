-- Create new table

-- Checks if the entity is connected to a circuit network
-- If yes it returns true if no false

local function check_connection_to_cn(entity)
    if entity.circuit_connected_entities == nil || table_size(entity.circuit_connected_entities) == 0 then 
        -- just do nothing if not connected to circuit network 
        return false
    end 
    return true
end 

-- Returns all connected train stations for the entity 

local function get_connected_train_stations(entity)
    connected_entities = entity.circuit_connected_entities()
    return_value = {}

    for entity in connected_entities do
        if entity.type == "train-stop" then 
            return_value[table_size(return_value)] = entity
        end  
    end 

    return return_value
end 

-- Define return table 

local Object = {}

Object.check_connection_to_cn = check_connection_to_cn
Object.get_connected_train_stations = get_connected_train_stations

return Object