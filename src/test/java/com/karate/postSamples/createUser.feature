Feature: Posting User Details

   Scenario: POST call with json payload example - for User Creation
     Given url 'https://reqres.in/api/users'
     And request '{"name": "morpheus","job": "leader"}'
     When method POST
     Then status 201