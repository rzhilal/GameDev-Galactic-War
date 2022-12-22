extends Node

var score = 0
var life = 3
var power = false
var level_spawn = 0.8
var highscore = 0

var spacheship1_isequipped = true
var spacheship2_isequipped = false
var spacheship3_isequipped = false

func reset():
	if(score > highscore):
		highscore = score
	score = 0
	life = 3
	power = false
	level_spawn = 0.8
