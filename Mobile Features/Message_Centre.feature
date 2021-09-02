Feature: Verify Message Center Feature

  @Message_Center
  Scenario Outline: Verify the Message Center functionality
   	Given Launch the  Application
  	When Click location dropdown and enter the location and enter the school Name "<location>" and "<SchoolName>"
    And Enter the User Name and Password "<username>" and "<password>" click submit button
    And Verify the message centre icon contains number of unread messages
    And Verify the naviagtion forth and back to Message center and scroll up and down inside message center page
    And Verify user navigates to message detail screen when the tap on any message
    And Verify edit option in message centre
    And Verify user able to left swipe the messages to view options Mark as Read or unread
    And Verify user able to left swipe the messages to view delete option to delete that particular messages   
    Examples: 
      | location | SchoolName                        | username | password |
      | New York | Photon_03_Site_A, McHenry, IL     | ph5      | ph5      |