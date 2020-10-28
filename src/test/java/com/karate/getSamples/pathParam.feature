Feature: Get User deatils

Background:
    * def base = 'https://reqres.in/api/users/'
    * configure ssl = true


  Scenario: Path parameter example - Get a user with its id

    Given url base + 2
    When method GET
    Then status 200
