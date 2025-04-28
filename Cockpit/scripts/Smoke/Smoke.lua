-- CREDITS TO LOGIC FROM AVJT FOR LETTING USE HIS SMOKE SYSTEM

dofile(LockOn_Options.script_path.."command_defs.lua")
dofile(LockOn_Options.script_path.."devices.lua")

local dev = GetSelf()
local update_time_ms = 1.0 / 20.0
make_default_activity(update_time_ms)

local pylon1Cmd = 11008  -- Station 1, red smoke
local pylon2Cmd = 11011  -- Station 0, white smoke
local smokeOffCmd = 11009  -- Key for all smoke off
local smoke_param = get_param_handle("SMOKE_MODE")
local burner = false -- burner state

dev:listen_command(pylon1Cmd)
dev:listen_command(pylon2Cmd)
dev:listen_command(smokeOffCmd)

print_message_to_user("RAVNS SMOKE SYSTEM")

-- Internal pylon state tracking: 1 for red smoke, 0 for white smoke, nil for off.
local currentPylon = nil

function SetCommand(command, value)
    --print_message_to_user("SetCommand triggered with command: " .. tostring(command))
    if command == pylon1Cmd then
        togglePylon(1)
    elseif command == pylon2Cmd then
        togglePylon(0)
    elseif command == smokeOffCmd then
        if currentPylon ~= nil then
            local color = (currentPylon == 1) and "SMK RED" or "SMK WHITE"
            sendCommand(currentPylon)
            print_message_to_user(color .. " OFF")
            currentPylon = nil
            smoke_param:set(0)  -- Set parameter to off
        end
    end
end

function togglePylon(station)
    local color = (station == 1) and "SMK RED" or "SMK WHITE"
    if currentPylon == station then
        -- The same pylon is active, so toggle it off.
        sendCommand(station)
        print_message_to_user(color .. " OFF")
        currentPylon = nil
        smoke_param:set(0)  -- Set parameter to off
    else
        -- If a different pylon is active, first toggle it off.
        if currentPylon ~= nil then
            local prevColor = (currentPylon == 1) and "SMK RED" or "SMK WHITE"
            sendCommand(currentPylon)
            print_message_to_user(prevColor .. " OFF")
            currentPylon = nil
            smoke_param:set(0)  -- Set parameter to off
        end
        -- Now activate the desired pylon.
        sendCommand(station)
        print_message_to_user(color .. " ON")
        currentPylon = station
        -- testing smoke_param
        if currentPylon == 1 then
            smoke_param:set(2) -- red
        elseif currentPylon == 0 then
            smoke_param:set(1) -- white
        else
            smoke_param:set(0) -- off
        end
    end
    --updateCockpitSmoke()
end

function sendCommand(station)
    local success, errorMessage = pcall(function()
        dev:launch_station(station)
    end)
    if not success then
        print_message_to_user("Error toggling station " .. station .. ": " .. errorMessage)
    else
        --print_message_to_user("Command sent to station " .. station .. "with pylon state: " .. currentPylon)
    end
end


function get_smoke_state()
    --print_message_to_user("get_smoke_state called w" .. tostring(currentPylon))

    return currentPylon -- nil = off, 0 = white, 1 = red
end

need_to_be_closed = false