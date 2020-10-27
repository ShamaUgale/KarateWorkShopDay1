Feature: Get user details - DataDriven tests
Background:
    * url baseUrl

  Scenario Outline: Get a user deatils for a valid user

    Given path '/api/users/<id>'
    When method GET
    Then status 200
    Then print response
    Then match response.data.id == <Expected_id>

    Examples:
    |id|Expected_id|
    |1|1|
    |2|2|
    |3|3|
    |4|4|
