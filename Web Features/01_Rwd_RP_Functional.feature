@RWD_RP
Feature: Reading program regression

Background: Login to the application
		Given Launch the Web Application
		When Enter the User Name and Password "pha1" and "pha1" click Submit button
		Then Navigate to Reading Program and validate
	
  @Rwd_CreateProgram_Sc1
  Scenario: Create and Save Reading program validations
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
	Scenario: Find the saved reading program to validate edit and publish functions 
		And Search and open the saved program in my program listing screen
		And Edit program type and validate number of required books field
		And Edit and validate the Visibility of program 
		Then Edit and validate the Start date of the program
		Then Validate Publish program function
		
	@Rwd_DeleteProgram_Sc3
	Scenario: Find the saved program to validate delete function
		Then Search and open the saved program in my program listing screen
		And Delete the saved program and validate
		#Then Search deleted program to confirm deleted rp is not present in myPrograms tab
