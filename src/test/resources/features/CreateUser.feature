Feature: Validate create user endpoint

  Background:
    * def body = read("classpath://json//Create_User.json")

  Scenario: verify creation of new user
    Given url host
    And path '/auth'
    And header Authorization = "Bearer ced2c7bfec71fe17cc6a217d64b126ea8cd1ba9fee76827984cd6e2235cc8e83"
    And header Accept = "Bearer ced2c7bfec71fe17cc6a217d64b126ea8cd1ba9fee76827984cd6e2235cc8e83"
    And header Content-Type = "application/json"
    And header Accept = "application/json"
    And request body
    When method post
    Then status 201
    And print response