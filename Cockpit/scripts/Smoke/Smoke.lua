-- CREDITS TO LOGIC FROM AVJT FOR LETTING USE HIS SMOKE SYSTEM

dofile(LockOn_Options.script_path.."command_defs.lua")
dofile(LockOn_Options.script_path.."devices.lua")

local dev = GetSelf()
local update_time_ms = 1.0 / 20.0
make_default_activity(update_time_ms)

local pylon1Cmd = 11008  -- Station 1, red smoke
local pylon2Cmd = 11011  -- Station 0, white smoke
local pylon3Cmd = 11010  -- Station 2, colour smoke
local smokeOffCmd = 11009  -- Key for all smoke off
local smoke_param = get_param_handle("SMOKE_MODE")
local burner = false -- burner state

dev:listen_command(pylon1Cmd)
dev:listen_command(pylon2Cmd)
dev:listen_command(pylon3Cmd)
dev:listen_command(smokeOffCmd)

print_message_to_user("SMOKE SYSTEM ACTIVATED")

-- Internal pylon state tracking: 1 for red smoke, 0 for white smoke, 2 for colour, nil for off.
local currentPylon = nil

function SetCommand(command, value)
    if command == pylon1Cmd then
        togglePylon(1)
    elseif command == pylon2Cmd then
        togglePylon(0)
    elseif command == pylon3Cmd then
        togglePylon(2)
    elseif command == smokeOffCmd then
        if currentPylon ~= nil then
            local color = getColorName(currentPylon)
            sendCommand(currentPylon)
            print_message_to_user(color .. " OFF")
            currentPylon = nil
            smoke_param:set(0)
        end
    end
end

function togglePylon(station)
    local color = getColorName(station)
    if currentPylon == station then
        -- Toggle off same pylon
        sendCommand(station)
        print_message_to_user(color .. " OFF")
        currentPylon = nil
        smoke_param:set(0)
    else
        -- Turn off any active pylon first
        if currentPylon ~= nil then
            local prevColor = getColorName(currentPylon)
            sendCommand(currentPylon)
            print_message_to_user(prevColor .. " OFF")
        end
        -- Activate new pylon
        sendCommand(station)
        print_message_to_user(color .. " ON")
        currentPylon = station

        -- Set the smoke_param to match station
        if currentPylon == 1 then
            smoke_param:set(2) -- red
        elseif currentPylon == 0 then
            smoke_param:set(1) -- white
        elseif currentPylon == 2 then
            smoke_param:set(3) -- color
        else
            smoke_param:set(0)
        end
    end
end

function sendCommand(station)
    local success, errorMessage = pcall(function()
        dev:launch_station(station)
    end)
    if not success then
        print_message_to_user("Error toggling station " .. station .. ": " .. errorMessage)
    end
end

function getColorName(station)
    if station == 1 then
        return "SMK RED"
    elseif station == 0 then
        return "SMK WHITE"
    elseif station == 2 then
        return "SMK COLOUR"
    else
    end
end

function get_smoke_state()
    return currentPylon -- nil = off, 0 = white, 1 = red, 2 = Colour
end

need_to_be_closed = false