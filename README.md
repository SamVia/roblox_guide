# Roblox Game Development & Workshop Guide

Welcome to the comprehensive guide for teaching and learning Roblox game development!




## Repository Structure

* **`/docs`**: Contains the written curriculum, broken down into manageable modules. You will find guides on workshop logistics, game design principles, building environments, and scripting fundamentals.
* **`/scripts`**: Contains ready-to-use `.lua` scripts, categorized by function (environment, player mechanics, core systems, and UI). You can drop these directly into your Roblox Studio projects!

##  Documentation Modules

1.  **[Workshop Logistics](docs/01_workshop_logistics.md)**: Hardware requirements, activity plans, and session formats.
2.  **[Introduction to Studio](docs/02_intro_to_studio.md)**: Platform basics, optimizing performance, and analyzing educational games.
3.  **[Game Design & Prototyping](docs/03_game_design.md)**: Core loops, game genres, UI/UX, and designing quests.
4.  **[Building & Environment](docs/04_building_environment.md)**: Greyboxing, terrain generation, lighting, and textures.
5.  **[Collaboration & Sharing](docs/05_collaboration.md)**: Using Team Create, syncing work, and exporting assets.
6.  **[Audio & NPCs](docs/06_audio_and_npcs.md)**: Implementing sound effects, background music, and character models.

## Script Library
Navigate to the `/scripts` folder to find raw code for mechanics like:
* Disappearing/fading platforms and deadly hazards.
* Teleporters, jump pads, and speed boosts.
* Coin collection, leaderboards, and data saving.
* Interactive doors and UI buttons.

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