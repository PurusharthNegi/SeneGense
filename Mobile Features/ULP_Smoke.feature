@User_Landing_Page
Feature: Validating User landing Page - Smoke

  @ULP_Smoke
    Scenario Outline: To verify Engage module user Landing Page
    Given Launch the  Application
    When Click location dropdown and enter the location and enter the school Name "<location>" and "<SchoolName>"
    And Enter the User Name and Password "<username>" and "<password>" click submit button
    And Verify and Handle Set Preference Page
    And Verify Insights carousel is displayed in ULP page
    And Verify Goal card is displayed when user taps on any insight
    And Verify Badges carousel is displayed in ULP page
    And Verify RC RP carousel is displayed in ULP page
    And Verify user navigtes to corresponding challenge program when they tap on it from ULP page
    And Verify our suggestion section is displayed with two sub section in ULP page
    And Verify user able to view material type icon and more icon for the titles under our suggestions
    
    Examples: 
      | username | password | 
      | ph5      | ph5      | 