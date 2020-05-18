Feature: Voter Eligibilty Check

   this feature demonstrates the use of Scenario Outlines and Exmaples


Scenario Outline: Verify user is eligible for voting
    Given the user is in voter eligibility page
    When he enters his <name> and <age>
    Then his status should be <status>
Examples:
| name     | age    | status        |
| Dino     | 28     | eligible      |
| Arlo     | 5      | not-eligible  |
