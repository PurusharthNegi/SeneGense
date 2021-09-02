@Reading_Program
Feature: Verify the Reading Program Feature - Creator View

  	@Reading_Program @Reading_Program_Creater_view
  	Scenario Outline: Verify the Reading Program creator view functionality
    Given Launch the  Application
    When Click location dropdown and enter the location and enter the school Name "<location>" and "<SchoolName>"
    And Enter the User Name and Password "<username>" and "<password>" click submit button
    And Verify and Handle Set Preference Page  
    And Verify user should be able to view the program details
    	
 	Examples: 
      | username | password  | 
      | ph5      | ph5       |
  