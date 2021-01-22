void setup()
{
  size(300,300);
}

void draw()
{
  int R=6373; 
float lat1=38.898556;
float lat2=38.897147;
float lon1=-77.037852;
float lon2= -77.043934;
double k = radians(lat1);
double l = radians(lat2);
double m = radians(lat2-lat1);
double n = radians(lon2-lon1);

double a = Math.sin(m/2) * Math.sin(m/2) +
        Math.cos(k) * Math.cos(l) *
        Math.sin(n/2) * Math.sin(n/2);
double c = 2 * Math.atan2(Math.sqrt(a), Math.sqrt(1-a));

double d = R * c;
println(d);
exit();
}