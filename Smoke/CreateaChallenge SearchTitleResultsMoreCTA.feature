@CreateaChallengeSearchTitleResultsSortFilter
Feature: As a User I want to take some important actions on a Title from the Search Title Results screen so that I can add the Title to the Reading challenge easily or checkout or read the title from this screen

  @Automation @Regression @TC74
  Scenario Outline: TC74_Verify the more options-Add to Challenge Checkout Readonline Cancel
   Given Launch the  Application
	When Click location dropdown and enter the location and enter the school Name "<location>" and "<SchoolName>"
	And Enter the User Name and Password "<username>" and "<password>" click submit button
    And User is on the Search Title Results Screen
    When User taps on the More icon on a particular title
    Then User should be able to view the more menu for the corresponding title
    And User Can able view the more options Add to challenge checkout readonline cancel button
Examples: 
      | location | SchoolName                    | username | password |
      | New York | Dlx Bnt Digital Site  | ph5    | ph5    |

  @Automation @Regression @TC75
  Scenario Outline: TC75-Verify the Add to Challenge buttom
    Given Launch the  Application
	When Click location dropdown and enter the location and enter the school Name "<location>" and "<SchoolName>"
	And Enter the User Name and Password "<username>" and "<password>" click submit button
    And User is on the Search Title Results Screen
    When User taps on the More icon on a particular title
    Then User should be able to view the more menu for the corresponding title
    And User should be able to tap on the Add to Challenge option to add the title to the Reading challenge and be navigated back to the Search Title Results Screen
Examples: 
      | location | SchoolName                    | username | password |
      | New York | Dlx Bnt Digital Site  | ph5    | ph5    |

  @Manual @TC76
  Scenario: TC76_Verify the Checkout button
    Given User is logged in
    And User is on the Search Title Results Screen
    When User taps on the More icon on a particular title
    Then User should be able to view the more menu for the corresponding title
    And User should be able to tap on the Checkout option to check the title out and the Checkout option should be replaced with "Return" based on current behaviour

  @Automation @Regression @TC77
  Scenario Outline: TC77_Verify the Readonline Button
    Given Launch the  Application
	When Click location dropdown and enter the location and enter the school Name "<location>" and "<SchoolName>"
	And Enter the User Name and Password "<username>" and "<password>" click submit button
    And User is on the Search Title Results Screen
    When User taps on the More icon on a particular title
    Then User should be able to view the more menu for the corresponding title
    And User should be able to tap on the Read Online option and be navigated to the eBook reader screen with the book opened
Examples: 
     | location | SchoolName                    | username | password |
      | New York | Dlx Bnt Digital Site  | ph5    | ph5    |

  @Manual @TC78
  Scenario: TC78_Verify the Cancel Button
    Given User is logged in
    And User is on the Search Title Results Screen
    When User taps on the More icon on a particular title
    Then User should be able to view the more menu for the corresponding title
    And User should be able to tap on the Cancel option and be navigated back to the Search Title Results Screen
    
 @Reg @55571 @63246 @63247 @63430
 Scenario Outline: Verify the more options-Add to Challenge  and Cancel
   Given Launch the  Application
	When Click location dropdown and enter the location and enter the school Name "<location>" and "<SchoolName>"
	And Enter the User Name and Password "<username>" and "<password>" click submit button
    And User is on the Search Title Results Screen
    When User taps on the More icon on a particular title
    Then User should be able to view the more menu for the corresponding title
    And User Can able view the more options Add to challenge checkout readonline cancel button
    And User should be able to tap on the Add to Challenge option to add the title to the Reading challenge and be navigated back to the Search Title Results Screen
	And User should be able to tap on the Cancel option and be navigated back to the Search Title Results Screen
Examples: 
      | location | SchoolName                    | username | password |
      | New York | Dlx Bnt Digital Site  | ph5    | ph5    |
      
      @Reg @55571 @63248 @63249 
 Scenario Outline: Verify the more options-Checkout and Readonline
   Given Launch the  Application
	When Click location dropdown and enter the location and enter the school Name "<location>" and "<SchoolName>"
	And Enter the User Name and Password "<username>" and "<password>" click submit button
    And User is on the Search Title Results Screen
    When User taps on the More icon on a particular title
    Then User should be able to view the more menu for the corresponding title
    And User Can able view the more options Add to challenge checkout readonline cancel button
    And User should be able to tap on the Checkout option to check the title out and the Checkout option should be replaced with "Return" based on current behaviour
  	And User should be able to tap on the Read Online option and be navigated to the eBook reader screen with the book opened
   Examples: 
      | location | SchoolName                    | username | password |
      | New York | Dlx Bnt Digital Site  | ph5    | ph5    |
      
