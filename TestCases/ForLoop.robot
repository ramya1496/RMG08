#*** Settings ***
#Library  SeleniumLibrary

*** Test Cases ***
#Looping1
#    FOR     ${i}    IN      RANGE   1   10
#        log to console      ${i}
#    END
#
#Looping2
#    FOR     ${i}    IN RANGE   1   10
#        log to console      ${i}
#    END
#
#Looping3
#    FOR     ${i}    IN RANGE   1   10   2
#        log to console      ${i}
#    END

#############################################################
#*** Settings ***
#Library  SeleniumLibrary
#
#*** Variables ***
#
#
#*** Test Cases ***
##Loop1
#    FOR     ${element}      IN      1 2 3 4 5 6 7 8 9
#        log to console      ${element}
#    END

#Loop1
#    FOR     ${element}      IN      1   2   3   4   5   6   7   8   9
#        log to console      ${element}
#    END

#################################################
#*** Settings ***
#
#
#*** Variables ***
#@{list_elements}    python  java    c   perl
#
#
#*** Test Cases ***
##Loop
##    FOR     ${ele}      IN      python  java    c   perl
##        log to console      ${ele}
##    END
#
#Loop
#    FOR     ${ele}      IN      @{list_elements}
#        log to console      ${ele}
#    END

#########################################################
*** Settings ***


*** Variables ***


*** Test Cases ***
Create List and loop
    @{list_1}=      create list     python  selenium    c   java





































