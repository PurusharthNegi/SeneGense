@ReadingChallenge_ParticipantRCDetailsScreen
Feature: As a User I want to view more options on the Reading Challenge details screen so that I can Edit the challenge or Leave the Challenge

@Automation @Regression @TC_125_14
Scenario Outline: TC_125_14_IOS_Verify user should be navigated to edit challenge screen
Given Launch the  Application
When Click location dropdown and enter the location and enter the school Name "<location>" and "<SchoolName>"
And Enter the User Name and Password "<username>" and "<password>" click submit button
And User has created a Challenge
And User is on the Challenge Details screen
When User taps on the Edit Challenge
Then User should be navigated to edit challenge screen
Examples: 
      | location | SchoolName | username | password |
      | New York | BnT        | photon   | photon   |

@Automation @Regression @TC_125_15
Scenario Outline: TC_125_15_IOS_Verify user should be able to update challenge screen
Given Launch the  Application
When Click location dropdown and enter the location and enter the school Name "<location>" and "<SchoolName>"
And Enter the User Name and Password "<username>" and "<password>" click submit button
And User has created a Challenge
And User is on the Challenge Details screen
When User taps on the Edit Challenge
Then User should be navigated to edit challenge screen
And User should be able to update challenge screen
Examples: 
      | location | SchoolName | username | password |
      | New York | BnT        | photon   | photon   |

@Automation @Regression @TC_125_16
Scenario Outline: TC_125_16_IOS_Verify user should be able to update remove and add challenge description
Given Launch the  Application
When Click location dropdown and enter the location and enter the school Name "<location>" and "<SchoolName>"
And Enter the User Name and Password "<username>" and "<password>" click submit button
And User has created a Challenge
And User is on the Challenge Details screen
When User taps on the Edit Challenge
Then User should be navigated to edit challenge screen
And User should be able to update, remove and add challenge description
Examples: 
      | location | SchoolName | username | password |
      | New York | BnT        | photon   | photon   |

@Automation @Regression @TC_125_17
Scenario Outline: TC_125_17_IOS_Verify user should be able to add more friends to the challenge by tapping on Add CTA
Given Launch the  Application
When Click location dropdown and enter the location and enter the school Name "<location>" and "<SchoolName>"
And Enter the User Name and Password "<username>" and "<password>" click submit button
And User has created a Challenge
And User is on the Challenge Details screen
When User taps on the Edit Challenge
Then User should be navigated to edit challenge screen
And User should be able to add more friends to the challenge by tapping on Add CTA
Examples: 
      | location | SchoolName | username | password |
      | New York | BnT        | photon   | photon   |

@Automation @Regression @TC_125_18
Scenario Outline: TC_125_18_IOS_Verify user should be able to select and update Daily Weekly or Monthly Reminders
Given Launch the  Application
When Click location dropdown and enter the location and enter the school Name "<location>" and "<SchoolName>"
And Enter the User Name and Password "<username>" and "<password>" click submit button
And User has created a Challenge
And User is on the Challenge Details screen
When User taps on the Edit Challenge
Then User should be navigated to edit challenge screen
And User should be able to select and update Daily Weekly or Monthly Reminders
Examples: 
      | location | SchoolName | username | password |
      | New York | BnT        | photon   | photon   |

@Automation @Regression @TC_125_19
Scenario Outline: TC_125_19_IOS_Verify user should be able to select and update read by date
Given Launch the  Application
When Click location dropdown and enter the location and enter the school Name "<location>" and "<SchoolName>"
And Enter the User Name and Password "<username>" and "<password>" click submit button
And User has created a Challenge
And User is on the Challenge Details screen
When User taps on the Edit Challenge
Then User should be navigated to edit challenge screen
And User should be able to select and update read by date
Examples: 
      | location | SchoolName | username | password |
      | New York | BnT        | photon   | photon   |

@Automation @Regression @TC_125_20
Scenario Outline: TC_125_20_IOS_Verify user should be able to add more titles to the challenge by tapping on the Add Titles CTA
Given Launch the  Application
When Click location dropdown and enter the location and enter the school Name "<location>" and "<SchoolName>"
And Enter the User Name and Password "<username>" and "<password>" click submit button
And User has created a Challenge
And User is on the Challenge Details screen
When User taps on the Edit Challenge
Then User should be navigated to edit challenge screen
And User should be able to add more titles to the challenge by tapping on the Add Titles CTA
Examples: 
      | location | SchoolName | username | password |
      | New York | BnT        | photon   | photon   |

@Automation @Regression @TC_125_21
Scenario Outline: TC_125_21_IOS_Verify user should be able to tap done to save changes to navigate back to challenge screen
Given Launch the  Application
When Click location dropdown and enter the location and enter the school Name "<location>" and "<SchoolName>"
And Enter the User Name and Password "<username>" and "<password>" click submit button
And User has created a Challenge
And User is on the Challenge Details screen
When User taps on the Edit Challenge
Then User should be navigated to edit challenge screen
And User should be able to tap done to save changes to navigate back to challenge screen
Examples: 
      | location | SchoolName | username | password |
      | New York | BnT        | photon   | photon   |

@Automation @Regression @TC_125_22
Scenario Outline: TC_125_22_IOS_Verify user should be able to tap on back button to go back to challenge details screen without saving
Given Launch the  Application
When Click location dropdown and enter the location and enter the school Name "<location>" and "<SchoolName>"
And Enter the User Name and Password "<username>" and "<password>" click submit button
And User has created a Challenge
And User is on the Challenge Details screen
When User taps on the Edit Challenge
Then User should be navigated to edit challenge screen
And User should be able to tap on back button to go back to challenge details screen without saving
Examples: 
      | location | SchoolName | username | password |
      | New York | BnT        | photon   | photon   |
      
      