// Ellie Mason | Feb 26, 2026 | Timeline
void setup() {
size(950,400);
}
void draw() {
background(#507DAD);
drawRef();
histEvent(150,200,"Dec 1998",true, "Conan Gray is Born in Lemon Grove, CA");
histEvent(250,300,"Jan 2013", false, "Posted his first YouTube video showing the world his original songs and covers");
histEvent(350,200,"Nov 2018", true, "Released EP Sunset Season" );
histEvent(445,300,"May 2019", false, "Concluded his tour for Sunset Season");
histEvent(550,200,"Mar 2020", true, "First Studio Album Kid Krow");
histEvent(650,300,"Jun 2022", false, "Second Album Superache");
histEvent(750,200,"Apr 2024", true, "Released third studio album Found Heaven");
histEvent(850,300,"Oct 2026", false,"Conclude his tour for Wishbone album this year" );
}
void drawRef() {
  textAlign(CENTER);
  textSize(39);
  fill(255);
text("Conan Gray: Timeline",width/2,65);
textSize(17);
text("By: Ellie Mason",width/2,95);
strokeWeight(3);
line(50,250,900,250); //timeline
line(50,245,50,255); //left tick
line(900,245,900,255); //right tick
line(450,245,450,255); //middle tick
line(250,245,250,255); //middle left tick
line(650,245,650,255); //middle right tick
strokeWeight(2);
textSize(15);
text("Nov 1998",50,280);
text("Nov 2026",900,280);
text("Jun 2019",450,240);
text("Feb 2013",250,240);
text("July 2022",650,240);
}
void histEvent(int x, int y, String title, boolean top,String detail) {
  if(top == true) {
  line(x,y,x-15,y+50);
  } else {
      line(x,y,x-15,y-50);
  }
  rectMode(CENTER);
  fill(#A03A3C);
rect(x,y,100,30,10);
fill(255);
text(title,x,y+5);
if(mouseX > x-50 && mouseX <x+50 && mouseY >y-15 && mouseY <y+15) {
text(detail,width/2,350);
}
}
