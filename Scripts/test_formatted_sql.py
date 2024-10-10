###
### This script ensures that "--liquibase formatted sql" is included
###
### Notes:

###
### Helpers come from Liquibase
###
import sys
import liquibase_utilities
import liquibase_changesets

###
### Retrieve log handler
### Ex. liquibase_logger.info(message)
###
liquibase_logger = liquibase_utilities.get_logger()

###
### Retrieve status handler
###
liquibase_status = liquibase_utilities.get_status()

###
###
### Retrieve changeset
changeset = liquibase_utilities.get_changeset()

###
### Retrieve changeset file
###
filepath = changeset.getChangeLog().getPhysicalFilePath()

###
### Check for formatted sql
###
found = False
with open(filepath, 'r') as file:
    for line in file:
        line = line.strip()
        if len(line) > 0:
            if "--liquibase formatted sql" in line:
                found = True
            break

if found == False:
    liquibase_status.fired = True
    liquibase_status.message = "Liquibase meta data missing."
    sys.exit(1)

###
### Default return code
###
False