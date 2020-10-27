Feature: Get Users list on a page

  Background:
    * url baseUrl
    * def personBase = '/api/users'

  Scenario: Query parameter example - Get all users list on page no 3

    Given path personBase
    And param page = 3
    When method GET
    Then status 200