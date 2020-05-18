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

# Expected Output:

# You can implement step definitions for undefined steps with these snippets:

# @given(u'an user is already available in the system')
# def step_impl(context):
#     raise NotImplementedError(u'STEP: Given an user is already available in the system')


# @when(u'the user enters email_id')
# def step_impl(context):
#     raise NotImplementedError(u'STEP: When the user enters email_id')


# @when(u'the user enters password')
# def step_impl(context):
#     raise NotImplementedError(u'STEP: When the user enters password')


# @then(u'the user should be logged in')
# def step_impl(context):
#     raise NotImplementedError(u'STEP: Then the user should be logged in')