Feature: Workshop Home Work solutions
  Background:
    * def base = 'https://reqres.in/api/users/'

  Scenario: Create a resource, Then Update the resource name.
    Given url base
    And request '{"name":"RishvaanthT" ,"job" : "dev"}'
    When method POST
    Then status 201
    And print response
    And def response1 = response
      #Update a resource name and assert the status code as 200 and the updated name in response
    Given url base + response1.id
      #Changing user name
    Then request '{"name":"TangyMan","job":"subDev"}'
    When method PUT
    Then print response
    Then status 200
    Then match response.name = "TangyMan"