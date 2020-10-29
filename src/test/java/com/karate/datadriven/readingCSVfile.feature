Feature: Get user details - DataDriven tests using data from CSV files

Background:
    * url baseUrl
    * configure ssl = true

  Scenario Outline: Get a user deatils for a valid user

    Given path '/api/users/<id>'
    When method GET
    Then status <expected_status>
    Then print response
    And print baseUrl
    Then match response.data.id == <Expected_id>

    Examples:
    |read('getUserDetails.csv')|