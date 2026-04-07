# Plugins

Plugins are custom add-ons created by the Roblox community that extend the functionality of Studio, helping developers automate repetitive tasks, build complex structures, and import external data.

## Working with Plugins

  * **Finding Plugins:** Navigate to the **View** tab, open the **Toolbox**, and select the **Plugins** category from the dropdown menu to browse the Creator Store.
  * **Installation:** Click on a desired plugin in the Toolbox and press **Install**. Once installed, it becomes accessible via the **Plugins** tab at the top of the Studio interface.
  * **Security:** Always verify the creator before installing. Because plugins contain scripts, malicious ones can insert harmful code into your game. Stick to highly rated tools from trusted community members.

## The WorldLoader Plugin
  * **Purpose:** A plugin that leverages OpenStreetMap (OSM) and real-world elevation data to automatically generate 1:1 terrain, buildings, roads, and railways directly into your workspace.
  * **Official Site:** [here](https://devforum.roblox.com/t/worldloader-plugin-documentation/3187419) you can find indepth documentation.
  * **Requirements:** You only need to install the plugin (available via the Creator Store or its official GitHub repository) and maintain an active internet connection to fetch map data.
  * **Defining the Area:** Create a new **Part** in your Workspace at position `0, 0, 0`. The size of this part acts as the bounding box determining how large of an area will be imported.
  * **Coordinates:** Find the real-world location using tools like Google Maps or OpenStreetMap and copy its exact Latitude and Longitude coordinates.
  * **Generation Process:** Paste the coordinates into the plugin, set your scale (default `1` equals 1:1 real-life scale), click **Download** to fetch the data, and then hit **Generate** to build the environment inside a "World" folder.

## Customizing WorldLoader Generation

  * **Generation Rules:** Built-in toggles allow you to choose between flat ground or Roblox terrain, replace duplicates on the fly, and map out parks or fields using colored wedges.
  * **Ro-Scale Compatibility:** An option specifically for railway developers that automatically generates realistic rails, ties, and ballasts with standard hitboxes based on real-world train lines.
  * **Default Height:** A fallback parameter that assigns a specific height to buildings that lack complete elevation data in the OSM database.
  * **EditableModules:** Advanced developers can modify the plugin's source `.rbxm` files to write custom Lua tables. This allows you to intercept specific OSM tags (like `highway=residential`) to dictate the exact Roblox materials, colors, and parts the plugin uses during generation.

<div align="center">
  <table>
    <tr>
      <td align="center"><a href="./6_units.md">Previous</a></td>
      <td align="center"><a href="../README.md">Next</a></td>
    </tr>
  </table>
</div>