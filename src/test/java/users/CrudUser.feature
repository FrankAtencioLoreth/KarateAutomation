Feature: CRUD user on reqres

  Background:
    * url "https://reqres.in"
    * path "/api/users/1"
    * def var = {"name": "Francisco", "job": "QA automation"}
    * request {"name": "#(name)", "job": "#(job)"}

  @get
  Scenario: Get an user
    When method get
    Then status 200

  @post
  Scenario Outline: Post an user
    When method post
    Then status 201
    And def contactId = $.idget
    Examples:
      | name      | job           |
      | Francisco | QA Automation |


  @put
  Scenario: Put an user
    And request var
    When method put
    Then status 200
    And match $.name == "Francisco"

  @delete
  Scenario: Delete an user
    When method delete
    Then status 204