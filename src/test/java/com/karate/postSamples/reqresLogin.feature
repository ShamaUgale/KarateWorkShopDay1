Feature: Posting User Details
  Background:
    * configure ssl = true

  Scenario: POST call with json payload example - for User Creation
    Given url 'https://reqres.in/api/login'
    And header Content-Type = 'application/json'
    And request '{"email": "eve.holt@reqres.in","password": "cityslicka"}'
    When method POST
    Then status 200
    And print response
    Then match response == {"token":"#notnull"}
