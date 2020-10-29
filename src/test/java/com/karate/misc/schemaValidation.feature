Feature: Testing basic signup
Background:
    * configure ssl = true

   @advance
   Scenario: POST example -  for new User registration with token validation

      Given url 'http://localhost:5000/api/auth/signin'
      And header Content-Type = 'application/json'
      And request '{"email": "rmitula@gmail.com","password": "password"}'
      When method POST
      And print response
      Then status 200
      Then match response.tokenType == "Bearer"
      Then def accessToken = response.accessToken
      Then match response ==
      """
      {
        accessToken : '#string',
        tokenType :   '#string'
      }
      """