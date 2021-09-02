@Rwd_ReadingChallenge
Feature: Create challenge validation

@Rwd_CreateChallenge_Sc1
Scenario Outline: Login validation
Given Launch the Web Application
When Enter the User Name and Password "<username>" and "<password>" click Submit button
Then Log into the app and navigate to reading challenge
And Discard challenge validation
And Validate and Enter challenge name & description
And Challenge friend validation
Then Validate Set Remainder
And Validate Read by date function
Then Validate Mandatory field for Start challenge
And Add and Remove title validation
Then Save Challenge validation
And Search and find the saved challenge in listing page
Then Validate Start challenge function
And Validate discard function for edit challenge
Then Validate the created challenge
And Edit all the mandatory fields & validate the edited challenge
 
Examples: 
      | username | password | 
      | ph5      | ph5      | 