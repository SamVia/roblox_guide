# Roblox Game Development & Workshop Guide

Welcome to the comprehensive guide for teaching and learning Roblox game development!




## Repository Structure

* **`/docs`**: Contains the written curriculum, broken down into manageable modules. You will find guides on workshop logistics, game design principles, building environments, and scripting fundamentals.
* **`/scripts`**: Contains ready-to-use `.lua` scripts, categorized by function (environment, player mechanics, core systems, and UI). You can drop these directly into your Roblox Studio projects!

##  Documentation Modules

0.   **[Introduction to Studio](docs\0_introduction_to_roblox.md)**: Platform basics, optimizing performance, and analyzing educational games.
1.  **[Game Design & Prototyping](docs/1_game_design.md)**: Core loops, game genres, UI/UX, and designing quests.
2.  **[Building & Environment](docs/2_building_environment.md)**: Greyboxing, terrain generation, lighting, and textures.
3. **[Collaboration & Sharing](docs/3_collaboration.md)**: Using Team Create, syncing work, and exporting assets.
4.  **[Audio](docs/4_audio.md)**: Impleenting sound effects and background music.
5.  **[NPCs](docs/5_NPCs.md)**: Character models, vendors and animals.
6. **[Units of Measurement](docs/6_units.md)**: Real world units vs Roblox units.
## Script Library
Navigate to the `/scripts` folder to find raw code for mechanics like:
* ### 1. Environment (`/environment`)
    Scripts used to make the physical world interactive and dangerous.
    * **`appear_disappear_platforms.lua`**: Uses simple loops to alter a platform's `CanCollide` and `Transparency` properties.
    * **`fading_platform.lua`**: Uses a `for` loop to gradually increase transparency before removing collision.
    * **`deadly_lava.lua`**: A hazard script that detects touches and reduces a player's Humanoid Health to 0.
    * **`proximity_door.lua`**: Uses a `ProximityPrompt` to toggle a door between open (invisible and players can walk through) and closed (solid and visible).
    * **`elevator.lua`**: A physics-based elevator script utilizing `LinearVelocity` and `task.wait()`.

* ### 2. Movement (`/movement`)
    Mechanics that alter how players navigate your game world.
    * **`jumping_pad.lua`**: Uses `BodyVelocity` to forcefully push a player upward upon contact.
    * **`teleport_pad.lua`**: Safely moves a player by updating their `HumanoidRootPart.CFrame` and uses a debounce to prevent infinite teleportation loops.
    * **`speed_boost_pad.lua`**: Temporarily increases a player's `WalkSpeed` for 5 seconds when stepped on.
    * **`cross_game_teleport.lua`**: Uses `TeleportService` and a destination Place ID to move players to an entirely different Roblox experience.

* ### 3. Mechanics (`/mechanics`)
    The core background logic that runs the rules of your game.
    * **`coin_collection.lua`**: Handles item pick-ups, making coins disappear and reappear after a cooldown by detecting the `Enabled` boolean attribute.
    * **`leaderboard_points.lua`**: A centralized script that manages `leaderstats` and resets points when a player's Health reaches 0.
    * **`datastore_manager.lua`**: Uses protected calls (`pcall`) to automatically save and load player data (like coins) to prevent game-breaking errors.

* ### 4. NPCs (`/npc`)
    Scripts to build interactive non-playable characters and shops.
    * **`npc_dialogue.lua`**: Connects to the built-in Dialog system to trigger actions when specific dialogue choices are selected.
    * **`npc_roaming.lua`**: Commands a rigged entity to patrol between invisible waypoints.
    * **`vendor_shop.lua`**: A script linked to a ProximityPrompt that checks a player's `leaderstats` to see if they can afford an item.

* ### 5. User Interface (`/ui`)
    Scripts to make your on-screen menus responsive and intuitive.
    * **`clicker_button.client.lua`**: A LocalScript that counts how many times a ScreenGui TextButton is clicked.
    * **`open_ui_button.client.lua`**: A LocalScript that toggles the visibility of a menu frame on and off.

* ### 6. Misc (`/misc`)
    * **`flashlight.client.lua`**: An equippable tool LocalScript that toggles a `SpotLight` on and off when the player clicks to activate it.

## Hardware & Software Requirements

Before beginning the workshop, ensure that all equipment meets the necessary hardware and software specifications. Roblox Studio is highly optimized, but adhering to these guidelines will prevent technical bottlenecks during the sessions.

* ### 1. Hardware Specifications

    While the 3D graphics are lightweight and perform well on older hardware (such as a 7th generation i5 laptop with no dedicated graphics card), ensuring consistent specs across the classroom is highly recommended. 

    #### Minimum Requirements:
    * **Memory (RAM):** 3 GB 
    * **Processor:** Processors dating back up to 5 years (desktops) or 3 years (laptops) are generally sufficient. 

    #### Recommended Requirements:
    * **Memory (RAM):** 8 GB or higher
    * **Display:** 1600×900 resolution or higher

    #### Peripherals & Accessories
    * **Laptops:** Each participant requires one laptop.
    * **Mice:** Each participant requires one physical mouse. Developing in 3D space with a trackpad is extremely difficult; a standard 2-button mouse with a scroll wheel is necessary. 

* ### 2. Software & Operating Systems

    Roblox Studio, the engine used for creating and publishing games, has specific OS limitations. While Roblox *games* can be played on almost any platform (possibly excluding Linux), the **Studio software** has stricter limits.

    **Supported Operating Systems:**
    * **Windows:** Windows 10 or Windows 11. Roblox Studio is fully available for Windows.
    * **Mac:** macOS 10.14 (Minimum) or macOS 14+ (Recommended). 

    **Unsupported Operating Systems:**
    * **Linux:** Roblox Studio is not supported on Linux.
    * **ChromeOS / Mobile:** Chromebooks, iPads, and Android tablets cannot run Roblox Studio.

* ### 3. Network & Performance Optimization

    * **Internet Connection:** An internet connection is required to log in and save to the cloud, but it does not need to be fast. The core development happens offline, and high speeds are only needed when downloading heavy assets.
    * **Integrated Graphics Fix:** If participants are using laptops with integrated GPUs and experiencing lag, you can improve performance by going to **File > Studio Settings > Rendering** and changing the Editor quality level from Automatic to around Level 3 (Levels 1-5 are low quality).

##  External Resources
For official documentation and further reading, check out the [Roblox Creator Hub tutorials](https://create.roblox.com/docs).