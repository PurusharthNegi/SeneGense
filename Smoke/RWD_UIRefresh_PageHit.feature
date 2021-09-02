Feature: Verify the web UI refresh screens flow

  @WebPageHit
  Scenario Outline: Verify the UI refresh page hit flow
    Given Launch the Web Application
    When Enter the User Name and Password "<username>" and "<password>" click Submit button
    Then Validate Profile Page
    And Validate Home Page
    And Validate Grid and List View
    And Validate Sort and Filter
    And Validate See All listing page
    And Validate Search screen
    And Validate Search Results page
    And Validate Title Preview screen
    And Validate Title Details page
    And Validate My Stuff
    And Validate Ebook reading screen
    And Validate Audiobook play screen
    And Validate Collection page
    And Validate Collection listing page
    And Validate Title share page
    And Validate Help
    And Validate Learning Links
    And Validate Checkout and Favorite functionality
    And Validate Back office
    And Validate Create and Delete Private Collection
    And Validate Create and Delete Public Collection
    And Validate Public Collection Filters
    And Validate Private Collection Filters
    And Validate Logout
    And Validate Admin FSS with Admin "<aUserName>" and "<aPassword>"
    And Validate Admin Destiny Discover
    And Validate Logout

    Examples: 
      | username | password | aUserName | aPassword |
      | ph5      | ph5      | ph9       | ph9       |
