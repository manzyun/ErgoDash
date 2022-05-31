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

/* Summary Sequent */
stem(5.5, 15);
keycap_shape();


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

module keycap_outside (bottom_size, top_size, height) {
    hull () {
        translate([0, 0, height])
        cube([top_size, top_size, 0.01], center = true);
        cube([bottom_size, bottom_size, 0.01], center = true);
    }
}
module keycap_shape () {
    difference(){
        keycap_outside(18, 14, 8);
        keycap_outside(16, 12, 6);
    }
}