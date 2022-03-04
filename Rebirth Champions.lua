_G.Color = Color3.fromRGB(66, 135, 245)
_G.Color2 = Color3.fromRGB(66, 135, 245)

local library = loadstring(game:HttpGet("https://raw.githubusercontent.com/slightten/ui-libs/main/funni"))()
local window = library:CreateWindow("ouwHub", Enum.KeyCode.RightControl)
local plr = game.Players.LocalPlayer
local tab1 = window:CreateTab("Main")
local tab2 = window:CreateTab("Misc")
local sect2 = tab2:CreateSector("Misc", 'left')
sect2:AddLabel("ouw#7809")

local sect1 = tab1:CreateSector("Main", 'left')

sect1:AddButton("Hide Name", function() 
plr.Character.Head.Rank:Destroy()
end)

sect1:AddButton("Free Gamepasses (Some)", function() 
for i,v in next, plr.Passes:GetChildren() do
    if v:IsA"BoolValue" then
        v.Value = true
    end
    end
end)

local codes = {
    "freeluckboost",
    "wow10klikesthanks",
    "freeclicksomg",
    "moon",
    "5klikesthanks",
    "wow2500likes",
    "already1500likes",
    "release"
}

sect1:AddButton("Redeem Codes", function()
    for i,v in next, codes do
local args = {[1] = tostring(v)}
game:GetService("ReplicatedStorage").Events.Codes:FireServer(unpack(args))
end
end)

sect1:AddToggle("Auto Click", false, function(a)
aa = a
while aa do task.wait()
game:GetService("ReplicatedStorage").Events.Click3:FireServer()
end
end)

local tablp = {}

for i,v in next, game:GetService("Workspace").Scripts.Eggs:GetChildren() do
    if v:IsA"Model" then
        table.insert(tablp,v.Name)
    end
    end

sect1:AddDropdown("Eggs (Not in order)",tablp, "", false, function(wa)
getgenv().eggopen = wa
end)

sect1:AddToggle("Open Egg", false, function(b)
bb = b
while bb do task.wait()
local args = {[1] = tostring(eggopen),[2] = "Single"}
game:GetService("ReplicatedStorage").Functions.Unbox:InvokeServer(unpack(args))
    end
end)

sect1:AddToggle("Open Egg Triple (3x Cost)", false, function(c)
cc = c
while cc do task.wait()
local args = {[1] = tostring(eggopen),[2] = "Triple"}
game:GetService("ReplicatedStorage").Functions.Unbox:InvokeServer(unpack(args))
    end
end)






























