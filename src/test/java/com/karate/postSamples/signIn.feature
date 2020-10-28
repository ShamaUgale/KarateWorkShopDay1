Feature: Testing basic signup
Background:
    * configure ssl = true

   Scenario: POST example -  for new User registration with token validation

      Given url 'http://localhost:5000/api/auth/signin'
      And header Content-Type = 'application/json'
      And request '{"email": "rmitula@gmail.com","password": "password"}'
      When method POST
      Then status 200
      And print response
      Then match response.tokenType == "Bearer"
      Then def token = response.accessToken

         Given url 'http://localhost:5000/api/users/me'
         And header Authorization = 'Bearer ' + token
         When method GET
         Then status 200
         Then match response.email == "rmitula@gmail.com"

          Given url 'http://localhost:5000/api/users/me'
          And header Authorization = 'Bearer 123' + token
          When method GET
          Then status 200
          Then match response.email == "rmitula@gmail.com"

