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

## 📥 Quick Start template (Recommended to understandl  Luaz)

your executor (Delta, Fluxus, Hydrogen, Synapse X, etc.) to run the hub 

-- Luaz v10 Loader
-- Loads directly from the provided source

local libraryUrl = "https://pastebin.com/raw/YjLHRFyw"

-- Notify the user it is starting
game:GetService("StarterGui"):SetCore("SendNotification", {
    Title = "Luaz v10";
    Text = "Loading library...";
    Duration = 3;
})

-- Execute the script
local success, err = pcall(function()
    loadstring(game:HttpGet(libraryUrl))()
end)

if not success then
    warn("Luaz v10 failed to load: " .. tostring(err))
    game:GetService("StarterGui"):SetCore("SendNotification", {
        Title = "Error";
        Text = "Failed to load Luaz v10. Check F9 console.";
        Duration = 5;
    })
end


