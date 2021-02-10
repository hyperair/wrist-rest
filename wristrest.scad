include <MCAD/units/metric.scad>
use <MCAD/array/mirror.scad>

length = 360;
depth = 65;
thickness = 13;

bevel_angle = 45;
bevel_offset = 10;  // depth of left and right bevels

$fs = 0.4;
$fa = 1;

module wristrest_cross_section()
{
    rotate(90)
    intersection() {
        /* make a circle but take the +X -Y quadrant */
        resize([thickness * 2, depth * 2])
        circle(r = 10);

        mirror(Y)
        square([thickness + epsilon, depth + epsilon]);
    }
}

module wristrest()
{
    rotate(-90, Z)
    rotate(90, X)
    linear_extrude(height=length, center=true)
    wristrest_cross_section();
}

module wristrest_bevels()
{
    /* end bevels */
    mcad_mirror_duplicate(X)
    translate([-1, 0, 0] * bevel_offset)  /* bevel offset */
    translate([length / 2, 0, 0])
    rotate(-90, Z)
    rotate(bevel_angle, X)
    linear_extrude (height=100, center=true)
    difference() {
        translate([-10, epsilon])
        square([depth * 2, thickness * 2]);

        wristrest_cross_section();

        /* trim off the back area of the mask */
        mirror(X)
        square([20, thickness * 4]);
    }
}

difference() {
    wristrest();
    wristrest_bevels();
}
