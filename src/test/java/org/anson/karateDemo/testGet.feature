Feature: Test Get API

  Scenario: Test GET demo1
    Given url 'https://reqres.in/api/users?page=2'
    When method GET
