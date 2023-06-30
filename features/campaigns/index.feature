Feature: Campaigns Index
  Scenario: Zero Campaigns
    Given I am on the "campaigns" page
    Then I should see "You aren't in any campaigns yet."

  Scenario: One Campaign
    Given the following campaign exists
      | title  | description |
      | Strahd | Blehhh      |
    Given I am on the "campaigns" page
    Then I should see "Strahd"
    And I should see "Blehhh"