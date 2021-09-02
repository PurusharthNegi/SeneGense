Feature: Verify the Message center Feature

@Mesage_Center @Reader
  Scenario Outline: Verify the reader functionality
    Given Launch the  Application
    When Click location dropdown and enter the location and enter the school Name "<location>" and "<SchoolName>"
    And Enter the User Name and Password "<username>" and "<password>" click submit button
    And Validate the Message centre landing page
    


    Examples: 
      | location | SchoolName                    | username | password | username1 | password1 |
      | New York | Photon_01_Site_A, McHenry, IL | ph01a1    | ph01a1    | ph6       | ph6       |
