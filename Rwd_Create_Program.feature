@RWD_RP
Feature: Reading program regression


Background: Login to the application
		Given Launch the Web Application
		When Enter the User Name and Password "pha1" and "pha1" click Submit button
		Then Navigate to Reading Program and validate
	
  @Rwd_CreateProgram_Sc1
  Scenario: Create and Save Reading program validation
		And Validate Discard function
		And Validate Program Name and Description field
		Then Validate and set program access
		And Validate tool tip for program access
		Then Validate and set program type
		And Validate and Set program Start date
		And Validate and Set program End date
		Then Validate and Set Remainder
		And Validate and Assign students to the program
		Then Validate and Add title to the program
		And Verify Save program function
		
	@Rwd_publishProgram_Sc2
	Scenario: Find and publish the reading program
		And Search and open the saved program in my program listing screen
		And Change program type and validate number of required books field
		Then Validate Publish program function
		
