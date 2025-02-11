//
// ktRACK50
//
 
gap1 = 0.001;
gap2 = 0.002;
th = 5;


RS = 65+2;


bar();





module bar()
{
difference()
{
    union()
    {
        translate([0, -25, 100-40+5]) cube([20, 50, 45]);
        //translate([0, -25, 100-35+5]) rotate([22, 0, 0]) cube([20, 15, 210]);
        
        translate([0, 0, 40]) rotate([25, 0, 0]) cube([20, 15, 245]);
    }
    
    #unit2();
    
    #translate([2, -94, 260]) rotate([0, 90, 0]) cylinder(r=7.5/2, h=30, $fn=100);
    }
}



module base()
{
X = 80;
Y = -50;
Z = -12;
difference()
{
    union()
    {
        translate([X, Y, Z]) cylinder(r=(RS+5)/2, h=30, $fn=100);
        translate([X-(RS+5)/2, Y, Z]) cube([RS+5, 70, 30]);
        translate([X-(RS+5)/2, Y+45, Z]) cube([RS+5, 5, 60]);
    }
    translate([X, Y, Z+30-5+gap1]) cylinder(r=RS/2, h=5, $fn=100);
    
    #unit();
}
}


module unit()
{
difference()
{
    union()
    {
        translate([0, 0, -100]) cube([300, 50, 200]);
        //translate([300/2, -105, 0]) resize(newsize=[300, 115, 30*2]) sphere(r=10, $fn=100);
        translate([300/2, -105-50, 0]) resize(newsize=[300, 115,  10*2]) rotate([-90, 0, 0]) cylinder(r=10/2, h=7, $fn=100);
        translate([300/2, -105, -100]) resize(newsize=[300, 115, 100]) cylinder(r=10/2, h=7, $fn=100);
    }
    
    difference()
    {
        translate([-50, -500, -100]) cube([500, 500, 200]);
        translate([300/2, -105, -250]) resize(newsize=[300, 115, 500]) cylinder(r=10/2, h=7, $fn=100);
    }
}
}


module unit2()
{
difference()
{
    union()
    {
        translate([0, 0, -100]) cube([300, 50, 200]);
        translate([0, -15.5+gap1, 100-25.5]) cube([300, 15.5, 25.5]);
    }
}
}
