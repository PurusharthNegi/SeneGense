@PageHit_1
Feature: Verify the Mobile UI refresh screens flow

  @PageHit
  Scenario Outline: Verify the UI refresh page hit flow
    Given Launch the  Application
    When Click location dropdown and enter the location and enter the school Name "<location>" and "<SchoolName>"
    And Enter the User Name and Password "<username>" and "<password>" click submit button
    And Validate User Landing page
    And Validate Product listing Ebook page
    And Validate Product listing AudioBoks page
    And Validate Search page
    And Validate Search Filters
    And Validate Ebook Details page
    And Validate Ebook Reading Page
    And Validate Audio book Details page
    And Validate Audio book Reading Page
    And Validate checkout functions for ebook
    And Validate My Stuff - Checkouts
    And Validate My Stuff - Recents with functional validation
    And Validate My Stuff - Holds
    And Validate My Stuff - Assigned
    And Validate Downloads

    Examples: 
      | location | SchoolName                        | username | password |
      | New York | Dlx BnT Digital Site, McHenry, IL | ph5      | ph5      |
