*** Settings ***
Library  RequestsLibrary
Library  Collections
Library  OperatingSystem
Library  JSONSchemaLibrary  C:\\Users\\anderson_benet\\Documents\\git_robotframework\\demo_rest_schema\\schemas

*** Variables ***
${url}  https://fakerestapi.azurewebsites.net/authors
${id_book}  1


*** Test Cases ***

TC001: Validar busca books
    Create Session      api    ${url}  verify=True
    ${response}=  GET Request  api  /books/${id_book}
    Log  ${response.json()[0]}
    Log  ${response.json()[0]["IDBook"]}

    Validate Json  autor_schema.json  ${response.json()}
