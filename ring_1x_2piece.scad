// The physical dimensions are all in mm and located at the end of the file.

// Substract the Ring base (Outer diameter of the finger hole and magnet holders) and the actual inner hole and magnet sizes

    difference()
    {
        // Hull the ring base and the 2 magnet holders
        minkowski()
        {
            hull()
            {
                // Create cylinder with dimensions of the outer diameter of the ring
                cylinder(h=ring_h, d1= ring_od, d2=ring_od, center=true); 
                
                // Create two cylinders with outer dimensions of the magnets and move them to the sides
                translate([0,((ring_od/2)+(mag_d_out/2)),0])
                {
                    cylinder(h=ring_h, d1=1.05*mag_d_out+2, d2=1.05*mag_d_out+2, center=true);
                }
                
                translate([0,-((ring_od/2)+(mag_d_out/2)),0])
                {
                    cylinder(h=ring_h, d1=1.05*mag_d_out+2, d2=1.05*mag_d_out+2, center=true);
                }
            }
            sphere(r=1, center=true);
        }
        
        // Magnet Holder 1 top translated
        translate([0,-((ring_od/2)+(mag_d_out/2)),0.75])
        {
            cylinder(h=mag_h+2, d1=1.05*mag_d_out, d2=1.05*mag_d_out);
        }
        // Magnet Holder 1 bottom translated
        translate([0,-((ring_od/2)+(mag_d_out/2)), -(mag_h+2+0.75)])
        {
            cylinder(h=mag_h+2, d1=1.05*mag_d_out, d2=1.05*mag_d_out);
        }
        
        // Magnet Holder 2 top translated
        translate([0,((ring_od/2)+(mag_d_out/2)),0.75])
        {
            cylinder(h=mag_h+2, d1=1.05*mag_d_out, d2=1.05*mag_d_out);
        }
        // Magnet Holder 2 bottom translated
        translate([0,((ring_od/2)+(mag_d_out/2)), -(mag_h+2+0.75)])
        {
            cylinder(h=mag_h+2, d1=1.05*mag_d_out, d2=1.05*mag_d_out);
        }
       
        // Finger Hole
        cylinder(h=ring_h+20, d1= ring_id, d2=ring_id, center=true);
    }



// Base ring dimensions
// Inner diameter
ring_id = 20;
// Outer diameter
ring_od = 22;
// Ring height
ring_h = 12;

// Magnet Dimensions
// Magnet outer diameter
mag_d_out = 10;
// Magnet heigth
mag_h = 5;

// Number of sides on "round" things. (e.g., $fn=5 would make a pentagon instead of a circle)
$fn=100;
