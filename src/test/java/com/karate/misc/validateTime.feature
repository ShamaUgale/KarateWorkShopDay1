Feature: Verify resource not found
  Background:
    * def base = 'https://reqres.in/api/users/'
    * configure ssl = true
    * def currentTime = new Date().toString();
    * print currentTime

    @advance
  Scenario: try fetching a user deatils which does not exist
    Given url base + 2
    And request '{"name": "morpheus", "job": "zion resident"}'
    When method PUT
    And print response
    Then status 200
    Then match response == '{"name": "morpheus", "job": "zion resident", "updatedAt": currentTime}'

    # write a function which returns me a date and timestamp in the format i expect
  #fetch the actual timestamp from my response
  # expected < actual