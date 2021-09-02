@Rwd_ReadingChallenge
Feature: Create challenge validation

@Rwd_ChallengesListing_Sc2
Scenario Outline: Validate the Challenges listing page and find the created challenge
Given Launch the Web Application
When Enter the User Name and Password "<username>" and "<password>" click Submit button
Then Log into the app and navigate to reading challenge
And Find & validate the created challenge in creator challenge dashboard
And validate leave challenge function

Examples: 
      | username | password |
      | ph5      | ph5      |