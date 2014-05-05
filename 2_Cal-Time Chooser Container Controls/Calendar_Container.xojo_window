#tag Window
Begin ContainerControl Calendar_Container
   AcceptFocus     =   True
   AcceptTabs      =   True
   AutoDeactivate  =   True
   BackColor       =   &cFFFFFF00
   Backdrop        =   0
   Compatibility   =   ""
   Enabled         =   True
   EraseBackground =   False
   HasBackColor    =   False
   Height          =   252
   HelpTag         =   ""
   InitialParent   =   ""
   Left            =   0
   LockBottom      =   False
   LockLeft        =   False
   LockRight       =   False
   LockTop         =   False
   TabIndex        =   0
   TabPanelIndex   =   0
   TabStop         =   True
   Top             =   0
   Transparent     =   True
   UseFocusRing    =   False
   Visible         =   True
   Width           =   235
   Begin PopupMenu MonthPopup
      AutoDeactivate  =   True
      Bold            =   False
      DataField       =   ""
      DataSource      =   ""
      Enabled         =   True
      Height          =   16
      HelpTag         =   ""
      Index           =   -2147483648
      InitialParent   =   ""
      InitialValue    =   ""
      Italic          =   False
      Left            =   9
      ListIndex       =   0
      LockBottom      =   False
      LockedInPosition=   False
      LockLeft        =   False
      LockRight       =   False
      LockTop         =   False
      Scope           =   0
      TabIndex        =   0
      TabPanelIndex   =   0
      TabStop         =   True
      TextFont        =   "Helvetica"
      TextSize        =   13.0
      TextUnit        =   0
      Top             =   17
      Underline       =   False
      Visible         =   True
      Width           =   91
   End
   Begin PopupMenu YearPopup
      AutoDeactivate  =   True
      Bold            =   False
      DataField       =   ""
      DataSource      =   ""
      Enabled         =   True
      Height          =   16
      HelpTag         =   ""
      Index           =   -2147483648
      InitialParent   =   ""
      InitialValue    =   ""
      Italic          =   False
      Left            =   102
      ListIndex       =   0
      LockBottom      =   False
      LockedInPosition=   False
      LockLeft        =   False
      LockRight       =   False
      LockTop         =   False
      Scope           =   0
      TabIndex        =   1
      TabPanelIndex   =   0
      TabStop         =   True
      TextFont        =   "Helvetica"
      TextSize        =   13.0
      TextUnit        =   0
      Top             =   17
      Underline       =   False
      Visible         =   True
      Width           =   62
   End
   Begin PushButton PreviousMonthButton
      AutoDeactivate  =   True
      Bold            =   True
      ButtonStyle     =   "4"
      Cancel          =   False
      Caption         =   "<"
      Default         =   False
      Enabled         =   True
      Height          =   18
      HelpTag         =   ""
      Index           =   -2147483648
      InitialParent   =   ""
      Italic          =   False
      Left            =   93
      LockBottom      =   False
      LockedInPosition=   False
      LockLeft        =   False
      LockRight       =   False
      LockTop         =   False
      Scope           =   0
      TabIndex        =   2
      TabPanelIndex   =   0
      TabStop         =   False
      TextFont        =   "Helvetica"
      TextSize        =   12.0
      TextUnit        =   0
      Top             =   218
      Underline       =   False
      Visible         =   True
      Width           =   16
   End
   Begin PushButton CurrentMonthButton
      AutoDeactivate  =   True
      Bold            =   False
      ButtonStyle     =   "4"
      Cancel          =   False
      Caption         =   ""
      Default         =   False
      Enabled         =   True
      Height          =   18
      HelpTag         =   ""
      Index           =   -2147483648
      InitialParent   =   ""
      Italic          =   False
      Left            =   109
      LockBottom      =   False
      LockedInPosition=   False
      LockLeft        =   False
      LockRight       =   False
      LockTop         =   False
      Scope           =   0
      TabIndex        =   3
      TabPanelIndex   =   0
      TabStop         =   False
      TextFont        =   "Helvetica"
      TextSize        =   11.0
      TextUnit        =   0
      Top             =   218
      Underline       =   False
      Visible         =   True
      Width           =   18
   End
   Begin PushButton NextMonthButton
      AutoDeactivate  =   True
      Bold            =   True
      ButtonStyle     =   "4"
      Cancel          =   False
      Caption         =   ">"
      Default         =   False
      Enabled         =   True
      Height          =   18
      HelpTag         =   ""
      Index           =   -2147483648
      InitialParent   =   ""
      Italic          =   False
      Left            =   127
      LockBottom      =   False
      LockedInPosition=   False
      LockLeft        =   False
      LockRight       =   False
      LockTop         =   False
      Scope           =   0
      TabIndex        =   4
      TabPanelIndex   =   0
      TabStop         =   False
      TextFont        =   "Helvetica"
      TextSize        =   12.0
      TextUnit        =   0
      Top             =   218
      Underline       =   False
      Visible         =   True
      Width           =   16
   End
   Begin Calendar Calendar1
      AcceptFocus     =   False
      AcceptTabs      =   False
      AllowMultipleSelections=   False
      AutoDeactivate  =   True
      Backdrop        =   0
      CalMonFirstDayOfWeekBool=   False
      DoubleBuffer    =   False
      Enabled         =   True
      EndYear         =   0
      EraseBackground =   False
      FirstWeekDay    =   ""
      Height          =   169
      HelpTag         =   ""
      IncludePrevNextMonthDaysBool=   True
      Index           =   -2147483648
      InitialParent   =   ""
      Left            =   9
      Localized_April =   ""
      Localized_August=   ""
      Localized_December=   ""
      Localized_February=   ""
      Localized_Friday=   ""
      Localized_January=   ""
      Localized_July  =   ""
      Localized_June  =   ""
      Localized_March =   ""
      Localized_May   =   ""
      Localized_Monday=   ""
      Localized_November=   ""
      Localized_October=   ""
      Localized_Saturday=   ""
      Localized_September=   ""
      Localized_Sunday=   ""
      Localized_Thursday=   ""
      Localized_Tuesday=   ""
      Localized_Wednesday=   ""
      LockBottom      =   False
      LockedInPosition=   False
      LockLeft        =   True
      LockRight       =   False
      LockTop         =   True
      MonthNumber     =   0
      NextMonth       =   ""
      NextYear        =   0
      PreviousMonth   =   ""
      PrevYear        =   0
      Scope           =   0
      SelectedMonth   =   ""
      SelectedX       =   0
      SelectedY       =   0
      SelectedYear    =   ""
      StartYear       =   0
      TabIndex        =   52
      TabPanelIndex   =   0
      TabStop         =   True
      TodaysDate_NotSelected=   &c0000FF00
      TodaysDate_Selected=   &cFFFF0000
      Top             =   43
      Transparent     =   False
      UseFocusRing    =   True
      Visible         =   True
      Width           =   215
      YearNumber      =   0
      Begin Separator Separator1
         AutoDeactivate  =   True
         Enabled         =   True
         Height          =   1
         HelpTag         =   ""
         Index           =   -2147483648
         InitialParent   =   "Calendar1"
         Left            =   13
         LockBottom      =   False
         LockedInPosition=   False
         LockLeft        =   True
         LockRight       =   False
         LockTop         =   True
         Scope           =   0
         TabIndex        =   0
         TabPanelIndex   =   0
         TabStop         =   True
         Top             =   66
         Visible         =   True
         Width           =   205
      End
   End
   Begin PushButton NextYearButton
      AutoDeactivate  =   True
      Bold            =   True
      ButtonStyle     =   "4"
      Cancel          =   False
      Caption         =   ">>"
      Default         =   False
      Enabled         =   True
      Height          =   18
      HelpTag         =   ""
      Index           =   -2147483648
      InitialParent   =   ""
      Italic          =   False
      Left            =   143
      LockBottom      =   False
      LockedInPosition=   False
      LockLeft        =   False
      LockRight       =   False
      LockTop         =   False
      Scope           =   0
      TabIndex        =   53
      TabPanelIndex   =   0
      TabStop         =   False
      TextFont        =   "Helvetica"
      TextSize        =   12.0
      TextUnit        =   0
      Top             =   218
      Underline       =   False
      Visible         =   True
      Width           =   20
   End
   Begin PushButton PrevYearButton
      AutoDeactivate  =   True
      Bold            =   True
      ButtonStyle     =   "4"
      Cancel          =   False
      Caption         =   "<<"
      Default         =   False
      Enabled         =   True
      Height          =   18
      HelpTag         =   ""
      Index           =   -2147483648
      InitialParent   =   ""
      Italic          =   False
      Left            =   73
      LockBottom      =   False
      LockedInPosition=   False
      LockLeft        =   False
      LockRight       =   False
      LockTop         =   False
      Scope           =   0
      TabIndex        =   54
      TabPanelIndex   =   0
      TabStop         =   False
      TextFont        =   "Helvetica"
      TextSize        =   12.0
      TextUnit        =   0
      Top             =   218
      Underline       =   False
      Visible         =   True
      Width           =   20
   End
   Begin Label RecurrenceLabel
      AutoDeactivate  =   True
      Bold            =   False
      DataField       =   ""
      DataSource      =   ""
      Enabled         =   True
      Height          =   20
      HelpTag         =   ""
      Index           =   -2147483648
      InitialParent   =   ""
      Italic          =   False
      Left            =   -46
      LockBottom      =   False
      LockedInPosition=   False
      LockLeft        =   True
      LockRight       =   False
      LockTop         =   True
      Multiline       =   False
      Scope           =   0
      Selectable      =   False
      TabIndex        =   57
      TabPanelIndex   =   0
      Text            =   "Recurrence"
      TextAlign       =   0
      TextColor       =   &c00000000
      TextFont        =   "System"
      TextSize        =   1.0
      TextUnit        =   0
      Top             =   -113
      Transparent     =   False
      Underline       =   False
      Visible         =   True
      Width           =   100
   End
   Begin RecurringCanvas RecurringCanvas1
      AcceptFocus     =   False
      AcceptTabs      =   False
      AutoDeactivate  =   True
      Backdrop        =   0
      DoubleBuffer    =   False
      Enabled         =   True
      EraseBackground =   True
      Height          =   20
      HelpTag         =   ""
      Index           =   -2147483648
      InitialParent   =   ""
      Left            =   204
      LockBottom      =   False
      LockedInPosition=   False
      LockLeft        =   True
      LockRight       =   False
      LockTop         =   True
      Scope           =   0
      TabIndex        =   58
      TabPanelIndex   =   0
      TabStop         =   True
      Top             =   14
      Transparent     =   True
      UseFocusRing    =   True
      Visible         =   True
      Width           =   20
   End
End
#tag EndWindow

#tag WindowCode
	#tag Event
		Function MouseDown(X As Integer, Y As Integer) As Boolean
		  
		End Function
	#tag EndEvent


	#tag Method, Flags = &h21
		Private Sub mNextMonth()
		  // Need a Check to See about Incrementing Year or not
		  Calendar1.mDeselectAll
		  if Calendar1.NextMonth = Calendar1.Localized_January then
		    // Need to increment Year
		    Calendar1.NextYear = CDbl(YearPopup.Text)+1
		    for i as integer = 0 to YearPopup.ListCount-1
		      if Str(Calendar1.NextYear) = YearPopup.List(i) Then
		        YearPopup.ListIndex = i
		        exit
		      End if
		    next i
		  End if
		  
		  for i as integer = 0 to MonthPopup.ListCount-1
		    if Calendar1.NextMonth = MonthPopup.List(i) Then
		      MonthPopup.ListIndex = i
		      exit
		    End if
		  next i
		  
		  
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h21
		Private Sub mNextYear()
		  Calendar1.mDeselectAll
		  
		  Calendar1.NextYear = CDbl(YearPopup.Text)+1
		  for i as integer = 0 to YearPopup.ListCount-1
		    if Str(Calendar1.NextYear) = YearPopup.List(i) Then
		      YearPopup.ListIndex = i
		      exit
		    End if
		  next i
		  
		  
		  
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h21
		Private Sub mPrevMonth()
		  // Need a Check to See about Decrementing Year or not
		  Calendar1.mDeselectAll
		  if Calendar1.PreviousMonth = Calendar1.Localized_December then
		    // Need to increment Year
		    Calendar1.PrevYear = CDbl(YearPopup.Text)-1
		    for i as integer = 0 to YearPopup.ListCount-1
		      if Str(Calendar1.PrevYear) = YearPopup.List(i) Then
		        YearPopup.ListIndex = i
		        exit
		      End if
		    next i
		  End if
		  
		  for i as integer = 0 to MonthPopup.ListCount-1
		    if Calendar1.PreviousMonth = MonthPopup.List(i) Then
		      MonthPopup.ListIndex = i
		      exit
		    End if
		  next i
		  
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h21
		Private Sub mPrevYear()
		  Calendar1.mDeselectAll
		  
		  Calendar1.NextYear = CDbl(YearPopup.Text)-1
		  for i as integer = 0 to YearPopup.ListCount-1
		    if Str(Calendar1.NextYear) = YearPopup.List(i) Then
		      YearPopup.ListIndex = i
		      exit
		    End if
		  next i
		  
		  
		  
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0
		Sub mRaiseEvent(inSelectedDate as Date)
		  RaiseEvent SelectedDate(inSelectedDate)
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0
		Sub mRaiseEvent_Recurring(inSelectedMenuItem as String)
		  RaiseEvent Recurring_Selection(inSelectedMenuItem)
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0
		Sub mTakeMeToTodaysDate()
		  // Bring Us Back to Today's Month
		  Dim CurrentDateMonthString as String = Calendar1.fConvertMonthIntToMonthString(Calendar1.CurrentDate.Month)
		  for i as integer = 0 to MonthPopup.ListCount-1
		    if CurrentDateMonthString = MonthPopup.List(i) Then
		      MonthPopup.ListIndex = i
		    End if
		  next i
		  
		  // Bring Us Back to Today's Year
		  Dim CurrentDateYearString as String = Str(Calendar1.CurrentDate.Year)
		  for i as integer = 0 to YearPopup.ListCount - 1
		    if CurrentDateYearString = YearPopup.List(i) Then
		      YearPopup.ListIndex = i
		    End if
		  next i
		  
		  //Select Todays Date
		  Calendar1.mDeselectAll
		  for i as integer = 7 to UBound(Calendar1.CalendarButtonClassArray) // Only begin at 7 Since 0-6 Are reserved for Day Of Week Titles
		    if Calendar1.CalendarButtonClassArray(i).MyDate.Month = Calendar1.CurrentDate.Month AND   Calendar1.CalendarButtonClassArray(i).MyDate.Day = Calendar1.CurrentDate.Day Then
		      Calendar1.CalendarButtonClassArray(i).Selected = True
		      Calendar1.SelectedDate = Calendar1.CalendarButtonClassArray(i).MyDate
		      Calendar1.Invalidate(False)
		    End if
		    
		    
		  next i
		End Sub
	#tag EndMethod


	#tag Hook, Flags = &h0
		Event Recurring_Selection(inSelectedMenuItem as String)
	#tag EndHook

	#tag Hook, Flags = &h0
		Event SelectedDate(inSelectedDate as Date)
	#tag EndHook


#tag EndWindowCode

#tag Events MonthPopup
	#tag Event
		Sub Change()
		  Calendar1.SelectedMonth = Me.Text
		  Calendar1.mCalculateMonth(Me.Text)
		  Calendar1.UPDATE_MonthDays
		  Calendar1.UPDATE_MapDaysToCalSlots
		  Calendar1.mDeselectAll
		  
		End Sub
	#tag EndEvent
	#tag Event
		Sub Open()
		  
		End Sub
	#tag EndEvent
#tag EndEvents
#tag Events YearPopup
	#tag Event
		Sub Change()
		  Calendar1.SelectedYear = Me.Text
		  Calendar1.mCalculateYear(Me.Text)
		  Calendar1.UPDATE_MonthDays
		  Calendar1.UPDATE_MapDaysToCalSlots
		  Calendar1.mDeselectAll
		  
		End Sub
	#tag EndEvent
	#tag Event
		Sub Open()
		  // Default to today's Year only on open
		  Dim TodaysYear as New Date
		  
		  for i as integer = 0 to Me.ListCount-1
		    if Str(TodaysYear.Year) = Me.List(i) Then
		      Me.ListIndex = i
		    End if
		  next i
		End Sub
	#tag EndEvent
#tag EndEvents
#tag Events PreviousMonthButton
	#tag Event
		Sub Action()
		  mPrevMonth
		End Sub
	#tag EndEvent
#tag EndEvents
#tag Events CurrentMonthButton
	#tag Event
		Sub Action()
		  mTakeMeToTodaysDate
		  
		  
		End Sub
	#tag EndEvent
	#tag Event
		Function MouseDown(X As Integer, Y As Integer) As Boolean
		  
		End Function
	#tag EndEvent
	#tag Event
		Sub Open()
		  Me.TextSize = 30
		  Me.Caption = Chr(8226)
		End Sub
	#tag EndEvent
#tag EndEvents
#tag Events NextMonthButton
	#tag Event
		Sub Action()
		  mNextMonth
		End Sub
	#tag EndEvent
	#tag Event
		Function MouseDown(X As Integer, Y As Integer) As Boolean
		  Me.SetFocus
		End Function
	#tag EndEvent
#tag EndEvents
#tag Events NextYearButton
	#tag Event
		Sub Action()
		  mNextYear
		End Sub
	#tag EndEvent
	#tag Event
		Function MouseDown(X As Integer, Y As Integer) As Boolean
		  Me.SetFocus
		End Function
	#tag EndEvent
#tag EndEvents
#tag Events PrevYearButton
	#tag Event
		Sub Action()
		  mPrevYear
		End Sub
	#tag EndEvent
	#tag Event
		Function MouseDown(X As Integer, Y As Integer) As Boolean
		  Me.SetFocus
		End Function
	#tag EndEvent
#tag EndEvents
#tag ViewBehavior
	#tag ViewProperty
		Name="AcceptFocus"
		Visible=true
		Group="Behavior"
		InitialValue="False"
		Type="Boolean"
		EditorType="Boolean"
	#tag EndViewProperty
	#tag ViewProperty
		Name="AcceptTabs"
		Visible=true
		Group="Behavior"
		InitialValue="True"
		Type="Boolean"
		EditorType="Boolean"
	#tag EndViewProperty
	#tag ViewProperty
		Name="AutoDeactivate"
		Visible=true
		Group="Appearance"
		InitialValue="True"
		Type="Boolean"
	#tag EndViewProperty
	#tag ViewProperty
		Name="BackColor"
		Visible=true
		Group="Appearance"
		InitialValue="&hFFFFFF"
		Type="Color"
	#tag EndViewProperty
	#tag ViewProperty
		Name="Backdrop"
		Visible=true
		Group="Appearance"
		Type="Picture"
		EditorType="Picture"
	#tag EndViewProperty
	#tag ViewProperty
		Name="Enabled"
		Visible=true
		Group="Appearance"
		InitialValue="True"
		Type="Boolean"
		EditorType="Boolean"
	#tag EndViewProperty
	#tag ViewProperty
		Name="EraseBackground"
		Visible=true
		Group="Behavior"
		InitialValue="True"
		Type="Boolean"
		EditorType="Boolean"
	#tag EndViewProperty
	#tag ViewProperty
		Name="HasBackColor"
		Visible=true
		Group="Appearance"
		InitialValue="False"
		Type="Boolean"
	#tag EndViewProperty
	#tag ViewProperty
		Name="Height"
		Visible=true
		Group="Position"
		InitialValue="300"
		Type="Integer"
	#tag EndViewProperty
	#tag ViewProperty
		Name="HelpTag"
		Visible=true
		Group="Appearance"
		Type="String"
	#tag EndViewProperty
	#tag ViewProperty
		Name="InitialParent"
		Group="Position"
		Type="String"
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
		EditorType="Boolean"
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
		InitialValue="False"
		Type="Boolean"
		EditorType="Boolean"
	#tag EndViewProperty
	#tag ViewProperty
		Name="Visible"
		Visible=true
		Group="Appearance"
		InitialValue="True"
		Type="Boolean"
		EditorType="Boolean"
	#tag EndViewProperty
	#tag ViewProperty
		Name="Width"
		Visible=true
		Group="Position"
		InitialValue="300"
		Type="Integer"
	#tag EndViewProperty
#tag EndViewBehavior