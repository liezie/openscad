// test comment vanuit openscad..

vijs_hoogte = 10;
vijs_dikte = 5;
punt_hoogte = 2;
kop_hoogte = 2; // test 2
kop_dikte = 7;
draad_dikte = 2;

module vijs_schacht(vijs_hoogte,vijs_dikte) {

	cylinder(vijs_hoogte,vijs_dikte,vijs_dikte);
	

}

module vijs_punt(punt_hoogte,vijs_dikte) {
	
	translate([0,0,-punt_hoogte]) cylinder(punt_hoogte,0,vijs_dikte);


}

module vijs_kop(kop_hoogte,kop_dikte) {
	translate([0,0,vijs_hoogte]) 
	cylinder(kop_hoogte,kop_dikte,kop_dikte);
	
}

module vijs_basis() {
vijs_kop(kop_hoogte,kop_dikte);
vijs_schacht(vijs_hoogte,vijs_dikte);
vijs_punt(punt_hoogte,vijs_dikte);
}

module vijs_draad() {
	
	linear_extrude(height = vijs_hoogte, center = false, convexity = 10, twist = -1000) translate([10/6,0,0]) circle(5);

}

difference() {
vijs_basis();
vijs_draad() ;
}

