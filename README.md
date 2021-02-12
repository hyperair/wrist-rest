## About

This is a parametric 3d-pritnable wrist rest that I designed in OpenSCAD for use with tall-ish mechanical keyboards, but it can be tweaked for any other purpose as well.

## Parameters

 - `length`: Length of the wrist rest
 - `depth`: Depth of the wrist rest
 - `thickness`: Thickness of the highest point of the wrist rest
 - `bevel_angle`: Angle of the bevel at the left and right ends of the wrist rest
 - `bevel_offset`: Fudge factor to align the bevel rigtht. Adjust this to change the depth of the bevel.

## Dependencies

 - [OpenSCAD dev branch](https://github.com/openscad/MCAD/tree/dev)

## Developing

 1. Make the dev branch of MCAD available to this repo. You can do this by cloning `MCAD` into the current directory like so:

    ```sh
    $ git clone -b dev https://github.com/openscad/MCAD
    ```

 2. Open `wristrest.scad` in OpenSCAD.

## Related Links

See [Thingiverse](https://www.thingiverse.com/thing:4758164) for screenshots and renderings.
