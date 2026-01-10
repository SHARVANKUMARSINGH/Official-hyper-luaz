# 💎 Luaz Hub | Official Release

![Language](https://img.shields.io/badge/Language-Lua-blue.svg) ![Platform](https://img.shields.io/badge/Platform-Roblox-red.svg) ![Support](https://img.shields.io/badge/Device-PC%20%2F%20Mobile-green.svg)

**Luaz Hub** is a premium, lightweight, and fully optimized UI Library and Script Hub for Roblox. Built with performance and mobile compatibility in mind, it features a modern interface, real-time theme customization, and robust security.

---

## 🚀 Features

* **📱 Mobile Optimized:** Auto-scaling UI that fits perfectly on Phones, Tablets, and PCs.
* **🎨 Theme Manager:** Built-in RGB Color Picker (16 Million Colors) to change the entire UI "Vibe" instantly.
* **🔐 Secure:** Uses `gethui` protection to stay hidden from game detection.
* **☁️ Cloud-Based:** Library loads from the cloud, ensuring you always use the latest version.
* **⚡ Smooth Animations:** Professional tweening for all buttons, toggles, and dropdowns.
* **🔑 Key System:** Integrated key system support (Default Key: `noob`).

---

## 📥 How to Use template (Script Loader)

Copy the script below and paste it into your executor (Delta, Fluxus, Hydrogen, Synapse X, etc.).

```lua
loadstring(game:HttpGet("https://pastebin.com/raw/npm0hY99)
 ```lua
-- [[ LUAZ HUB | OFFICIAL RELEASE ]] --------------------------------
-- Version: 1.0 (Public)
-- Developer: Luaz

local LibraryUrl = "https://pastebin.com/raw/Y7Lws2Fh"

-- 1. CLEANUP (Remove old UI if it exists)
local CoreGui = (gethui and gethui()) or game:GetService("CoreGui")
if CoreGui:FindFirstChild("Luaz_System") then
    CoreGui.Luaz_System:Destroy()
end

-- 2. NOTIFY (Professional Start-up)
game:GetService("StarterGui"):SetCore("SendNotification", {
    Title = "Luaz Hub";
    Text = "Loading resources...";
    Duration = 3;
})

-- 3. LOAD THE LIBRARY (With Safety Check)
local Success, Library = pcall(function()
    return loadstring(game:HttpGet(LibraryUrl))()
end)

if not Success or not Library then
    game:GetService("StarterGui"):SetCore("SendNotification", {
        Title = "Error!";
        Text = "Failed to load Library. Check Internet.";
        Duration = 5;
    })
    return
end

-- 4. LAUNCH THE HUB
local Window = Library:Window({
    Title = "Luaz Hub | Release",
    Key = "noob",   -- Set to nil to remove the key system
    Watermark = false 
})

-- [[ SCRIPTS & TABS ]] ---------------------------------------------

local MainTab = Window:Tab("Main")
local CombatTab = Window:Tab("Combat")
local SettingsTab = Window:Tab("Settings")

-- [ MAIN ]
MainTab:Button("Infinite Yield", function()
    loadstring(game:HttpGet('https://raw.githubusercontent.com/EdgeIY/infiniteyield/master/source'))()
end)

MainTab:Button("Fly Gui V3", function()
    loadstring(game:HttpGet("https://raw.githubusercontent.com/XNEOFF/FlyGuiV3/main/FlyGuiV3.txt"))()
end)

MainTab:Slider("WalkSpeed", 16, 250, 16, function(Value)
    pcall(function()
        game.Players.LocalPlayer.Character.Humanoid.WalkSpeed = Value
    end)
end)

MainTab:Slider("JumpPower", 50, 350, 50, function(Value)
    pcall(function()
        game.Players.LocalPlayer.Character.Humanoid.JumpPower = Value
    end)
end)

-- [ COMBAT ]
CombatTab:Button("Hitbox Expander (PvP)", function()
    _G.HeadSize = 25
    _G.Disabled = true
    game:GetService('RunService').RenderStepped:connect(function()
        if _G.Disabled then
            for i,v in next, game:GetService('Players'):GetPlayers() do
                if v.Name ~= game:GetService('Players').LocalPlayer.Name then
                    pcall(function()
                        v.Character.HumanoidRootPart.Size = Vector3.new(25,25,25)
                        v.Character.HumanoidRootPart.Transparency = 0.6
                        v.Character.HumanoidRootPart.BrickColor = BrickColor.new("Really red")
                        v.Character.HumanoidRootPart.CanCollide = false
                        v.Character.HumanoidRootPart.Material = "Neon"
                    end)
                end
            end
        end
    end)
end)

-- [ SETTINGS ]
SettingsTab:ColorPicker("UI Theme", Color3.fromRGB(0, 120, 215), function(Color)
    Library:UpdateTheme(Color)
end)

SettingsTab:Button("Unload Script", function()
    if CoreGui:FindFirstChild("Luaz_System") then
        CoreGui.Luaz_System:Destroy()
    end
end)

-- 5. SUCCESS NOTIFICATION
game:GetService("StarterGui"):SetCore("SendNotification", {
    Title = "Success!";
    Text = "Luaz Hub has loaded successfully.";
    Duration = 5;
})
