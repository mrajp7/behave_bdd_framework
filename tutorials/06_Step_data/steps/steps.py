from behave import given,when,then


@given("a sample text")
def get_text(context):
    print("the provide text is stored in the variable - " + context.text)
    context.to_check = context.text


@when("the user checks for the content is lower")
def checks_for_lower(context):
    context.text_lower = context.to_check.islower()


@then("the user should get a response as true")
def valid_text_is_lower(context):
    assert True == context.text_lower
