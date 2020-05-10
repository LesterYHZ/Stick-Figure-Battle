extends KinematicBody2D


export var Player_Speed = 1.5
var Screen_Size = 0
var motion = Vector2.ZERO

func _ready():
	Screen_Size = get_viewport_rect().size
	
	
func _physics_process(delta):
	if Input.is_action_pressed("ui_right"):
		motion.x += Player_Speed
	if Input.is_action_pressed("ui_left"):
		motion.x -= Player_Speed
	if Input.is_action_pressed("ui_down"):
		motion.y += Player_Speed
	if Input.is_action_pressed("jump"):
		motion.y -= Player_Speed
#	else:
#		motion.x = 0
#		motion.y = 0
	move_and_slide(motion)	
	
	if Input.is_action_pressed("ui_up"):
		pass
	if Input.is_action_pressed("shoot_bullet"):
		pass
	
	if motion.x != 0:
	    $Sprite.flip_v = false
	    # See the note below about boolean assignment
	    $Sprite.flip_h = motion.x < 0
		
		