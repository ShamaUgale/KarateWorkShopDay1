Feature: Demonstartion of calling a feature file in nested fashion

  Scenario Outline: nested scenario
    * print __row
    * def result = call read('signin.feature') {email: <email>, password: <password> }
    * def loggedInUsers = result.response
    Given url 'http://localhost:5000/api/users/me'
    And header Authorization = 'Bearer ' + loggedInUsers.accessToken
    When method GET
    * print "getResponse: " + response
    Then status 200
    Then match response.email == <email>
    Examples:
      | email                | password   |
      | 'rmitula@gmail.com'  | 'password' |
      | 'rmitula1@gmail.com' | 'password' |