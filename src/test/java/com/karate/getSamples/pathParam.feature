Feature: Get User deatils
Background:
    * def Base = 'https://reqres.in/api/users/'

  Scenario: Path parameter example - Get a user with its id

    Given url Base + 2
    When method GET
    Then status 200
