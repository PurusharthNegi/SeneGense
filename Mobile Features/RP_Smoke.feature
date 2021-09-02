@Reading_Program_Smoke
Feature: Validating RP Functionality

  @RP_Smoke
    Scenario Outline: To verify My Programs and Open Programs listing page and details page
    Given Launch the  Application
    When Click location dropdown and enter the location and enter the school Name "<location>" and "<SchoolName>"
    And Enter the User Name and Password "<username>" and "<password>" click submit button
    And Verify and Handle Set Preference Page
    And Click the book club option and verify the challenges,myprogram,openprogram tabs
    And Verify the my program detail page
    And Click the myprograms and verify the active draft closed programs list
    And Click ongoing tab and verify the detail screen
    And Click the join program button and verify the rp detail page
    And Verify the ongoing and upcoming programs list
    And Verify user should be able to see RP invite message under message center
    And Verify user navigates to message detail screen
    Examples: 
   	  | username | password | 
      | ph5      | ph5      | 