/* Reference Document;
 * https://qiita.com/zk_phi/items/ab99315ebaef66e84aa0
 */


$fs = 0.1;


module stem_jack (horizon_depth, vertical_depth, lenght, height) {
    translate([ -horizon_depth / 2, -lenght / 2, -1.0])
    cube([horizon_depth, lenght, height]);
    
    translate([ -lenght / 2, -vertical_depth / 2, -1.0])
    cube([lenght, vertical_depth, height]);
}

module stem (stem_du_radius, height) {
    difference () {
        cylinder(d = stem_du_radius, h = height);
        stem_jack(1.25, 1.10, 4.0, height*1.1);
    }
}


stem(5.5, 15);