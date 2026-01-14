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
