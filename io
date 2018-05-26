#include <FastLED.h> // includes the RGB lib we use to control the leds.
#define NUM_LEDS 80 // amount of leds being used 80 - 160 depending if we use one or two screens.
#define DATA_PIN 5 // The pin we use to send the RGB value to the diodes.
CRGB leds[NUM_LEDS];
bool x = true;
char Frame[1000] = { //Here is where we set all the diode data (pictures / animation)
'b','b','b','b','b','b','b','b', 
'b','b','b','b','b','b','b','b', 
'b','b','b','b','b','b','b','b', 
'b','b','b','b','b','b','b','b', 
'b','b','b','b','b','b','b','b', //one frame
'b','b','b','b','b','b','b','b', 
'b','b','b','b','b','b','b','b', 
'b','b','b','b','b','b','b','b', 
'b','b','b','b','b','b','b','b', 
'b','b','b','b','b','b','b','b', 
 
'b','b','b','b','b','b','b','b', 
'b','b','b','b','b','b','b','b', 
'b','b','b','b','b','b','b','b', 
'b','b','b','b','b','b','b','b', 
'b','b','b','r','r','b','b','b', 
'b','b','b','r','r','b','b','b', 
'b','b','b','b','b','b','b','b', 
'b','b','b','b','b','b','b','b', 
'b','b','b','b','b','b','b','b', 
'b','b','b','b','b','b','b','b', 
 
'b','b','b','b','b','b','b','b', 
'b','b','b','b','b','b','b','b', 
'b','b','b','b','b','b','b','b', 
'b','b','r','r','r','r','b','b', 
'b','b','r','r','r','r','b','b', 
'b','b','r','r','r','r','b','b', 
'b','b','r','r','r','r','b','b', 
'b','b','b','b','b','b','b','b', 
'b','b','b','b','b','b','b','b', 
'b','b','b','b','b','b','b','b', 
 
'b','b','b','b','b','b','b','b', 
'b','b','b','b','b','b','b','b', 
'b','r','r','r','r','r','r','b', 
'b','r','r','r','r','r','r','b', 
'b','r','r','r','r','r','r','b', 
'b','r','r','r','r','r','r','b', 
'b','r','r','r','r','r','r','b', 
'b','r','r','r','r','r','r','b', 
'b','b','b','b','b','b','b','b', 
'b','b','b','b','b','b','b','b', 
 
'b','b','b','b','b','b','b','b', 
'r','r','r','r','r','r','r','r',
'r','r','r','r','r','r','r','r', 
'r','r','r','r','r','r','r','r', 
'r','r','r','r','r','r','r','r', 
'r','r','r','r','r','r','r','r', 
'r','r','r','r','r','r','r','r', 
'r','r','r','r','r','r','r','r', 
'r','r','r','r','r','r','r','r', 
'b','b','b','b','b','b','b','b',
 
'r','r','r','r','r','r','r','r', 
'r','r','r','r','r','r','r','r', 
'r','r','r','r','r','r','r','r', 
'r','r','r','r','r','r','r','r', 
'r','r','r','r','r','r','r','r', 
'r','r','r','r','r','r','r','r', 
'r','r','r','r','r','r','r','r', 
'r','r','r','r','r','r','r','r', 
'r','r','r','r','r','r','r','r', 
'r','r','r','r','r','r','r','r',
};

int i = 720; // sets the starting point of the loop

void ledset( int p)
{
   if(Frame[p+i] == 'g'){leds[p] = 0x00AA00;}
   else if(Frame[p+i] == 'w'){leds[p] = 0xCCCCCC;}
   else if(Frame[p+i] == 'r'){leds[p] = 0x550000;}
   else if(Frame[p+i] == 'b'){leds[p] = 0x000055;}
   else if(Frame[p+i] == 'y'){leds[p] = 0xAAAAAA;}
   else if(Frame[p+i] == 'l'){leds[p] = 0xAA00AA;} 
   else if(Frame[p+i] == 'o'){leds[p] = 0xAA8800;}  
}




void setup() { 
FastLED.addLeds<PL9823, DATA_PIN>(leds, NUM_LEDS); 
FastLED.clear();
Serial.begin(9600); //  Serial communication for debugging purposes
} 

void loop() {
for(int t = 0; t < 8; t++){
//Picture update
ledset(0+t);
ledset(8+t);
ledset(16+t);
ledset(24+t);
ledset(32+t);
ledset(40+t);
ledset(48+t);
ledset(56+t);
ledset(64+t);
ledset(72+t);





}
  FastLED.show(); // shows the information given to the diodes
  delay(50); // 50 ms delay
  
  if(x == true){ //checks if it needs to go in or outwards 
i = i-80;
  }
  else{i = i+80;}
if(i == 0){x = false;}/* changes to state of x to match if it needs to go in or out*/
else if (i == 480){x = true;}




 
  

}
