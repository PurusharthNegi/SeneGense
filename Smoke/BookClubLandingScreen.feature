@BookClubLandingScreen
Feature: As a User I want to click on the Book Club menu item on the Bottom Navigation Menu so that I can navigate to the Book Club Landing Screen and view the list of Reading Challenges & Programs available and create new Reading Challenges if required

  @Manual @TC01
  Scenario: TC01_IOS_To verify the UI when there are no reading challenges
    And User is on the Home screen or any other landing screen
    When User clicks on the Book Club menu item on the Bottom Navigation Menu
    Then User should be navigated to the Book Club Landing screen
    And User should be able to view the Reading Challenges Reading Programs and Public Programs tabs
    And User should be able to view the Challenges tab open by default
    And User should be able to view the option to Create a new Reading Challenge
    And User should be able to view a message saying there are no reading challenges available if they are not participating in or invited to participate in any challenge  along with the Add challenge CTA

  @Automation @Regression @TC02
  Scenario Outline: TC02_IOS_Verify if user is able to view the challenges that they are participating or that they have been invited too
    Given Launch the  Application
    When Click location dropdown and enter the location and enter the school Name "<location>" and "<SchoolName>"
    And Enter the User Name and Password "<username>" and "<password>" click submit button
    And User is on the Home screen or any other landing screen
    When User clicks on the Book Club menu item on the Bottom Navigation Menu
    Then User should be navigated to the Book Club Landing screen
    And User should be able to view the Reading Challenges Reading Programs and Public Programs tabs
    And User should be able to view the Challenges tab open by default
    And User should be able to view list of challenges grouped as Active Challenges Draft Challenges and Closed Challenges
    And User should be only able to see challenges created by that user participating in invited to and completed by the user
    And User should be able to view the option to Create a new Reading Challenge
    And User should be able to view the label Reading Challenge that specifies this is a reading challenge
    And User should be able to view the default icon specified for reading challenges
    And User should be able to view the challenge name
    And User should be able to view read by date for the reading challenge
    And User should be able to view the title cover

    Examples: 
      | location | SchoolName                    | username | password |
      | New York | George Washington High School | ph5    | ph5    |

  @Manual @TC03
  Scenario Outline: TC03_IOS_Verify if user is not able to see any information if there was no description while creating the challenge
    Given Launch the  Application
    When Click location dropdown and enter the location and enter the school Name "<location>" and "<SchoolName>"
    And Enter the User Name and Password "<username>" and "<password>" click submit button
    And User is on the Home screen or any other landing screen
    When User clicks on the Book Club menu item on the Bottom Navigation Menu
    Then User should not view any information about the title in the reading challenge section

    Examples: 
      | location | SchoolName                    | username | password |
      | New York | George Washington High School | ph5    | ph5    |

  @Manual @TC04
  Scenario Outline: TC04_IOS_Verify if percentage of completion is provided based on the progress made
    Given Launch the  Application
    When Click location dropdown and enter the location and enter the school Name "<location>" and "<SchoolName>"
    And Enter the User Name and Password "<username>" and "<password>" click submit button
    And User is on the Home screen or any other landing screen
    When User clicks on the Book Club menu item on the Bottom Navigation Menu
    Then Progress percentage should be calculated based on the book completion in the challenge If there are 5 books in the challenge and user completes reading one book the completion percentage is 20

    Examples: 
      | location | SchoolName                    | username | password |
      | New York | George Washington High School | ph5    | ph5    |

  @Manual @TC05
  Scenario Outline: TC05_IOS_Verify the icon of the percentage completion according to the value
    Given Launch the  Application
    When Click location dropdown and enter the location and enter the school Name "<location>" and "<SchoolName>"
    And Enter the User Name and Password "<username>" and "<password>" click submit button
    And User is on the Home screen or any other landing screen
    When User clicks on the Book Club menu item on the Bottom Navigation Menu
    Then Application should be able to display the percentage ranging from 0 to 100 based on the reading progress
    And User should get to know the completion status from the icon where the percentage is displayed Circle should be colored appropriately

    Examples: 
      | location | SchoolName                    | username | password |
      | New York | George Washington High School | ph5    | ph5    |

  @Automation @Regression @TC06
  Scenario Outline: TC06_IOS_Verify if user can view the time spent on the particular challenge
    Given Launch the  Application
    When Click location dropdown and enter the location and enter the school Name "<location>" and "<SchoolName>"
    And Enter the User Name and Password "<username>" and "<password>" click submit button
    And User is on the Home screen or any other landing screen
    When User clicks on the Book Club menu item on the Bottom Navigation Menu
    Then User should be able to view the time spent by the user in the specific challenge or program
    And Application should display the time in HHMM format

    Examples: 
      | location | SchoolName                    | username | password |
      | New York | George Washington High School | ph5    | ph5    |

  @Manual @TC07
  Scenario: TC07_IOS_Verify the UI when the user has not accepted
    And User is on the Home screen or any other landing screen
    When User clicks on the Book Club menu item on the Bottom Navigation Menu
    Then User should be able to view You have been Challenged text instead of the progress percentage and time spent for challenges that the user has been invited to and has not yet accepted the invitation
    And User should be able to tap on a challenge that they have been invited to and view the Accept or Reject Challenge bottom drawer

  @Manual @TC07_1
  Scenario: TC07_1_IOS_Verify the UI when the user has rejected the challenge
    And User is on the Home screen or any other landing screen
    When User clicks on the Book Club menu item on the Bottom Navigation Menu
    Then The challenge should be removed from the dashboard and user should no longer see it
  
  
      @Reg @TC02 @TC06 @TC127 @TC131 @55558
  	Scenario Outline:Verify book club landing screen  
    Given Launch the  Application
    When Click location dropdown and enter the location and enter the school Name "<location>" and "<SchoolName>"
    And Enter the User Name and Password "<username>" and "<password>" click submit button
    And User is on the Home screen or any other landing screen
    When User clicks on the Book Club menu item on the Bottom Navigation Menu
    Then User should be navigated to the Book Club Landing screen
    Then User should be able to view the time spent by the user in the specific challenge or program
    And Application should display the time in HHMM format
    And User should be able to view the Reading Challenges Reading Programs and Public Programs tabs
    And User should be able to view the Challenges tab open by default
    And User should be able to view list of challenges grouped as Active Challenges Draft Challenges and Closed Challenges
    And User should be only able to see challenges created by that user participating in invited to and completed by the user
    And User should be able to view the option to Create a new Reading Challenge
    And User should be able to view the label Reading Challenge that specifies this is a reading challenge
    And User should be able to view the default icon specified for reading challenges
    And User should be able to view the challenge name
    And User should be able to view read by date for the reading challenge
    And User should be able to view the title cover

    Examples: 
      | location | SchoolName                    | username | password |
      | New York | George Washington High School | ph5    | ph5    |
    
    
    
