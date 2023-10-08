# Tiled

- This document contains use cases and useful tips for Tiled.

## Create New Map

- First create new project.

![Create Project](/docs/images/Create_project.png)

- Then add map to it.
- You can set the tile size if necessary (I set it wrong in this image).
- Additionally you can set the map size in tiles.

![Create Map](/docs/images/New_map.png)

## Import Tileset

- You can set the tile size and margins.

![Import Tileset](/docs/images/New_tileset.png)

## Paint With Tiles

- You can use the brush tool to select tile and paint the map with it.

![Paint With Tiles](/docs/images/Paint_with_tiles.png)

- Example.

![Paint With Tiles](/docs/images/Paint_with_tiles_2.png)

## Create Object

- We can create objects on top of the tiles to make them recognizable in the game engine.

![Create Object](/docs/images/Create_objects_1.png)

![Create Object](/docs/images/Create_objects_2.png)

- For example, we can give a gameobject a name to spawn a goblin on the spot.

![Create Object](/docs/images/Create_objects_3.png)

- In game.

![Create Object](/docs/images/Create_objects_4.png)

## Create Collision

- To create collisions we have to use the collision editor on tileset.

- Edit tileset. A new window will open.
![Create Collisions](/docs/images/Create_collisions_1.png)

- Select the tile you want to add collisions over.
- You can adjust precise values on the left.

![Create Collisions](/docs/images/Create_collisions_2.png)

- Move back to the map file to view the result (obviously this is not very smart as the collisions should be in the walls not in the floor).

![Create Collisions](/docs/images/Create_collisions_3.png)

## Create Animation

- We can also create animations.
- Navigate to the tileset editing page or click edit tileset again.
- Click the camera icon to open animation editor.
- Select the tiles in order to animate them and set the frame duration.
- Close and go back to the project page.
![Create Animations](/docs/images/Create_animations_1.png)

- Now we can select the tile and it animates when we paint with it (obviously you can't see it cuz it is an image lol).

![Create Animations](/docs/images/Create_animations_2.png)

## Create Overlays

//TODO

## Export Map (JSON)

- Click `CTRL + SHIFT + E` to export the map.
- Write '.json' as the extension as this is what Bonfire uses.

![Export Map JSON](/docs/images/Export_map_as_json.png)
