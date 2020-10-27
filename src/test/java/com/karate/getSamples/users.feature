Feature: Get Users list
  Scenario: No parameters example - Get all users list

    Given url 'https://reqres.in/api/users'
    When method GET
    Then status 200
