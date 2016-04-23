Feature: Webserver for docker bamberg
  To serve the docker-bamberg.de website a webserver is required.
  The nginx webserver will be used.

  Scenario: nginx webserver must running
    Given a parent process like ^nginx: is running
    Then the uid of the process must be root
    Then the gid of the process must be root
    When there are at least 1 child processes
    Then the uid of the child processes must be www-data
    Then the gid of the child processes must be www-data

