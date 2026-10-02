extends CanvasLayer

var left_button: TouchScreenButton
var right_button: TouchScreenButton

func _ready() -> void:
	left_button = $LeftTouchScreenButton
	right_button = $RightTouchScreenButton
	_scale_buttons()


func _scale_buttons() -> void:
	var half_screen_rect: RectangleShape2D = RectangleShape2D.new()
	var current_viewport_rect_vector = get_viewport().get_visible_rect().size
	half_screen_rect.size.x = current_viewport_rect_vector.x / 2
	half_screen_rect.size.y = current_viewport_rect_vector.y
	
	left_button.shape = half_screen_rect
	left_button.position.x = half_screen_rect.size.x / 2
	left_button.position.y = half_screen_rect.size.y / 2
	
	right_button.shape = half_screen_rect
	right_button.position.x = half_screen_rect.size.x * 1.5
	right_button.position.y = half_screen_rect.size.y / 2


func _on_left_touch_screen_button_pressed() -> void:
	print("1")
