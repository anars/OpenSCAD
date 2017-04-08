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
 //polygon(points=[[0,0],[100,0],[0,100],[10,10],[80,10],[10,80]], paths=[[0,1,2],[3,4,5]],convexity=10);
 
 roundedPolygon([[0,0],[100,0],[0,100],[10,10],[80,10],[10,80]], [[0,1,2],[3,4,5]], 10, 2);
 
module roundedPolygon(points, paths, height, radius)
{
linear_extrude(height=height, convexity=3)
hull()
for(pt = points)
{
translate([pt[0], pt[1], 0])
circle(r=radius);
}
}