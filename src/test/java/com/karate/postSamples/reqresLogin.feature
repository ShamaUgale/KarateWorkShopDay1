Feature: Posting User Details
  Background:
    * configure ssl = true

  Scenario: POST call with json payload example - for User Creation
    Given url 'https://reqres.in/api/login'
    And header Content-Type = 'application/json'
    And request '{"email": "eve.holt@reqres.in","password": "cityslicka"}'
    When method POST
    And print response
    Then status 200
    Then match response == {"token":"#notnull"}
