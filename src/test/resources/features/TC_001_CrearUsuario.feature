
Feature: TC_001 - Crear usuario

  Background:
    * url 'https://petstore.swagger.io/v2'

  Scenario: Crear un usuario con datos válidos
    Given path 'user'
    And request
      """
      {
        "id": 987654331,
        "username": "qa_cp001_jeysson",
        "firstName": "Jeysson",
        "lastName": "Monterrosa",
        "email": "qa.cp001@example.com",
        "password": "Test12345",
        "phone": "3001234567",
        "userStatus": 1
      }
      """
    When method post
    Then status 200
    And match response.code == 200
    And match response.message == '987654331'
