*** Settings ***
Resource  ../resource/BookResource.robot

Test Setup       Create Session      api    ${url}  verify=True



*** Test Cases ***
TC001: Validar status do service
    Validar Status


TC002: Validar contrato do service
    Validar Contrato


