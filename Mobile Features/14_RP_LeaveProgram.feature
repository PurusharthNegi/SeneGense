@Reading_Program
Feature: Verify the Reading Program Feature - Leave Program
 
    @Reading_Program @Reading_program_LeaveProgram
	Scenario Outline: Verify the Leave program functionality
    Given Launch the  Application
    When Click location dropdown and enter the location and enter the school Name "<location>" and "<SchoolName>"
    And Enter the User Name and Password "<username>" and "<password>" click submit button
    And Verify and Handle Set Preference Page 
    And Click the book club option and verify the challenges,myprogram,openprogram tabs
    And Verify user can able to leave program
    
    Examples: 
      | username | password | username1 | password1 |
      | ph5      | ph5      | ph3       | ph3       |
  