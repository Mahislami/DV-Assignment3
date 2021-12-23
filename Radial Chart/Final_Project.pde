boolean overBox = false;
StringList country_names = new StringList();
StringList flags = new StringList();
StringList ISO_Country_code = new StringList();
FloatList population = new FloatList();
StringList population_string = new StringList();
FloatList population2 = new FloatList();
FloatList happy_planet_index = new FloatList();
StringList happy_planet_index_string = new StringList();
FloatList GDP_per_capita = new FloatList();
StringList GDP_per_capita_string = new StringList();
FloatList GDP_per_capita_2 = new FloatList();
FloatList unemployment = new FloatList();
IntList political_rights_score  = new IntList();
//IntList colors  = new IntList();
FloatList government_effectiveness = new FloatList();
StringList government_effectiveness_string = new StringList();
FloatList regulatory_quality = new FloatList();
StringList regulatory_quality_string = new StringList();
FloatList judicial_effectiveness_score = new FloatList();
FloatList government_integrity_score = new FloatList();
int[] colors = new int[18];


void setup() {
size(1000,1000);
textSize(20);
background(#FFF8ED);

translate(500, 400);
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
circle(0, 0, 10);

Table table;
table = loadTable("Book1.csv", "header");



for (TableRow row : table.rows()) {
   country_names.append(row.getString("indicator"));
   flags.append(row.getString("flags"));
   ISO_Country_code.append(row.getString("ISO Country code"));
   population.append(row.getFloat("population"));
   population_string.append(row.getString("population"));
   population2.append(row.getFloat("population2"));
   happy_planet_index.append(row.getFloat("happy planet index"));
   happy_planet_index_string.append(row.getString("happy planet index"));
   GDP_per_capita.append(row.getFloat("GDP per capita"));
   GDP_per_capita_string.append(row.getString("GDP per capita"));
   GDP_per_capita_2.append(row.getFloat("gdp2"));
   unemployment.append(row.getFloat("unemployment"));
   political_rights_score.append(row.getInt("political rights score"));
   //colors.append(row.getInt("color"));
   government_effectiveness.append(row.getInt("government effectiveness"));
   government_effectiveness_string.append(row.getString("government effectiveness"));
   regulatory_quality.append(row.getFloat("regulatory quality"));
   regulatory_quality_string.append(row.getString("regulatory quality"));
   judicial_effectiveness_score.append(row.getFloat("judicial effectiveness score"));
   government_integrity_score.append(row.getFloat("government integrity score"));
}



for (int j = 0 ; j < 18 ; j++){
  
  for (int x = -600; x < 600; x++){
    strokeWeight(0.2);
    //point(x,tan((PI/9)*j)*x);
  }
 
   PImage img = loadImage(flags.get(j));
   strokeWeight(10);
   fill(colors[j],30);
   //stroke(#69D0F7);
   // ellipse(cos((PI/9)*j)*200,sin((PI/9)*j)*200,10,10);
   stroke(colors[j]);
   line(cos((PI/9)*j)*302,sin((PI/9)*j)*302,cos((PI/9)*j)*happy_planet_index.get(j)*13,sin((PI/9)*j)*happy_planet_index.get(j)*13);
   strokeWeight(0.35);
   fill(colors[j],30);
   ellipse(GDP_per_capita_2.get(j)*300*cos((PI/9)*j), GDP_per_capita_2.get(j)*300*sin((PI/9)*j), population2.get(j)*5, population2.get(j)*5);
   line(0,0,cos((PI/9)*j)*302,sin((PI/9)*j)*302);
   image(img,GDP_per_capita_2.get(j)*300*cos((PI/9)*j)-7.5, GDP_per_capita_2.get(j)*300*sin((PI/9)*j)-7.5, 15, 15);
   
   //strokeWeight(0);
   strokeWeight(0);
   fill(#124355);
   //text(country_names.get(j),cos((PI/9)*j)*302,sin((PI/9)*j)*302);
   //text(happy_planet_index.get(j),cos((PI/9)*j)*happy_planet_index.get(j)*13,sin((PI/9)*j)*happy_planet_index.get(j)*13);
   
}
stroke(#124355);
noFill();
for (int i = 1 ; i < 11 ; i++){
    ellipse(0, 0,i*60,i*60);
    textSize(10);
    if(i > 4)
    text(10000+10000*(i-4),cos((-PI/3.5))*i*30,sin((-PI/3.5))*i*30);
}

textSize(20);
text("Country ",-550,-460);
fill(255);
ellipse(-575,-460,30,30);
fill(#124355);

text("Population ",-550,-420);
fill(#049359);
ellipse(-575,-420,5,5);
fill(#049359,75);
ellipse(-575,-420,30,30);

fill(#124355);
text("GDP ",-550,-380);
ellipse(-575,-380,15,15);

text("Happy Planet Index ",-550,-340);
fill(#124355);
strokeWeight(4);
line(-600,-340,-560,-340);

}



void draw() {
  

  if(overBox==false){
    fill(#FFF8ED);
    setup();
  }
    
    //ellipse(500 + GDP_per_capita_2.get(12)*240*cos((PI/9)*12), 400 + GDP_per_capita_2.get(12)*240*sin((PI/9)*12),15,15);
    if(mouseX > 500 + GDP_per_capita_2.get(0)*240*cos((PI/9)*0)-10 && mouseX < 500+ GDP_per_capita_2.get(0)*240*cos((PI/9)*0)+10){
      if(mouseY > 400+ GDP_per_capita_2.get(0)*240*sin((PI/9)*0)-10 && mouseY < 400+ GDP_per_capita_2.get(0)*240*sin((PI/9)*0)+10){
       overBox = true;
       fill(colors[0]);
       text(country_names.get(0),-470,-460);
       text(population_string.get(0),-445,-420);
       text(GDP_per_capita_string.get(0),-500,-380);
       text(happy_planet_index_string.get(0),-380,-340);
       PImage img = loadImage(flags.get(0));
       image(img,GDP_per_capita_2.get(0)*300*cos((PI/9)*0)-population2.get(0)*2.5, GDP_per_capita_2.get(0)*300*sin((PI/9)*0)-population2.get(0)*2.5, population2.get(0)*5, population2.get(0)*5);
       image(img,-590,-475,30,30);
       overBox = false;
       }
    }
    
    if(mouseX > 500 + GDP_per_capita_2.get(1)*240*cos((PI/9)*1)-10 && mouseX < 500+ GDP_per_capita_2.get(1)*240*cos((PI/9)*1)+10){
      if(mouseY > 400+ GDP_per_capita_2.get(1)*240*sin((PI/9)*1)-10 && mouseY < 400+ GDP_per_capita_2.get(1)*240*sin((PI/9)*1)+10){
       overBox = true;
       fill(colors[1]);
       text(country_names.get(1),-470,-460);
       text(population_string.get(1),-445,-420);
       text(GDP_per_capita_string.get(1),-500,-380);
       text(happy_planet_index_string.get(1),-380,-340);
       PImage img = loadImage(flags.get(1));
       image(img,GDP_per_capita_2.get(1)*300*cos((PI/9)*1)-population2.get(1)*2.5, GDP_per_capita_2.get(1)*300*sin((PI/9)*1)-population2.get(1)*2.5, population2.get(1)*5, population2.get(1)*5);
       image(img,-590,-475,30,30);
       overBox = false;
       }
    }
    
    if(mouseX > 500 + GDP_per_capita_2.get(2)*240*cos((PI/9)*2)-10 && mouseX < 500+ GDP_per_capita_2.get(2)*240*cos((PI/9)*2)+10){
      if(mouseY > 400+ GDP_per_capita_2.get(2)*240*sin((PI/9)*2)-10 && mouseY < 400+ GDP_per_capita_2.get(2)*240*sin((PI/9)*2)+10){
       overBox = true;
       fill(colors[2]);
       text(country_names.get(2),-470,-460);
       text(population_string.get(2),-445,-420);
       text(GDP_per_capita_string.get(2),-500,-380);
       text(happy_planet_index_string.get(2),-380,-340);
       PImage img = loadImage(flags.get(2));
       image(img,GDP_per_capita_2.get(2)*300*cos((PI/9)*2)-population2.get(2)*2.5, GDP_per_capita_2.get(2)*300*sin((PI/9)*2)-population2.get(2)*2.5, population2.get(2)*5, population2.get(2)*5);
       image(img,-590,-475,30,30);
       overBox = false;
       }
    }
    
    if(mouseX > 500 + GDP_per_capita_2.get(3)*240*cos((PI/9)*3)-10 && mouseX < 500+ GDP_per_capita_2.get(3)*240*cos((PI/9)*3)+10){
      if(mouseY > 400+ GDP_per_capita_2.get(3)*240*sin((PI/9)*3)-10 && mouseY < 400+ GDP_per_capita_2.get(3)*240*sin((PI/9)*3)+10){
       overBox = true;
       fill(colors[3]);
       text(country_names.get(3),-470,-460);
       text(population_string.get(3),-445,-420);
       text(GDP_per_capita_string.get(3),-500,-380);
       text(happy_planet_index_string.get(3),-380,-340);
       PImage img = loadImage(flags.get(3));
       image(img,GDP_per_capita_2.get(3)*300*cos((PI/9)*3)-population2.get(3)*2.5, GDP_per_capita_2.get(3)*300*sin((PI/9)*3)-population2.get(3)*2.5, population2.get(3)*5, population2.get(3)*5);
       image(img,-590,-475,30,30);
       overBox = false;
       }
    }
    
    if(mouseX > 500 + GDP_per_capita_2.get(4)*240*cos((PI/9)*4)-10 && mouseX < 500+ GDP_per_capita_2.get(4)*240*cos((PI/9)*4)+10){
      if(mouseY > 400+ GDP_per_capita_2.get(4)*240*sin((PI/9)*4)-10 && mouseY < 400+ GDP_per_capita_2.get(4)*240*sin((PI/9)*4)+10){
       overBox = true;
       fill(colors[4]);
       text(country_names.get(4),-470,-460);
       text(population_string.get(4),-445,-420);
       text(GDP_per_capita_string.get(4),-500,-380);
       text(happy_planet_index_string.get(4),-380,-340);
       PImage img = loadImage(flags.get(4));
       image(img,GDP_per_capita_2.get(4)*300*cos((PI/9)*4)-population2.get(4)*2.5, GDP_per_capita_2.get(4)*300*sin((PI/9)*4)-population2.get(4)*2.5, population2.get(4)*5, population2.get(4)*5);
       image(img,-590,-475,30,30);
       overBox = false;
       }
    }
    
    if(mouseX > 500 + GDP_per_capita_2.get(5)*240*cos((PI/9)*5)-10 && mouseX < 500+ GDP_per_capita_2.get(5)*240*cos((PI/9)*5)+10){
      if(mouseY > 400+ GDP_per_capita_2.get(5)*240*sin((PI/9)*5)-10 && mouseY < 400+ GDP_per_capita_2.get(5)*240*sin((PI/9)*5)+10){
       overBox = true;
       fill(colors[5]);
       text(country_names.get(5),-470,-460);
       text(population_string.get(5),-445,-420);
       text(GDP_per_capita_string.get(5),-500,-380);
       text(happy_planet_index_string.get(5),-380,-340);
       PImage img = loadImage(flags.get(5));
       image(img,GDP_per_capita_2.get(5)*300*cos((PI/9)*5)-population2.get(5)*2.5, GDP_per_capita_2.get(5)*300*sin((PI/9)*5)-population2.get(5)*2.5, population2.get(5)*5, population2.get(5)*5);
       image(img,-590,-475,30,30);
       overBox = false;
       }
    }
    
    if(mouseX > 500 + GDP_per_capita_2.get(6)*240*cos((PI/9)*6)-10 && mouseX < 500+ GDP_per_capita_2.get(6)*240*cos((PI/9)*6)+10){
      if(mouseY > 400+ GDP_per_capita_2.get(6)*240*sin((PI/9)*6)-10 && mouseY < 400+ GDP_per_capita_2.get(6)*240*sin((PI/9)*6)+10){
       overBox = true;
       fill(colors[6]);
       text(country_names.get(6),-470,-460);
       text(population_string.get(6),-445,-420);
       text(GDP_per_capita_string.get(6),-500,-380);
       text(happy_planet_index_string.get(6),-380,-340);
       PImage img = loadImage(flags.get(6));
       image(img,GDP_per_capita_2.get(6)*300*cos((PI/9)*6)-population2.get(6)*2.5, GDP_per_capita_2.get(6)*300*sin((PI/9)*6)-population2.get(6)*2.5, population2.get(6)*5, population2.get(6)*5);
       image(img,-590,-475,30,30);
       overBox = false;
       }
    }
    
    if(mouseX > 500 + GDP_per_capita_2.get(7)*240*cos((PI/9)*7)-10 && mouseX < 500+ GDP_per_capita_2.get(7)*240*cos((PI/9)*7)+10){
      if(mouseY > 400+ GDP_per_capita_2.get(7)*240*sin((PI/9)*7)-10 && mouseY < 400+ GDP_per_capita_2.get(7)*240*sin((PI/9)*7)+10){
       overBox = true;
       fill(colors[7]);
       text(country_names.get(7),-470,-460);
       text(population_string.get(7),-445,-420);
       text(GDP_per_capita_string.get(7),-500,-380);
       text(happy_planet_index_string.get(7),-380,-340);
       PImage img = loadImage(flags.get(7));
       image(img,GDP_per_capita_2.get(7)*300*cos((PI/9)*7)-population2.get(7)*2.5, GDP_per_capita_2.get(7)*300*sin((PI/9)*7)-population2.get(7)*2.5, population2.get(7)*5, population2.get(7)*5);
       image(img,-590,-475,30,30);
       overBox = false;
       }
    }
    
    if(mouseX > 500 + GDP_per_capita_2.get(8)*240*cos((PI/9)*8)-10 && mouseX < 500+ GDP_per_capita_2.get(8)*240*cos((PI/9)*8)+10){
      if(mouseY > 400+ GDP_per_capita_2.get(8)*240*sin((PI/9)*8)-10 && mouseY < 400+ GDP_per_capita_2.get(8)*240*sin((PI/9)*8)+10){
       overBox = true;
       fill(colors[8]);
       text(country_names.get(8),-470,-460);
       text(population_string.get(8),-445,-420);
       text(GDP_per_capita_string.get(8),-500,-380);
       text(happy_planet_index_string.get(8),-380,-340);
       PImage img = loadImage(flags.get(8));
       image(img,GDP_per_capita_2.get(8)*300*cos((PI/9)*8)-population2.get(8)*2.5, GDP_per_capita_2.get(8)*300*sin((PI/9)*8)-population2.get(8)*2.5, population2.get(8)*5, population2.get(8)*5);
       image(img,-590,-475,30,30);
       overBox = false;
       }
    }
    
    if(mouseX > 500 + GDP_per_capita_2.get(9)*240*cos((PI/9)*9)-10 && mouseX < 500+ GDP_per_capita_2.get(9)*240*cos((PI/9)*9)+10){
      if(mouseY > 400+ GDP_per_capita_2.get(9)*240*sin((PI/9)*9)-10 && mouseY < 400+ GDP_per_capita_2.get(9)*240*sin((PI/9)*9)+10){
       overBox = true;
       fill(colors[9]);
       text(country_names.get(9),-470,-460);
       text(population_string.get(9),-445,-420);
       text(GDP_per_capita_string.get(9),-500,-380);
       text(happy_planet_index_string.get(9),-380,-340);
       PImage img = loadImage(flags.get(9));
       image(img,GDP_per_capita_2.get(9)*300*cos((PI/9)*9)-population2.get(9)*2.5, GDP_per_capita_2.get(9)*300*sin((PI/9)*9)-population2.get(9)*2.5, population2.get(9)*5, population2.get(9)*5);
       image(img,-590,-475,30,30);
       overBox = false;
       }
    }
    
    if(mouseX > 500 + GDP_per_capita_2.get(10)*240*cos((PI/9)*10)-10 && mouseX < 500+ GDP_per_capita_2.get(10)*240*cos((PI/9)*10)+10){
      if(mouseY > 400+ GDP_per_capita_2.get(10)*240*sin((PI/9)*10)-10 && mouseY < 400+ GDP_per_capita_2.get(10)*240*sin((PI/9)*10)+10){
       overBox = true;
       fill(colors[10]);
       text(country_names.get(10),-470,-460);
       text(population_string.get(10),-445,-420);
       text(GDP_per_capita_string.get(10),-500,-380);
       text(happy_planet_index_string.get(10),-380,-340);
       PImage img = loadImage(flags.get(10));
       image(img,GDP_per_capita_2.get(10)*300*cos((PI/9)*10)-population2.get(10)*2.5, GDP_per_capita_2.get(10)*300*sin((PI/9)*10)-population2.get(10)*2.5, population2.get(10)*5, population2.get(10)*5);
       image(img,-590,-475,30,30);
       overBox = false;
       }
    }
    
    if(mouseX > 500 + GDP_per_capita_2.get(11)*240*cos((PI/9)*11)-10 && mouseX < 500+ GDP_per_capita_2.get(11)*240*cos((PI/9)*11)+10){
      if(mouseY > 400+ GDP_per_capita_2.get(11)*240*sin((PI/9)*11)-10 && mouseY < 400+ GDP_per_capita_2.get(11)*240*sin((PI/9)*11)+10){
       overBox = true;
       fill(colors[11]);
       text(country_names.get(11),-470,-460);
       text(population_string.get(11),-445,-420);
       text(GDP_per_capita_string.get(11),-500,-380);
       text(happy_planet_index_string.get(11),-380,-340);
       PImage img = loadImage(flags.get(11));
       image(img,GDP_per_capita_2.get(11)*300*cos((PI/9)*11)-population2.get(11)*2.5, GDP_per_capita_2.get(11)*300*sin((PI/9)*11)-population2.get(11)*2.5, population2.get(11)*5, population2.get(11)*5);
       image(img,-590,-475,30,30);
       overBox = false;
       }
    }
    
    if(mouseX > 500 + GDP_per_capita_2.get(12)*240*cos((PI/9)*12)-10 && mouseX < 500+ GDP_per_capita_2.get(12)*240*cos((PI/9)*12)+10){
      if(mouseY > 400+ GDP_per_capita_2.get(12)*240*sin((PI/9)*12)-10 && mouseY < 400+ GDP_per_capita_2.get(12)*240*sin((PI/9)*12)+10){
       overBox = true;
       fill(colors[12]);
       text(country_names.get(12),-470,-460);
       text(population_string.get(12),-445,-420);
       text(GDP_per_capita_string.get(12),-500,-380);
       text(happy_planet_index_string.get(12),-380,-340);
       PImage img = loadImage(flags.get(12));
       image(img,GDP_per_capita_2.get(12)*300*cos((PI/9)*12)-population2.get(12)*2.5, GDP_per_capita_2.get(12)*300*sin((PI/9)*12)-population2.get(12)*2.5, population2.get(12)*5, population2.get(12)*5);
       image(img,-590,-475,30,30);
       overBox = false;
       }
    }
    
    if(mouseX > 500 + GDP_per_capita_2.get(13)*240*cos((PI/9)*13)-10 && mouseX < 500+ GDP_per_capita_2.get(13)*240*cos((PI/9)*13)+10){
      if(mouseY > 400+ GDP_per_capita_2.get(13)*240*sin((PI/9)*13)-10 && mouseY < 400+ GDP_per_capita_2.get(13)*240*sin((PI/9)*13)+10){
       overBox = true;
       fill(colors[13]);
       text(country_names.get(13),-470,-460);
       text(population_string.get(13),-445,-420);
       text(GDP_per_capita_string.get(13),-500,-380);
       text(happy_planet_index_string.get(13),-380,-340);
       PImage img = loadImage(flags.get(13));
       image(img,GDP_per_capita_2.get(13)*300*cos((PI/9)*13)-population2.get(13)*2.5, GDP_per_capita_2.get(13)*300*sin((PI/9)*13)-population2.get(13)*2.5, population2.get(13)*5, population2.get(13)*5);
       image(img,-590,-475,30,30);
       overBox = false;
       }
    }
    
    if(mouseX > 500 + GDP_per_capita_2.get(14)*240*cos((PI/9)*14)-10 && mouseX < 500+ GDP_per_capita_2.get(14)*240*cos((PI/9)*14)+10){
      if(mouseY > 400+ GDP_per_capita_2.get(14)*240*sin((PI/9)*14)-10 && mouseY < 400+ GDP_per_capita_2.get(14)*240*sin((PI/9)*14)+10){
       overBox = true;
       fill(colors[14]);
       text(country_names.get(14),-470,-460);
       text(population_string.get(14),-445,-420);
       text(GDP_per_capita_string.get(14),-500,-380);
       text(happy_planet_index_string.get(14),-380,-340);
       PImage img = loadImage(flags.get(14));
       image(img,GDP_per_capita_2.get(14)*300*cos((PI/9)*14)-population2.get(14)*2.5, GDP_per_capita_2.get(14)*300*sin((PI/9)*14)-population2.get(14)*2.5, population2.get(14)*5, population2.get(14)*5);
       image(img,-590,-475,30,30);
       overBox = false;
       }
    }
    
       if(mouseX > 500 + GDP_per_capita_2.get(15)*240*cos((PI/9)*15)-10 && mouseX < 500+ GDP_per_capita_2.get(15)*240*cos((PI/9)*15)+10){
      if(mouseY > 400+ GDP_per_capita_2.get(15)*240*sin((PI/9)*15)-10 && mouseY < 400+ GDP_per_capita_2.get(15)*240*sin((PI/9)*15)+10){
       overBox = true;
       fill(colors[15]);
       text(country_names.get(15),-470,-460);
       text(population_string.get(15),-445,-420);
       text(GDP_per_capita_string.get(15),-500,-380);
       text(happy_planet_index_string.get(15),-380,-340);
       PImage img = loadImage(flags.get(15));
       image(img,GDP_per_capita_2.get(15)*300*cos((PI/9)*15)-population2.get(15)*2.5, GDP_per_capita_2.get(15)*300*sin((PI/9)*15)-population2.get(15)*2.5, population2.get(15)*5, population2.get(15)*5);
       image(img,-590,-475,30,30);
       overBox = false;
       }
    }
    
      if(mouseX > 500 + GDP_per_capita_2.get(16)*240*cos((PI/9)*16)-10 && mouseX < 500+ GDP_per_capita_2.get(16)*240*cos((PI/9)*16)+10){
      if(mouseY > 400+ GDP_per_capita_2.get(16)*240*sin((PI/9)*16)-10 && mouseY < 400+ GDP_per_capita_2.get(16)*240*sin((PI/9)*16)+10){
       overBox = true;
       fill(colors[16]);
       text(country_names.get(16),-470,-460);
       text(population_string.get(16),-445,-420);
       text(GDP_per_capita_string.get(16),-500,-380);
       text(happy_planet_index_string.get(16),-380,-340);
       PImage img = loadImage(flags.get(16));
       image(img,GDP_per_capita_2.get(16)*300*cos((PI/9)*16)-population2.get(16)*2.5, GDP_per_capita_2.get(16)*300*sin((PI/9)*16)-population2.get(16)*2.5, population2.get(16)*5, population2.get(16)*5);
       image(img,-590,-475,30,30);
       overBox = false;
       }
    }
    
    if(mouseX > 500 + GDP_per_capita_2.get(17)*240*cos((PI/9)*17)-10 && mouseX < 500+ GDP_per_capita_2.get(17)*240*cos((PI/9)*17)+10){
      if(mouseY > 400+ GDP_per_capita_2.get(17)*240*sin((PI/9)*17)-10 && mouseY < 400+ GDP_per_capita_2.get(17)*240*sin((PI/9)*17)+10){
       overBox = true;
       fill(colors[17]);
       text(country_names.get(17),-470,-460);
       text(population_string.get(17),-445,-420);
       text(GDP_per_capita_string.get(17),-500,-380);
       text(happy_planet_index_string.get(17),-380,-340);
       PImage img = loadImage(flags.get(17));
       image(img,GDP_per_capita_2.get(17)*300*cos((PI/9)*17)-population2.get(17)*2.5, GDP_per_capita_2.get(17)*300*sin((PI/9)*17)-population2.get(17)*2.5, population2.get(17)*5, population2.get(17)*5);
       image(img,-590,-475,30,30);
       overBox = false;
       }
    }
    
    


}
