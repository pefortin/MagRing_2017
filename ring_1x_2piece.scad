
difference()
{
    // Ring Base
    hull()
    {
        cylinder(h=ring_h/2, d1= ring_od, d2=ring_od, center=true); 
        translate([0,((ring_od/2)+(mag_d_out/2)),0])
        {
            cylinder(h=mag_h+2, d1=1.05*mag_d_out+2, d2=1.05*mag_d_out+2, center=true);
        }
        
        translate([0,-((ring_od/2)+(mag_d_out/2)),0])
        {
            cylinder(h=mag_h+2, d1=1.05*mag_d_out+2, d2=1.05*mag_d_out+2, center=true);
        }
    }
    
    // Magnet Holder
    translate([0,-((ring_od/2)+(mag_d_out/2)),-mag_h/2])
    {
        cylinder(h=mag_h+10, d1=1.05*mag_d_out, d2=1.05*mag_d_out);
    }
    
    // Reversed Magnet holder
    translate([0,((ring_od/2)+(mag_d_out/2)),-mag_h/2])
    {
        cylinder(h=mag_h+10, d1=1.05*mag_d_out, d2=1.05*mag_d_out);
    }
   
    
    // Inner ring
    cylinder(h=ring_h/2+1, d1= ring_id, d2=ring_id, center=true);
}

// Base ring dimensions
ring_id = 19;
ring_od = 21;
ring_h = 12;
$fn=100;

// Magnet Dimensions
mag_d_out = 10;
mag_h = 5;