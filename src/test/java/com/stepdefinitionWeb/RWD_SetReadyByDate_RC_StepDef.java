package com.stepdefinitionWeb;

import com.base.CapabilitiesAndWebDriverUtils;
import com.pom_RWD.RWD_CreateAChallengeBasicChallengeDetails;
import com.pom_RWD.RWD_CreateAChallengeCreatorRCDetailsScreen;
import com.pom_RWD.RWD_CreateAChallengeInviteRecentlySearchedFriends;
import cucumber.api.java.en.Then;
import cucumber.api.java.en.When;
import org.junit.Assert;
import org.openqa.selenium.WebDriver;
import org.openqa.selenium.WebElement;

import java.util.List;

public class RWD_SetReadyByDate_RC_StepDef extends CapabilitiesAndWebDriverUtils {
	WebDriver driver;
	
	RWD_CreateAChallengeBasicChallengeDetails createBasicchallenge = new RWD_CreateAChallengeBasicChallengeDetails();


	@Then("User sets reminder {string} with read by date")
	public void user_sets_reminder_with_read_by_date(String string) throws Exception {
		System.out.println("User tries to set reminder for "+string+" with read by date");
		if(createBasicchallenge.getRWDsetReminder().isDisplayed())
		{
			System.out.println("Reminder displayed");
			createBasicchallenge.SelectReminder(string);
			
		}


	}


	@Then("User should be able to view the calendar pop-up up on clicking on set ready by date calender icon")
	public  void view_calenderpopup_upon_clicking_setreadybydate_popup(){
		waitFor(3000);
		javascriptScroll(createBasicchallenge.getRWDsetReminder());
		if (createBasicchallenge.getRWDcalenderImage().isDisplayed()) {
			System.out.println("Set Ready by date calender icon is present");

			ClickOnWebElement(createBasicchallenge.getRWDcalenderImage());
			System.out.println("Set Ready by date calender icon is Clicked");

			IsDisplayedWebElement(createBasicchallenge.getRWDDatePickerSetReadyByDate());
			if(createBasicchallenge.getRWDDatePickerSetReadyByDate().isDisplayed()) {
				System.out.println("Date picker popup is shown ");
				Assert.assertTrue("Date picker popup is shown", true);
			}else{
				System.out.println("Date picker popup is not shown ");
				Assert.assertFalse("Date picker popup is shown",true);
			}
		} else {
			System.out.println("Set Ready by date calender icon is not present");
			Assert.assertFalse("Set Ready by date calender icon is not present", true);
		}


	}

	@Then("User should see that past dates are disabled")
	public  void user_should_see_that_past_dates_are_disabled(){
		if (createBasicchallenge.getRWDDatePickerSetReadyByDate().isDisplayed()) {
			System.out.println("Date picker popup is shown ");
			waitFor(3000);
			List<WebElement> pastdatesFromtodays = createBasicchallenge.getRWDYesterdaysDateonDatePicker();
			System.out.println("Getting previous dates from today ");

			String atrib = pastdatesFromtodays.get(pastdatesFromtodays.size()-1).getAttribute("aria-disabled");
			boolean flag = Boolean.parseBoolean(atrib);
			if(Boolean.parseBoolean(atrib)){
				System.out.println("Verifying yesterdays date is disabled ");
				Assert.assertTrue("yesterdays date is disabled", true);
				System.out.println("yesterdays date is disabled as expected");
			}else {
				Assert.assertFalse("yesterdays date is not disabled ", true);
				System.out.println("yesterdays date is not disabled ");
			}
		} else {
			Assert.assertFalse("Date picker popup is not shown", true);
		}
	}


	@When("User selects future date from calender popup")
	public  void user_selects_future_date_from_calender_popup() {
		if (createBasicchallenge.getRWDDatePickerSetReadyByDate().isDisplayed()) {
			System.out.println("Date picker popup is shown ");
			waitFor(3000);

//			createBasicchallenge.getRWDcalenderImage().click();
//			System.out.println("Set Ready by date calender icon is Clicked");

			ClickOnWebElement(createBasicchallenge.getRWDNextMonthArrow());
			System.out.println("Clicked next month arrow on calender popup");


			String selectingDate = createBasicchallenge.getRWDNextMonthMidDate().getAttribute("aria-label");
			System.out.println("Selecting date of mid date on next month"+selectingDate);
			ClickOnWebElement(createBasicchallenge.getRWDNextMonthMidDate());
			waitFor(2000);
			System.out.println("Selected month mid date on next month");
			Assert.assertTrue("Selected future date of icon is not present", true);

		} else {
			Assert.assertFalse("Set Ready by date calender icon is not present", true);
				}
		}


	@Then("User should see the selected date in create challenge screen")
	public  void User_should_see_the_selected_date_in_create_challenge_screen(){
					Assert.assertFalse("Cant get to selected date", true);

	}




}



