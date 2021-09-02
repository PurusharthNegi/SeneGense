package com.stepdefinitionWeb;


import com.base.CapabilitiesAndWebDriverUtils;
import com.pom_RWD.RWD_BookClubLandingScreen;
import com.pom_RWD.RWD_CreateaChallenge_AddTitles;
import cucumber.api.java.en.And;
import cucumber.api.java.en.Given;
import org.junit.Assert;

public class RWD_CreateaChallenge_AddTitles_StepDefs extends CapabilitiesAndWebDriverUtils {
    RWD_BookClubLandingScreen b = new RWD_BookClubLandingScreen();
    RWD_CreateaChallenge_AddTitles createChallenge= new RWD_CreateaChallenge_AddTitles();

    @Given("User is logged in")
    public void userIsLoggedIn() throws InterruptedException {
        Thread.sleep(5000);
        Assert.assertTrue(createChallenge.getRWD_Logo().isEnabled());
        Assert.assertTrue(createChallenge.getRWD_BookClubText().isDisplayed());
    }
//
//    @And("User is on the Book club landing Page")
//    public void userIsOnTheBookClubLandingPage() throws InterruptedException {
//        Thread.sleep(5000);
//        Assert.assertTrue(createChallenge.RWD_ChallengeTab.isEnabled());
//        createChallenge.RWD_ChallengeTab.click();
//
//    }
//
//    @When("User taps on the {string} CTA")
//    public void userTapsOnTheCTA(String arg0) {
//        Assert.assertTrue(createChallenge.RWD_CreateChallengeLink.isDisplayed());
//        createChallenge.RWD_CreateChallengeLink.click();
//
//    }
//
//    @Then("User should be navigated to the Create Challenge Page")
//    public void userShouldBeNavigatedToTheCreateChallengePage() {
//        Assert.assertTrue(createChallenge.RWD_CreateChallengeHeader.isDisplayed());
//
//
//    }

    @And("User should be able to enter a unique challenge name under the Enter challenge name field")
    public void userShouldBeAbleToEnterAUniqueChallengeNameUnderTheEnterChallengeNameField() throws InterruptedException {
        Thread.sleep(5000);
        createChallenge.RWD_EnterChallengeName.sendKeys("CreateChallenge_"+RandomStringGenerate());
        Thread.sleep(5000);
    }

//    @And("User should be able to enter a unique challenge name with a character limit of min {int} & max {int} characters")
//    public void userShouldBeAbleToEnterAUniqueChallengeNameWithACharacterLimitOfMinMaxCharacters(int arg0, int arg1) throws InterruptedException {
//        createChallenge.RWD_EnterChallengeName.sendKeys("CreateChallenge_"+ RandomStringUtils.randomAlphanumeric(48));
//        Thread.sleep(5000);
//    }
//
//    @And("User should be able to create a challange without having anything in {string} field")
//    public void userShouldBeAbleToCreateAChallangeWithoutHavingAnythingInField(String arg0) throws InterruptedException {
//        createChallenge.RWD_EnterDescription.isEnabled();
//        Thread.sleep(5000);
//        createChallenge.RWD_AddFriends.click();
//        Thread.sleep(5000);
//        createChallenge.RWD_SearchStudentName.click();
//        Thread.sleep(2000);
//        createChallenge.RWD_SearchStudentName.sendKeys("Photon");
//        Thread.sleep(5000);
//
//    }
}
