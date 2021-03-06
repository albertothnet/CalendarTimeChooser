#tag Class
Protected Class TimePicker
Inherits Canvas
	#tag Event
		Function KeyDown(Key As String) As Boolean
		  if Key = Chr(9) Then // Tab Key Pressed
		    KeyBuffer = ""
		    if Draw_Hour_Selected = True Then
		      Draw_Hour_Selected = False
		      Draw_AMPM_Selected = False
		      Draw_Minute_Selected = True
		      me.Invalidate(False)
		    Elseif Draw_Minute_Selected = True Then
		      Draw_Minute_Selected = False
		      Draw_Hour_Selected = False
		      Draw_AMPM_Selected = True
		      me.Invalidate(False)
		    Elseif Draw_AMPM_Selected = True Then
		      Draw_Hour_Selected = True
		      Draw_Minute_Selected = False
		      Draw_AMPM_Selected = False
		      me.Invalidate(False)
		    end if
		  End if
		  
		  Select Case key
		  Case Chr(32) to Chr(47)
		    Return True
		    
		  Case Chr(48) to Chr(57) // User Enters Numbers
		    if Draw_AMPM_Selected = True then
		      // If the user is on the AM/PM Then Don't allow Number Entry
		      Return True
		    End if
		    // Need to only allow 2 digits
		    KeyBuffer = KeyBuffer + Key
		    
		    Dim KeyBufferLen as Integer = KeyBuffer.Len
		    if KeyBufferLen > 2 Then
		      Return True
		    end if
		    
		    mManualTimeEntry(KeyBuffer)
		    mFormatSingleDigits(KeyBuffer)
		    
		  Case Chr(58) to Chr(127)
		    Return True
		  End Select
		  
		  If Key = Chr(8) Then // Delete Key Pressed
		    mManualTimeEntry(Chr(8))
		  End if
		  
		  if Key = Chr(30)  Then  // Arrow Key Up Pressed
		    if Draw_AMPM_Selected = True then
		      mMoveAMPM
		    Elseif Draw_Hour_Selected = True Then
		      mMoveHourUp
		    Elseif Draw_Minute_Selected = True Then
		      mMoveMinUp
		    End if
		    
		  Elseif Key = Chr(31) Then // Arrow Key Down Pressed
		    if Draw_AMPM_Selected = True then
		      mMoveAMPM
		    Elseif Draw_Hour_Selected = True Then
		      mMoveHourDown
		    Elseif Draw_Minute_Selected = True Then
		      mMoveMinDown
		    End if
		  End if
		  
		  
		  Return True
		End Function
	#tag EndEvent

	#tag Event
		Function MouseDown(X As Integer, Y As Integer) As Boolean
		  // Set the tab ability within the Canvas simulated fields
		  Me.SetFocus()
		  KeyBuffer = ""
		  
		  if x >= Indent AND x <=Indent+Time_Container(window).Time_Hour_Len Then
		    Draw_Hour_Selected = True
		    Draw_Minute_Selected = False
		    Draw_AMPM_Selected = False
		    me.Invalidate(False)
		  End if
		  
		  if x >= Indent+Time_Container(window).Time_Hour_Len+Colon_Width AND x <= Indent+Time_Container(window).Time_Hour_Len+Colon_Width+Time_Container(window).Time_Minute_Len Then
		    Draw_Minute_Selected = True
		    Draw_Hour_Selected = False
		    Draw_AMPM_Selected = False
		    me.Invalidate(False)
		  End if
		  
		  if x >= Indent+Time_Container(window).Time_Hour_Len+Colon_Width+Time_Container(window).Time_Minute_Len+SpaceBetweenMinAndAMPM AND x <= Indent+Time_Container(window).Time_Hour_Len+Colon_Width+Time_Container(window).Time_Minute_Len+SpaceBetweenMinAndAMPM+Time_Container(window).Time_AMPM_Len Then
		    Draw_AMPM_Selected = True
		    Draw_Minute_Selected = False
		    Draw_Hour_Selected = False
		    me.Invalidate(False)
		  End if
		  
		  
		  
		End Function
	#tag EndEvent

	#tag Event
		Sub MouseMove(X As Integer, Y As Integer)
		  Tooltip.Hide
		  if x >= 0 AND x <= me.Width AND Y >= 0 AND y<=me.Height Then
		    
		    Me.MouseCursor = System.Cursors.FingerPointer
		    
		  end if
		  
		End Sub
	#tag EndEvent

	#tag Event
		Sub Paint(g As Graphics, areas() As REALbasic.Rect)
		  // Draw Shape of Control
		  g.ForeColor = RGB(255,255,255)
		  g.FillRoundRect (0,0,me.Width,me.Height,6,6)
		  Time_Container(window).Time_Hour_Len = Time_Container(window).Time_Hour.Len*9
		  Time_Container(window).Time_Minute_Len =Time_Container(window). Time_Minute.Len*9
		  Time_Container(window).Time_AMPM_Len = Time_Container(window).Time_AMPM.Len*11
		  
		  if Draw_Hour_Selected = True Then
		    Draw_Select_Hour(g, Time_Container(window).Time_Hour_Len)
		  end if
		  
		  if Draw_Minute_Selected = True Then
		    Draw_Select_Minute(g, Time_Container(window).Time_Minute_Len)
		  end if
		  
		  if Draw_AMPM_Selected = True Then
		    Draw_AMPM(g, Time_Container(window).Time_AMPM_Len)
		  End if
		  
		  g.Transparency = 0
		  g.ForeColor = RGB(0,0,0)
		  g.TextSize = 14
		  g.TextFont = "Helvetica"
		  g.DrawString(Time_Container(window).Time_Hour+":"+Time_Container(window).Time_Minute+" "+Time_Container(window).Time_AMPM,10,16)
		  g.PenWidth=1
		  g.PenHeight=1
		  g.Transparency = 50
		  g.DrawRoundRect(0,0,me.Width,me.Height,6,6)
		  
		  
		  
		End Sub
	#tag EndEvent


	#tag Method, Flags = &h0
		Sub AMPM_Flip()
		  if Time_Container(window).Time_AMPM = "AM" Then
		    Time_Container(window).Time_AMPM = "PM"
		  Elseif Time_Container(window).Time_AMPM = "PM" Then
		    Time_Container(window).Time_AMPM = "AM"
		  End if
		  
		  me.Invalidate(False)
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h21
		Private Sub Draw_AMPM(g as Graphics, inTimeAMPMLen as Integer)
		  g.Transparency = 40
		  g.ForeColor = &c99ccff
		  g.FillRect(Indent+Time_Container(window).Time_Hour_Len+Colon_Width+Time_Container(window).Time_Minute_Len+SpaceBetweenMinAndAMPM-1,1,inTimeAMPMLen+2,me.Height-2)
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h21
		Private Sub Draw_Select_Hour(g as Graphics, inTimeHourLen as Integer)
		  g.Transparency = 40
		  g.ForeColor = &c99ccff
		  g.FillRect(Indent,1,inTimeHourLen,me.Height-2)
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h21
		Private Sub Draw_Select_Minute(g as Graphics, inTimeMinuteLen as Integer)
		  g.Transparency = 40
		  g.ForeColor = &c99ccff
		  g.FillRect(Indent+Time_Container(window).Time_Hour_Len+Colon_Width,1,inTimeMinuteLen,me.Height-2)
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h21
		Private Function fAutoAdvanceHourHand_Backwards(inTime_Hour as Integer) As Integer
		  Dim TmpTimeHourInt as Integer
		  
		  Select Case inTime_Hour
		    
		  Case 1
		    TmpTimeHourInt = 12
		  Case 12
		    AMPM_Flip
		    TmpTimeHourInt = inTime_Hour - 1
		  Else
		    TmpTimeHourInt = inTime_Hour - 1
		  End select
		  
		  
		  Return TmpTimeHourInt
		End Function
	#tag EndMethod

	#tag Method, Flags = &h21
		Private Function fAutoAdvanceHourHand_Forward(inTime_Hour as Integer) As Integer
		  Dim TmpTimeHourInt as Integer
		  
		  Select Case inTime_Hour
		    
		  Case 12
		    TmpTimeHourInt = 1
		  Case 11
		    AMPM_Flip
		    TmpTimeHourInt = inTime_Hour +1
		  Else
		    TmpTimeHourInt = inTime_Hour +1
		  End select
		  
		  
		  Return TmpTimeHourInt
		End Function
	#tag EndMethod

	#tag Method, Flags = &h21
		Private Sub mFormatSingleDigits(inKeyValue as String)
		  if Draw_Hour_Selected = True Then
		    if inKeyValue = "01" or inKeyValue = "02" or inKeyValue = "03" or inKeyValue = "04" or inKeyValue = "05"or inKeyValue ="06" or inKeyValue ="07" or inKeyValue ="08" or inKeyValue ="09" Then
		      Time_Container(window).Time_Hour = inKeyValue
		    elseif CDbl(inKeyValue) >=1 AND CDbl(inKeyValue) <= 9 Then
		      Time_Container(window).Time_Hour = "0"+Time_Container(window).Time_Hour
		    Elseif inKeyValue = "0" Then
		      Time_Container(window).Time_Hour = "0"
		    Elseif inKeyValue = "00" Then
		      Time_Container(window).Time_Hour = "12"
		    end if
		    
		  Elseif Draw_Minute_Selected = True Then
		    if inKeyValue = "01" or inKeyValue = "02" or inKeyValue = "03" or inKeyValue = "04" or inKeyValue = "05"or inKeyValue ="06" or inKeyValue ="07" or inKeyValue ="08" or inKeyValue ="09" Then
		      Time_Container(window).Time_Minute = inKeyValue
		    Elseif CDbl(inKeyValue) >=1 AND CDbl(inKeyValue) <= 9 Then
		      Time_Container(window).Time_Minute = "0"+Time_Container(window).Time_Minute
		    Elseif inKeyValue = "0" Then
		      Time_Container(window).Time_Minute = "0"
		    Elseif inKeyValue = "00" Then
		      Time_Container(window).Time_Minute = "00"
		    end if
		    
		  End if
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0
		Sub mManualTimeEntry(inKeyBuffer as String)
		  // Figure out Which Field the User is in to change
		  
		  if Draw_Hour_Selected = True then
		    if CDbl(inKeyBuffer) >= 1 AND CDbl(inKeyBuffer) <= 12 Then
		      Time_Container(window).Time_Hour = inKeyBuffer
		    Elseif inKeyBuffer = "00" Then
		      Time_Container(window).Time_Hour = "00"
		      
		    elseif inKeyBuffer = Chr(8) Then
		      Time_Container(window).Time_Hour = " "
		      KeyBuffer = ""
		    Else
		      Return
		    End if
		    
		  Elseif Draw_Minute_Selected = True Then
		    if CDbl(inKeyBuffer) >= 1 AND CDbl(inKeyBuffer) <= 59 Then
		      Time_Container(window).Time_Minute = inKeyBuffer
		    Elseif inKeyBuffer = "00" Then
		      Time_Container(window).Time_Minute = "00"
		    elseif inKeyBuffer = Chr(8) Then
		      Time_Container(window).Time_Minute = " "
		      KeyBuffer = ""
		    Else
		      Return
		    End if
		    
		  End if
		  Time_Container(window).Clock1.Invalidate
		  Me.Invalidate(False)
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0
		Sub mMoveAMPM()
		  // Switch AM/PM
		  if Time_Container(window).Time_AMPM = "AM" Then
		    Time_Container(window).Time_AMPM = "PM"
		  Elseif Time_Container(window).Time_AMPM = "PM" Then
		    Time_Container(window).Time_AMPM = "AM"
		  End if
		  
		  Time_Container(window).TimePicker1.Invalidate(False)
		  Time_Container(window).Clock1.Invalidate(False)
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0
		Sub mMoveHourDown()
		  // Hour is Selected so lets Move it down
		  Dim TmpHour as Integer = CDbl(Time_Container(window).Time_Hour)
		  // If the hour rolls past the AM/PM bounds we'll flip it
		  if TmpHour = 12 then
		    AMPM_Flip
		  end if
		  TmpHour = TmpHour - 1
		  // Keep within the Time Constaints (12 HourTime)
		  if TmpHour = 0 Then
		    TmpHour = 12
		  End if
		  Time_Container(window).Time_Hour = Str(TmpHour)
		  Time_Container(window).TimePicker1.Invalidate(False)
		  
		  Time_Container(window).Clock1.ClockHourValue = Time_Container(window).Clock1.ClockHourValue - .522
		  Time_Container(window).Clock1.Invalidate(False)
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0
		Sub mMoveHourUp()
		  // Hour is Selected so lets Move it down
		  Dim TmpHour as Integer = CDbl(Time_Container(window).Time_Hour)
		  if TmpHour = 11 then
		    AMPM_Flip
		  end if
		  TmpHour = TmpHour +1
		  // Keep within the Time Constaints (12 HourTime)
		  if TmpHour = 13 Then
		    TmpHour = 1
		  End if
		  Time_Container(window).Time_Hour = Str(TmpHour)
		  Time_Container(window).TimePicker1.Invalidate(False)
		  
		  Time_Container(window).Clock1.ClockHourValue = Time_Container(window).Clock1.ClockHourValue + .522
		  Time_Container(window).Clock1.Invalidate(False)
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0
		Sub mMoveMinDown()
		  // Hour is Selected so lets Move it down
		  Dim TmpMin as Integer = CDbl(Time_Container(window).Time_Minute)
		  Dim TmpZeroPad as String
		  TmpMin = TmpMin - 1
		  if TmpMin = -1 Then
		    TmpMin = 59
		    'Dim NewHourHandValue as Integer = fAutoAdvanceHourHand_Backwards(CDbl(Time_Container(window).Time_Hour))
		    'Time_Container(window).Time_Hour = Str(NewHourHandValue)
		    TmpZeroPad = ""
		    mMoveHourDown
		  End if
		  if TmpMin <=59 AND TmpMin >=10 Then
		    TmpZeroPad = ""
		  Else
		    TmpZeroPad = "0"
		  End if
		  
		  // Keep within the Time Constaints (12 HourTime)
		  Time_Container(window).Time_Minute = TmpZeroPad+Str(TmpMin)
		  Time_Container(window).TimePicker1.Invalidate(False)
		  
		  Time_Container(window).Clock1.ClockMinuteValue =Time_Container(window).Clock1.ClockMinuteValue - .1046
		  Time_Container(window).Clock1.Invalidate(False)
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0
		Sub mMoveMinUp()
		  // Hour is Selected so lets Move it Up
		  Dim TmpMin as Integer = CDbl(Time_Container(window).Time_Minute)
		  Dim TmpZeroPad as String
		  TmpMin = TmpMin + 1
		  if TmpMin = 60 Then
		    TmpMin = 00
		    'Dim NewHourHandValue as Integer = fAutoAdvanceHourHand_Forward(CDbl(Time_Container(window).Time_Hour))
		    'Time_Container(window).Time_Hour = Str(NewHourHandValue)
		    TmpZeroPad = ""
		    mMoveHourUp
		  End if
		  if TmpMin <=59 AND TmpMin >=10 Then
		    TmpZeroPad = ""
		  Else
		    TmpZeroPad = "0"
		  End if
		  // Keep within the Time Constaints (12 HourTime)
		  Time_Container(window).Time_Minute = TmpZeroPad+Str(TmpMin)
		  Time_Container(window).TimePicker1.Invalidate(False)
		  
		  Time_Container(window).Clock1.ClockMinuteValue = Time_Container(window).Clock1.ClockMinuteValue + .1046
		  Time_Container(window).Clock1.Invalidate(False)
		End Sub
	#tag EndMethod


	#tag Property, Flags = &h21
		Private Colon_Width As Integer = 1
	#tag EndProperty

	#tag Property, Flags = &h0
		Draw_AMPM_Selected As Boolean = False
	#tag EndProperty

	#tag Property, Flags = &h0
		Draw_Hour_Selected As Boolean = False
	#tag EndProperty

	#tag Property, Flags = &h0
		Draw_Minute_Selected As Boolean = False
	#tag EndProperty

	#tag Property, Flags = &h0
		Indent As Integer = 9
	#tag EndProperty

	#tag Property, Flags = &h0
		KeyBuffer As String
	#tag EndProperty

	#tag Property, Flags = &h21
		Private SpaceBetweenMinAndAMPM As Integer = 2
	#tag EndProperty


	#tag ViewBehavior
		#tag ViewProperty
			Name="AcceptFocus"
			Visible=true
			Group="Behavior"
			Type="Boolean"
		#tag EndViewProperty
		#tag ViewProperty
			Name="AcceptTabs"
			Visible=true
			Group="Behavior"
			Type="Boolean"
		#tag EndViewProperty
		#tag ViewProperty
			Name="AutoDeactivate"
			Visible=true
			Group="Appearance"
			InitialValue="True"
			Type="Boolean"
		#tag EndViewProperty
		#tag ViewProperty
			Name="Backdrop"
			Visible=true
			Group="Appearance"
			Type="Picture"
			EditorType="Picture"
		#tag EndViewProperty
		#tag ViewProperty
			Name="DoubleBuffer"
			Visible=true
			Group="Behavior"
			InitialValue="False"
			Type="Boolean"
		#tag EndViewProperty
		#tag ViewProperty
			Name="Draw_AMPM_Selected"
			Group="Behavior"
			InitialValue="False"
			Type="Boolean"
		#tag EndViewProperty
		#tag ViewProperty
			Name="Draw_Hour_Selected"
			Group="Behavior"
			InitialValue="False"
			Type="Boolean"
		#tag EndViewProperty
		#tag ViewProperty
			Name="Draw_Minute_Selected"
			Group="Behavior"
			InitialValue="False"
			Type="Boolean"
		#tag EndViewProperty
		#tag ViewProperty
			Name="Enabled"
			Visible=true
			Group="Appearance"
			InitialValue="True"
			Type="Boolean"
		#tag EndViewProperty
		#tag ViewProperty
			Name="EraseBackground"
			Visible=true
			Group="Behavior"
			InitialValue="True"
			Type="Boolean"
		#tag EndViewProperty
		#tag ViewProperty
			Name="Height"
			Visible=true
			Group="Position"
			InitialValue="100"
			Type="Integer"
		#tag EndViewProperty
		#tag ViewProperty
			Name="HelpTag"
			Visible=true
			Group="Appearance"
			Type="String"
			EditorType="MultiLineEditor"
		#tag EndViewProperty
		#tag ViewProperty
			Name="Indent"
			Group="Behavior"
			InitialValue="9"
			Type="Integer"
		#tag EndViewProperty
		#tag ViewProperty
			Name="Index"
			Visible=true
			Group="ID"
			Type="Integer"
		#tag EndViewProperty
		#tag ViewProperty
			Name="InitialParent"
			Group="Position"
			Type="String"
		#tag EndViewProperty
		#tag ViewProperty
			Name="KeyBuffer"
			Group="Behavior"
			Type="String"
			EditorType="MultiLineEditor"
		#tag EndViewProperty
		#tag ViewProperty
			Name="Left"
			Visible=true
			Group="Position"
			Type="Integer"
		#tag EndViewProperty
		#tag ViewProperty
			Name="LockBottom"
			Visible=true
			Group="Position"
			Type="Boolean"
		#tag EndViewProperty
		#tag ViewProperty
			Name="LockLeft"
			Visible=true
			Group="Position"
			Type="Boolean"
		#tag EndViewProperty
		#tag ViewProperty
			Name="LockRight"
			Visible=true
			Group="Position"
			Type="Boolean"
		#tag EndViewProperty
		#tag ViewProperty
			Name="LockTop"
			Visible=true
			Group="Position"
			Type="Boolean"
		#tag EndViewProperty
		#tag ViewProperty
			Name="Name"
			Visible=true
			Group="ID"
			Type="String"
		#tag EndViewProperty
		#tag ViewProperty
			Name="Super"
			Visible=true
			Group="ID"
			Type="String"
		#tag EndViewProperty
		#tag ViewProperty
			Name="TabIndex"
			Visible=true
			Group="Position"
			InitialValue="0"
			Type="Integer"
		#tag EndViewProperty
		#tag ViewProperty
			Name="TabPanelIndex"
			Group="Position"
			InitialValue="0"
			Type="Integer"
		#tag EndViewProperty
		#tag ViewProperty
			Name="TabStop"
			Visible=true
			Group="Position"
			InitialValue="True"
			Type="Boolean"
		#tag EndViewProperty
		#tag ViewProperty
			Name="Top"
			Visible=true
			Group="Position"
			Type="Integer"
		#tag EndViewProperty
		#tag ViewProperty
			Name="Transparent"
			Visible=true
			Group="Behavior"
			InitialValue="True"
			Type="Boolean"
			EditorType="Boolean"
		#tag EndViewProperty
		#tag ViewProperty
			Name="UseFocusRing"
			Visible=true
			Group="Appearance"
			InitialValue="True"
			Type="Boolean"
		#tag EndViewProperty
		#tag ViewProperty
			Name="Visible"
			Visible=true
			Group="Appearance"
			InitialValue="True"
			Type="Boolean"
		#tag EndViewProperty
		#tag ViewProperty
			Name="Width"
			Visible=true
			Group="Position"
			InitialValue="100"
			Type="Integer"
		#tag EndViewProperty
	#tag EndViewBehavior
End Class
#tag EndClass
