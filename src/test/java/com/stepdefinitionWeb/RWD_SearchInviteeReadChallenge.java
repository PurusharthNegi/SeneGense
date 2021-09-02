package com.stepdefinitionWeb;

import com.base.CapabilitiesAndWebDriverUtils;
import com.pom_RWD.RWD_CreateAChallengeInviteRecentlySearchedFriends;
import cucumber.api.java.en.Then;
import cucumber.api.java.en.When;
import org.junit.Assert;
import org.openqa.selenium.WebDriver;
import org.openqa.selenium.WebElement;

import java.util.List;

public class RWD_SearchInviteeReadChallenge extends CapabilitiesAndWebDriverUtils  {
	WebDriver driver;
	
	RWD_CreateAChallengeInviteRecentlySearchedFriends rcinvitefriend = new RWD_CreateAChallengeInviteRecentlySearchedFriends();



	@When("User search with {string} three characters keyword in search box")
	public void user_searchs_student_name(String searchFriends) throws Exception {
		if (IsDisplayedWebElement(rcinvitefriend.RWD_SearchStudentName())){
			Assert.assertTrue("search student text field is displayed",true);
			rcinvitefriend.RWD_SearchStudentName().clear();
			rcinvitefriend.RWD_SearchStudentName().sendKeys(searchFriends);
			waitFor(3000);
			System.out.println("User entered the search student name as :"+searchFriends);
		}
		else {
			throw new Exception("Search student text field is not displayed");
		}

	}

	@Then("User should view the Search Student name search box")
	public void user_should_view_search_student_name_search_box() throws Exception {
		if (IsDisplayedWebElement(rcinvitefriend.RWD_SearchStudentName())){
			Assert.assertTrue("search student text field is displayed",true);
		}
		else {
			throw new Exception("Search student text field is not displayed");
		}

	}

	@Then("User should be able to view the suggested search results based on the search input")
	public void User_views_list_of_suggestion_for_searched_keywords() throws Exception {
		waitFor(5000);

		if (IsDisplayedWebElement(rcinvitefriend.RWD_StudentFound_section_title())){
			Assert.assertTrue("search suggestion is displayed for searched keyword",true);
				List<WebElement> friendsnamelist = rcinvitefriend.RWD_InviteFriendNameLists();
				System.out.println("search suggestions count is " + friendsnamelist.size());
				if (friendsnamelist.size() > 1) {
					Assert.assertTrue("search suggestions are shown",true);
					
				} else {
					throw new Exception("search suggestions are not shown");
				}
		}
		else {
			throw new Exception("Recently Search student text field is not displayed");
		}

	}

	@Then("User should not able to view search suggestions")
	public void user_not_to_view_search_suggestion() throws Exception {
		waitFor(5000);
		if ( rcinvitefriend.RWD_recently_searched_section_title().isDisplayed()){
            Assert.assertTrue("search suggestion is not displayed for searched keyword",true);
		}
		else {
            Assert.assertFalse("Recently search list is not displayed ",true);
			}
	    }



}



