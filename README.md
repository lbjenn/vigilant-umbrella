# vigilant-umbrella
This repo contains artifacts to be use by the Liquibase Pro Data Governance Workshop on Quality Checks
Assumes you are using Liquibase Pro 4.28.0 or higher with a valid license key

Once you clone the repo make sure that the parent directory of the local repo is included in the LIQUIBASE_SEARCH_PATH

The WorkshopLabs diretory contain the lab instructions for using this in your own environment

These environment variables need to be defined for environment session of within a liquibase.properties file:
LIQUIBASE_COMMAND_CHANGELOG_FILE=workshopChangelog.xml
LIQUIBASE_COMMAND_USERNAME=[db user name]
LIQUIBASE_COMMAND_PASSWORD=[db user password for target DB]
LIQUIBASE_COMMAND_URL=[jdbc connect string for target database]
LIQUIBASE_LICENSE_KEY=[your valid pro license key]
LIQUIBASE_COMMAND_CHECKS_RUN_CHECKS_OUTPUT=ISSUES
LIQUIBASE_LOG_FORMAT=JSON_PRETTY
LIQUIBASE_REPORTS_ENABLED=true


Liquibase Doc Pages that may be helpful:

Quality Checks - https://docs.liquibase.com/commands/quality-checks/subcommands/home.html

Quality Check Packages - https://docs.liquibase.com/liquibase-pro/quality-checks/checks-packages/home.html

For details on custom quality checks using regex patterns - Learn more here: 
Single Regex Pattern Check - https://docs.liquibase.com/liquibase-pro/quality-checks/checks/changelog-checks/sql-user-defined-pattern-check.html
PatternAFollowedByPatternB - https://docs.liquibase.com/liquibase-pro/quality-checks/checks/changelog-checks/patterna-followed-bypatternb.html
PatternANotFollowedByPatternB - https://docs.liquibase.com/liquibase-pro/quality-checks/checks/changelog-checks/patterna-notfollowed-bypatternb.html
PatternANotPrecededByPatternB - https://docs.liquibase.com/liquibase-pro/quality-checks/checks/changelog-checks/patterna-notpreceded-bypatternb.html
PatternAPrecededByPatternB - https://docs.liquibase.com/liquibase-pro/quality-checks/checks/changelog-checks/patterna-preceded-bypatternb.html


