@Reading_Program
Feature: Verify the Reading Program Feature - Program screen
    
  @Reading_Program @Reading_program_ProgramScreen
	Scenario Outline: Verify the MyProgram Listing page
	Given Launch the  Application
    When Click location dropdown and enter the location and enter the school Name "<location>" and "<SchoolName>"
    And Enter the User Name and Password "<username>" and "<password>" click submit button
    And Verify and Handle Set Preference Page 
    And Click the book club option and verify the challenges,myprogram,openprogram tabs
    And Verify myprogram listing page 
    
    Examples: 
      | username | password | username1 | password1 |
      | ph5      | ph5      | ph3       | ph3       |
      
  @Reading_Program @ClosedProgram_DetailPage
  Scenario Outline: Verify the MyProgram closed program Detail page
  Given Launch the  Application
  When Click location dropdown and enter the location and enter the school Name "<location>" and "<SchoolName>"
  And Enter the User Name and Password "<username>" and "<password>" click submit button
  And Verify and Handle Set Preference Page 
  And Click the book club option and verify the challenges,myprogram,openprogram tabs
  And Verify the closed program card and verify the details page
    
    Examples: 
      | username | password | username1 | password1 |
      | ph7      | ph7      | ph3       | ph3       |