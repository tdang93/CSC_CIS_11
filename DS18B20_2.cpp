#include <iostream>
#include <fstream>
#include <string>
#include <cstdlib>
#include "wiringPi.h"
using namespace std;

const int RED_LED = 4; //wpi 4
const int BLUE_LED = 5; //wpi 5
const int GREEN_LED = 6; //wpi 6
const int PAUSE = 250; // pause set to 250 milliseconds or 0.25 seconds
const float SENSITIVITY = 0.01;

int main()
{
	ifstream in;
	string path="/sys/bus/w1/devices/";
	string serial_id="28-8000001ecbe1";
	string filename=path+serial_id+"/w1_slave";
	float old_t=85;

	wiringPiSetup();
	pinMode(RED_LED,OUTPUT);
	pinMode(BLUE_LED,OUTPUT);
	pinMode(GREEN_LED,OUTPUT);
	digitalWrite(RED_LED,LOW);
	digitalWrite(BLUE_LED,LOW);
	digitalWrite(GREEN_LED,LOW);

	while(true)
	{
		in.open(filename.c_str());
		if (in)
		{
			string line;
			getline(in,line);
			if ( line.find("YES",0) )
			{
				getline(in,line);
				int t = line.find("t=",0);
				float temp_c =atof(line.substr(t+2,5).c_str())/1000.0;
				digitalWrite(GREEN_LED,HIGH);
				digitalWrite(RED_LED,LOW);
				digitalWrite(BLUE_LED,LOW);
				delay(PAUSE);
				if ( temp_c != old_t )
				{
					cout << "t=" << temp_c*1.8+32 << endl;
					float delta = temp_c - old_t;

					if ( delta < SENSITIVITY )
					{
						digitalWrite(BLUE_LED,HIGH);
						digitalWrite(RED_LED,LOW);
						digitalWrite(GREEN_LED,LOW);
						delay(PAUSE);
					}
					else if ( delta > SENSITIVITY )
					{
						digitalWrite(RED_LED,HIGH);
						digitalWrite(BLUE_LED,LOW);
						digitalWrite(GREEN_LED,LOW);
						delay(PAUSE);
					}
					else
					{
						digitalWrite(RED_LED,LOW);
						digitalWrite(BLUE_LED,LOW);
						digitalWrite(GREEN_LED,HIGH);
						delay(PAUSE);
					}
					old_t = temp_c;
				}
			}
			else
			{
				cout << "Checksum failed, program terminating..." << endl;
				return 2;
			}
		}
		else
		{
			cout << "Could not open DS18B20 with serial_id " << serial_id << endl;
			return 1;
		}
		in.close();
	}
	return 0;
}
