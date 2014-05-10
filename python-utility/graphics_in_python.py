import turtle

def draw_square():
	window = turtle.Screen()
	window.bgcolor("green")
	brad = turtle.Pen()
	for i in (1,5):
		brad.forward(100)
		brad.left(90)
	

	
	window.exitonclick()

draw_square()	
