exception_unhandled_handler( function(exception) {
	show_message("Game crashed:\n\n" + exception.message + "\n\n" + exception.longMessage)
	show_debug_message("Game crashed:\n\n" + exception.message + "\n\n" + exception.longMessage)
	
});