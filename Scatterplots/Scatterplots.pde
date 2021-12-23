boolean overBox = false;
int[] colors = new int[18];
FloatList population2 = new FloatList();
FloatList regulatory_quality = new FloatList();
FloatList government_effectiveness = new FloatList();
FloatList judical_effectiveness = new FloatList();
StringList country_names = new StringList();
StringList flags = new StringList();
FloatList happy_planet_index = new FloatList();
StringList population_string = new StringList();
StringList happy_planet_index_string = new StringList();
StringList regulatory_quality_string = new StringList();
FloatList unemployment = new FloatList();

size(1000,1000);
textSize(15);
background(#FFF8ED);

translate(500, 600);
scale(0.8,0.8);

colors[0] = #2f2ba6;
colors[1] = #2ba67d;
colors[2] = #a65e2b;
colors[3] = #a6352b;
colors[4] = #87a62b;
colors[5] = #a62b9c;
colors[6] = #592d04;
colors[7] = #03524a;
colors[8] = #60966f;
colors[9] = #d4b039;
colors[10] = #590456;
colors[11] = #ffb700;
colors[12] = #99975d;
colors[13] = #ba021e;
colors[14] = #026dba;
colors[15] = #2ba673;
colors[16] = #2b94a6;
colors[17] = #e05702;


Table table;
table = loadTable("Book1.csv", "header");

for (TableRow row : table.rows()) {
  
   country_names.append(row.getString("indicator"));
   flags.append(row.getString("flags"));
   population2.append(row.getFloat("population2"));
   population_string.append(row.getString("population"));
   regulatory_quality.append(row.getFloat("regulatory quality"));
   unemployment.append(row.getFloat("unemployment"));
   judical_effectiveness.append(row.getFloat("judicial effectiveness score"));
   happy_planet_index.append(row.getFloat("happy planet index"));
   regulatory_quality_string.append(row.getString("regulatory quality"));
   government_effectiveness.append(row.getFloat("government effectiveness"));
}

//"Regulatory Quality vs Happiness Index"

for(int i =0; i <= 10 ; i++ ){
  fill(0);
  //population
  line(-(width/2)+(100*i), -500, -(width/2)+(100*i),0);
  if(i <=9){
  text(90-10*(i),-540,-(height/2)+(50*(i)));
  }
  
  //attribute
  line(-500, -(height/2)+(50*(i)), 500,-(height/2)+(50*(i)));
  text(0.1+0.2*(i),-(width/2)+(100*i)-30,30);
}

for (int i = 0; i < 18; i++){
  PImage img = loadImage(flags.get(i));
  image(img,
        500*regulatory_quality.get(i)-government_effectiveness.get(i)*2-550,
        1000- 6.8*happy_planet_index.get(i)-government_effectiveness.get(i)*2-980,
        government_effectiveness.get(i)*4,
        government_effectiveness.get(i)*4);

}
textSize(20);
text("Regulatory Quality vs Happiness Index",-150,-550);
text("Regulatory Quality",-100,80);
fill(#124355);



//------------------------------------------------------------------------------------------

//"Judical Effectiveness vs Happiness Index"
/*
for(int i =0; i <= 10 ; i++ ){
  fill(0);
  //population
  line(-(width/2)+(100*i), -500, -(width/2)+(100*i),0);
  if(i <=9){
  text(90-10*(i),-540,-(height/2)+(50*(i)));
  }
  
  //attribute
  line(-500, -(height/2)+(50*(i)), 500,-(height/2)+(50*(i)));
  text(56.6+3.72*(i),-(width/2)+(100*i)-30,30);
}

for (int i = 0; i < 18; i++){
  PImage img = loadImage(flags.get(i));
  image(img,
        26.4*judical_effectiveness.get(i)-government_effectiveness.get(i)*2-1990,
        1000- 6.8*happy_planet_index.get(i)-government_effectiveness.get(i)*2-980,
        government_effectiveness.get(i)*4,
        government_effectiveness.get(i)*4);

}
textSize(20);
text("Judical Effectiveness vs Happiness Index",-150,-550);
text("Judical Effectiveness",-100,80);
fill(#124355);


*/
//------------------------------------------------------------------------------------------

//"Unemployment vs Happiness Index"
/*
for(int i =0; i <= 10 ; i++ ){
  fill(0);
  //population
  line(-(width/2)+(100*i), -500, -(width/2)+(100*i),0);
  if(i <=9){
  text(90-10*(i),-540,-(height/2)+(50*(i)));
  }
  
  //attribute
  line(-500, -(height/2)+(50*(i)), 500,-(height/2)+(50*(i)));
  text(4.3+1.5*(i),-(width/2)+(100*i)-30,30);
}

for (int i = 0; i < 18; i++){
  PImage img = loadImage(flags.get(i));
  image(img,
        65*unemployment.get(i)-10-760,
        1000- 6.8*happy_planet_index.get(i)-10-980,
        20,
        20);
   fill(colors[i],40);
   noStroke();
   ellipse(65*unemployment.get(i)-760,
        1000- 6.8*happy_planet_index.get(i)-980,
        government_effectiveness.get(i)*4,
        government_effectiveness.get(i)*4);

}
fill(0);
textSize(20);
text("Unemployment vs Happiness Index",-150,-550);
text("Unemployment",-100,80);
fill(#124355);
*/
