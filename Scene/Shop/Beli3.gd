extends Button


# Declare member variables here. Examples:
# var a = 2
# var b = "text"


# Called when the node enters the scene tree for the first time.
func _on_Beli3_pressed():
	Globals.spacheship1_isequipped = false
	Globals.spacheship2_isequipped = false
	Globals.spacheship3_isequipped = true

func _process(delta):
	if(Globals.spacheship3_isequipped):
		self.text = "Equipped"
	else:
		self.text = "Equip"
