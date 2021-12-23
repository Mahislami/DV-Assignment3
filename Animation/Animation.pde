Table table;
int i = 0;
int[] colors = new int[6];
StringList country = new StringList();
StringList code = new StringList();
StringList continent = new StringList();
StringList flags = new StringList();
FloatList population = new FloatList();
FloatList life = new FloatList();
FloatList year = new FloatList();
FloatList X = new FloatList();
FloatList Y = new FloatList();
FloatList index = new FloatList();
int which = 0;


void setup(int i){

X = new FloatList();
Y = new FloatList();
index = new FloatList();
scale(0.95,0.95);
   background(#FFF8ED);
   translate(40,30);
colors[0] = #2f2ba6;
colors[1] = #2ba67d;
colors[2] = #a65e2b;
colors[3] = #a6352b;
colors[4] = #87a62b;
colors[5] = #a62b9c;

table = loadTable("Book1.csv", "header");
for (TableRow row : table.rows()) {
  country.append(row.getString("Entity"));
  code.append(row.getString("Code"));
  continent.append(row.getString("Continent"));
  population.append(row.getFloat("population"));
  life.append(row.getFloat("Life"));
  year.append(row.getFloat("Year"));
  flags.append(row.getString("flag"));  
}

 
size(1400,900);
  //stroke(200);
  strokeWeight(0.2);
  for(int u =0 ; u < 100; u++){
    strokeWeight(0.4);
    PImage img = loadImage(flags.get((51*u)));
    textSize(40);
    text("LIFE EXPECTANCY PER COUNTRY - " + (1970+i),width/2,20);
    if(900-life.get((51*u)+i)*10-7.5 < 600){
    image(img,u*14-7.5,(900-life.get((51*u)+i)*10)-7.5,15,15);
    //X.append(u*14);
    //Y.append((900-life.get((51*u)+i)*10));
    textSize(8);
    text(life.get((51*u)+i)*10,u*14-7.5,(900-life.get((51*u)+i)*10)-7.5);
    }
    //ellipse(u*14,900-life.get((50*u)+i)*10,10,10);

     if(u<=33){
       fill(colors[0]);
      stroke(colors[0]);
    }
        if(u>33 && u<=61){
          fill(colors[1]);
      stroke(colors[1]);
    }
        if(u>61 && u<=79){
          fill(colors[2]);
      stroke(colors[2]);
    }
        if(u>79 && u<=86){
          fill(colors[3]);
      stroke(colors[3]);
    }
        if(u>86 && u<=88){
          fill(colors[4]);
      stroke(colors[4]);
    }
        if(u>88 && u<=100){
          fill(colors[5]);
      stroke(colors[5]);
    }
    line(u*14,50,u*14,600);
    textSize(7);
    text(code.get((51*u)+i),(u*14)-6,35);
    ellipse((u*14),48,5,5);
    X.append((u*14));
    Y.append(48);
    index.append(u);
    strokeWeight(5);
    line(u*14,620,u*14+80,620);
    textSize(15);
    if(u==15){
      text("ASIA",14*15,615);
    }
    
   if(u==46){
      text("AFRICA",14*46,615);
    }
    
    
       if(u==69){
      text("EUROPE",14*69,615);
    }
    
       if(u==81){
      text("NORTH AMERICA",14*80,615);
    }
    
       if(u==85){
         fill(colors[4]);
      text("OCEANIA",14*86,640);
    }
    
           if(u==91){
      text("SOUTH AMERICA",14*91,615);
    }
  }




//noLoop();
}

void show(int m){
  which = 1;
  for(int u =0 ; u < i; u++){
    strokeWeight(0.4);
    PImage img = loadImage(flags.get(((51*m)+u)));
    image(img,u*30-7.5+40,(900-life.get((51*m)+u)*10)-7.5+30,15,15);
    text(life.get((51*m)+u), u*30-7.5+40, (900-life.get((51*m)+u)*10)-7.5+55);
    line(u*30+40,50+30,u*30+40,600+30);
    textSize(50);
    text(country.get((51*m)+u),width/2,50);
    textSize(10);
    text(1970+u,u*30+35,610+30);
   }
  
}

void draw() {
    for(int m = 0; m<X.size(); m++){
      if(mouseX > 0.95*(X.get(m)+40-5) && mouseX < 0.95*(X.get(m)+40+5) && mouseY > 0.95*(Y.get(m)+30-5) && mouseY < 0.95*(Y.get(m)+30+5)){
        ellipse(X.get(i)+40,Y.get(i)+30,15,15);
        background(#FFF8ED);
           show(m);
        //which=1;
        print(m);
        print('\n');
        print(X.size());
    }
    }
}

void mousePressed() {
 // if(which == 0){
  background(#FFF8ED);
  draw();
  setup(i);
  if(which ==0){
  i += 1;
  }
  else{which = 0;}
  if(i > 50){i = 0;}
 // }
}


   
