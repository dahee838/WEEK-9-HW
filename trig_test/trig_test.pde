int why[] = new int [900];
float x;
float angle;
float rate;
float amplitude;
float shade;


void setup()
{

  size(700, 700);

  noStroke();

  shade+= 50;
  angle = 0;
  rate = .09; 
  amplitude = map(sin(angle), -1, 1, 10, 700);
}


void draw()
{
  angle += rate/2;
  shade += rate * 3;
  x = width/2 + sin(angle) * amplitude;

   for (int i = 0; i < 800; i+=10)
  {
    why[i] = i* 10;
    fill(shade);
    rect(why[i], x, 20, 20);
    rect(x,why[i], 20,20);

}
}