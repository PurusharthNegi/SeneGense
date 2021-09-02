@RWD_Search_Title_RC
Feature: As a User I want to add Titles of my choice to the reading challenge that I am creating so that I can specify the titles that should be read by participants as a part of the challenge.

@Automation @RWD @55353_63991 @55353 @Reg
  Scenario: Verify the user can​ be able to tap on a search suggestion to view the corresponding Search results page
  Given User is logged in user name "user1" and password on DLX env
  And User is on the Book club landing Page
  When User taps on the "Create Challenge" CTA
  Then User should be navigated to the Create Challenge Page
  Then User should be navigated to Find titles page upon clicking Add titles
  When User "Add" search keyword "Wild" with more than three characters
  Then User should be able view the search suggestions
  Then User should able view corresponding details page upon selecting first suggested link

#New DLX Login Steps
  @Automation @RWD @55353_63993 @55353 @Reg
  Scenario: TC03_RWD_Desktop_Verify the message when there no search results.
    Given User is logged in user name "user1" and password on DLX env
    And User is on the Book club landing Page
    When User taps on the "Create Challenge" CTA
    Then User should be navigated to the Create Challenge Page
    Then User should be navigated to Find titles page upon clicking Add titles
    Then User should view no tiles found message if the search "a123" is not matching

  @Automation @RWD @55353_63995
  Scenario: TC05_RWD_Desktop_verify whether ​the user can be able to tap on a search suggestion to view the corresponding Search results page
    Given User is logged in user name "user1" and password on DLX env
    And User is on the Book club landing Page
    When User taps on the "Create Challenge" CTA
    Then User should be navigated to the Create Challenge Page
    Then User should be navigated to Find titles page upon clicking Add titles
    When User "Add" search keyword "Wild" with more than three characters
    Then User should be able view the search suggestions
    Then User should able view corresponding details page upon selecting first suggested link


  @Automation @RWD @55353_63994 @55353 @Reg
  Scenario: TC04_RWD_Desktop_Veriify whether the user can be able to edit the search input string as required.
    Given User is logged in user name "user1" and password on DLX env
    And User is on the Book club landing Page
    When User taps on the "Create Challenge" CTA
    Then User should be navigated to the Create Challenge Page
    Then User should be navigated to Find titles page upon clicking Add titles
    When User "Edit" search keyword "National" with more than three characters
    Then User should be able view the search suggestions



  @Automation  @RWD @55353_63996
  Scenario: TC06_RWD_Desktop_Verify whether the user can be able to view the search suggestions updated based on each individual character change made by them on the search input string.
    Given User is logged in user name "user1" and password on DLX env
    And User is on the Book club landing Page
    When User taps on the "Create Challenge" CTA
    Then User should be navigated to the Create Challenge Page
    Then User should be navigated to Find titles page upon clicking Add titles
    When User "Add" search keyword "Wild" with more than three characters
    Then User should be able view the search suggestions
    Then User should able view corresponding details page upon selecting first suggested link


    #55354	User Story	[RWD DESKTOP] As a User I want to search titles so that I can add them to the reading challenge that I am creating.​

  @Automation @RWD @55354_63977
  Scenario: RWD_Desktop_To Verify the User should be able to view the search overlay with suggested search results
    Given User is logged in user name "user1" and password on DLX env
    And User is on the Book club landing Page
    When User taps on the "Create Challenge" CTA
    Then User should be navigated to the Create Challenge Page
    Then User should be navigated to Find titles page upon clicking Add titles
    When User "Add" search keyword "Wild" with more than three characters
    Then User should be able view the search suggestions
    #Then User should able view corresponding details page upon selecting first suggested link

  @Automation @RWD @55354_63978
  Scenario: RWD_Desktop_To Verify the User should be able to edit the search input string as required
    Given User is logged in user name "user1" and password on DLX env
    And User is on the Book club landing Page
    When User taps on the "Create Challenge" CTA
    Then User should be navigated to the Create Challenge Page
    Then User should be navigated to Find titles page upon clicking Add titles
    When User "Edit" search keyword "National" with more than three characters
    Then User should be able view the search suggestions

    #Then User should able view corresponding details page upon selecting first suggested link

  #Need to run
  @Automation @Regression @RWD @55354_63977 @55354
  Scenario: RWD_Desktop_To Verify the User should be able to view the search suggestions updated based on each individual character
    Given User is logged in user name "user1" and password on DLX env
    And User is on the Book club landing Page
    When User taps on the "Create Challenge" CTA
    Then User should be navigated to the Create Challenge Page
    Then User should be navigated to Find titles page upon clicking Add titles
    When User "Add" search keyword "Wild" with more than three characters
    Then User should be able view the search suggestions
    When User "Edit" search keyword "National" with more than three characters
    Then User should be able view the search suggestions



  @Automation  @RWD @55354_63980 @55354 @Reg
  Scenario: RWD_Desktop_To verify that User should be able to tap on a search suggestion to view the corresponding Search results page​​
    Given User is logged in user name "user1" and password on DLX env
    And User is on the Book club landing Page
    When User taps on the "Create Challenge" CTA
    Then User should be navigated to the Create Challenge Page
    Then User should be navigated to Find titles page upon clicking Add titles
    When User "Add" search keyword "Wild" with more than three characters
    Then User should be able view the search suggestions
    Then User should able view corresponding details page upon selecting first suggested link



  @Automation  @RWD @55354_63982 @55354 @Reg
  Scenario: RWD_Desktop_To verify that User should be able to tap on the 'X' icon on the search overlay to navigate back
    Given User is logged in user name "user1" and password on DLX env
    And User is on the Book club landing Page
    When User taps on the "Create Challenge" CTA
    Then User should be navigated to the Create Challenge Page
    Then User should be navigated to Find titles page upon clicking Add titles
    When User "Add" search keyword "Wild" with more than three characters
    Then User should be able view the search suggestions
    Then User should be navigated back to Create challenge screen upon clicking close icon


  @Automation @RWD @55354_TC06 @55354_63981
  Scenario: RWD_Desktop_To verify that User should be able to tap on the Search icon or Enter to view the corresponding Search results page for the search input string​​
    Given User is logged in user name "user1" and password on DLX env
    And User is on the Book club landing Page
    When User taps on the "Create Challenge" CTA
    Then User should be navigated to the Create Challenge Page
    Then User should be navigated to Find titles page upon clicking Add titles
    When User click on "search icon" by providing search keyword "Wild"
    Then User should able to view the search overlay screen with suggestions

  @Automation @RWD @55354_TC06_02 @55354_63981_02 @55354 @Reg
  Scenario: 02RWD_Desktop_To verify that User should be able to tap on the Search icon or Enter to view the corresponding Search results page for the search input string​​
    Given User is logged in user name "user1" and password on DLX env
    And User is on the Book club landing Page
    When User taps on the "Create Challenge" CTA
    Then User should be navigated to the Create Challenge Page
    Then User should be navigated to Find titles page upon clicking Add titles
    When User click on "enter" by providing search keyword "Wild"
    Then User should able to view the search overlay screen with suggestions

