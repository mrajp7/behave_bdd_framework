from behave import given, when, then

@given("the user is in voter eligibility page")
def on_voter_eligibility_page(context):
    pass

@when("he enters his {_name} and {_age}")
def store_user_info(context,name,age):
    context.user_name = name
    context.user_age = age
    context.status = get_status(int(age))

@then("his status should be {want}")
def verify_the_eligibility(context,want):
    assert want == context.status
    print("the {0} is {1} to vote".format(context.user_name,context.status))

def get_status(age):
    if age >= 18:
        return "eligible"
    return "not-eligible"