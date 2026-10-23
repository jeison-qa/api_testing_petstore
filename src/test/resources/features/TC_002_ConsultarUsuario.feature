
Feature: TC_002 - Consultar usuario

  Background:
    * url 'https://petstore.swagger.io/v2'
    * def username = 'qa_cp002_jeysson'

  Scenario: Consultar un usuario existente
    # Preparar los datos necesarios para la prueba
    Given path 'user'
    And request
      """
      {
        "id": 987654332,
        "username": "qa_cp002_jeysson",
        "firstName": "Jeysson",
        "lastName": "Monterrosa",
        "email": "qa.cp002@example.com",
        "password": "Test12345",
        "phone": "3001234567",
        "userStatus": 1
      }
      """
    When method post
    Then status 200

    # Ejecutar la consulta
    Given path 'user', username
    When method get
    Then status 200
    And match response.username == username
    And match response.firstName == 'Jeysson'
    And match response.email == 'qa.cp002@example.com'
