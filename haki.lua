local WebHook = "webhook"
local haki = string.gsub(game:GetService("ReplicatedStorage"):WaitForChild("Remotes"):WaitForChild("CommF_"):InvokeServer("ColorsDealer", "1"), "%d+", "")
local color = "16777215"
local colordata = {
	["Orange Soda"] = "16741120",
	["Bright Yellow"] = "16774912",
	["Yellow Sunshine"] = "16769280",
	["Slimy Green"] = "2031360",
	["Green Lizard"] = "12582656",
	["Blue Jean"] = "39423",
	["Plump Purple"] = "8388736",
	["Fiery Rose"] = "16711791",
	["Heat Wave"] = "16730112",
	["Absolute Zero"] = "209",
	["Snow White"] = "16777215",
	["Pure Red"] = "16711680",
	["Winter Sky"] = "14745855",
}

for i, v in pairs(colordata) do
	if i == haki then
		color = v
		break
	end
end

local data = {
	["embeds"] = {
		{
			["title"] = "Haki Finder".."|".." HIRIMI HUB",
			["description"] = "```"..haki.."```",
			["type"] = "rich",
			["color"] = color,
		}
	},
}
request({
	Url = "https://discord.com/api/webhooks/1141210309563011223/GNwYhDfWxVuvdGs3EcCcZmaDYe7EFx_W-ai1u3qJ3YdtI2oFouq8cl5NPdn0FtTuK_Y7",
	Body = game:GetService("HttpService"):JSONEncode(data),
	Method = "POST",
	Headers = {["content-type"] = "application/json"}
})
