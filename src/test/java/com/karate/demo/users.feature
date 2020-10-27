Feature: Get Users list

  Background:
    * url baseUrl
    * def personBase = '/api/users?page=1'

  Scenario: Get all users list

    Given path personBase
    When method GET
    Then status 200