Feature: Testing basic signup

   Scenario: POST example -  for new User registration with token validation
      Given url 'http://localhost:5000/api/auth/signin'
      And header Content-Type = 'application/json'
      And request '{"email": "rmitula@gmail.com","password": "password"}'
      When method POST
      Then status 200
      Then match response.tokenType == "Bearer"
      Then def token = response.accessToken

         Given url 'http://localhost:5000/api/users/me'
         And header Authorization = 'Bearer ' + token
         When method GET
         Then status 200
         Then match response.email == "rmitula@gmail.com"

