Feature: Pharmacies Get Default City Code

  Background:
    * def signupCall = call read('schemaValidation.feature')

    Scenario:
    Given url 'http://localhost:5000/api/users/me'
    And header Authorization = 'Bearer ' + signupCall.accessToken
    When method GET
    Then status 200
    Then match response.email == "rmitula@gmail.com"
