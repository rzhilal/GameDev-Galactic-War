extends Button

func _ready():
	pass # Replace with function body.


func _on_Beli1_pressed():
	Globals.spacheship1_isequipped = true
	Globals.spacheship2_isequipped = false
	Globals.spacheship3_isequipped = false

func _process(delta):
	if(Globals.spacheship1_isequipped):
		self.text = "Equipped"
	else:
		self.text = "Equip"
		
		
		
