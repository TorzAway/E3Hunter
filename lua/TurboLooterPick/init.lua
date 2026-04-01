--[[ 
   Title: Pick Looter
    Author: Kroaking
	Last Updated: March 20, 2026 - 10:25:00 AM
	
    Description: This is designed to collect a list of curent group members and
    then set the seleected member name as an e3variable to be used a GrpMainLooter 
    within E3 as the person to receive AutoMated TurboLoot commands.
]]

local mq = require('mq')
local ImGui = require('ImGui')

local args = { ... }
local e3VariableName = args[1] or 'GrpMainLooter'

local scriptName = 'Turboloot Loot Picker'
local windowOpen = true
local members = {}
local selectedIndex = 1
local statusMessage = ''
local lastAppliedName = ''

local function collectGroupMembers()
    local updated = {}
	
    for i = 1, 5 do
        local member = mq.TLO.Group.Member(i)
        if member() then
            local name = member.Name()
            local offline = member.Offline()			
			
			if name and name ~= '' and not offline then
                table.insert(updated, name)			
			end				
			
		end	
				
    end
    
    local member = mq.TLO.Group.Member(0)
      if member(nil) then
		local name = mq.TLO.Me.Name()
		table.insert(updated, name)	
	end		
	
    table.sort(updated, function(a, b)
        return a:lower() < b:lower()
    end)

	local name = "NOBODY"
	table.insert(updated, name)

    members = updated

    if #members == 0 then
        selectedIndex = 1
        return
    end

    for i, name in ipairs(members) do
        if name == lastAppliedName then
            selectedIndex = i
            return
        end
    end

    if selectedIndex > #members then
        selectedIndex = 1
    end
end

local function applySelection()
    local selectedName = members[selectedIndex]
    if not selectedName or selectedName == '' then
        statusMessage = 'No group member selected.'
        return
    end

    mq.cmdf('/e3varset %s %s', e3VariableName, selectedName)
    lastAppliedName = selectedName
    statusMessage = string.format('Set %s = %s', e3VariableName, selectedName)
end

local function renderWindow()
    if not windowOpen then
        return
    end

    local shouldDraw
    windowOpen, shouldDraw = ImGui.Begin(string.format('%s##%s', scriptName, scriptName), windowOpen)
    if shouldDraw then
        ImGui.Text(string.format('E3 variable: %s', e3VariableName))
        ImGui.Separator()

        if ImGui.Button('Refresh Group Members') then
            collectGroupMembers()
        end

        if #members == 0 then
            ImGui.Text('No online group members found.')
        else
            if ImGui.BeginListBox('##groupmembers') then
                for i, name in ipairs(members) do
                    local isSelected = (selectedIndex == i)
                    if ImGui.Selectable(name, isSelected) then
                        selectedIndex = i
                    end
                end
                ImGui.EndListBox()
            end

            if ImGui.Button('Set Turbolooter') then
                applySelection()
				os.exit()
            end
        end

        if statusMessage ~= '' then
            ImGui.Separator()
            ImGui.Text(statusMessage)
        end
    end
    ImGui.End()
end

collectGroupMembers()
mq.imgui.init(scriptName, renderWindow)

while windowOpen do
    mq.delay(100)
end

mq.imgui.destroy(scriptName)