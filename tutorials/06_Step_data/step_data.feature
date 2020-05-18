Feature: Step data

   This feature demonstrates the use of step data as  [context.text] and [context.table]

Scenario: some scenario
    Given a sample text
    """
    this is a sample text
    """
    When the user checks for the content is lower
    Then the user should get a response as true

Scenario: table scenario
    Given a set of specific users
    | name      | department  |
    | Barry     | Beer Cans   |
    | Pudey     | Silly Walks |
    | Two-Lumps | Silly Walks |
    When we count the number of people in each department
    Then we will find two people in "Silly Walks"
    But we will find one person in "Beer Cans"