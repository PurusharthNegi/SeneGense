@CreateAChallenge_BasicChallengeDetails
Feature: As a User I want to create a new Reading challenge so that I can challenge myself or others to participate in the Reading challenge

  @Reg @TC135 @TC137 @TC140 @TC141 @TC142 @TC143
  Scenario Outline: Verify user should be able to create a challenge
    Given Launch the  Application
    When Click location dropdown and enter the location and enter the school Name "<location>" and "<SchoolName>"
    And Enter the User Name and Password "<username>" and "<password>" click submit button
    And User is on the Book club landing screen
    When User taps on the Create a Reading Challenge CTA
    Then User should be navigated to the Create Challenge Screen
    And Message should be displayed if there is any character limit to the fields
    And When all the mandatory fields are Given
    Then User should be able to tap on the Start Challenge CTA which will be enabled after user enters the mandatory fields Challenge Name Read by Date & adding atleast 1 title
    And Challenge should be started and toast message should show up saying Challenge invites have been sent and starts now

    Examples: 
      | location | SchoolName           | username | password |
      | New York | Dlx Bnt Digital Site | ph5      | ph5      |

  @Reg @TC145
  Scenario Outline: Verify user should be able to save a challenge
    Given Launch the  Application
    When Click location dropdown and enter the location and enter the school Name "<location>" and "<SchoolName>"
    And Enter the User Name and Password "<username>" and "<password>" click submit button
    And User is on the Book club landing screen
    When User taps on the Create a Reading Challenge CTA
    Then User should be navigated to the Create Challenge Screen
    And Message should be displayed if there is any character limit to the fields
    And When all the mandatory fields are Given
    Then User should be able to tap on the Save CTA to save the changes made in the challenge and start or publish it later

    Examples: 
      | location | SchoolName           | username | password |
      | New York | Dlx Bnt Digital Site | ph5      | ph5      |

  @Reg @TC146
  Scenario Outline: Verify user should be able to discard a challenge
    Given Launch the  Application
    When Click location dropdown and enter the location and enter the school Name "<location>" and "<SchoolName>"
    And Enter the User Name and Password "<username>" and "<password>" click submit button
    And User is on the Book club landing screen
    When User taps on the Create a Reading Challenge CTA
    Then User should be navigated to the Create Challenge Screen
    And Message should be displayed if there is any character limit to the fields
    And When all the mandatory fields are Given
    Then User should be able to tap on the Start Challenge CTA which will be enabled after user enters the mandatory fields Challenge Name Read by Date & adding atleast 1 title
    And Challenge should be started and toast message should show up saying Challenge invites have been sent and starts now

    Examples: 
      | location | SchoolName           | username | password |
      | New York | Dlx Bnt Digital Site | ph5      | ph5      |

  @Reg @TC138 @TC136
  Scenario Outline: Verify user should be able to start challenge without description and remove unintensionally added friend
    Given Launch the  Application
    When Click location dropdown and enter the location and enter the school Name "<location>" and "<SchoolName>"
    And Enter the User Name and Password "<username>" and "<password>" click submit button
    And User is on the Book club landing screen
    When User taps on the Create a Reading Challenge CTA
    Then User should be navigated to the Create Challenge Screen
    And Message should be displayed if there is any character limit to the fields
    And When all the mandatory fields are given except description
    Then User should be able to tap on the X icon next to each friend added and remove them from the list of invitees
    Then User should be able to tap on Delete CTA and discard the changes made  and return to Book Club landing screen

    Examples: 
      | location | SchoolName           | username | password |
      | New York | Dlx Bnt Digital Site | ph5      | ph5      |

  @68855 @Reg @68856
  Scenario Outline: To Verify the back icon functionality on Create Challenge page
    Given Launch the  Application
    When Click location dropdown and enter the location and enter the school Name "<location>" and "<SchoolName>"
    And Enter the User Name and Password "<username>" and "<password>" click submit button
    And User is on the Book club landing screen
    When User taps on the Create a Reading Challenge CTA
    And Tap the back button verify the popup

    Examples: 
      | location | SchoolName           | username | password |
      | New York | Dlx BnT Digital Site | ph5      | ph5      |

  @68857 @Reg @68858
  Scenario Outline: Verify the Delete CTA functionality in the create challenge page
    Given Launch the  Application
    When Click location dropdown and enter the location and enter the school Name "<location>" and "<SchoolName>"
    And Enter the User Name and Password "<username>" and "<password>" click submit button
    And User is on the Book club landing screen
    When User taps on the Create a Reading Challenge CTA
    And Tap the delete button and verify the pop up

    Examples: 
      | location | SchoolName           | username | password |
      | New York | Dlx BnT Digital Site | ph5      | ph5      |

  @68859 @Reg @68860
  Scenario Outline: Verify the Delete CTA functionality in the create challenge page
    Given Launch the  Application
    When Click location dropdown and enter the location and enter the school Name "<location>" and "<SchoolName>"
    And Enter the User Name and Password "<username>" and "<password>" click submit button
    And User is on the Book club landing screen
    When User taps on the Create a Reading Challenge CTA
    And User should be able to save the challenge as draft only after entering the following mandatory fields
    And Application should disable the Save CTA until the mandatory field is entered by the user

    Examples: 
      | location | SchoolName           | username | password |
      | New York | Dlx BnT Digital Site | ph5      | ph5      |

  @Reg @68889 @68890 @68891 @68892 @68893 @68894
  Scenario Outline: As User I want to view additional options on the more menu in title listing section, so that I can add a title to an existing challenge
    Given Launch the  Application
    When Click location dropdown and enter the location and enter the school Name "<location>" and "<SchoolName>"
    And Enter the User Name and Password "<username>" and "<password>" click submit button
    When User taps on the Create a Reading Challenge CTA
    And User is title listing section
    And User taps on the more icon for each title
    And User should be able to view the more menu with Add to Existing Challenge options
    And User should be able to tap on Add to existing Challenge and view the list of challenges as a carousel active and draft challenges created by the user
    And User should be able to view only active or draft challenges created by that user
    And User should be able to scroll left or right to view the challenges in the list
    And User should be able to tap on a challenge and be navigated to the Edit Challenge screen for active challenges with the corresponding title added under the titles section

    Examples: 
      | location | SchoolName           | username | password |
      | New York | Dlx BnT Digital Site | ph5      | ph5      |

  @Reg @68895
  Scenario Outline: As User I want to view additional options on the more menu in title listing section, so that I can add a title to an existing challenge
    Given Launch the  Application
    When Click location dropdown and enter the location and enter the school Name "<location>" and "<SchoolName>"
    And Enter the User Name and Password "<username>" and "<password>" click submit button
    When User taps on the Create a Reading Challenge CTA
    And User is title listing section
    And User taps on the more icon for each title
    And User should be able to view the more menu with Add to Existing Challenge options
    And User should be able to tap on Add to existing Challenge and view the list of challenges as a carousel active and draft challenges created by the user
    And User should be able to view only active or draft challenges created by that user
    And User should be able to tap on a challenge and be navigated to the Draft Challenge screen for draft challenges with the corresponding title added under the titles section
    And Application should not display the �Add to Existing Challenge� CTA for Non-Follett content

    Examples: 
      | location | SchoolName           | username | password |
      | New York | Dlx BnT Digital Site | ph5      | ph5      |

  @Reg @68886
  Scenario Outline: As User I want to view the list of participants displayed under the heading 'Particpants' and not 'Leaderboard'
    Given Launch the  Application
    When Click location dropdown and enter the location and enter the school Name "<location>" and "<SchoolName>"
    And Enter the User Name and Password "<username>" and "<password>" click submit button
    And User is a creator or participant of a Reading challenge
    And User navigates to the RC details screen  User should be able to view list of participants displayed under the heading 'Participants' and not 'Leaderboard'

    Examples: 
      | location | SchoolName           | username | password |
      | New York | Dlx BnT Digital Site | ph5      | ph5      |

  @Manual @TC08
  Scenario: TC08_IOS_Verify if unique name is given to the challenge
    Given User is logged in
    And User is on the Book club landing screen
    When User taps on the Create a Reading Challenge CTA
    Then User should be navigated to the Create Challenge Screen
    And User should be able to enter a unique challenge name If duplicate value is Given error message has to be provided

  @Manual @TC09
  Scenario: TC09_IOS_Verify the character limit of the fields Enter challenge name and Description
    Given User is logged in
    And User is on the Book club landing screen
    When User taps on the Create a Reading Challenge CTA
    Then User should be navigated to the Create Challenge Screen
    And User should be able to enter a unique challenge name and description
    And Message should be displayed if there is any character limit to the fields

  @Manual @TC10
  Scenario: TC10_IOS_Verify if user can create a challenge without having a description
    Given Launch the  Application
    When Click location dropdown and enter the location and enter the school Name "<location>" and "<SchoolName>"
    And Enter the User Name and Password "<username>" and "<password>" click submit button
    And User is on the Book club landing screen
    When User taps on the Create a Reading Challenge CTA
    And Leaves the description field empty
    Then Error should not be thrown as the field is not mandatory User should be able to create a challenge without the description

  @Automation @Regression @TC11
  Scenario Outline: TC11_IOS_Verify if user can add friends to the challenge successfully
    Given Launch the  Application
    When Click location dropdown and enter the location and enter the school Name "<location>" and "<SchoolName>"
    And Enter the User Name and Password "<username>" and "<password>" click submit button
    And User is on the Book club landing screen
    When User taps on the Create a Reading Challenge CTA
    Then User should be able to add friends to the challenge by tapping on Add CTA

    Examples: 
      | location | SchoolName           | username | password |
      | New York | Dlx Bnt Digital Site | ph5      | ph5      |

  @Manual @TC12
  Scenario: TC12_IOS_Verify if users can remove the friends added unintentionally while creating challenge
    Given User is logged in
    And User is on the Book club landing screen
    When User taps on the Create a Reading Challenge CTA
    And Adds a friend to the challenge
    Then User should be allowed to remove the friend in Create challenge screen

  @Manual @TC13
  Scenario: TC13_IOS_Verify if the avatar is displayed next to add button once the participants are added
    Given User is logged in
    And User is on the Book club landing screen
    When User taps on the Create a Reading Challenge CTA
    And Adds a friend to the challenge
    Then Added friends should be displayed as avatars in Create Challenge screen

  @Automation @Regression @TC14
  Scenario Outline: TC14_IOS_To verify if reminders can be set for the challenge
    Given Launch the  Application
    When Click location dropdown and enter the location and enter the school Name "<location>" and "<SchoolName>"
    And Enter the User Name and Password "<username>" and "<password>" click submit button
    And User is on the Book club landing screen
    When User taps on the Create a Reading Challenge CTA
    Then User should be navigated to the Create Challenge Screen
    And User should be able to set reminders for the challenge by tapping on the Set reminders CTA

    Examples: 
      | location | SchoolName           | username | password |
      | New York | Dlx Bnt Digital Site | ph5      | ph5      |

  @Automation @Regression @TC15
  Scenario Outline: TC15_IOS_Verify if user is able to set the read by date for the challenge
    Given Launch the  Application
    When Click location dropdown and enter the location and enter the school Name "<location>" and "<SchoolName>"
    And Enter the User Name and Password "<username>" and "<password>" click submit button
    And User is on the Book club landing screen
    When User taps on the Create a Reading Challenge CTA
    Then User should be navigated to the Create Challenge Screen
    And User should be able to add the end date of the challenge by tapping on Set read by date CTA

    Examples: 
      | location | SchoolName           | username | password |
      | New York | Dlx Bnt Digital Site | ph5      | ph5      |

  @Automation @Regression @TC16
  Scenario Outline: TC16_IOS_Verify if user can add title to the challenge
    Given Launch the  Application
    When Click location dropdown and enter the location and enter the school Name "<location>" and "<SchoolName>"
    And Enter the User Name and Password "<username>" and "<password>" click submit button
    And User is on the Book club landing screen
    When User taps on the Create a Reading Challenge CTA
    Then User should be navigated to the Create Challenge Screen
    And User should be able to add titles to the challenge by tapping on the Add Titles CTA

    Examples: 
      | location | SchoolName           | username | password |
      | New York | Dlx Bnt Digital Site | ph5      | ph5      |

  @Automation @Regression @TC17
  Scenario Outline: TC17_IOS_Verify if user can start the challenge successfully
    Given Launch the  Application
    When Click location dropdown and enter the location and enter the school Name "<location>" and "<SchoolName>"
    And Enter the User Name and Password "<username>" and "<password>" click submit button
    And User is on the Book club landing screen
    When User taps on the Create a Reading Challenge CTA
    And When all the mandatory fields are Given
    Then User should be able to tap on the Start Challenge CTA which will be enabled after user enters the mandatory fields Challenge Name Read by Date & adding atleast 1 title
    And Challenge should be started and toast message should show up saying Challenge invites have been sent and starts now

    Examples: 
      | location | SchoolName           | username | password |
      | New York | Dlx BnT Digital Site | ph5      | ph5      |

  @Manual @TC18
  Scenario: TC18_IOS_Verify if error message is thrown when any of the mandatory fields is left empty
    Given User is logged in
    And User is on the Book club landing screen
    When User taps on the Create a Reading Challenge CTA
    And Leave any of the required fields empty
    Then Error should be thrown saying that xx field is required and should not be allowed to start the challenge without completing the required fields

  @Automation @Regression @TC19
  Scenario Outline: TC19_IOS_Verify if user can save the challenge
    Given Launch the  Application
    When Click location dropdown and enter the location and enter the school Name "<location>" and "<SchoolName>"
    And Enter the User Name and Password "<username>" and "<password>" click submit button
    And User is on the Book club landing screen
    When User taps on the Create a Reading Challenge CTA
    Then User should be able to tap on the Save CTA to save the changes made in the challenge and start or publish it later

    Examples: 
      | location | SchoolName           | username | password |
      | New York | Dlx Bnt Digital Site | ph5      | ph5      |

  @Automation @Regression @TC19_1
  Scenario Outline: TC19_1_IOS_Verify if user can discard the changes while creating a challenge
    Given Launch the  Application
    When Click location dropdown and enter the location and enter the school Name "<location>" and "<SchoolName>"
    And Enter the User Name and Password "<username>" and "<password>" click submit button
    And User is on the Book club landing screen
    When User taps on the Create a Reading Challenge CTA
    Then User should be able to tap on Delete CTA and discard the changes made  and return to Book Club landing screen

    Examples: 
      | location | SchoolName           | username | password |
      | New York | Dlx Bnt Digital Site | ph5      | ph5      |

  @Automation @Regression @RWD
  Scenario: TC14_IOS_To verify if reminders can be set for the challenge
    Given Launch the  Application
    And User is on the Book club landing screen
    When User taps on the Create a Reading Challenge CTA
    Then User should be navigated to the Create Challenge Screen
    And User should be able to set reminders for the challenge by tapping on the Set reminders CTA

  @Automation @Regression @RWD
  Scenario: TC14_IOS_To verify if reminders can be set for the challenge
    Given Launch the  Application
    And User is on the Book club landing screen
    When User taps on the Create a Reading Challenge CTA
    Then User should be navigated to the Create Challenge Screen
    And User should be able to set reminders for the challenge by tapping on the Set reminders CTA

  @Automation @Regression @RWD @63935
  Scenario: RWD_Desktop_To Verify if user can create a challenge without having a description
    Given User is logged in user name "user1" and password on DLX env
    And User is on the Book club landing Page
    When User taps on the "Create Challenge" CTA
    Then User should be navigated to the Create Challenge Page
    And User should be able to enter a unique challenge name with a character limit of min 3 & max 64 characters
    And User should be able to create a challange without having anything in "Description" field

  @Automation @Regression @RWD @63936
  Scenario: RWD_Desktop_To Verify if user can add friends to the challenge successfully
    Given User is logged in user name "user1" and password on DLX env
    And User is on the Book club landing Page
    When User taps on the "Create Challenge" CTA
    Then User should be navigated to the Create Challenge Page
    And User should be able to add friends to the challenge by tapping on "+" CTA

  @Automation @Regression @RWD @63942 @RWD_Smoke
  Scenario: RWD_Desktop_To Verify if user can start the challenge successfully
    Given User is logged in user name "user1" and password on DLX env
    And User is on the Book club landing Page
    When User taps on the "Create Challenge" CTA
    Then User should be navigated to the Create Challenge Page
    And User should be able to tap on the Start Challenge CTA after filling all the mandatory fields by Passing "ph9" and add book "Harry"

  @Automation @Regression @RWD @63938
  Scenario: RWD_Desktop_To Verify if the avatar is displayed next to add button once the participants are added
    Given User is logged in user name "user1" and password on DLX env
    And User is on the Book club landing Page
    When User taps on the "Create Challenge" CTA
    Then User should be navigated to the Create Challenge Page
    And User should be able to add friends to the challenge by tapping on "Add" CTA
    And User should able to see the avatar of the added friend next to the "Add" CTA

  @Automation @Regression @RWD @63939
  Scenario: RWD_Desktop_To verify if reminders can be set for the challenge
    Given User is logged in user name "user1" and password on DLX env
    And User is on the Book club landing Page
    When User taps on the "Create Challenge" CTA
    Then User should be navigated to the Create Challenge Page
    And User should be able to set reminders for the challenge by tapping on the "Set reminders" CTA
