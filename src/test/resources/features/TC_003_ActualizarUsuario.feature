
Feature: TC_003 - Actualizar usuario

  Background:
    * url 'https://petstore.swagger.io/v2'
    * def username = 'qa_cp003_jeysson'

  Scenario: Actualizar el nombre y el correo de un usuario
    # Crear el usuario inicial
    Given path 'user'
    And request
      """
      {
        "id": 987654333,
        "username": "qa_cp003_jeysson",
        "firstName": "Jeysson",
        "lastName": "Monterrosa",
        "email": "qa.cp003@example.com",
        "password": "Test12345",
        "phone": "3001234567",
        "userStatus": 1
      }
      """
    When method post
    Then status 200

    # Actualizar los datos
    Given path 'user', username
    And request
      """
      {
        "id": 987654333,
        "username": "qa_cp003_jeysson",
        "firstName": "Jeysson QA",
        "lastName": "Monterrosa",
        "email": "jeysson.actualizado@example.com",
        "password": "Test12345",
        "phone": "3001234567",
        "userStatus": 1
      }
      """
    When method put
    Then status 200
    And match response.code == 200

    # Consulta y verifica los cambios
    Given path 'user', username
    When method get
    Then status 200
    And match response.firstName == 'Jeysson QA'
    And match response.email == 'jeysson.actualizado@example.com'
