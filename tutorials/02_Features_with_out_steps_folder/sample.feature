# A Feature file is the entry point / main for 'behave'
# the feature holds the name and details of a feature in the form of one or more 'Scnerios'
# Scenarios are converted into testcases by behave

# Keyword: 'Feature'
# A one line title should be given to the Feature keyword, followed by Feature description


Feature: Login positive

   this feature demostrates all the positive cases of Login.

# Keyword: 'Scenario'
# Scenario: The title or name of the Scenario

# Steps
# Steps: Given, When, Then, And, But all are considered as steps

# The “Given”, “When” and “Then” parts of this prose form the actual steps that will be taken by behave in testing your system. 
# These map to Python step implementations.

# Given we put the system in a known state before the user (or external system) starts interacting with the system (in the When steps). Avoid talking about user interaction in givens.

# When we take key actions the user (or external system) performs. This is the interaction with your system which should (or perhaps should not) cause some state to change.

# Then we observe outcomes.

#“And” or “But” are also a step - these are renamed by behave to take the name of their preceding step.

Scenario: Login with valid user
Given an user is already available in the system
When the user enters email_id
And the user enters password
Then the user should be logged in

Scenario: Login after registering for the first time
Given a new user registers with the system
When the user enters email_id
And the user enters password
Then the user should be logged in

# to run this feature, just navigate to the path and use the command 'behave'
# $ behave sample.feature
# however, since we do not have the steps implementation, behave will throw an error
# Expected error -
# __ConfigError: No steps directory in '../behave_bdd_framework/tutorials/02_Features'__
