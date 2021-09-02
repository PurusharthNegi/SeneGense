#@CreateAChallenge_InviteRecentlySearchedFriends
#Feature: As a User I want to add participants from recently searched users list to a new Reading challenge I am creating so that I can challenge my friends to participate in the Reading challenge along with me
#
#@Reg @TC147 @TC148 @TC149 @TC152 @TC153 @TC154 @TC155 @TC156 @TC157 @55561
#Scenario Outline:Verify user can able to add and remove friend to challenge from recently searched list 
#Given Launch the  Application
#When Click location dropdown and enter the location and enter the school Name "<location>" and "<SchoolName>"
#And Enter the User Name and Password "<username>" and "<password>" click submit button
#And User is on the Create Challenge Screen
#When User taps on the Add CTA under the Challenge Friends section
#Then User should be navigated to the Invite Friends screen
#And User should be able to view the list of 5 recently searched friends  
#Then User should be able to tap on Invite button and the specific friend should be added to the list of invitees 
#Then User should be allowed to remove the friend by clicking on the close button in search screen 
#Then User should be able to tap on the Add to challenge CTA to add invitees to the challenge
#Then User should be navigated back to the Create challenge screen with the list of invitees added
#Examples: 
     #| location | SchoolName                    | username | password |
      #| New York | Dlx BnT Digital Site | ph5    | ph5    |  
      #
#@Automation @Regression @TC20 
#Scenario Outline: TC20_IOS_Verify if tapping on add button takes you to the invite friends page 
#
#Given Launch the  Application
#When Click location dropdown and enter the location and enter the school Name "<location>" and "<SchoolName>"
#And Enter the User Name and Password "<username>" and "<password>" click submit button
#And User is on the Create Challenge Screen
#When User taps on the Add CTA under the Challenge Friends section
#Then User should be taken to the search page where friends can be invited to join the challenge
  #Examples: 
      #| location | SchoolName                    | username | password |
      #| New York | Dlx Bnt Digital Site  | ph5    | ph5    |
      #	
#@Automation @Regression @TC21
#Scenario Outline: TC21_IOS_Verify if user is able to view the recently searched friends
#Given Launch the  Application
#When Click location dropdown and enter the location and enter the school Name "<location>" and "<SchoolName>"
#And Enter the User Name and Password "<username>" and "<password>" click submit button
#And User is on the Create Challenge Screen
#When User taps on the Add CTA under the Challenge Friends section
#Then User should be navigated to the Invite Friends screen
#And User should be able to view the list of 5 recently searched friends 
 #Examples: 
      #| location | SchoolName                    | username | password |
      #| New York | Dlx Bnt Digital Site  | ph5    | ph5    |
      #
#@Automation @Regression @TC22
#Scenario Outline: TC22_IOS_Verify if it just displays only 5 recent friends even when the user has searched many
#
#Given Launch the  Application
#When Click location dropdown and enter the location and enter the school Name "<location>" and "<SchoolName>"
#And Enter the User Name and Password "<username>" and "<password>" click submit button
#And User is on the Create Challenge Screen
#When User taps on the Add CTA under the Challenge Friends section
#Then User should be navigated to the Invite Friends screen
#And User should be able to view only the recently searched 5 friends
 #Examples: 
      #| location | SchoolName                    | username | password |
      #| New York | Dlx Bnt Digital Site  | ph5    | ph5    |
      #
#@Manual @TC23
#Scenario: TC23_IOS_Verify the behavior when the search history of the user is less than 5
#
#Given User is logged in
#And User is on the Create Challenge Screen
#When User taps on the Add CTA under the Challenge Friends section
#Then User should be navigated to the Invite Friends screen
#And User should be allowed to view the recently searched frinds even if the count is less than 5 
#
#@Manual @TC24
#Scenario: TC24_IOS_Verify the UI when the user is creating the challenge for the first time and user has not searched anybody so far
#
#Given User is logged in
#And User is on the Create Challenge Screen
#When User taps on the Add CTA under the Challenge Friends section
#Then User should be navigated to the Invite Friends screen
#And Application will not have any recently searched friends
#
#@Automation @Regression @TC25
#Scenario Outline: TC25_IOS_Verify if user is able to tap on Invite button in Invite recently searched friends screen
#
#Given Launch the  Application
#When Click location dropdown and enter the location and enter the school Name "<location>" and "<SchoolName>"
#And Enter the User Name and Password "<username>" and "<password>" click submit button
#And User is on the Create Challenge Screen
#When User taps on the Add CTA under the Challenge Friends section
#Then User should be navigated to the Invite Friends screen
#Then User should be able to tap on Invite button and the specific friend should be added to the list of invitees 
 #Examples: 
      #| location | SchoolName                    | username | password |
      #| New York | Dlx Bnt Digital Site  | ph5    | ph5    |
      #
#@Automation @Regression @TC26
#Scenario Outline: TC26_IOS_Verify if user is able to add as many friends to the challenge in Invite recently searched friends screen
#
#Given Launch the  Application
#When Click location dropdown and enter the location and enter the school Name "<location>" and "<SchoolName>"
#And Enter the User Name and Password "<username>" and "<password>" click submit button
#And User is on the Create Challenge Screen
#When User taps on the Add CTA under the Challenge Friends section
#Then User should be navigated to the Invite Friends screen
#Then User should be able to add as many friends as required to the invitees list without any limit
#Examples: 
      #| location | SchoolName | username | password |
      #| New York |Dlx Bnt Digital Site | ph5   | ph5   |
      #
#@Automation @Regression @TC27
#Scenario Outline: TC27_IOS_Verify if user can remove the friend added unintentionally in Invite recently searched friends screen
#
#Given Launch the  Application
#When Click location dropdown and enter the location and enter the school Name "<location>" and "<SchoolName>"
#And Enter the User Name and Password "<username>" and "<password>" click submit button
#And User is on the Create Challenge Screen
#When User taps on the Add CTA under the Challenge Friends section
#Then User should be allowed to remove the friend by clicking on the close button in search screen
 #Examples: 
      #| location | SchoolName                    | username | password |
      #| New York | Dlx Bnt Digital Site  | ph5    | ph5    |
      #
#@Automation @Regression @TC28
#Scenario Outline: TC28_IOS_Verify the label of the Add to challenge button in Invite recently searched friends screen
#
#Given Launch the  Application
#When Click location dropdown and enter the location and enter the school Name "<location>" and "<SchoolName>"
#And Enter the User Name and Password "<username>" and "<password>" click submit button
#And User is on the Create Challenge Screen
#When User taps on the Add CTA under the Challenge Friends section
#
#And User adds few friends by tapping on Invite button
#Then User should be able to view the Add to challenge CTA comprising of the number of invitees selected
 #Examples: 
      #| location | SchoolName                    | username | password |
      #| New York | Dlx Bnt Digital Site  | ph5    | ph5    |
      #
#@Automation @Regression @TC29
#Scenario Outline: TC29_IOS_Verify if user can add the invitees to the challenge in Invite recently searched friends screen
#
#Given Launch the  Application
#When Click location dropdown and enter the location and enter the school Name "<location>" and "<SchoolName>"
#And Enter the User Name and Password "<username>" and "<password>" click submit button
#And User is on the Create Challenge Screen
#When User taps on the Add CTA under the Challenge Friends section
#Then User should be navigated to the Invite Friends screen
#And User adds few friends by tapping on Invite button
#Then User should be able to tap on the Add to challenge CTA to add invitees to the challenge
#Examples: 
     #| location | SchoolName | username | password |
      #| New York |Dlx Bnt Digital Site | ph5   | ph5   |
      #
#@Automation @Regression @TC30
#Scenario Outline: TC30_IOS_Verify the navigation after adding the invitees  in Invite recently searched friends screen
#
#Given Launch the  Application
#When Click location dropdown and enter the location and enter the school Name "<location>" and "<SchoolName>"
#And Enter the User Name and Password "<username>" and "<password>" click submit button
#And User is on the Create Challenge Screen
#When User taps on the Add CTA under the Challenge Friends section
#Then User can add the invites button clicking invite button
#And User adds invitees by tapping on Add to challenge button
#Then User should be navigated back to the Create challenge screen with the list of invitees added
 #Examples: 
      #| location | SchoolName                    | username | password |
      #| New York | Dlx Bnt Digital Site  | ph5    | ph5    |
 