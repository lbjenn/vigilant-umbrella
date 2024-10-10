# vigilant-umbrella
This repo contains artifacts to be use by the Liquibase Pro Data Governance Workshop on Policy Checks
Assumes you are using **Liquibase Pro 4.29.2 or higher with a valid license key**
You will need to have JAVA version 17+ to utilize the custom policy checks with python code feature

Once you clone the repo make sure that the parent directory of the local repo is included in the LIQUIBASE_SEARCH_PATH<br />

The WorkshopLabs directory contain the lab instructions for using this in your own environment<br />

These environment variables need to be defined for environment session of within a liquibase.properties file:<br />
LIQUIBASE_COMMAND_CHANGELOG_FILE=workshopChangelog.xml<br />
LIQUIBASE_COMMAND_USERNAME=[db user name] <br />
LIQUIBASE_COMMAND_PASSWORD=[db user password for target DB] <br />
LIQUIBASE_COMMAND_URL=[jdbc connect string for target database] <br />
LIQUIBASE_LICENSE_KEY=[your valid pro license key] <br />
LIQUIBASE_COMMAND_CHECKS_RUN_CHECKS_OUTPUT=ISSUES <br />
LIQUIBASE_LOG_FORMAT=JSON_PRETTY <br />
LIQUIBASE_REPORTS_ENABLED=true <br />
LIQUIBASE_COMMAND_CHECKS_RUN_CHECKS_SCRIPTS_ENABLED='true' <br />


**Liquibase Doc Pages that may be helpful:**

[Quality Checks](https://docs.liquibase.com/commands/policy-checks/subcommands/home.html)

[Quality Check Packages](https://docs.liquibase.com/liquibase-pro/policy-checks/checks-packages/home.html)

For details on custom policy checks using regex patterns - Learn more here: <br />
[Single Regex Pattern Check](https://docs.liquibase.com/liquibase-pro/policy-checks/checks/changelog-checks/sql-user-defined-pattern-check.html)<br />
[PatternAFollowedByPatternB](https://docs.liquibase.com/liquibase-pro/policy-checks/checks/changelog-checks/patterna-followed-bypatternb.html)<br />
[PatternANotFollowedByPatternB](https://docs.liquibase.com/liquibase-pro/policy-checks/checks/changelog-checks/patterna-notfollowed-bypatternb.html)<br />
[PatternANotPrecededByPatternB](https://docs.liquibase.com/liquibase-pro/policy-checks/checks/changelog-checks/patterna-notpreceded-bypatternb.html)<br />
[PatternAPrecededByPatternB](https://docs.liquibase.com/liquibase-pro/policy-checks/checks/changelog-checks/patterna-preceded-bypatternb.html)<br />

For details on custom policy checks using python scripts - Learn more here: <br />
[Custom Policy Checks] https://docs.liquibase.com/liquibase-pro/policy-checks/custom-policy-checks/home.html <br />
Liquibase prerequisites for python based custom policy checks <br />
Liquibase 4.29.0+ with the Liquibase Checks extension - only available to users on MacOS or Linux <br />
Download the liquibase-checks-<version>.jar and put it in the liquibase/lib directory.  <br />
You can find the jar file here - https://mvnrepository.com/artifact/org.liquibase.ext/liquibase-checks  <br />

If you use Maven, add this dependency to your pom.xml file:<br />
```xml
<?xml version="1.0"?>
<dependency>
    <groupId>org.liquibase.ext</groupId>
    <artifactId>liquibase-checks</artifactId>
    <version>1.0.0</version>
</dependency>
```
Java Development Kit 17+ (available for Open JDK and Oracle JDK)
Linux, macOS, or Windows operating system <br />
Familiarity with Liquibase concepts: Changelog, Changeset, checks-scope, and snapshot


