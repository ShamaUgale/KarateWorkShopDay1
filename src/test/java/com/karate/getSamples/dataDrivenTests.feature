Feature: Get user details - DataDriven tests

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
    |id|Expected_id|expected_status|
    |1|1|200|
    |2|2|200|
    |5|5|200|
    |23451|null|404|
