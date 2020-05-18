from behave import given, when, then

@given("an user is already available in the system")
def step_impl(context):
    print("User: demo_user is found for the test")


@when(u'the user enters email_id')
def step_impl(context):
    print("email_id: demo_user@test.com")


@when(u'the user enters password')
def step_impl(context):
    print("password: test123")


@then(u'the user should be logged in')
def step_impl(context):
    print("The user is successully logged in.")
