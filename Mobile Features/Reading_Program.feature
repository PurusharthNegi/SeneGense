#Feature: Verify the Reading Program Feature
#
#  	@Reading_Program_Creater_view
#  	Scenario Outline: Verify the Reading Program creator view functionality
#    Given Launch the  Application
#    When Click location dropdown and enter the location and enter the school Name "<location>" and "<SchoolName>"
#    And Enter the User Name and Password "<username>" and "<password>" click submit button
#    And Verify user should be able to view the program details
#    	
# 	Examples: 
#      | username | password  | 
#      | ph5      | ph5       |
#
#   
# 	@Reading_Program_OpenProgram
#  	Scenario Outline: Verify the Reading Program Open program functionality
#    Given Launch the  Application
#    When Click location dropdown and enter the location and enter the school Name "<location>" and "<SchoolName>"
#    And Enter the User Name and Password "<username>" and "<password>" click submit button
#    And Verify Navigation to Open Programs tab
#    And Verify user can able see the title name default program icon book cover image description
#    And Verify user can able to see ongoing and upcoming programs
#    And Verify user should not see private programs in ongoing programs
#    
# 	Examples: 
#      | username | password  | 
#      | ph5      | ph5       | 
#  
#   @Reading_program__JoinProgram
#	Scenario Outline: Verify the joining open program functionality
#    Given Launch the  Application
#    When Click location dropdown and enter the location and enter the school Name "<location>" and "<SchoolName>"
#    And Enter the User Name and Password "<username>" and "<password>" click submit button
#    And Click the book club option and verify the challenges,myprogram,openprogram tabs
#    And Verify the join program page and rp detail page
#    And Verify the navigation from title details page to listing page
#    And verify the navigation fron rp confirmation to listing page
#    
#    Examples: 
#      | username | password | username1 | password1 |
#      | ph5      | ph5      | ph3       | ph3       |
#      
#    @Reading_program__LeaveProgram
#	Scenario Outline: Verify the Leave program functionality
#    Given Launch the  Application
#    When Click location dropdown and enter the location and enter the school Name "<location>" and "<SchoolName>"
#    And Enter the User Name and Password "<username>" and "<password>" click submit button
#    And Click the book club option and verify the challenges,myprogram,openprogram tabs
#    And Verify user can able to leave program
#    
#    Examples: 
#      | username | password | username1 | password1 |
#      | ph5      | ph5      | ph3       | ph3       |
#      
#    @Reading_program__ProgramScreen
#	Scenario Outline: Verify the MyProgram Listing page
#	Given Launch the  Application
#    When Click location dropdown and enter the location and enter the school Name "<location>" and "<SchoolName>"
#    And Enter the User Name and Password "<username>" and "<password>" click submit button
#    And Click the book club option and verify the challenges,myprogram,openprogram tabs
#    And Verify myprogram listing page 
#    
#    Examples: 
#      | username | password | username1 | password1 |
#      | ph5      | ph5      | ph3       | ph3       |
#
#  @ClosedProgram_DetailPage
#    Scenario Outline: Verify the MyProgram closed program Detail page
#    Given Launch the  Application
#    When Click location dropdown and enter the location and enter the school Name "<location>" and "<SchoolName>"
#    And Enter the User Name and Password "<username>" and "<password>" click submit button
#    And Click the book club option and verify the challenges,myprogram,openprogram tabs
#    And Verify the closed program card and verify the details page
#     Examples: 
#      | username | password | username1 | password1 |
#      | ph7      | ph7      | ph3       | ph3       |

