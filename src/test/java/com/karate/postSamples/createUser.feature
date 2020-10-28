Feature: Posting User Details
Background:
    * configure ssl = true

   Scenario: POST call with json payload example - for User Creation
     Given url 'https://reqres.in/api/users'
     And request '{"name": "morpheus","job": "leader"}'
     When method POST
     Then status 201
     And print response
     Then match $ contains {"token": '#notnull'}