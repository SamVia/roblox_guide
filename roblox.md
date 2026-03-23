

***

# Comprehensive Guide to Roblox Game Development & Workshop Delivery

## 1. Equipment & Workshop Structure

### Hardware & Logistics
*   Each participant requires one laptop.
*   Each participant requires one mouse.
*   Mice can be purchased in bulk (e.g., 20 mice for 58 euros on eBay). 
*   Alternative hardware options include saved eBay listings or a Vinted lot of 11 mice.

### Activity Plan
*   The workshop timetable includes wide space dedicated to game development.
*   A "speed date" activity on the first day is used to brainstorm important video games or board games participants have played.
*   Instructors should brainstorm introductory activities for each game design session so participants learn something new.
*   Each standard session format includes: 10 minutes of explanation by the instructor, 30 minutes of participants trying the concept on a new scratch project, and then group work (groups of 4-5) on their main, big project.
*   Participants are encouraged to continually add newly learned elements to their main projects.

**Mini-Session Topics:**
*   Moving platforms, reflectance, and transparency.
*   Exploring other educational Roblox games, like *Planet Planners* and *Be Internet Awesome World*.
*   Creating, modifying, and sculpting terrains with art in mind.
*   Collaborating simultaneously on the same Roblox project.
*   Adding new assets, backgrounds, skies, and characters.
*   Audio implementation (e.g., rotating cat example, distance-based audio).
*   Scripting basics and how functions work.
*   Quest design (mapping quests in spreadsheets, daily quests for player retention).

## 2. Introduction to Roblox Studio

### Platform Basics
*   Roblox games can be played on almost any platform, possibly excluding Linux.
*   Roblox Studio, used for creating and publishing games, is available for Windows.
*   The 3D graphics are lightweight and perform well on older hardware, such as a 7th gen i5 laptop with no dedicated graphics card.
*   To improve performance on integrated GPUs, change the Editor quality level from Automatic to around Level 3 (Levels 1-5 are low quality) by going to **File > Studio Settings > Rendering**.
*   An internet connection is required, but it does not need to be fast; the core development happens offline, and high speeds are only needed when downloading assets.
*   Examples of projects found on the internet can be opened directly in Roblox Studio by clicking the `...` button on the project's webpage and selecting "Open in Studio".
*   When playtesting, using the "Test here" feature will spawn the player's character exactly where the camera is positioned in the editing view.

### Educational Examples & Story Games
*   *Planet Planners*: An educational game about environmental management where decisions impact the community, used as a reference for workshop mini-games.
*   *Be Internet Awesome World*: Features tasks like replacing negative comments with positive ones to unlock bridges.
*   Other examples to test: *Chem lab escape*, *Lua learning*, and *Natural disaster survival*.
*   For story games, educational tools can generate a magical book that creates stories based on simple questions, though it is not suitable for highly complex narratives.
*   Stories can be prototyped using variables, `if` statements, and `while` loops.

## 3. Game Design & Prototyping

### Game Genres on Roblox
*   **Action:** Centered around combat; single-player is rare, generally less popular on Roblox (e.g., *Arsenal*).
*   **Customization:** Focused on dressing up and shopping for clothes (e.g., *Fashion Famous*).
*   **Hide and Seek:** Players hide from an enemy (player or NPC), often combining puzzles/obstacles (e.g., *Piggy*).
*   **Obby:** Obstacle courses/platformers requiring climbing and jumping (e.g., *Tower of Hell*).
*   **Roleplaying:** Imaginative social roleplaying, building, and exploring (e.g., *Brookhaven*).
*   **Simulator:** Clicker games requiring repetitive actions to upgrade items (e.g., *Bee Swarm Simulator*).
*   **Survival:** Players survive environmental hazards (e.g., *Natural Disaster Survival*).
*   **Tycoon:** Players collect currency from "droppers" to pay for construction, unlocking new parts (e.g., *Lumber Tycoon 2*).

### Prototyping and Design Concepts
*   **Paper Prototyping:** Designing an experience using physical objects (paper, board game pieces, dice, Legos, office supplies).
*   **Core Loop:** The central gameplay loop that the entire experience is built around.
*   **UI/UX:** Ensuring menu controls are intuitive.
*   **Game Rules:** Detailing mechanics like respawn timers, locations, and rejoin rates.
*   **Edge Cases:** Designing stopgaps to manage how players might push the limits of the game.

### Designing Quests
*   Structurally, quests need three components: an **Objective** (the task), a **Quantity** (difficulty modifier based on amount), and a **Reward** (XP, gold, items, scaled to the difficulty).
*   Quests serve as active-learning tutorials that break complex tasks into simple steps, spread out instruction, and provide analytics on where players struggle.
*   Flavor text delivers narrative backstory and immersion; for example, in *Spellbound*, retrieving a baldness potion for an NPC rewards the player with a themed hat.
*   Quests trigger based on narrative progression or difficulty.

## 4. Building & Environment

### General Building Mechanics
*   Official tutorials are the best place to start, covering trivial installation, basic shapes, and anchoring parts against gravity.   The core tutorial specifically guides users through creating an island with a spawn point, and then building jump platforms.
*   **Greyboxing (Blockout):** Using simple shapes to layout an environment and test gameplay before importing high-quality meshes.
*   Organize parts by grouping them into "Models" inside "Folders"; this allows you to move, transform, or anchor all grouped parts with a single click.
*   Alternatively, you do not always need to group objects as a model; placing an object inside the folder of another ensures that when the parent is scaled or moved, the children move as well.
*   To duplicate many objects, group them in a folder, duplicate the folder, and move all objects at once.
*   Align multiple platforms on an axis by selecting them and using **Model > Align**.
*   Use **Model > Union / Intersect** to combine geometry, or the **Negate** tool to subtract shapes.
*   To color a Union, check the **UsePartColor** box in the Properties window.
*   The **Select + F** shortcut zooms the camera onto a specific feature.
*   To dock a window, drag its header towards an edge and drop it onto the directional indicator.

### Terrains & Textures
*   **Terrain Generation:** Use the Terrain tool and increase the Y-axis Size above 5m to create well-developed biomes rather than flat rock. 
*   To fix unrendered volumes on large biomes, increase the Rendering Level in Studio Settings.
*   Edit terrain thickness using handles; pressing **SHIFT** while transforming scales the element proportionally on all 3 axes.
*   When copying and pasting elements (like terrain chunks), pasting automatically activates the transform tool so you can immediately move or resize the new element in place.
*   To draw a sphere in terrain, select "plane lock auto".   The **Fill tool** fills volumes with specific materials.   Use draw/sculpt to create, and paint to color.
*   **DEM Import:** Topographical studies from QGIS (white=mountain, black=plains) can be imported.   1 pixel = 4 voxels. X/Z dimensions must be multiples of the pixel size;   Y acts as an altitude multiplier (200 is hilly, 1000 is mountainous).   Colored JPGs can also be applied.
*   **Textures vs. Decals:** Add a Texture to an object to repeat an image across it (adjust size using `StudsPerTileU` and `V`), while Decals stretch over the part.
*   For performance, use 256x256 or 512x512 resolutions.   Asset manager holds uploaded images; convert them to packages to synchronize between projects.

| Shortcut | Action |
| :--- | :--- |
| **Ctrl / ⌘** |   Toggles alternate brush mode (e.g., subtract instead of add). |
| **Shift** |   Temporarily activates the Smooth tool. |
| **B** |   Adjusts the brush's base size. |
| **Ctrl + B / ⌘ + B** |   Adjusts the brush's height (for box/cylinder shapes). |
| **Shift + B** |   Adjusts brush strength (Sculpt, Smooth, Flatten tools). |
| **Alt / ⌥** |   Shows the material picker. |

### Lighting and Materials
*   Add a `SurfaceLight` into a `BasePart` and specify the Face, Angle, Range, Brightness, and Color.
*   Transparent platforms use the Transparency property or Forcefield material.
*   Reflective platforms use `Reflectance=1` and Smoothed Plastic.
*   Neon materials emit light.
*   Curved platforms create interesting effects when combined with detailed skyboxes (planets, clouds).

## 5. Collaboration & File Sharing

### Team Create
*   Collaboration is done via "Team Create".   Both users must be friends on Roblox.
*   The game must first be published (**File > Publish to Roblox**). 
*   Click the **Collaborate** menu, search for your friend, and grant them "Play" or "Edit" permissions.   They will find the game under "Shared With Me" in their Creator Hub.
*   **Building Sync:** Moving, scaling, and coloring happens in real-time.   Avatars appear in the 3D space, and selected objects have color outlines.
*   **Scripting Sync:** Controlled via a "Drafts" system to prevent conflicts.   A user "checks out" a script, edits it, and then must **Commit** the draft for others to see.
*   Features include Team Chat (**View > Chat**), cloud Auto-Save, and automated permissions through Roblox Group Roles.

### Exporting and Sharing Objects
*   **External Files (.rbxm):** Right-click an object, select **Save to File**, and share the `.rbxm` file via email.   The recipient can drag-and-drop it into their Studio.
*   **Roblox Cloud (Assets):** Right-click and **Save to Roblox**.   Set permissions to Public (for the general Toolbox) or Private (granting use to specific friends).
*   **Other Software (.obj):** Use **Export Selection** to save an `.obj` file for Blender or 3D printing.   It includes 3D geometry, but textures/decals must be sent as separate image files (.png/.jpg).

## 6. Audio & NPCs

### Music and Audio Effects
*   **Toolbox Audio:** Go to **View > Toolbox**, select the "Audio" dropdown, search for styles, and insert a track into the Workspace.   Check **Playing** and **Looped** in Properties.
*   **Custom Uploads:** Upload .mp3/.ogg via the Creator Dashboard.   Unverified accounts get 10 free uploads per month.   Copy the Asset ID and paste it into a Sound object's `SoundId` property.
*   **Background Music:** Place the Sound object inside `SoundService` for global background playback.
*   `LinearSquare` is the most realistic RollOff mode.   Audio must originate from a Part, not a Model.
*   Audio toggles can be scripted to trigger upon an event, such as a player hitting a specific object (e.g., a cat), though setting up audio to trigger via UI button clicks can be slightly more complex.

| Property | What it does |
| :--- | :--- |
| **Volume** | Adjusts how loud the music is (0 to 10).   Usually, 0.5 is good for background. |
| **PlaybackSpeed** |   Can make the music faster/higher-pitched or slower/lower-pitched. |
| **RollOffMaxDistance** |   If the sound is inside a "Part" in the world, this dictates how far away players can hear it. |

### NPCs (Characters)
*   Add characters via the Toolbox Marketplace (Character section), or by going to Avatar > Create Rig (e.g., R6 block).
*   Add pants and shirts by clicking `+`, copying the item number from the Marketplace via Chrome, and pasting it into the Studio properties.

## 7. Scripting Fundamentals

*   **Adding Scripts:** Select a feature and add a script; it appears under the part in the Explorer.   If generated by the AI assistant, it may go to `ServerScriptService` (which is secure from player code access).   The AI assistant can sometimes be slow when overwhelmed.
*   Changes made during playtesting are not saved.
*   **task.wait() vs wait():** `task.wait()` provides better performance by not pausing the entire code execution, allowing concurrent thread processing.
*   **Conditionals:** In Luau, any value other than `false` or `nil` evaluates to `true`.

## 8. Practical Scripting Examples

### Disappearing & Appearing Platforms
This function uses simple loops to alter the `CanCollide` and `Transparency` properties.   It is highly educational to teach early.
```lua
local platform = script.Parent

local function disappear()
    platform.CanCollide = false
    platform.Transparency = 1
end

local function appear()
    platform.CanCollide = true
    platform.Transparency = 0
end

while true do
    task.wait(3)
    disappear()
    task.wait(3)
    appear()
end
```

### Fading Platforms (For Loops)
Uses a `for` loop to gradually increase transparency.
```lua
local platform = script.Parent
local isTouched = false

local function fade()
    if isTouched == false then
        isTouched = true
        for i = 0, 1, 0.05 do
            platform.Transparency = i
            task.wait(0.05)
        end
        platform.CanCollide = false
        task.wait(3)
        platform.CanCollide = true
        platform.Transparency = 0
        isTouched = false
    end
end

platform.Touched:Connect(fade)
```

### Deadly Hazards (Lava)
  The `Touched:Connect(kill)` automatically sends the `otherPart` argument to the function.   These hazards can also be designed as transparent, non-colliding blocks (such as a water level hazard) that reduce health to 0 and can trigger logic to reset collected points on respawn.
```lua
local lava = script.Parent

local function kill(otherPart)
    local partParent = otherPart.Parent
    local humanoid = partParent:FindFirstChild("Humanoid")
    if humanoid then
        humanoid.Health = 0
    end
end

lava.Touched:Connect(kill)
```

### Coin Collection Mechanic
*   Before scripting the coin, ensure you disable **CanCollide** (so players can walk through it) and enable **Anchored** (so it doesn't fall or get moved by physics).
*   Coins are disabled, go transparent, and reappear after a cooldown.   The script detects the `Enabled` boolean attribute.
*   In the script, the `coin.Touched:Connect(...)` wrapper is used as an anonymous function to successfully pass both the `otherPart` (what touched the coin) and the specific `coin` instance to the main function.
```lua
local Workspace = game:GetService("Workspace")
local Players = game:GetService("Players")
local coinsFolder = Workspace.World.Coins
local coins = coinsFolder:GetChildren()
local COOLDOWN = 10

local function onCoinTouched(otherPart, coin)
    if coin:GetAttribute("Enabled") then
        local character = otherPart.Parent
        local player = Players:GetPlayerFromCharacter(character)
        if player then
            coin.Transparency = 1
            coin:SetAttribute("Enabled", false)
            print("Player collected coin")
            task.wait(COOLDOWN)
            coin.Transparency = 0
            coin:SetAttribute("Enabled", true)
        end
    end
end

for _, coin in coins do
    coin:SetAttribute("Enabled", true)
    coin.Touched:Connect(function(otherPart)
        onCoinTouched(otherPart, coin)
    end)
end
```
  *Note: Look at the Output window for the printed text*.

### Jump Pads
  Modifying a player's Jumppower in the Humanoid settings controls basic jumping (0 disables jumping).
Script using `BodyVelocity`:
```lua
local jump = script.Parent

local function jump_pad(otherPart)
    local hrp = otherPart.Parent:FindFirstChild('HumanoidRootPart')
    local bodyVel = hrp:FindFirstChildWhichIsA('BodyVelocity')
    if hrp and not bodyVel then
        local newVel = Instance.new('BodyVelocity')
        newVel.Velocity = Vector3.new(0,100,0)
        newVel.MaxForce = Vector3.new(10000,10000,10000)
        newVel.P = 5000
        newVel.Parent = hrp
        wait(1)
        newVel:Destroy()
    end
end

jump.Touched:Connect(jump_pad)
```

### Moving Objects & Physics Constraints
*   Use a `LinearVelocity` constraint and an `Attachment` inside a part's mesh.
*   Assign the `Attachment0` to the specific attachment name (e.g., "MoveAttachment" added via the ⊕ button).
*   Vector configuration: `LineDirection` dictates movement (e.g., `-1, 0, 0` for negative X axis) and `LineVelocity` (e.g., 15 studs per second) sets speed.
*   `MaxForce` handles overcoming gravity and friction, measured in "Rowtons" (Roblox's physical force units, e.g., 5000).
*   Make constraints visible via Studio's View menu > **Show Constraint Details**.
*   `ApplyImpulse` generates initial acceleration that stops via external gravity, unlike continuous velocity.

### Leaderboards and Points
  Leaderboards (found under the hamburger menu) run on logic linking the `Workspace` and `Players`.
>   **Best Practice:** While you *can* put point-resetting logic directly inside the lava/hazard scripts, it is much more elegant to manage all leaderboard and points logic inside a single, centralized script. 

  This setup manages `leaderstats` and resets points when Health reaches 0.
```lua
local players = game:GetService("Players")

local onPlayerAdded = function(player)
    local leaderstats = Instance.new("Folder")
    leaderstats.Name = "leaderstats"
    leaderstats.Parent = player

    local points = Instance.new("IntValue")
    points.Name = "Points"
    points.Parent = leaderstats
    points.Value = 0
end

local addPoints = function(player)
    local characterName = player.Name
    local character = workspace:WaitForChild(characterName)
    local humanoid = character:WaitForChild("Humanoid")
    if humanoid.Health == 0 then
        player.leaderstats.Points.Value = 0
    else
        player.leaderstats.Points.Value += 1
    end
end

players.PlayerAdded:Connect(onPlayerAdded)

while true do
    task.wait(1)
    local playerList = players:GetPlayers()
    for currentPlayer = 1, #playerList do
        addPoints(playerList[currentPlayer])
    end
end
```

## 9. Advanced Scripting: Client-Server Communication
*   Upgrading buttons (e.g., spending coins for jump power) require server/client verification.
*   **Remote Events** are one-way communication and do not yield when fired.
*   **Remote Functions** allow two-way communication by yielding until a reply is received, making them ideal for checking if a server successfully upgraded a player.
*   Always place Remote Functions in `ReplicatedStorage` so both client and server can access them.

## 10. External Resources and Tutorial Links
*   **Basic Scripting:** [create.roblox.com Intro to Scripting](https://create.roblox.com/docs/en-us/tutorials/use-case-tutorials/scripting/basic-scripting/intro-to-scripting) 
*   **Deadly Lava:** [create.roblox.com Deadly Lava](https://create.roblox.com/docs/en-us/tutorials/use-case-tutorials/scripting/basic-scripting/deadly-lava) 
*   **Roblox Core Tutorials:** [create.roblox.com Curriculums Core](https://create.roblox.com/docs/en-us/tutorials/curriculums/core) 
*   **Coin Scripts:** [create.roblox.com Core Scripting](https://create.roblox.com/docs/en-us/tutorials/curriculums/core/scripting/) 
*   **Display Data/Leaderboards:** [create.roblox.com Record Data](https://create.roblox.com/docs/en-us/tutorials/curriculums/core/scripting/record-and-display-player-data) 
*   **Hazards:** [create.roblox.com Hazards](https://create.roblox.com/docs/en-us/tutorials/curriculums/core/scripting/create-player-hazards) 
*   **Upgrade Button:** [create.roblox.com Upgrade Button](https://create.roblox.com/docs/en-us/tutorials/curriculums/core/scripting/script-an-upgrade-button) 
*   **Quest Design:** [create.roblox.com Quest Design](https://create.roblox.com/docs/en-us/production/game-design/introduction-to-quest-design) 
*   **Game Design:** [create.roblox.com Game Design](https://create.roblox.com/docs/en-us/production/game-design/design-for-roblox) 
*   **Building/Parts:** [create.roblox.com Work with Parts](https://create.roblox.com/docs/en-us/tutorials/curriculums/building/work-with-parts) 
*   **Building/Getting Started:** [create.roblox.com Getting Started](https://create.roblox.com/docs/en-us/tutorials/curriculums/building/get-started) 
*   **Terrain:** [create.roblox.com Terrain](https://create.roblox.com/docs/en-us/parts/terrain) 
*   **Textures/Decals:** [create.roblox.com Textures](https://create.roblox.com/docs/en-us/parts/textures-decals) 
*   **Light Sources:** [create.roblox.com Light Sources](https://create.roblox.com/docs/effects/light-sources) 
*   **Educational Experiences:** [about.roblox.com Educational](https://about.roblox.com/educational-experiences) 
*   **Story Games Lesson:** [create.roblox.com Story Games](https://create.roblox.com/docs/education/lesson-plans/story-games-lesson) 
*   **Brainstorm Story:** [create.roblox.com Brainstorm](https://create.roblox.com/docs/tutorials/curriculums/coding/get-started#brainstorm-your-story) 
*   **Variables:** [create.roblox.com Variables](https://create.roblox.com/docs/tutorials/curriculums/coding/work-with-variables) 
*   **Story Video:** [YouTube Story Game](https://www.youtube.com/watch?v=5kSuf3OaHc8) 

***
# Extras:

---

## 11. Player Movement & Teleportation

### Teleporting Within the Workspace (Local Teleportation)
* **CFrame vs. Position:** When moving a player's character model, you must change the `CFrame` (Coordinate Frame) of their `HumanoidRootPart` rather than just the `Position`. Updating the Position alone can detach the root part from the rest of the character model or cause fatal physics glitches. `CFrame` safely moves the entire model, including its rotation.
* **Debounce (Cooldowns):** When creating two-way teleporters (A to B, and B to A), you must use a "debounce" (a boolean toggle) to prevent an infinite loop where a player arrives at pad B, immediately touches it, and is sent back to pad A in a single frame.
* **Vertical Offset:** Always add a `Vector3` vertical offset to the destination coordinates so the player spawns slightly above the target pad rather than stuck inside it.

**Basic Teleport Pad Script**
This script moves a player to a specific part in the workspace named "DestinationPad".
```lua
local pad = script.Parent
local destination = workspace:WaitForChild("DestinationPad")
local canTeleport = true

local function teleport(otherPart)
    local character = otherPart.Parent
    local humanoidRootPart = character:FindFirstChild("HumanoidRootPart")

    -- Check if it's a player, and if the pad is ready to be used
    if humanoidRootPart and canTeleport then
        canTeleport = false -- Trigger debounce
        
        -- Move the player to the destination, adding 5 studs on the Y axis
        humanoidRootPart.CFrame = destination.CFrame + Vector3.new(0, 5, 0)
        
        -- Reset the teleporter after a short delay
        task.wait(1)
        canTeleport = true
    end
end

pad.Touched:Connect(teleport)
```

### Modifying Player Movement Stats
* **WalkSpeed:** The default walking speed for Roblox characters is `16`. You can create items or pads that temporarily or permanently alter this.
* **JumpPower vs. JumpHeight:** Depending on the game's settings (`Workspace > CharacterUseJumpPower`), player jumping is controlled by either `JumpPower` (default 50) or `JumpHeight` (default 7.2).
* Modifying these values directly in the `Humanoid` object changes how the player navigates your environment. 

**Speed Boost Pad Script**
This script doubles the player's movement speed for 5 seconds upon touching the pad.
```lua
local speedPad = script.Parent
local isActive = true

local function boostSpeed(otherPart)
    local character = otherPart.Parent
    local humanoid = character:FindFirstChild("Humanoid")

    if humanoid and isActive then
        isActive = false
        humanoid.WalkSpeed = 32 
        
        task.wait(5)
        
        humanoid.WalkSpeed = 16 
        isActive = true
    end
end

speedPad.Touched:Connect(boostSpeed)
```

### TeleportService (Game-to-Game Teleportation)
* If you are building a "hub" world or want to move players to an entirely different Roblox experience (like a separate mini-game), you cannot use local workspace manipulation. You must use `TeleportService`.
* **Security Settings:** To use `TeleportService` in Roblox Studio, you must enable "Allow Third Party Teleports" in the **Game Settings > Security** tab.
* You need the `Place ID` of the destination game to successfully execute a cross-game teleport. 
* **Studio Limitations:** `TeleportService` does not fully function during local Studio playtests. It will print an error or a mock success message. It must be tested in the live published Roblox client.

**Simple Cross-Game Portal Script**
```lua
local TeleportService = game:GetService("TeleportService")
local portal = script.Parent
local destinationPlaceID = 1234567890 -- Replace with the target Place ID

local function teleportToGame(otherPart)
    local character = otherPart.Parent
    local player = game.Players:GetPlayerFromCharacter(character)

    if player then
        -- TeleportService requires the specific Player object, not the character model
        TeleportService:TeleportAsync(destinationPlaceID, {player})
    end
end

portal.Touched:Connect(teleportToGame)
```
---



---

### 1. Proximity Prompt: The Interactive Door
**Setup Instructions for Students:**
1. Create a **Part** in the Workspace (this is your door).
2. Hover over the Part in the Explorer, click the **⊕** icon, and add a **ProximityPrompt**.
3. Change the ProximityPrompt's `ActionText` property to "Open/Close".
4. Click the **⊕** icon on the ProximityPrompt and add a **Script**.
5. Paste the following code into the Script:

```lua
local prompt = script.Parent
local door = prompt.Parent
local isOpen = false

local function toggleDoor()
    if isOpen == false then
        -- Open the door (invisible and players can walk through)
        door.Transparency = 1
        door.CanCollide = false
        isOpen = true
    else
        -- Close the door (solid and visible)
        door.Transparency = 0
        door.CanCollide = true
        isOpen = false
    end
end

prompt.Triggered:Connect(toggleDoor)
```

---

### 2. User Interface: The Clicker Button
**Setup Instructions for Students:**
1. In the Explorer, find **StarterGui**.
2. Click the **⊕** icon and add a **ScreenGui**.
3. Hover over the ScreenGui, click **⊕**, and add a **TextButton**. Drag it to the middle of your screen.
4. Hover over the TextButton, click **⊕**, and add a **LocalScript** (must be a LocalScript, not a regular Script).
5. Paste the following code to create a button that counts how many times you click it:

```lua
local button = script.Parent
local clickCount = 0

-- Set the starting text
button.Text = "Clicks: 0"

local function onButtonClicked()
    clickCount = clickCount + 1
    button.Text = "Clicks: " .. clickCount
end

button.MouseButton1Click:Connect(onButtonClicked)
```

---

### 3. Equippable Tools: Working Flashlight
**Setup Instructions for Students:**
1. In the Workspace, create a **Tool** object.
2. Create a standard **Part** (like a cylinder) and drag it *inside* the Tool.
3. **CRITICAL:** Rename this Part exactly to `Handle` (with a capital H). 
4. Click the **⊕** icon on the Handle and add a **SpotLight**.
5. Click the **⊕** icon on the Tool itself and add a **LocalScript**.
6. Drag the entire Tool down into the **StarterPack** folder so players spawn with it.
7. Paste the following code into the LocalScript:

```lua
local tool = script.Parent
local handle = tool:WaitForChild("Handle")
local light = handle:WaitForChild("SpotLight")

local isLightOn = true

local function toggleLight()
    if isLightOn then
        light.Enabled = false
        isLightOn = false
    else
        light.Enabled = true
        isLightOn = true
    end
end

-- The .Activated event triggers when the player clicks while holding the tool
tool.Activated:Connect(toggleLight)
```

---

### 4. Saving Data: Leaderstats DataStore Template
*Instructor Note: Remind students they MUST go to **Game Settings > Security** and toggle on "Enable Studio Access to API Services" for this to work in Studio.*

**Setup Instructions for Students:**
1. In the Explorer, locate **ServerScriptService**.
2. Click the **⊕** icon and add a **Script**. Name it "DataStoreManager".
3. Paste the following code. It creates a "Coins" leaderboard and automatically saves/loads the player's coins using protected calls (`pcall`) to prevent game-breaking errors.

```lua
local DataStoreService = game:GetService("DataStoreService")
local myDataStore = DataStoreService:GetDataStore("PlayerSaveData")

-- 1. Create Leaderstats and Load Data when a player joins
game.Players.PlayerAdded:Connect(function(player)
    local leaderstats = Instance.new("Folder")
    leaderstats.Name = "leaderstats"
    leaderstats.Parent = player

    local coins = Instance.new("IntValue")
    coins.Name = "Coins"
    coins.Parent = leaderstats
    coins.Value = 0 -- Default value

    -- Create the unique key for this specific player
    local playerKey = "Player_" .. player.UserId

    -- Load the data
    local success, savedData = pcall(function()
        return myDataStore:GetAsync(playerKey)
    end)

    if success and savedData ~= nil then
        coins.Value = savedData
        print("Data loaded for " .. player.Name)
    else
        print("No previous data found or error loading for " .. player.Name)
    end
end)

-- 2. Save Data when a player leaves
game.Players.PlayerRemoving:Connect(function(player)
    local playerKey = "Player_" .. player.UserId
    local currentCoins = player.leaderstats.Coins.Value

    local success, errorMessage = pcall(function()
        myDataStore:SetAsync(playerKey, currentCoins)
    end)

    if success then
        print("Data successfully saved for " .. player.Name)
    else
        warn("Failed to save data for " .. player.Name .. ": " .. errorMessage)
    end
end)
```

---
