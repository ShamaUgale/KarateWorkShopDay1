Feature:

  @smoke
  Scenario: user login
    * print "email: " + email
    * print "password: " + password
    Given url 'http://localhost:5000/api/auth/signin'
    And header Content-Type = 'application/json'
    And request {email: '#(email)', password: '#(password)'}
    When method POST
    And print response
    Then status 200
