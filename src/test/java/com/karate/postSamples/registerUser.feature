Feature: Testing basic signup
Background:
    * configure ssl = true

   Scenario: testing the POST call for new User registration
      Given url 'http://localhost:5000/api/auth/signup'
      And header Content-Type = 'application/json'
      And request '{"name": "Rafał Mituła","email": "rmitula112@gmail.com","password": "password"}'
      When method POST
      Then status 200
      Then print response

   Scenario: testing the POST call for the existing User registration
       Given url 'http://localhost:5000/api/auth/signup'
       And header Content-Type = 'application/json'
       And request '{"name": "Rafał Mituła","email": "rmitula@gmail.com","password": "password"}'
       When method POST
       Then status 409
       Then print response

