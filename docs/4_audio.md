# Audio:

## Music and Audio Effects
* **Toolbox Audio:** Go to **View > Toolbox**, select the "Audio" dropdown, search for styles, and insert a track into the Workspace. Check **Playing** and **Looped** in Properties.
* **Custom Uploads:** Upload .mp3/.ogg via the Creator Dashboard. Unverified accounts get 10 free uploads per month. Copy the Asset ID and paste it into a Sound object's `SoundId` property.
* **Background Music:** Place the Sound object inside `SoundService` for global background playback.
* `LinearSquare` is the most realistic RollOff mode. Audio must originate from a Part, not a Model.
* Audio toggles can be scripted to trigger upon an event, such as a player hitting a specific object (e.g., a cat), though setting up audio to trigger via UI button clicks can be slightly more complex.

| Property | What it does |
| :--- | :--- |
| **Volume** | Adjusts how loud the music is (0 to 10). Usually, 0.5 is good for background. |
| **PlaybackSpeed** | Can make the music faster/higher-pitched or slower/lower-pitched. |
| **RollOffMaxDistance** | If the sound is inside a "Part" in the world, this dictates how far away players can hear it. |