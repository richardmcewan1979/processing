"""
Milliseconds. 

A millisecond is 1/1000 of a second. 
Processing keeps track of the number of milliseconds a program has run.
By modifying this number with the modulo(%) operator, 
different patterns in time are created.  


THIS BASIC IDEA IS NOT WORKING.

I want it to randomly color a bar in a color. 
"""


def setup():
    global scale
    fullScreen()
    noStroke()
    scale = width / 20


def draw():
    global s
    s = second()
    if s % 17 == 0:
        fill(random(100), random(100), random(100))
        rect(random(width), 0, scale, height)
    
    for i in range(0, scale, 1):
        colorMode(RGB, (i + 1) * scale * 10)
        fill(millis() % ((i + 1) * scale * 10))
        rect(i * scale, 0, scale, height)
    
        
        
