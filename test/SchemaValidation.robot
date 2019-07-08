*** Settings ***
Library  OperatingSystem
Library  JSONSchemaLibrary  C:\\Users\\anderson_benet\\Documents\\git_robotframework\\demo_rest_schema\\schemas

*** Variables ***

*** Test Cases ***

JSON Validation
  ${good_json} =  Create Dictionary  foo=bar
  ${bad_json} =  Create Dictionary  foo=${1}
  Validate Json  test.schema.json  ${good_json}
  Run Keyword And Expect Error  *  Validate Json  test.schema.json  ${bad_json}