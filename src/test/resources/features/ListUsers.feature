Feature: Validate user can get list of users
  Scenario: verify users list is displayed
    Given url host
    And header Authorization = "Bearer ced2c7bfec71fe17cc6a217d64b126ea8cd1ba9fee76827984cd6e2235cc8e83"
    And header Accept = "Bearer ced2c7bfec71fe17cc6a217d64b126ea8cd1ba9fee76827984cd6e2235cc8e83"
    When method get
    Then status 200