/*
 * OpenSCAD Workshop Examples
 * Copyright (c) 2013-2017 Anar Software LLC. < http://anars.com >
 *
 * This program is free software: you can redistribute it and/or modify it under
 * the terms of the GNU General Public License as published by the Free Software
 * Foundation, either version 3 of the License, or (at your option) any later
 * version.
 *
 * This program is distributed in the hope that it will be useful, but WITHOUT
 * ANY WARRANTY; without even the implied warranty of MERCHANTABILITY or FITNESS
 * FOR A PARTICULAR PURPOSE. See the GNU General Public License for more details.
 *
 * You should have received a copy of the GNU General Public License along with
 * this program. If not, see < http://www.gnu.org/licenses/ >
 *
 */

$fn=50;

%cube([10, 10, 10]);
rounded_cube([10, 10, 10], 2, true);

translate([12,0,0])
{
    %cube([10, 10, 10]);
    rounded_cube([10, 10, 10], 2, false);
}

module rounded_cube(size, radius, sidesonly)
{
    translate([radius, radius, sidesonly ? 0 : radius])
    minkowski()
    {
        cube(size=[size[0] - radius * 2, size[1] - radius * 2, size[2] - (sidesonly ? 1 : radius * 2)]);
        if (sidesonly)
            cylinder(r=radius);
        else
            sphere(r=radius);
    }
}