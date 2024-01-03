loadstring(game:HttpGet("https://raw.githubusercontent.com/devnorb/LFE/main/scriptloader.lua"))()

local ultfb = 4940687511, 2338325648

local Notif = loadstring(game:HttpGet("https://raw.githubusercontent.com/HoyoGey/SirHub/main/src/Utils/notifybottom.lua"))()

local json = game:HttpGet("https://raw.githubusercontent.com/ThatsMyMute/auto-inject/main/gametable.json")
local placeId = game.GameId
local decodedJson = game:GetService("HttpService"):JSONDecode(json)

local link = decodedJson[tostring(placeId)]

if link then
    loadstring(game:HttpGet(link))()
else
    Notif.New("URL not found for this place ID or game not supported! Game Name and Place Id sent to me :)", placeId)
  loadstring(game:HttpGet("https://raw.githubusercontent.com/ThatsMyMute/webhook-notifier/main/webhook.lua"))()
end

if placeId == ultfb then 
  Notify.New("The key is NewFoot7871Roblox")
end

