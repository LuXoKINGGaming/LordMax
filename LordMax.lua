local library = loadstring(game:HttpGet(("https://raw.githubusercontent.com/LuXoKINGGaming/back-ups-for-libs-main/master/wall%20v3")))()

local w = library:CreateWindow("Lord Max") -- Creates the window

local b = w:CreateFolder("Auto Afk") -- Creates the folder(U will put here your buttons,etc)

b:Label("Made by LuXo KING Gaming",{
    TextSize = 12; -- Self Explaining
    TextColor = Color3.fromRGB(255,255,255); -- Self Explaining
    BgColor = Color3.fromRGB(69,69,69); -- Self Explaining
    
}) 

getgenv().doAntiAfk = false

function antiAfk()
    task.spawn(function()
        while task.wait() and getgenv().doAntiAfk do
            repeat wait() until game:IsLoaded() 
                game:GetService("Players").LocalPlayer.Idled:connect(function()
                game:GetService("VirtualUser"):ClickButton2(Vector2.new())
            end)
        end
    end)
end

b:Toggle("Anti Afk",function(bool)
    getgenv().doAntiAfk = bool
    if bool then
        antiAfk();
    end
end)


b:DestroyGui()
