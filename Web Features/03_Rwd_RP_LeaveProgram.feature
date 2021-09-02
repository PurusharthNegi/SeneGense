@RWD_RP
Feature: Reading program regression

	@Rwd_LeaveProgram_Sc4
	Scenario Outline: Find and active program to validte the leave program function
		Given Launch the Web Application
		When Enter the User Name and Password "<username>" and "<password>" click Submit button
		Then Navigate to Reading Program and validate
		Then Search and open the saved program in my program listing screen
		And Validate the leave program function
	
	 Examples: 
      | username | password | 
      | ph5      | ph5      |