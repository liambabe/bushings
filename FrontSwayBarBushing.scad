$fn=160;

bar_diameter=29.5;
bottom_height=5;
cylinder_radius=4.5;
length=30.6;
width=37.5;

bottom_offset=(bar_diameter/2)+bottom_height;


difference()
{
    union()
    {
        //middle bits
        cylinder(h=length,d=width,center=true);
        translate([bottom_offset/2,0,0])
        cube([bottom_offset,width,length],center=true);

        //side cylinders
        translate([0,(width/2)-2])
        rotate([0,90,0])
        linear_extrude(bottom_offset)
        circle(r=cylinder_radius+1);

        translate([0,-((width/2)-2)])
        rotate([0,90,0])
        linear_extrude(bottom_offset)
        circle(r=cylinder_radius+1);
        
        //top cylinder
        rotate_extrude()
        translate([(width/2)-2, 0, 0])
        circle(r=cylinder_radius+1);
    }
    //intersection
    cylinder(h=length+2,d=bar_diameter,center=true);
    translate([bottom_offset,-(width+cylinder_radius+cylinder_radius+1)/2,-((length+1)/2)])
    cube([cylinder_radius*2,width+cylinder_radius+cylinder_radius+1,length+1]);
 }