Feature: Get Users list

  Background:
    * url baseUrl
    * configure ssl = true
    * def personBase = '/api/users?page=1'

  Scenario: Get all users list

    Given path personBase
    When method GET
    Then status 200