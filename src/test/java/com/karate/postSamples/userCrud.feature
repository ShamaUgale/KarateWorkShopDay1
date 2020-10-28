Feature: User Creation
Background:
    * url baseUrl
    * configure ssl = true


    Scenario: Create a user with valid details

        Given path '/api/users'
        And request '{"name": "morpheus","job": "leader"}'
        When method POST
        Then status 201
        And def newUser = response

        Given path '/api/users'+ newUser.id
        When method GET
        Then status 200

