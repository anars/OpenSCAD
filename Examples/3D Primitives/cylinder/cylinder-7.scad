/*
 * OpenSCAD Workshop Examples
 * Copyright (c) 2013 Anar Software LLC. < http://anars.com >
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
/*

Creates a cone with bottom end radius is 5 unit radius, top end radius 3 unit and 8 unit height.

Parameters :

	cylinder(r1 = x, r2 = x, h = 3);

*/

$fs = 0;

cylinder(r1 = 5, r2 = 3, h = 8);