script_name('open_na_H')
script_author("Juonior_Emerson")
require "lib.moonloader"
local sampev = require 'lib.samp.events'
local mem = require "memory"
local keys = require "vkeys"
local dlstatus = require('moonloader').download_status
function main()
    if not isSampLoaded() then return end
    while not isSampAvailable() do wait(100) end
    sampRegisterChatCommand("download", download)
      sampAddChatMessage("{00ff85}[MVDHelper Jun v1]: {d0ffe9}Работает.", 0x00ff85)
    while true do
        wait(0)
        if not sampIsChatInputActive() then
            if isKeyJustPressed(0x48) then
                local pX, pY, pZ = getCharCoordinates(playerPed)
                if getDistanceBetweenCoords3d(pX, pY, pZ, -2437.1323242188, 495.97927856445, 29.94451713562) > 10 then
                else
                    sampSendChat('/open')
                end
            end
            if isKeyJustPressed(0x48) then
                local pX, pY, pZ = getCharCoordinates(playerPed)
                if getDistanceBetweenCoords3d(pX, pY, pZ, -2046.0034179688, 494.12802124023, 35.171875) > 10 then
                else
                    sampSendChat('/open')
                end
            end
            if isKeyJustPressed(0x48) then
                local pX, pY, pZ = getCharCoordinates(playerPed)
                if getDistanceBetweenCoords3d(pX, pY, pZ, 1544.0847167969, -1630.8516845703, 13.3828125) > 10 then
                else
                    sampSendChat('/open')
                end
            end
            if isKeyJustPressed(0x48) then
                local pX, pY, pZ = getCharCoordinates(playerPed)
                if getDistanceBetweenCoords3d(pX, pY, pZ, 2237.5932617188, 2450.4489746094, 10.727931976318) > 10 then
                else
                    sampSendChat('/open')
                end
            end
            if isKeyJustPressed(0x48) then
                local pX, pY, pZ = getCharCoordinates(playerPed)
                if getDistanceBetweenCoords3d(pX, pY, pZ, 2343.9086914063, 2422.0908203125, 10.8203125) > 10 then
                else
                    sampSendChat('/open')
                end
            end
            if isKeyJustPressed(0x48) then
                local pX, pY, pZ = getCharCoordinates(playerPed)
                if getDistanceBetweenCoords3d(pX, pY, pZ, -1571.5980224609, 658.81231689453, 7.1875) > 10 then
                else
                    sampSendChat('/open')
                end
            end
        end
    end
end
function sampev.onServerMessage(color, text)
    if text:match('^%[R%] (.*) (.*)%[(%d+)%]: (.*)') then -- ???????? ????? ? /r, /f ?????
        zvan, mynick, id,  text123 = text:match('^%[R%] (.*) (.*)%[(%d+)%]: (.*)')
        if mynick == 'Junior_Emerson' then
            sampAddChatMessage('{00ff85}[R] '..zvan..' {FF0000}'..mynick..'['..id..']: {00ff85}'..text123, 0x00ff85)
        elseif mynick == 'Keke_Schtaff' then
            sampAddChatMessage('{00ff85}[R] '..zvan..' {FF0000}'..mynick..'['..id..']: {00ff85}'..text123, 0x00ff85)
        else
            sampAddChatMessage('{00ff85}[R] '..zvan..' '..mynick..'['..id..']: '..text123, 0x00ff85)
        end
        return false
    end
    if text:match('^%[F%] (.*) (.*)%[(%d+)%]: (.*)') then -- ???????? ????? ? /r, /f ?????
        zvan, mynick, id,  text123 = text:match('^%[F%] (.*) (.*)%[(%d+)%]: (.*)')
        if mynick == 'Junior_Emerson' then
            sampAddChatMessage('{8db4d6}[F] '..zvan..' {FF0000}'..mynick..'['..id..']: {8db4d6}'..text123, 0x8db4d6)
        elseif mynick == 'Keke_Schtaff' then
            sampAddChatMessage('{00ff85}[F] '..zvan..' {FF0000}'..mynick..'['..id..']: {8db4d6}'..text123, 0x08db4d6)
        else
            sampAddChatMessage('{8db4d6}[F] '..zvan..' '..mynick..'['..id..']: '..text123, 0x8db4d6)
        end
        return false
    end
end

function download()
    downloadUrlToFile("https://raw.githubusercontent.com/Juonior/update/master/open_na_H.lua", thisScript().path, function(id, status)
      if status == dlstatus.STATUS_ENDDOWNLOADDATA then
        thisScript():reload()
      end
    end)
end
