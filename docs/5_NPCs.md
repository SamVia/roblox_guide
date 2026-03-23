# Non-Playable Characters and Entities

## 1. Basic Humanoid NPCs
* **Spawning:** Add characters via the Toolbox Marketplace (Character section), or by navigating to **Avatar > Create Rig** (e.g., an R6 block rig).
* **Customization:** Add pants and shirts to your rig by clicking the `+` icon, copying the specific item number from the Marketplace via your web browser, and pasting it into the Studio properties.
* **Usage:** Standard humanoid NPCs are ideal for populating towns or acting as basic enemies in hide-and-seek or survival games.

## 2. Vendors and Quest Givers
* **Static Placement:** Most vendors and quest givers do not need to roam. To keep them securely behind a shop counter or standing in a village, simply check the **Anchored** box on their `HumanoidRootPart` so they cannot be pushed around by players.
* **Interaction:** To make an NPC interactive, attach a `ProximityPrompt` to their torso. When a player approaches and interacts, you can script this prompt to open a shop UI or trigger a quest sequence (such as asking the player to retrieve a potion for a reward).
* **Flavor Text:** Use a billboard GUI above their head or a dialogue tree to deliver narrative backstory and immersion. 

## 3. Animals, Pets, and Monsters
* **Static Decor Animals:** For background atmosphere (like a sleeping dog or a perched bird), you can use basic unrigged models from the Toolbox. Anchor the model and, if desired, add a looping audio emitter (like a purring or chirping sound).
* **Moving Entities:** If you want an animal or monster to roam, it needs to be a rigged model containing a `Humanoid` object. You can use standard scripting functions like `Humanoid:MoveTo()` to make the entity walk toward specific coordinate vectors or invisible waypoints.
* **Custom Rigs:** Unlike standard players, animals often use custom skeletal rigs (e.g., four legs instead of two). To make them look alive while moving, you will need to apply a looping "Walk" animation via an `Animator` script inside the entity.
<div align="center">
  <table>
    <tr>
      <td align="center"><a href="4_audio.md">Previous</a></td>
      <td align="center"><a href="6_units.md">Next</a></td>
    </tr>
  </table>
</div>