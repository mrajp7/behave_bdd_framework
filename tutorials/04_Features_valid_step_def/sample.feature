# A 'steps' folder is added in the same directory level of the feature. 
# However no .py file is created in the folder that will have the definition of steps mentioned here

Feature: Login positive

   this feature demostrates all the positive cases of Login.


Scenario: Login with valid user
Given an user is already available in the system
When the user enters email_id
And the user enters password
Then the user should be logged in

# to run this feature, just navigate to the path and use the command 'behave'
# $ behave sample.feature

# to have the print statement included in the command line output
# $ behave sample.feature --no-capture