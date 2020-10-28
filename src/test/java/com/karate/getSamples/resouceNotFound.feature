  Feature: Verify resource not found

  Background:
      * def base = 'https://reqres.in/api/unknown/'
      * configure ssl = true


    Scenario: try fetching a user deatils which does not exist

      Given url base + 2435563
      When method GET
      And print response
      Then status 404
      Then match response == {}
