package com.stepdefinitionWeb;

import java.io.IOException;

import org.apache.logging.log4j.LogManager;
import org.apache.logging.log4j.Logger;
import org.apache.poi.openxml4j.exceptions.InvalidFormatException;
import org.junit.Assert;

import com.base.CapabilitiesAndWebDriverUtils;
import com.pom_RWD.Login_RWD;
import com.pom_RWD.RWD_BookClubLandingScreen;
import com.pom_RWD.RWD_RC_Smoke;
import com.pom_RWD.RWD_UIRefresh_PageHit;

import cucumber.api.java.en.And;
import cucumber.api.java.en.Given;
import cucumber.api.java.en.When;

public class RWD_RC_Smoke_StepDef extends CapabilitiesAndWebDriverUtils {
	private static final Logger logger = LogManager.getLogger();
	Login_RWD rwd_Login = new Login_RWD();
	RWD_RC_Smoke rwd_rc_smoke=new RWD_RC_Smoke();
	
	
	@And("Validate Book club landing Page")
	public void user_is_on_the_Book_club_landing_Page() throws InvalidFormatException, IOException {
		rwd_rc_smoke.bookClubLanding();
		logger.info("Log into the app and navigate to Book Club #Pass");
		
	}
	
	@And("Validate Create Challenge Icon")
	public void Validate_Create_Challenge_Iconuser_taps_on_the_CTA() throws InvalidFormatException, IOException {
		rwd_rc_smoke.createChallengeIcon();
		logger.info("Click on Create Challenge #Pass");
	}
	@And("Validate Enter Challenge Name")
	public void Validat_Enter_Challenge_Name() throws InvalidFormatException, IOException {
		rwd_rc_smoke.createchallengeName();
		logger.info("Enter challenge name #Pass");
		
	}
	@And("Validate Enter Challenge Description")
	public void Validate_Enter_Challenge_Description() throws InvalidFormatException, IOException
	{
		rwd_rc_smoke.enterchallengeDesc();
		logger.info("Enter description #Pass");
	}
	@And("Validate Search and add invite Friend")
	public void Validat_Search_and_add_invite_Friend() throws Exception
	{
		rwd_rc_smoke.searchInviteFriends();
		logger.info("Search and add invite Friend #Pass")
;	}
	@And("Validate Set Reminder")
	public void Validate_Set_Reminder() throws InvalidFormatException, IOException
	{
		rwd_rc_smoke.setReminder(false);	
		logger.info("Set Reminder #Pass");
	}
	@And("Validate Set Read By Date")
	public void Validate_Set_Read_By_Date() throws IOException
	{
		rwd_rc_smoke.setreadDate();
		logger.info("Set Read by Date #Pass");
	}
	@And("Validate Search and Add Title")
	public void Validate_Search_and_Add_Title() throws InvalidFormatException, IOException
	{
		rwd_rc_smoke.addTitle();
		logger.info("Search title and add title #Pass");
	}
	@And("Validate Save the Challenge with details")
	public void Validate_Save_the_Challenge_with_details() throws IOException
	{
		rwd_rc_smoke.savechanges();
		logger.info("Save the Challenge with details #Pass");
	}
	@And("Validate Create Challenge")
	public void Validate_Create_Challenge() throws InvalidFormatException, IOException
	{
		rwd_rc_smoke.validatecreateChallenge();
		logger.info("Create a challenge #Pass");
	}
	@And("Validate Edit Challenge")
	public void Validate_Edit_Challenge() throws InvalidFormatException, IOException
	{
		rwd_rc_smoke.editchallenges();
		logger.info("Edit the created challenge #Pass");
	}
	@And("Validate Verify the created challenge in creater challenge dashboard")
	public void Validate_Verify_the_created_challenge_in_creater_challenge_dashboard() throws InvalidFormatException, IOException
	{
		rwd_rc_smoke.validatechallengeDashboard();
		logger.info("Verify User able to edit the challenge in  challenge detail screen #Pass");
	}
	@And("Login as Invited user {string} and {string} click submit button")
	public void Login_as_Invited_User_Name_and_Password_click_submit_button(String UserName,String Password) throws InvalidFormatException, IOException
	{
		rwd_Login.loginWeb(UserName, Password);
		logger.info("Login as invited user #Pass");
	}
	@And("Validate Accept challenge and challenge confirmation page")
	public void Validate_Accept_challenge_and_challenge_confirmation_page() throws InvalidFormatException, IOException
	{
		rwd_rc_smoke.validateAcceptChallenge(true);
		logger.info("Accept the challenge #Pass");
		logger.info("Verify the challenge in Challenge dashboard #Pass");
	}
	@And("Validate the challenge details when participant click on it on Challenge dashboard")
	public void Validate_the_challenge_details_when_participant_click_on_it_on_Challenge_dashboard() throws InvalidFormatException, IOException
	{
		rwd_rc_smoke.validateChallengesparticipant();
		logger.info("Verify the challenge details when click on it on Challenge dashboard #Pass");
	}
}
