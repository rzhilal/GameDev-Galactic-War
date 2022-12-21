extends Button

func _on_Beli2_pressed():
	Globals.spacheship1_isequipped = false
	Globals.spacheship2_isequipped = true
	Globals.spacheship3_isequipped = false


func _process(delta):
	if(Globals.spacheship2_isequipped):
		self.text = "Equipped"
	else:
		self.text = "Equip"
		
