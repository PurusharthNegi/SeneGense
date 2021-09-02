@Reading_Program
Feature: Verify the Reading Program Feature - join Program
 	 
   @Reading_Program @Reading_program_JoinProgram
	Scenario Outline: Verify the joining open program functionality
    Given Launch the  Application
    When Click location dropdown and enter the location and enter the school Name "<location>" and "<SchoolName>"
    And Enter the User Name and Password "<username>" and "<password>" click submit button
    And Verify and Handle Set Preference Page 
    And Click the book club option and verify the challenges,myprogram,openprogram tabs
    And Verify the join program page and rp detail page
    And Verify the navigation from title details page to listing page
    And verify the navigation fron rp confirmation to listing page
    
    Examples: 
      | username | password |
      | ph5      | ph5      | 