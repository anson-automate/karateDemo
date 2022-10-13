Feature: Test Get API

  Background: 
    * url 'https://reqres.in/api'

  #basic test
  Scenario: Test GET demo1
    Given url 'https://reqres.in/api/users?page=2'
    When method GET
    Then status 200

  # using background
  Scenario: Test GET demo2
    Given path '/users?page=2'
    When method GET
    Then status 200

  # printing response
  Scenario: Test GET demo3
    Given path '/users?page=2'
    When method GET
    Then status 200
    And print response

  # check reponse first element
  Scenario: Test GET demo 4
    Given path '/users?page=2'
    When method GET
    Then print response.data[0].id

  # sending parameters to request
  Scenario: Test GET demo 5
    Given path '/users?page=2'
    And param page = 2
    When method GET
    Then print response.data[0].id
