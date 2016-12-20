@rest
Feature: Adding paas universe


  Background: Exhibitor functional tests
    Given I open remote ssh connection to host '${DCOS_CLI_HOST}' with user '${DCOS_CLI_USER}' and password '${DCOS_CLI_PASSWORD}'

  Scenario: Add PaaS Online Universe
    Given I execute command 'dcos package repo add ${PAAS_UNIVERSE_NAME} ${PAAS_UNIVERSE_PATH}' in remote ssh connection with exit status '0'
    When I execute command 'dcos package repo list' in remote ssh connection with exit status '0'
    Then the command output contains '${PAAS_UNIVERSE_NAME}: ${PAAS_UNIVERSE_PATH}'

  Scenario: Remove PaaS Online Universe
    Given I execute command 'dcos package repo remove ${PAAS_UNIVERSE_NAME}' in remote ssh connection with exit status '0'
    When I execute command 'dcos package repo list' in remote ssh connection with exit status '0'
    Then the command output does not contain '${PAAS_UNIVERSE_NAME}: ${PAAS_UNIVERSE_PATH}'