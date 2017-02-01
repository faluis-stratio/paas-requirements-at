@rest
Feature: Adding paas universe

  Background: Universe functional tests
    Given I open remote ssh connection to host '${DCOS_CLI_HOST}' with user 'root' and password 'stratio'

  Scenario: Add PaaS Online Universe
    Given I execute command 'dcos package repo add --index=0 PaaS http://sodio.stratio.com/nexus/content/sites/paas/universe/${PAAS_UNIVERSE_VERSION}/stratio-paas-universe-${PAAS_UNIVERSE_VERSION}.zip' in remote ssh connection with exit status '0'
    When I execute command 'dcos package repo list' in remote ssh connection with exit status '0'
    Then the command output contains 'PaaS: http://sodio.stratio.com/nexus/content/sites/paas/universe/${PAAS_UNIVERSE_VERSION}/stratio-paas-universe-${PAAS_UNIVERSE_VERSION}.zip'