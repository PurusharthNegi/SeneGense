package com.stepdefinitionWeb;

import java.io.IOException;
import java.text.SimpleDateFormat;
import java.util.Calendar;
import java.util.List;

import com.base.CapabilitiesAndWebDriverUtils;
import com.pom_RWD.*;
import org.apache.commons.lang.RandomStringUtils;
import org.junit.Assert;


import cucumber.api.java.en.Given;
import cucumber.api.java.en.Then;
import cucumber.api.java.en.When;

import org.openqa.selenium.Keys;
import org.openqa.selenium.WebDriver;
import org.openqa.selenium.WebElement;

public class RWD_CreateAChallengeBasicChallengeDetails_StepDef extends CapabilitiesAndWebDriverUtils {
	public static String challengeNameActual;
	public static String challengeNameExpected = "Automation-April30";
	public static String descriptionActual;
	public static String descriptionExpected = "Automation Testing Verifying Description box";
	
	
	WebDriver driver;
	
	RWD_BookClubLandingScreen b = new RWD_BookClubLandingScreen();
	RWD_CreateAChallengeBasicChallengeDetails createBasicchallenge = new RWD_CreateAChallengeBasicChallengeDetails();
	RWD_CreateAChallengeSearchAndInviteFriends searchfriends = new RWD_CreateAChallengeSearchAndInviteFriends();
	RWD_CreateaChallengeSearchTitleResultsListView searchtitlesListView = new RWD_CreateaChallengeSearchTitleResultsListView();
	RWD_CreateAChallengeCreatorRCDetailsScreen rcdetails = new RWD_CreateAChallengeCreatorRCDetailsScreen();
	RWD_BookClubLandingScreen rwdbookclub = new RWD_BookClubLandingScreen();
	RWD_ReadingChallengeAcceptRejectChallenge accept = new RWD_ReadingChallengeAcceptRejectChallenge();
	RWD_ReadingChallengeChallengeAcceptedConfirmation acceptconfirmation = new RWD_ReadingChallengeChallengeAcceptedConfirmation();
	RWD_EditChallengeUpDateRcDetailsDcreen editupdaterc= new RWD_EditChallengeUpDateRcDetailsDcreen();

	@Given("User is on the Book club landing Page")
	public void user_is_on_the_Book_club_landing_Page() {
		Assert.assertEquals(IsDisplayedWebElement(b.getRWDaddCTAWeb()), true);
	}

	@When("User taps on the {string} CTA")
	public void user_taps_on_the_CTA(String string) {
		ClickOnWebElement(b.getRWDaddCTAWeb());
	}

	@Then("User should be navigated to the Create Challenge Page")
	public void user_should_be_navigated_to_the_Create_Challenge_Page() {
		Assert.assertEquals(IsDisplayedWebElement(createBasicchallenge.getCCHeader()), true);
	}

	@Then("User should be able to enter a unique challenge name with a character limit of min {int} & max {int} characters")
	public void user_should_be_able_to_enter_a_unique_challenge_name_with_a_character_limit_of_min_max_characters(

			Integer int1, Integer int2) throws InterruptedException {
		// reuse.SendKeysOnWebElement(createBasicchallenge.getRWDChallengenametextbar(),
		// 20, 2,RandomStringUtils.randomAlphanumeric(3));
		SendKeysOnWebElement(createBasicchallenge.getRWDChallengenametextbar(),"Automation-April30");
		challengeNameActual = createBasicchallenge.getRWDChallengenametextbar().getText();
		logger.info("Entering Username and password");
		// String ActualTitle =
		// createBasicchallenge.getThreeOfSixtyfourTextValidation().getText();
		// String ExpectedTitle = "3 / 64 Characters";
		// Assert.assertEquals(ExpectedTitle, ActualTitle);
		// createBasicchallenge.getRWDChallengenametextbar().clear();
		// Thread.sleep(3000);
		// reuse.SendKeysOnWebElement(createBasicchallenge.getRWDChallengenametextbar(),
		// 20, 2,RandomStringUtils.randomAlphanumeric(64));

		// String ActualTitle1 =
		// createBasicchallenge.getThreeOfSixtyfourTextValidation().getText();
		// String ExpectedTitle1 = "64 / 64 Characters";
		// Assert.assertEquals(ExpectedTitle1, ActualTitle1);
		SendKeysOnWebElement(createBasicchallenge.getRWDChallengedescriptiontextbar(),
				"Automation Testing Verifying Description box");

	}

	@Then("User should be able to create a challange without having anything in {string} field")
	public void user_should_be_able_to_create_a_challange_without_having_anything_in_field(String string)
			throws InterruptedException {
		ClickOnWebElement(createBasicchallenge.getRWDaddfriendCTA());
		ClickOnWebElement(searchfriends.getRWD_SearchStudentName());
		SendKeysOnWebElement(searchfriends.getRWD_SearchStudentName(), "Frank-phs2");
		ClickOnWebElement(searchfriends.getRWDInviteOption());
		ClickOnWebElement(searchfriends.getRWDAddToChallenge());
		Thread.sleep(2000);
		ClickOnWebElement(createBasicchallenge.getRWDsetReminder());
		ClickOnWebElement(createBasicchallenge.getRWDweeklyOption());
		Thread.sleep(2000);
		ClickOnWebElement(createBasicchallenge.getRWDcalenderImage());
		Thread.sleep(2000);

		// ClickOnWebElement(createBasicchallenge.getRWDNextMonthArrow(), 30, 2);

		Thread.sleep(2000);
		ClickOnWebElement(createBasicchallenge.getRWDDate());
		Thread.sleep(3000);
		javascriptScroll(createBasicchallenge.getRWDaddTitlesCTA());
		ClickOnWebElement(createBasicchallenge.getRWDaddTitlesCTA());
		ClickOnWebElement(searchtitlesListView.getRWD_SearchTitleBox());
		SendKeysOnWebElement(searchtitlesListView.getRWD_SearchTitleBox(), "Harry Potter");
		ClickOnWebElement(searchtitlesListView.getRWD_HarryPotter());
		ClickOnWebElement(searchtitlesListView.getRWDMoreIcon());
		ClickOnWebElement(searchtitlesListView.getRWDAddToChallenge());
		Thread.sleep(4000);
		javascriptScroll(createBasicchallenge.getRWDStartChallengeBtn());
		ClickOnWebElement(createBasicchallenge.getRWDStartChallengeBtn());
		Thread.sleep(2000);
		ClickOnWebElement(b.getRWDaddCTAWeb());
		Thread.sleep(2000);
		Assert.assertEquals(challengeNameActual, challengeNameExpected);
		Assert.assertEquals(descriptionActual, descriptionExpected);
		ClickOnWebElement(b.getRWDchallengeNamebookclub()); // after creating challenge need to click
		Assert.assertEquals(IsDisplayedWebElement(rcdetails.getRWDheader()), true);
		Assert.assertEquals(IsDisplayedWebElement(rcdetails.getRWDreadingBook()), true);
	}

	@Then("User should be able to add friends to the challenge by tapping on {string} CTA")
	public void user_should_be_able_to_add_friends_to_the_challenge_by_tapping_on_CTA(String string)
			throws InterruptedException {
		ClickOnWebElement(createBasicchallenge.getRWDaddfriendCTA());
		ClickOnWebElement(searchfriends.getRWD_SearchStudentName());
		SendKeysOnWebElement(searchfriends.getRWD_SearchStudentName(),"Frank-phs2");
		ClickOnWebElement(searchfriends.getRWDInviteOption());
		ClickOnWebElement(searchfriends.getRWDAddToChallenge());
		Assert.assertEquals(IsDisplayedWebElement(searchfriends.getRWDaddedFriendCCPage()), true);
	}

//	@Then("And User should be able to tap on the Start Challenge CTA after filling all the mandatory fields by Passing {string} and add book {string}")
//	public void user_should_be_able_to_tap_on_the_Start_Challenge_CTA_after_filling_all_the_mandatory_fields_by_Passing_and_add_book(String username, String Booktitle)
//			throws InterruptedException, IOException {
//		SendKeysOnWebElement(createBasicchallenge.getRWDChallengenametextbar(), 30, 2, "Automation_Challenge_" + RandomStringUtils.randomAlphanumeric(5));
//		ClickOnWebElement(createBasicchallenge.getRWDaddfriendCTA(), 20, 2);
//		ClickOnWebElement(searchfriends.getRWD_SearchStudentName(), 20, 2);
//		SendKeysOnWebElement(searchfriends.getRWD_SearchStudentName(), 30, 2, username);
//		Thread.sleep(3000);
//		ClickOnWebElement(searchfriends.getRWDInviteOption(), 20, 2);
//		Thread.sleep(3000);
//
//		ClickOnWebElement(searchfriends.getRWDAddToChallenge(), 20, 2);
//		Thread.sleep(2000);
//		reuse.ClickOnWebElement(createBasicchallenge.getRWDsetReminder(), 30, 2);
//		ClickOnWebElement(createBasicchallenge.getRWDweeklyOption(), 30, 2);
//		Thread.sleep(2000);
//		ClickOnWebElement(createBasicchallenge.getRWDcalenderImage(), 30, 2);
//		Thread.sleep(2000);
//		ClickOnWebElement(createBasicchallenge.getRWDDate(), 30, 2);
//		Thread.sleep(3000);
//		javascriptScroll(createBasicchallenge.getRWDaddTitlesCTA());
//		ClickOnWebElement(createBasicchallenge.getRWDaddTitlesCTA(), 30, 2);
//		ClickOnWebElement(searchtitlesListView.getRWD_SearchTitleBox(), 30, 2);
//		SendKeysOnWebElement(searchtitlesListView.getRWD_SearchTitleBox(), 30, 2, Booktitle);
//		Thread.sleep(2000);
//
//		ClickOnWebElement(searchtitlesListView.getRWD_HarryPotter(), 30, 2);
//		ClickOnWebElement(searchtitlesListView.getRWDMoreIcon(), 30, 2);
//		ClickOnWebElement(searchtitlesListView.getRWDAddToChallenge(), 30, 2);
//		Thread.sleep(2000);
//		javascriptScroll(createBasicchallenge.getRWDStartChallengeBtn());
//		Thread.sleep(5000);
//		ClickOnWebElement(createBasicchallenge.getRWDStartChallengeBtn(), 30, 2);
//		Thread.sleep(5000);
//		Assert.assertEquals(IsDisplayedWebElement(editupdaterc.getRWDEditChallenge(), 30, 2), true);


//		driver.findElement(By.cssSelector("body")).sendKeys(Keys.CONTROL +"t");
//		ArrayList<String> tabs = new ArrayList<String> (driver.getWindowHandles());
//		driver.switchTo().window(tabs.get(0));
//
//		driver.get(getData("invitedURL"));
//		System.out.println("InvitedURl=" + driver.getCurrentUrl());
//		for (int i = 0; i <= rwdbookclub.getRWDchallengeNameList().size(); i++) {
//
//			String name = rwdbookclub.getRWDchallengeNameList().get(i).getText();
//			if (name.contains("AutomationWebMay5")) {
//
//				ClickOnWebElement(rwdbookclub.getRWDchallengeNamebookclub(), 30, 2);
//
//			}
//
//		}
//		Assert.assertEquals(IsDisplayedWebElement(accept.getRWDchallengeBoard(), 30, 2), true);
//
//		Thread.sleep(7000);
//		ClickOnWebElement(accept.getRWDacceptChallengeBtn(), 30, 2);
//		Thread.sleep(2000);
//		Assert.assertEquals(IsDisplayedWebElement(acceptconfirmation.getRWDChallengeAcceptedText(), 30, 2), true);
//		Thread.sleep(2000);

	
	
	@Then("User should be able to tap on the Start Challenge CTA after filling all the mandatory fields by Passing {string} and add book {string}")
	public void user_should_be_able_to_tap_on_the_Start_Challenge_CTA_after_filling_all_the_mandatory_fields_by_Passing_and_add_book(String username, String Booktitle) throws InterruptedException {
		SendKeysOnWebElement(createBasicchallenge.getRWDChallengenametextbar(),"Automation_Challenge_" + RandomStringUtils.randomAlphanumeric(5));
		ClickOnWebElement(createBasicchallenge.getRWDaddfriendCTA());
		ClickOnWebElement(searchfriends.getRWD_SearchStudentName());
		SendKeysOnWebElement(searchfriends.getRWD_SearchStudentName(), username);
		Thread.sleep(3000);
		ClickOnWebElement(searchfriends.getRWDInviteOption());
		Thread.sleep(3000);

		ClickOnWebElement(searchfriends.getRWDAddToChallenge());
		Thread.sleep(2000);
		ClickOnWebElement(createBasicchallenge.getRWDsetReminder());
		ClickOnWebElement(createBasicchallenge.getRWDweeklyOption());
		Thread.sleep(2000);
		ClickOnWebElement(createBasicchallenge.getRWDcalenderImage());
		Thread.sleep(2000);
		ClickOnWebElement(createBasicchallenge.getRWDDate());
		Thread.sleep(3000);
		javascriptScroll(createBasicchallenge.getRWDaddTitlesCTA());
		ClickOnWebElement(createBasicchallenge.getRWDaddTitlesCTA());
		ClickOnWebElement(searchtitlesListView.getRWD_SearchTitleBox());
		//SendKeysOnWebElement(searchtitlesListView.getRWD_SearchTitleBox(), 30, 2, Booktitle);
		Thread.sleep(2000);

//		ClickOnWebElement(searchtitlesListView.getRWD_HarryPotter(), 30, 2);
//		ClickOnWebElement(searchtitlesListView.getRWDMoreIcon(), 30, 2);
//		ClickOnWebElement(searchtitlesListView.getRWDAddToChallenge(), 30, 2);
		Thread.sleep(2000);
		javascriptScroll(createBasicchallenge.getRWDStartChallengeBtn());
		Thread.sleep(5000);
		ClickOnWebElement(createBasicchallenge.getRWDStartChallengeBtn());
		Thread.sleep(5000);
		Assert.assertEquals(IsDisplayedWebElement(editupdaterc.getRWDEditChallenge()), true);

	}
	
	@Then("User should be able to tap on the start Challenge CTA after filling all the mandatory fields with {string} and {string} title")
	public void user_should_be_able_to_tap_on_the_CTA_after_filling_all_the_mandatory(String invitee, String title) throws InterruptedException, IOException
	{

		String timeStamp = new SimpleDateFormat("yyyyMMdd_HHmmss").format(Calendar.getInstance().getTime());
		challengeNameActual = "AutomationRC"+timeStamp;
		SendKeysOnWebElement(createBasicchallenge.getRWDChallengenametextbar(),challengeNameActual);
		ClickOnWebElement(createBasicchallenge.getRWDaddfriendCTA());
		ClickOnWebElement(searchfriends.getRWD_SearchStudentName());
		SendKeysOnWebElement(searchfriends.getRWD_SearchStudentName(),invitee);
		
		ClickOnWebElement(searchfriends.getRWDInviteOption());
		

		ClickOnWebElement(searchfriends.getRWDAddToChallenge());
		
//		ClickOnWebElement(createBasicchallenge.getRWDsetReminder());
//		ClickOnWebElement(createBasicchallenge.getRWDweeklyOption());
		
		
		javascriptScroll(createBasicchallenge.getRWDcalenderImage());
		ClickOnWebElement(createBasicchallenge.getRWDcalenderImage());
		
		ClickOnWebElement(createBasicchallenge.getRWDDate());
		
		javascriptScroll(createBasicchallenge.getRWDaddTitlesCTA());
		ClickOnWebElement(createBasicchallenge.getRWDaddTitlesCTA());
		
		ClickOnWebElement(searchtitlesListView.getRWD_SearchTitleBox());
		SendKeysOnWebElement(searchtitlesListView.getRWD_SearchTitleBox(),title);
		
		//Keyboard Enter
		searchtitlesListView.getRWD_SearchTitleBox().sendKeys(Keys.ENTER);
		;
		List<WebElement> serachSuggestionListingBooksMoreicon = searchtitlesListView.getRWDserachSuggestionListingBooksMoreicon();
		if(serachSuggestionListingBooksMoreicon.size()>0){
			serachSuggestionListingBooksMoreicon.get(1).click();
		}

//		ClickOnWebElement(searchtitlesListView.getRWD_HarryPotter(), 30, 2);
//		ClickOnWebElement(searchtitlesListView.getRWDMoreIcon(), 30, 2);
		ClickOnWebElement(searchtitlesListView.getRWDAddToChallenge());
		
		javascriptScroll(createBasicchallenge.getRWDStartChallengeBtn());
		Thread.sleep(5000);
		ClickOnWebElement(createBasicchallenge.getRWDStartChallengeBtn());
		Thread.sleep(5000);
		Assert.assertEquals(IsDisplayedWebElement(editupdaterc.getRWDEditChallenge()), true);
		



	}
	


}
