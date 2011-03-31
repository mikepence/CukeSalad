Feature: Your First Step
  As a Step Free Cuker
  You want guidance on how you establish the role
  So that you know what to do next

  Scenario: We'll tell you what you need to do to establish the role
    Given you are a Step Free Cuker
    And   you were able to create a new Cuke Salad project
    But   you did not create a role: called 'NewCustomer'
    When  you attempt to run a scenario: containing
      """
      Given I am a New Customer
      """
    Then you should see the step has 'failed'
    And  you should see a reply that includes:
      """
            I can't find a role called 'NewCustomer'. Have you created it?
            e.g.
              module NewCustomer
              end
      """

  Scenario: Once you've created the role, you see the step pass
    Given you are a Step Free Cuker
    And   you were able to create a new Cuke Salad project
    And   you did create a role: called 'NewCustomer'
    When  you attempt to run a scenario: containing
    """
    Given I am a New Customer
    """
    Then you should see the step has 'passed'
