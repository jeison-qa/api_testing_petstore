
Feature: TC_004 - Eliminar usuario

  Background:
    * url 'https://petstore.swagger.io/v2'
    * def username = 'qa_cp004_jeysson'

  Scenario: Eliminar un usuario y comprobar que ya no existe
    # Crear el usuario que se va a eliminar
    Given path 'user'
    And request
      """
      {
        "id": 987654334,
        "username": "qa_cp004_jeysson",
        "firstName": "Usuario",
        "lastName": "Temporal",
        "email": "qa.cp004@example.com",
        "password": "Test12345",
        "phone": "3001234567",
        "userStatus": 1
      }
      """
    When method post
    Then status 200

    # Eliminar el usuario
    Given path 'user', username
    When method delete
    Then status 200
    And match response.code == 200

    # Verificar que ya no exista
    Given path 'user', username
    When method get
    Then status 404
