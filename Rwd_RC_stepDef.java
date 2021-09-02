package com.stepdefinitionWeb;

import java.io.IOException;

import org.apache.logging.log4j.LogManager;
import org.apache.logging.log4j.Logger;
import org.apache.poi.openxml4j.exceptions.InvalidFormatException;

import com.pom_RWD.Login_RWD;
import com.pom_RWD.Rwd_RC;

import cucumber.api.java.en.Then;
import cucumber.api.java.en.When;

public class Rwd_RC_stepDef {

	Rwd_RC rc= new Rwd_RC();
	private static final Logger logger = LogManager.getLogger();
	
	@Then("Discard challenge validation")
	public void discard_challenge_validation() throws InvalidFormatException, IOException {
	    rc.discard();
	}
	
	@Then("Validate and Enter challenge name & description")
	public void validate_and_Enter_challenge_name_description() throws InvalidFormatException, IOException {
	    rc.chlngName(); 
	}

	@Then("Challenge friend validation")
	public void challenge_friend_validation() throws Exception {
		rc.challengeFriendValidation();
	}

	@Then("Validate Set Remainder")
	public void validate_Set_Remainder() throws InvalidFormatException, IOException {
	    rc.setReminder(false);
	}

	@Then("Validate Read by date function")
	public void validate_Read_by_date_function() throws InvalidFormatException, IOException {
		rc.readBy();
	}
	   
	@Then("Validate Mandatory field for Start challenge")
	public void validate_Mandatory_field_for_Start_challenge() throws InvalidFormatException, IOException {
	    rc.negativeStart();
	}

	@Then("Add and Remove title validation")
	public void add_and_Remove_title_validation() throws InvalidFormatException, IOException {
		rc.addTitle();
	}

	@Then("Save Challenge validation")
	public void save_Challenge_validation()throws InvalidFormatException, IOException {
	    rc.save();
	}

	@Then("Search and find the saved challenge in listing page")
	public void search_and_find_the_saved_challenge_in_listing_page() throws InvalidFormatException, IOException {
	    rc.challengeSearch();
	}

	@Then("Validate Start challenge function")
	public void validate_Start_challenge_function() throws InvalidFormatException, IOException {
	    rc.startChallenge();
	}

	@Then("Validate discard function for edit challenge")
	public void validate_discard_function_for_edit_challenge() throws InvalidFormatException, IOException  {
		rc.cancelEditValidation();
	}

	@Then("Validate the created challenge")
	public void validate_the_created_challenge() throws InvalidFormatException, IOException  {
		rc.readingChallengeValidation();
	}

	@Then("Edit all the mandatory fields & validate the edited challenge")
	public void edit_all_the_mandatory_fields_validate_the_edited_challenge() throws Exception {
		rc.editChallenge();
	}

	//@ChallengesListing
	@Then("Find & validate the created challenge in creator challenge dashboard")
	public void find_validate_the_created_challenge_in_creator_challenge_dashboard() throws InvalidFormatException, IOException {
		rc.chlgDashboard();
	}

	@Then("validate leave challenge function")
	public void validate_leave_challenge_function() throws IOException {
		rc.leaveChlng();
	}

	//@ParticipantView
	@Then("Validate Accept challenge function")
	public void validate_Accept_challenge_function() throws InvalidFormatException, IOException {
		rc.acceptRejectChallenge(true);
	}

	@Then("Valiate participant view")
	public void valiate_participant_view() throws InvalidFormatException, IOException {
		rc.participantScreen();
	}
	
	//@MessageCentre
	@Then ("User is navigate to the message center Page")
    public void User_should_be_navigated_to_the_message_center_Page() throws InterruptedException, Exception {
		rc.loginMessagecenter();
		logger.info("Verify the message related to RC invite #Pass");
    }
	@Then ("User should able select and see messages")
    public void User_should_able_to_select_and_see_olny_messages_by() throws InterruptedException, Exception {
		rc.dropdownMsg();
		logger.info("Verify user able to access menu in the dropdown #Pass");
    }

	@Then ("Check last messsage display first")
	public void check_last_message_display_first(){
		rc.validateMessage();
		logger.info("Verify the user able to delete Messages from the list #Pass");
		logger.info("Verify latest message appears on top of the message list #Pass");
	}
	
	@Then ("User should get invite message in message center Page")
	public void user_should_get_invite_message_in_message_center_page() throws InvalidFormatException, IOException{
		rc.CheckInviteMessage();
		logger.info("Verify user able to navigate inside the message details screen #Pass");
	}
	
	//@Report Abuse
	
	@Then ("User is navigate to the challenge Name")
    public void User_is_navigate_to_the_challenge_Name() throws InterruptedException, Exception {
		 rc.challengeSearch();
    }
	@Then ("user able to navigate to the Report Abuse screen")
    public void user_able_to_navigate_to_the_Report_Abuse_screen() throws InterruptedException, Exception {
		
		rc.navigateToReportAbuse();
    }

	@Then ("user able to enter grievance details with max length of characters")
	public void user_able_to_enter_grievance_details_with_max_length_of_characters() throws InvalidFormatException, IOException{
		rc.maxlengthchar();
	}
	
	@Then("User should not submit CTA should not be enabled unless min characters are entered in grievance details")
	public void user_should_not_submit_CTA_should_not_be_enabled_unless_min_characters_are_entered_in_grievance_details() throws InvalidFormatException, IOException {
		rc.minlengthchar();
	}
	@Then("Log into the app and navigate to reading challenge")
	public void Log_into_the_app_and_navigate_to_reading_challenge() throws InvalidFormatException, IOException {
		rc.bookClub();
	}
	@When("Login as invited user {string} and {string}")
	public void login_as_invited_user(String iUserName, String iPassword) throws InvalidFormatException, IOException {
		Login_RWD.rwd_Login(iUserName, iPassword);
	}

}
