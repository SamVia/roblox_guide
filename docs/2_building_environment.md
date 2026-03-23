# Building & Environment

This guide covers constructing the game world, from blockouts to detailed terrain and lighting.

## General Building Mechanics
* **Greyboxing (Blockout):** Using simple shapes to layout an environment and test gameplay before importing high-quality meshes.
* Organize parts by grouping them into "Models" inside "Folders"; this allows you to move, transform, or anchor all grouped parts with a single click.
* Alternatively, you do not always need to group objects as a model; placing an object inside the folder of another ensures that when the parent is scaled or moved, the children move as well.
* To duplicate many objects, group them in a folder, duplicate the folder, and move all objects at once.
* Align multiple platforms on an axis by selecting them and using **Model > Align**.
* Use **Model > Union / Intersect** to combine geometry, or the **Negate** tool to subtract shapes. To color a Union, check the **UsePartColor** box in the Properties window.
* The **Select + F** shortcut zooms the camera onto a specific feature.
* To dock a window, drag its header towards an edge and drop it onto the directional indicator.

## Terrains & Textures
* **Terrain Generation:** Use the Terrain tool and increase the Y-axis Size above 5m to create well-developed biomes rather than flat rock. To fix unrendered volumes on large biomes, increase the Rendering Level in Studio Settings.
* Edit terrain thickness using handles; pressing **SHIFT** while transforming scales the element proportionally on all 3 axes.
* When copying and pasting elements (like terrain chunks), pasting automatically activates the transform tool so you can immediately move or resize the new element in place.
* To draw a sphere in terrain, select "plane lock auto". The **Fill tool** fills volumes with specific materials. Use draw/sculpt to create, and paint to color.
* **DEM Import:** Topographical studies from QGIS (white=mountain, black=plains) can be imported. 1 pixel = 4 voxels. X/Z dimensions must be multiples of the pixel size; Y acts as an altitude multiplier (200 is hilly, 1000 is mountainous). Colored JPGs can also be applied.
* **Textures vs. Decals:** Add a Texture to an object to repeat an image across it (adjust size using `StudsPerTileU` and `V`), while Decals stretch over the part.
* For performance, use 256x256 or 512x512 resolutions. Asset manager holds uploaded images; convert them to packages to synchronize between projects.

| Shortcut | Action |
| :--- | :--- |
| **Ctrl / ⌘** | Toggles alternate brush mode (e.g., subtract instead of add). |
| **Shift** | Temporarily activates the Smooth tool. |
| **B** | Adjusts the brush's base size. |
| **Ctrl + B / ⌘ + B** | Adjusts the brush's height (for box/cylinder shapes). |
| **Shift + B** | Adjusts brush strength (Sculpt, Smooth, Flatten tools). |
| **Alt / ⌥** | Shows the material picker. |

## Lighting and Materials
* Add a `SurfaceLight` into a `BasePart` and specify the Face, Angle, Range, Brightness, and Color.
* Transparent platforms use the Transparency property or Forcefield material.
* Reflective platforms use `Reflectance=1` and Smoothed Plastic.
* Neon materials emit light.
* Curved platforms create interesting effects when combined with detailed skyboxes (planets, clouds).

<div align="center">
  <table>
    <tr>
      <td align="center"><a href="1_game_design.md">Previous</a></td>
      <td align="center"><a href="3_collaboration.md">Next</a></td>
    </tr>
  </table>
</div>