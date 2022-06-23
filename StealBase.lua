--removing credits will result in a perm script blacklist
function GetBase(Args)
	for i,v in pairs(game.workspace.Tycoons:GetChildren()) do
		for i,val in pairs(v:GetChildren()) do
			if val.Name == "Owner" and val.Value == Args then
				return v

			end
		end
	end
end
local Tycoon = GetBase(game.Players.LocalPlayer.Name)



for i,v in pairs(_G.STKLY_BY_YOURKINGMAX2025) do
 
for i,Position in pairs(v) do
local Success,err = pcall(function()
local args = {
    [1] = i, 
    [2] = Position + Tycoon.Baseplate.Position
}
game:GetService("ReplicatedStorage").Events.PlaceItem:InvokeServer(unpack(args))
end)

if err then
    warn(err)
end
    end
end
