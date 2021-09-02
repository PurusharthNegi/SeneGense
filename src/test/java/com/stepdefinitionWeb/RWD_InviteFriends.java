package com.stepdefinitionWeb;

import cucumber.api.java.en.Given;
import cucumber.api.java.en.Then;
import cucumber.api.java.en.When;
import org.junit.Assert;
import org.openqa.selenium.JavascriptExecutor;
import org.openqa.selenium.WebDriver;

import com.base.CapabilitiesAndWebDriverUtils;

import com.pom_RWD.RWD_CreateAChallengeInviteRecentlySearchedFriends;

import cucumber.api.java.en.And;
import cucumber.api.java.en.But;
import org.openqa.selenium.WebElement;
import org.openqa.selenium.interactions.Actions;

import java.lang.reflect.Array;
import java.util.List;

public class RWD_InviteFriends extends CapabilitiesAndWebDriverUtils  {
	WebDriver driver;
	
	RWD_CreateAChallengeInviteRecentlySearchedFriends rcinvitefriend = new RWD_CreateAChallengeInviteRecentlySearchedFriends();
	String addedFriendName;

	@When("User click on Add CTA Challenge friends button")
	public void user_taps_on_the_AddFriends_CTAButton() throws Exception {

		if (IsDisplayedWebElement(rcinvitefriend.RWD_AddFriendsCTA_Challenge()))
			ClickOnWebElement((rcinvitefriend.RWD_AddFriendsCTA_Challenge()));
		else {
			throw new Exception("Add friends CTA button not displayed");
		}

	}

	@Then("User should be navigated to invite friend page")
	public void user_should_be_navigated_to_the_Create_Challenge_Page() throws Exception {
		if (IsDisplayedWebElement(rcinvitefriend.RWD_InviteFriendsLabel()))
			Assert.assertTrue(rcinvitefriend.RWD_InviteFriendsLabel().isEnabled());

		else {
			throw new Exception("Invite Friends screen not shown");
		}

	}

	@Then("User should be able to view list of recently searched friends list")
	public void User_views_list_of_recently_searched_friends_list() throws Exception {
		waitFor(5000);
		List<WebElement> friendslist = rcinvitefriend.RWD_InviteFriendLists();
		if (friendslist.size() >= 1) {
			Assert.assertEquals(friendslist.get(0).getText(), "INVITE");
			System.out.println("No of recent search friends list" + friendslist.size());
		} else {
			throw new Exception("No recent search results for friends");
		}

	}

	@Then("User should be able to tap on Invite for a first friend to add them to the list of invitees")
	public void addfriends_from_recent_search_results() throws Exception {
		waitFor(5000);
		List<WebElement> friendslist = rcinvitefriend.RWD_InviteFriendLists();
		List<WebElement> friendsName = rcinvitefriend.RWD_InviteFriendNameLists();
		if (friendsName.size() >= 1) {
			addedFriendName = friendsName.get(0).getText().trim();
			friendslist.get(0).click();
			System.out.println("Clicked on first student name" + friendsName.get(0).getText());
		} else {
			throw new Exception("No recent search results for friends");
		}

	}


	@Then("User should able to view Add to Challenge button")
	public void User_should_able_view_add_to_challenge_button() throws Exception {
		if (IsDisplayedWebElement(rcinvitefriend.RWD_AddtoChallengeButton())) {
			Assert.assertTrue(rcinvitefriend.RWD_AddtoChallengeButton().isEnabled());
			ClickOnWebElement(rcinvitefriend.RWD_AddtoChallengeButton());
			waitFor(5000);

		} else {
			throw new Exception("Add to Challenge button is not displayed on search friends screen");
		}

	}


	@Then("User should able to view the added friends name on create challenge screen")
	public void AddedName_should_show_createchallenge_screen() throws Exception {
		waitFor(5000);
		List<WebElement> addedfriendnames = rcinvitefriend.RWD_AddedFrinedsName_RCpage();
		boolean flag = false;
		for (int i = 0; addedfriendnames.size() >= i; i++) {
			String a = addedfriendnames.get(i).getText();
			if (addedfriendnames.get(i).getText().contains(addedFriendName)) {
				System.out.println("Expected name is :" + addedFriendName + " and actual name present is " + a);
				Assert.assertTrue(addedfriendnames.get(i).isEnabled());
				flag = true;
				break;

			}
		}
		Assert.assertTrue("Added name is shown in create challenge screen", flag);

	}


	@Then("User should able to remove the added friend in search result screen")
	public void remove_added_friends_from_search_friendScreen() throws Exception {
		waitFor(5000);
		List<WebElement> closeiconAddedfriends = rcinvitefriend.RWD_AddedNameCloseiconSearchFrineds();
		List<WebElement> addedfriendsname = rcinvitefriend.RWD_AddedNameinSearchFrineds();
		boolean flag = false;
		if (addedfriendsname.size() == closeiconAddedfriends.size()) {

			for (int i = 0; addedfriendsname.size() >= i; i++) {
				if (addedfriendsname.get(i).getText().contains(addedFriendName)) {
					closeiconAddedfriends.get(i).click();
					waitFor(2000);
					flag = true;
					break;

				}
			}
//				List<WebElement> removedfriendsname = rcinvitefriend.RWD_AddedNameinSearchFrineds();
//				if(removedfriendsname.size()==(closeiconAddedfriends.size()-1)){
//					Assert.assertTrue("added friend name got removed",true);
//				}else
//					Assert.assertFalse("added friend name is not removed",true);

		} else {
			throw new Exception("Added friend name and close icon count is not matched");
		}
		Assert.assertTrue("Added name is shown in search friends screen", flag);

	}

	@Then("User should be able to view the list of 5 recently searched friends")
	public void view_five_recently_searched_friends() throws Exception {
		waitFor(5000);
		List<WebElement> friendslist = rcinvitefriend.RWD_InviteFriendLists();
		if (friendslist.size() == 5) {
			Assert.assertTrue("No of recently searched friends list shows 5", true);
			System.out.println("No of recent search friends list" + friendslist.size());
		} else {
			throw new Exception("No recent search results for friends");
		}
	}

	@Then("User should be able to view the count of users invited on the Invite CTA")
	public void view_count_of_invited_friends() throws Exception {
		waitFor(5000);
		List<WebElement> RWD_AddedNameinSearchFrineds = rcinvitefriend.RWD_AddedNameinSearchFrineds();
		String inviteCount, temp;
		int i = 0;
		if (IsDisplayedWebElement(rcinvitefriend.RWD_AddtoChallengeButton())) {
			Assert.assertTrue(rcinvitefriend.RWD_AddtoChallengeButton().isEnabled());
			temp = rcinvitefriend.RWD_InviteCountCTA_RC().getText().replace("(", "");
			inviteCount = temp.replace(")", "");
			i = Integer.parseInt(inviteCount);
			if (RWD_AddedNameinSearchFrineds.size() == i) {
				Assert.assertTrue("Invited friends count is shown add to challenge", true);
				System.out.println("Added invitees count " + RWD_AddedNameinSearchFrineds.size() + " and count shown in CTA " + i);
			} else {
				Assert.assertFalse("Invited friends count is not matched in add to challenge", true);
			}
		} else {
			throw new Exception("Add to Challenge button is not displayed on search friends screen");
		}

	}


	@Then("User should be able to add as many friends as required to the invitees list\u200Bfrom recently searched")
	public void add_invitees_as_many_from_recently_searched() throws Exception {
		waitFor(5000);
		List<WebElement> friendslist = rcinvitefriend.RWD_InviteFriendLists();
		List<WebElement> friendsName = rcinvitefriend.RWD_InviteFriendNameLists();
		int friendslistCount = friendsName.size();
		if ( friendslistCount> 0) {
			for(int i=0;i<=friendslistCount-1;i++) {
				javascriptScroll(friendslist.get(i));
				waitFor(500);
				ClickOnWebElement(friendslist.get(i));
			}

		} else {
			throw new Exception("No recent search results for friends");
			   }
		javascriptScroll(friendslist.get(0));
		List<WebElement> addedinvites =  rcinvitefriend.RWD_AddedNameinSearchFrineds();
		if(friendslist.size()==rcinvitefriend.RWD_AddedNameinSearchFrineds().size())
			Assert.assertTrue("all invitees from recent list are added  ",true);
		else
			Assert.assertFalse("all invitees from recent list are not added ",true);

	}

}



