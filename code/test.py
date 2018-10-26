import time 
import RPi.GPIO as GPIO         
GPIO.setmode(GPIO.BCM)  

ledPin = 18  
sek = 2        
GPIO.setup(ledPin, GPIO.OUT)


try:         		 
    while True:       
        GPIO.output(ledPin, False) 
        print("led aus")
        time.sleep(sek) 
        GPIO.output(ledPin, True)
        print("led ein")
        time.sleep(sek)                 
        
finally:  
    print("Cleaning up")
    GPIO.cleanup()
