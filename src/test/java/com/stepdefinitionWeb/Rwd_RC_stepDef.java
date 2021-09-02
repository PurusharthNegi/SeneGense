package com.stepdefinitionWeb;

import java.io.IOException;

import org.apache.poi.openxml4j.exceptions.InvalidFormatException;

import com.pom_RWD.Rwd_RC;

import cucumber.api.java.en.Then;

public class Rwd_RC_stepDef {

	Rwd_RC rc= new Rwd_RC();
	
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
    }
	@Then ("User should able select and see messages")
    public void User_should_able_to_select_and_see_olny_messages_by() throws InterruptedException, Exception {
		rc.dropdownMsg();
    }

	@Then ("Check last messsage display first")
	public void check_last_message_display_first(){
		rc.validateMessage();
	}
	
	@Then ("User should get invite message in message center Page")
	public void user_should_get_invite_message_in_message_center_page() throws InvalidFormatException, IOException{
		rc.CheckInviteMessage();
	}
	
	//@Report Abuse 05
	
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
	
	@Then("Check Invited challenge message is available for participant")
	public void Check_Invited_challenge_message_is_available_for_participant() throws InterruptedException, Exception {
		rc.checkInviteMessage();
	}

	@Then("Check view message for Scenario- RC Update name")
	public void Check_view_message_for_Scenario_RC_Update_name() throws InterruptedException, Exception {
		rc.checkRCUpdateName();
	}

	@Then("Check view message for Scenario- RC Update end date")
	public void Check_view_message_for_Scenario_RC_Update_end_date() throws InvalidFormatException, IOException {
		rc.checkRCUpdateEndDate();
	}

	@Then("Check view message  for Scenario- RC Add new title")
	public void Check_view_message_for_Scenario_RC_Add_new_title() throws InvalidFormatException, IOException {
		rc.checkRCAddTitle();
	}

	@Then("Check view message for Scenario- RC Remove title")
	public void Check_view_message_for_Scenario_RC_Remove_title() throws InvalidFormatException, IOException {
		rc.checkRCRemoveTitle();
	}

	@Then("Check view message for Scenario- RC Invite accepted")
	public void Check_view_message_for_Scenario_RC_Invite_accepted() throws InvalidFormatException, IOException {
		rc.checkInviteAccept();
	}

	@Then("Check view message and for Scenario- RC Invite rejected")
	public void Check_view_message_and_for_Scenario_RC_Invite_rejected() throws InvalidFormatException, IOException {
		rc.checkInviteRejected();
	}

	@Then("Check view any message for Scenario- RC Leave RC")
	public void Check_view_any_message_for_Scenario_RC_Leave_RC() throws InvalidFormatException, IOException {
		rc.checkRCLeave();
	}
	
	@Then("check view Report abuse message")
	public void check_view_Report_abuse_message() throws InvalidFormatException, IOException {
	   // rc.checkAbuseMessage();
	}

}
