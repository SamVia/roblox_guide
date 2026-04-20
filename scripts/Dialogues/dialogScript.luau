-- FIND THE DIALOGUE SYSTEM here in this folder (import it) or: https://create.roblox.com/store/asset/80608769509945/NPC-Dialogue-System
-- Tutorial here https://www.youtube.com/watch?v=hPEE5ol6xc4
-- Once you import this asset, move the three subfolders into Replicated Storage, StarterGui and Workspace and ungroup them
-- Then, edit the dialogueScript that is inside the NPC model in the workspace. ("showcase npc" is the default name)


-- services
local ReplicatedStorage = game:GetService("ReplicatedStorage")

--modules
local DialogModule = require(ReplicatedStorage.DialogModule)

--references
local player = game.Players.LocalPlayer
local npc = script.Parent -- Reference to the NPC model
local npcGui = npc:WaitForChild("Head"):WaitForChild("gui")
local prompt = npc:WaitForChild("ProximityPrompt")

local dialogObject = DialogModule.new("Showcase NPC", npc, prompt)
dialogObject:addDialog("Hello, how are you?", {"Good","Bad","Poland is best"})
dialogObject:addDialog("Wasn't it Serbia", {"nono Poland","I don't care mangio pasta"})

--dialogObject:addDialog("Hello, how are you?", {"Good","Bad","Poland is best"})


-- what happens when triggered
prompt.Triggered:Connect(function(player)
	dialogObject:triggerDialog(player, 1)
end)

-- logic to go through dialogs
dialogObject.responded:Connect(function(responseNum, dialogNum)
	if dialogNum == 1 then
		if responseNum == 1 then
			dialogObject:hideGui("i'm happy to hear")
		end
		
		if responseNum == 2 then
			dialogObject:hideGui("i'm sorry but i am busy now")
		end
		if responseNum == 3 then
			
			dialogObject:triggerDialog(player, 2)
			
		end
	end
	if dialogNum == 2 then
		if responseNum == 1 then
			dialogObject:hideGui("i'm happy to hear, but im sorry for Serbia")
		end
		if responseNum == 2 then
			dialogObject:hideGui("Ok let's go eating pasta")
		end
	end
	
end)