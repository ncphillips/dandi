Feature: New Campaigns
  Scenario: Successo
    Given I'm on the "new campaign" page
    When I fill out the "#create-campaign" form with
      | Title  | Description             |
      | Strahd | A campaign about Strahd |
    Then I'm on the "campaign" page for
      | Campaign title |
      | Strahd         |
