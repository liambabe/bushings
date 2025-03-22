$fn=160;

height=15;
width=27;
inner_width=10;

difference()
{
    union()
    {
        //middle bits
        cylinder(h=height,d=width,center=true);
    }
    //intersection
    cylinder(h=height+1,d=inner_width,center=true);
 }