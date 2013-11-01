    x = 10;
module bolt(){
translate([0,0,x])cylinder(x,x*2,x*2);
cylinder(x,0,x*2);


}


module start_thing() {
translate([x/6,0,0]) circle(x);
}
module start_roundof() {
circle(x*5/6);
}

module thread() {
translate([0,0,x])linear_extrude(height = 2*x, center = true, convexity = 10, twist = -2000) start_thing();
}

module roundof() {
total_steps = 100;
my_height = 5;
slice_height = my_height/total_steps;
for (loop_value = [0:slice_height:my_height]) {
translate([0,0,-(x/2)-((loop_value/slice_height)*slice_height)]) 
scale([1-(loop_value/my_height),1-(loop_value/my_height),slice_height]) 
start_roundof();
}
}
//start_thing();
intersection(){
thread();
bolt();
}
//roundof(); 
