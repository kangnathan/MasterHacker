extends Panel

var time: float = 120.0  # Set the countdown time in seconds (e.g., 60 seconds for 1 minute)
var minutes: int = 0
var seconds: int = 0

func _ready() -> void:
	update_time_display()  # Initial update to display the starting time

func _process(delta: float) -> void:
	if time > 0:
		time -= delta  # Decrease time by the delta time
		update_time_display()  # Update the display
	else:
		time = 0  # Prevent negative time
		$Minutes.text = "00"  # Ensure minutes display as 00
		$Seconds.text = "00"  # Ensure seconds display as 00
		$ColonLabel.text = ":"  # Display the colon separately

func update_time_display() -> void:
	minutes = int(time) / 60  # Calculate minutes
	seconds = int(time) % 60   # Calculate seconds
	$Minutes.text = "%02d" % minutes  # Update the minutes Label
	$Seconds.text = "%02d" % seconds  # Update the seconds Label
	$ColonLabel.text = ":"  # Display the colon separately

func get_time_formatted() -> String:
	return "%02d:%02d" % [minutes, seconds]
