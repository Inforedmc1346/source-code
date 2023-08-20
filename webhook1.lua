
local P = {2753915549,4442272183,7449423635};
for i,v in pairs(game:GetService("Players"):GetChildren()) do
	shared.Min = i
end

game:GetService("RunService").Heartbeat:Connect(function()
	for i,v in pairs(P) do
		if v == game.PlaceId then
			if game:GetService("Workspace").Map:FindFirstChild("MysticIsland") then
				shared.Mystic = "Spawn"
			else
				shared.Mystic = "Not spawn"
			end
			
			if game:GetService("Lighting").Sky.MoonTextureId == "http://www.roblox.com/asset/?id=9709149431" then
				shared.FullMoon = tostring("100%".." | ".."Full Moon")
			elseif game:GetService("Lighting").Sky.MoonTextureId == "http://www.roblox.com/asset/?id=9709149052" then
				shared.FullMoon = tostring("75%")
			elseif game:GetService("Lighting").Sky.MoonTextureId == "http://www.roblox.com/asset/?id=9709143733" then
				shared.FullMoon = tostring("50%")
			elseif game:GetService("Lighting").Sky.MoonTextureId == "http://www.roblox.com/asset/?id=9709150401" then
				shared.FullMoon = tostring("25%")
			elseif game:GetService("Lighting").Sky.MoonTextureId == "http://www.roblox.com/asset/?id=9709149680" then
				shared.FullMoon = tostring("15%")
			else
				shared.FullMoon = tostring("Wait Moon")
			end
		end
	end
end)

for i,v in pairs(P) do
	if v == game.PlaceId then
		local url =
			"https://discord.com/api/webhooks/1141210288474030170/im635ZfX2k2WB7-ZSl3vq1YAIgek85EmGXX8N0sj_0hfcricZa6OED26DA10ogFzlSxu"
		local data = {
			["embeds"] = {
				{
					["description"] = "**Moon Finder**\n```lua\n"..tostring('game:GetService("ReplicatedStorage").__ServerBrowser:InvokeServer("teleport","'..game.JobId..'")').."\n```",
					["color"] = 16711751,
					["fields"] = {
						{["name"] = "**Players**",["value"] = "```yaml\n"..shared.Min.."/"..game:GetService("Players").MaxPlayers.."\n```",["inline"] = true,},
						{["name"] = "**Job Id**",["value"] = "```yaml\n"..game.JobId.."\n```",["inline"] = true,},
						{["name"] = "**Full Moon :**",["value"] = "```yaml\n"..shared.FullMoon.."\n```",["inline"] = true,},
					},
					["footer"] = {
						["text"] = "HIRIMI HUB",
						["icon_url"] = ""
					},
					["timestamp"] = DateTime.now():ToIsoDate(),
					["thumbnail"] = {
						["url"] = "rbxassetid://14161592006"
					}
				}
			},
		}
		local newdata = game:GetService("HttpService"):JSONEncode(data)

		local headers = {
			["content-type"] = "application/json"
		}
		request = http_request or request or HttpPost or syn.request
		local R = {Url = url, Body = newdata, Method = "POST", Headers = headers}
		request(R)
	end
end
