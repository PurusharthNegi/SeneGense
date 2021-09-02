@Reading_Program
Feature: Verify the Reading Program Feature - Open Program

   	@Reading_Program @Reading_Program_OpenProgram
  	Scenario Outline: Verify the Reading Program Open program functionality
    Given Launch the  Application
    When Click location dropdown and enter the location and enter the school Name "<location>" and "<SchoolName>"
    And Enter the User Name and Password "<username>" and "<password>" click submit button
    And Verify and Handle Set Preference Page 
    And Verify Navigation to Open Programs tab
    And Verify user can able see the title name default program icon book cover image description
    And Verify user can able to see ongoing and upcoming programs
#    And Verify user should not see private programs in ongoing programs
    
 	Examples: 
      | username | password  | 
      | ph4      | ph4       | 
    