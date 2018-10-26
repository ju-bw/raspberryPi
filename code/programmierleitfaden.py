# Shell-Befehle

# ssh
# ip addr
# Linux => pi@raspi:
# ssh ip-adresse -l pi
# git clone https://github.com/simonmonk/make_action.git
# cd /home/pi/make_action
# git pull
# python test.py
# python3 test.py

# Programmierleitfaden

# Bibliothek RPi.GPIO
import RPi.GPIO as GPIO
GPIO.setmode(GPIO.BCM)# Pin-Benennung von Broadcom verwenden

# python3 hello.py
print("Hello, World")

# Variablen
a = 123.45
b = "message"
print(a, b)

# if, while
zahl = 10
if zahl > 10:
  print(zahl, " is big!")
else:
  print(zahl, " is small")

# Digitale Ausgänge
# GPIO-Pin 18 als digitalen Ausgang festlegen und auf high setzen
ledPin = 18
print(ledPin)
GPIO.setup(ledPin, GPIO.OUT)
GPIO.output(ledPin, True)

# Digitale Eingänge
buttonPin = 18
print(buttonPin)
GPIO.setup(buttonPin, GPIO.IN)
value = GPIO.input(buttonPin)
print(value)

# interner Pullup-Widerstand
switchPin = 18
print(switchPin)
GPIO.setup(switchPin, GPIO.IN, pull_up_down=GPIO.PUD_UP)

# Analoge Ausgänge