-- save as: coord_logger.lua (in your Lua scripts folder)

local mq = require('mq')
local ImGui = require('ImGui')
local windowOpen = true
local fileName = 'e3Hunter_ZoneData.ini'
local filePath = mq.configDir .. '/' .. fileName
local filePathConfig = mq.configDir .. ''

local function writeTargetData()
    local me = mq.TLO.Me
	
    if not me() then
        print('[e3Hunter_logger] Could not read player data.')
        return
    end
	
    local x = target.X() or 0
    local y = target.Y() or 0
    local z = target.Z() or 0
    target = mq.TLO.Target
    local targetName = 'NO TARGET'
	
    if target() then
        -- CleanName is usually best for plain-text logging
        targetName = target.CleanName() or target.Name() or 'UNKNOWN TARGET'
    end
	
    local zoneName = mq.TLO.Zone.Name() or 'UNKNOWN ZONE'
	
    local line1 = string.format(
        '\nLoc1=%.2f %.2f %.2f | Zone: %s\n',
        y, x, z, zoneName
    )
	
	local line2 = string.format(
		'Mob1=%s',
        targetName
    )
	
    local f, err = io.open(filePath, 'a')
    if not f then
        print(string.format('[e3Hunter_logger] Failed to open file: %s (%s)', filePath, err or 'unknown error'))
        return
    end
	
	if targetName ~= 'NO TARGET' then
		f:write(line1)
		f:write(line2)
		f:close()
		print('\am[\atcoord_logger\am] \agWrote data for \am[\ay' .. targetName .. '\am]\ag to\ao: \ar' .. filePath)
	end
end

local function renderUI()
    target = mq.TLO.Target
    local targetName = 'NO TARGET'
    if target() then
        -- CleanName is usually best for plain-text logging
        targetName = target.CleanName() or target.Name() or 'UNKNOWN TARGET'
    end
    local zoneName = mq.TLO.Zone.Name() or 'UNKNOWN ZONE'
	
    if not windowOpen then
        return
    end
	
    windowOpen, _ = ImGui.Begin('e3Hunter Target Logger', windowOpen, ImGuiWindowFlags.AlwaysAutoResize)
	ImGui.Text('Log current Target\'s Data for e3Hunter:')
	ImGui.Separator()
	
	ImGui.Text('Current Target: '.. targetName)
	
	if targetName ~= 'NO TARGET' then
		if ImGui.Button('Write Target Data') then
			writeTargetData()
		end
	end	

	ImGui.Separator()
    ImGui.TextWrapped('Output Path: '.. filePathConfig)
	ImGui.TextWrapped('Output File: '.. fileName)
	ImGui.Separator()
    ImGui.End()
end

mq.imgui.init('coord_logger_ui', renderUI)

while windowOpen do
    mq.delay(10)
end