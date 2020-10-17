float row;
float column;


void setup(){
size(1100,750);
row = 0;
column = 0;
background(50);
}


void draw(){

stroke(255);
fill(0,255,0);
if (row < width){
line(row,0, row,height);
row=row+15;
println("row= " + row);
}

if (column < height){
line(0,column, width, column);
column = column + 15;
print("column= " + column);
}

}
