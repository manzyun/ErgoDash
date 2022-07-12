/* Reference Document;
 * https://qiita.com/zk_phi/items/ab99315ebaef66e84aa0
 */

/* Code Summary
 * 1. Assemble stem
 * 2. Assemble keycap
 * 3. Generate Keycaps
 * 4. Assemble 1x2 Keycap(Like Ten Key's Enter)
 * 5. Generate 1x2 keycaps of 4
 */

$fs = 0.1;
$fa = 0.25; // for bigger circle depth.

/* Summary Sequent */
module one_keycap(is_dish_sphere, is_mark_index_line){
    intersection(){
        stem(5.5, 15);
        keycap_outside(18, 14, 8, 5, is_dish_sphere, 1, is_mark_index_line);
    }
    keycap_shape();
}

/* Generate Keycaps */
for(x = [0:6], y = [0:4])
    translate([19 * x, 18 * y, 0])
    if(y == 2){
        if (x == 4){
            one_keycap(true, true);
        } else {
            one_keycap(true, false);
        }
    } else {
        one_keycap(false, false);
    }


/* Details modules and function */
module stem (stem_du_radius, height) {
    module stem_jack (horizon_depth, vertical_depth, lenght, height) {
        translate([ -horizon_depth / 2, -lenght / 2, -1.0])
        cube([horizon_depth, lenght, height]);
        
        translate([ -lenght / 2, -vertical_depth / 2, -1.0])
        cube([lenght, vertical_depth, height]);
    }
    
    difference () {
        cylinder(d = stem_du_radius, h = height);
        stem_jack(1.25, 1.10, 4.0, height*1.1);
    }
}

module rounded_cube (size, r) {
    HEIGHT = 0.0001;
    
    minkowski(){
        cube([size[0] - r * 2, size[1] - r * 2, size[2] - HEIGHT], center = true);
        cylinder(r = r, h = HEIGHT);
    }
}

function dish_r(w, d) = (w * w + 4 * d * d) / (8 * d);


/* Keycap_outside
 * 
 * CAUTION VALIABLES
 * 
 * angle: top fill slope
 * is_dish_sphere: [false, undef] = cylindrical top, true = Spherical Top
 * ancher_marked: for index finger neutral position.
 * 
 */
module keycap_outside (bottom_size, top_size, height, angle, is_dish_sphere, dish_depth, ancher_marked) {
    difference(){
        hull () {
            translate([0, 0, height])
            rotate([- angle, 0, 0])
            rounded_cube([top_size, top_size, 0.01], 3);
            rounded_cube([bottom_size, bottom_size, 0.01], 2);
        }
        translate([0, 0, height])
        rotate([- angle, 0, 0])
        if(true){ // Sphere top.
            translate([0, 0, dish_r(top_size * sqrt(2), dish_depth) - dish_depth])
            rotate([90, 0, 0])
            sphere(dish_r(top_size * sqrt(2), dish_depth));
        } else { // Cylindrical top.
            translate([0, 0, dish_r(top_size, dish_depth) - dish_depth])
            rotate([90, 0, 0])
            cylinder(r = dish_r(top_size, dish_depth), h = 60, center = true);
        }
    }
}


module keycap_shape () {
    difference(){
        keycap_outside(18, 14, 8, 5);
        keycap_outside(16, 12, 6, 5); // difference shape
    }
}