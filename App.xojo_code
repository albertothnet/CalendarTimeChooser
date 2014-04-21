#tag Class
Protected Class App
Inherits Application
	#tag Event
		Sub Open()
		  app.UseGDIPlus=true
		  DemoLaunchWindow.Show
		  
		End Sub
	#tag EndEvent


	#tag Note, Name = QUICKSTART
		Date:             April 17, 2014
		Written by:   Mike Cotrone (mikec@intelligentvisibility.com)
		Version:        1.0
		
		How to Use this Project?
		
		1 - This project consists of several container controls, custom classes, and a window
		
		2 - Set ONE of following boolean variables on the CalendarView Window to control which container you would like to show:
		           a. BothPickers = True/False                      :: This will show the both Choosers (pickers)
		           b. CalendarPicker_Only = True/False       :: This will show the Calendar Chooser (picker) Only
		           c. TimePicker = True/False                        :: This will show the Time Chooser (picker) Only
		
		3 - How can I EASILY get the "Results" from the user "Choosing" a date and/or a time?
		          -  I have two custom Event Definitions that will present the "chosen data" to you
		
		          -  Time_Container1 -->SelectedTime         :: This Event will present to you the user's selected time as 'string' parts 
		                     ie. time String parts --> (hourString, MinString, AmPmString) this will allow you maximum control on your desired final format
		
		          -  Calendar_Container1 --> SelectedDate  :: This Event will present to you the user's selected date as a 'date'
		
		4. Supported Time Formats?
		          - 12 hour time support
		
		5. Remove the "StartWindow" as this is just part of this packaged Demo
	#tag EndNote


	#tag ViewBehavior
	#tag EndViewBehavior
End Class
#tag EndClass