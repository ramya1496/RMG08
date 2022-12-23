*** Settings ***
Suite Setup     log to console      Starting the testcase execution
Suite Teardown      log to console      completed the testcase execution

Test Setup      log to console      test setup executing
Test Teardown       log to console      test teardown executing

*** Variables ***


*** Test Cases ***
TC1
    log to console      TestCase1 is executing

TC2
    log to console      TestCase2 is executing

TC3
    log to console      TestCase3 is executing

TC4
    log to console      TestCase4 is executing
