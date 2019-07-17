*** Settings ***
Library  RequestsLibrary
Library  Collections
Library  OperatingSystem
Library  JSONSchemaLibrary  /Users/benet/PycharmProjects/demo_rest_schema/schemas

*** Variables ***
${url}  https://fakerestapi.azurewebsites.net/authors
${id_book}  1

*** Keywords ***
Validar Status
    ${response}=  GET Request  api  /books/${id_book}
    Should Be Equal As Strings   ${response.status_code}  200

Validar Contrato
    ${response}=  GET Request  api  /books/${id_book}
    Log  ${response.json()[0]}
    Log  ${response.json()[0]["IDBook"]}

    Validate Json  autor_schema.json  ${response.json()}



