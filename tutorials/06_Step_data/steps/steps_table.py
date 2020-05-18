from behave import given, then, when


@given(u'a set of specific users')
def step_impl(context):
    context.user_dict = {}
    for row in context.table:
        if row['department'] in context.user_dict:
            context.user_dict[row['department']] = context.user_dict[row['department']] + 1
        else:
            context.user_dict[row['department']] = 1
    # more aspects of context.table
    
    print("Accessing the row with index of table - context.table[-1]", context.table[-1])
    print("To print return a single cell - context.table[0]['name']", context.table[0]['name'])
    print("To get the headings as a list of strings - context.table.headings", context.table.headings)


@when(u'we count the number of people in each department')
def step_impl(context):
    pass


@then(u'we will find two people in "Silly Walks"')
def step_impl(context):
    assert 2 == context.user_dict['Silly Walks']


@then(u'we will find one person in "Beer Cans"')
def step_impl(context):
    assert 1 == context.user_dict['Beer Cans']