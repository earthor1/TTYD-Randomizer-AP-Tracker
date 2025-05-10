ScriptHost:LoadScript("scripts/autotracking/item_mapping.lua")
ScriptHost:LoadScript("scripts/autotracking/location_mapping.lua")
ScriptHost:LoadScript("scripts/autotracking/map_mapping.lua")

CUR_INDEX = -1
SLOT_DATA = {}

function onClear(slot_data)
    PLAYER_ID = Archipelago.PlayerNumber or -1
    TEAM_NUMBER = Archipelago.TeamNumber or 0
    SLOT_DATA = slot_data
    CUR_INDEX = -1

    -- Map Datastorage
    if Archipelago.PlayerNumber > -1 then
        print("SUCCESS?")
        cur_room = "ttyd_room_" .. TEAM_NUMBER .. "_" .. PLAYER_ID
        Archipelago:SetNotify({cur_room})
        Archipelago:Get({cur_room})
    end
end

-- reset locations
for _, location_array in pairs(LOCATION_MAPPING) do
    for _, location in pairs(location_array) do
        if location then
            local location_obj = Tracker:FindObjectForCode(location)
            if location_obj then
                if location:sub(1, 1) == "@" then
                    location_obj.AvailableChestCount = location_obj.ChestCount
                else
                    location_obj.Active = false
                end
            end
        end
    end
end
-- reset items
for _, item in pairs(ITEM_MAPPING) do
    for _, item_code in pairs(item) do
        item_code = item[1]
        item_type = item[2]
        initial_state = item[3]
        local item_obj = Tracker:FindObjectForCode(item_code)
        if item_obj then
            if item_obj.Type == "toggle" then
                item_obj.Active = false
            elseif item_obj.Type == "progressive" then
                item_obj.CurrentStage = 0
                item_obj.Active = initial_state or false
            elseif item_obj.Type == "consumable" then
                if item_obj.MinCount then
                    item_obj.AcquiredCount = item_obj.MinCount
                else
                    item_obj.AcquiredCount = 0
                end
            elseif item_obj.Type == "progressive_toggle" then
                item_obj.CurrentStage = 0
                item_obj.Active = initial_state or false
            end
        end
    end
end

function onItem(index, item_id, item_name, player_number)
    if index <= CUR_INDEX then
        return
    end
    local is_local = player_number == Archipelago.PlayerNumber
    CUR_INDEX = index;
    local item = ITEM_MAPPING[item_id]
    if not item or not item[1] then
        --print(string.format("onItem: could not find item mapping for id %s", item_id))
        return
    end

    item_code = item[1]
    item_type = item[2]
    local item_obj = Tracker:FindObjectForCode(item_code)
    if item_obj then
        if item_obj.Type == "toggle" then
            -- print("toggle")
            item_obj.Active = true
        elseif item_obj.Type == "progressive" then
            -- print("progressive")
            item_obj.Active = true
        elseif item_obj.Type == "consumable" then
            -- print("consumable")
            item_obj.AcquiredCount = item_obj.AcquiredCount + item_obj.Increment
        elseif item_obj.Type == "progressive_toggle" then
            -- print("progressive_toggle")
            if item_obj.Active then
                item_obj.CurrentStage = item_obj.CurrentStage + 1
            else
                item_obj.Active = true
            end
        end
    else
        -- print(string.format("onItem: could not find object for code %s", item_code[1]))
    end
end

--called when a location gets cleared
function onLocation(location_id, location_name)
    local location_array = LOCATION_MAPPING[location_id]
    if not location_array or not location_array[1] then
        print(string.format("onLocation: could not find location mapping for id %s", location_id))
        return
    end

    for _, location in pairs(location_array) do
        local location_obj = Tracker:FindObjectForCode(location)
        -- print(location, location_obj)
        if location_obj then
            if location:sub(1, 1) == "@" then
                location_obj.AvailableChestCount = location_obj.AvailableChestCount - 1
            else
                location_obj.Active = true
            end
        else
            -- print(string.format("onLocation: could not find location_object for code %s", location))
        end
    end
end

-- Code for auto tab switching.
if has("AutoTabOn") then
    function onNotify(key, value, old_value)
        if value ~= old_value then
            if key == cur_room then
                print("yeah")
                print("map: " .. value)
            end
        end
    end

    function onNotifyLaunch(key, value)
        if key == cur_room then
            print("yeah")
            print("map: " .. value)
        end
    end


    function onMapChange(key, value, old)
        tabs = MAP_MAPPING[tostring(value)]
        for i, tab in ipairs(tabs) do
        Tracker:UiHint("ActivateTab", tab)
        end
    end
end

-- ScriptHost:AddWatchForCode("settings autofill handler", "autofill_settings", autoFill)
Archipelago:AddClearHandler("clear handler", onClear)
Archipelago:AddItemHandler("item handler", onItem)
Archipelago:AddLocationHandler("location handler", onLocation)

-- Code for auto tab switching.
Archipelago:AddSetReplyHandler("notify handler", onNotify)
Archipelago:AddRetrievedHandler("notify launch handler", onNotifyLaunch)
Archipelago:AddSetReplyHandler("map_key", onMapChange)
Archipelago:AddRetrievedHandler("map_key", onMapChange)