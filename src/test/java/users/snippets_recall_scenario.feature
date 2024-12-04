Feature: call scenario

  @call_scenario
  Scenario: Delete an user
    * call read("CrudUser.feature@post")
    Given url "https://reqres.in/api/users/" + contactId
    When method delete
    Then status 204