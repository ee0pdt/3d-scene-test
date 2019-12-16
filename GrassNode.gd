extends Spatial

var rotation_speed = rand_range(-10.0, 10.0)
var wobble = rand_range(10, 20.0)

# Called when the node enters the scene tree for the first time.
func _ready():
    pass # Replace with function body.

# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
    set_rotation(Vector3(sin(deg2rad(OS.get_ticks_msec()/wobble))/10, deg2rad(rad2deg(get_rotation().y) + delta * rotation_speed),0))
    translate(Vector3(0, sin(deg2rad(OS.get_ticks_msec()/wobble))/1000, 0))