# Units of Measurement in Roblox

When building and scripting in Roblox Studio, you will encounter several specific units used to measure distance, physics, and world properties. Understanding these units is essential for accurate game design and scripting.

## Distance & Space

* **Studs:** The fundamental unit of distance and measurement in Roblox.
  * You will see studs referenced in properties like `StudsPerTileU` for textures.
  * It is used for scripting positional offsets, such as adding 5 studs on the Y-axis when teleporting a player.
* **Meters (m):** Occasionally used in specific builder tools. For example, when generating terrain, you might increase the Y-axis Size above 5m to create well-developed biomes.
* **Voxels:** The 3D volumetric pixels used to make up Roblox terrain. When importing topographical DEM studies from QGIS, the conversion rate is 1 pixel to 4 voxels. 

## Physics & Movement

* **Speed (Studs per Second):** Movement velocity is measured in studs per second. 
  * For example, the default `WalkSpeed` for Roblox characters is `16`. This can be boosted via scripts (e.g., to `32`).
  * When using a `LinearVelocity` constraint, the `LineVelocity` property dictates speed in studs per second (e.g., 15 studs per second).
* **Jumping Units:** Depending on your game's Workspace settings, a player's jump is controlled by one of two metrics:
  * **JumpPower:** The default setting is `50`.
  * **JumpHeight:** The default setting is `7.2`.
* **Rowtons:** Roblox's proprietary unit for measuring physical force. When working with physics constraints like `LinearVelocity`, the `MaxForce` property (which handles overcoming gravity and friction) is measured in Rowtons, such as a value of `5000`.

## Audio & Time

* **Time (Seconds):** Script yielding and cooldowns are measured in seconds. For example, using `task.wait(3)` pauses the code for 3 seconds, and speed boost duration might be set to 5 seconds.
* **Volume Scale:** When adjusting audio playback, the `Volume` property operates on a scale from `0` to `10`. Usually, `0.5` is considered a good level for background music.


## Real-World SI Conversions

While Roblox operates on its own proprietary units like Studs and Rowtons, it is often necessary to map these to the International System of Units (SI) to achieve realistic physics and realistic environmental scaling. 

Roblox officially uses the following baseline metric conversions for its engine calculations:

| Measurement | Roblox Unit | SI Unit (Metric) Equivalent | Conversion Formula |
| :--- | :--- | :--- | :--- |
| **Distance** | 1 Stud | 0.28 Meters (m) | `Meters = Studs * 0.28` |
| **Velocity** | 1 Stud/s | 0.28 Meters/s (m/s) | `m/s = (Studs/s) * 0.28` |
| **Force** | 1 Rowton | ~6.13 Newtons (N) | `Newtons = Rowtons * 6.13` |
| **Torque** | 1 Rowton-stud | ~1.72 Newton-meters (N·m) | `N·m = Rowton-studs * 1.72` |

> **Instructor Note:** Because the physics engine is flexible, you *can* technically decide that 1 stud equals 1 full meter or 1 foot for your specific game. However, sticking to the standard **1 Stud = 0.28m** scale is highly recommended. Roblox's default gravity, lighting ranges, and VR camera scales are all mathematically hardcoded around this specific 0.28m baseline!

<div align="center">
  <table>
    <tr>
      <td align="center"><a href="5_NPCs.md">Previous</a></td>
      <td align="center"><a href="../README.md">Next</a></td>
    </tr>
  </table>
</div>