Feature: Get the list of all user
  @dontRun
  Scenario: No parameters example - Get all users list

    Given url 'https://reqres.in/api/users'
    When method GET
    Then status 200
