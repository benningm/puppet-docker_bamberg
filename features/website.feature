Feature: Docker Bamberg website
  The Docker Bamberg needs a website to publish presentations and
  content on the internet.

  Scenario: The Website must be accessible
    Given the http URL http://docker-bamberg.de/
    Given the http request method is GET
    When the http request is sent
    Then the http response must be successfull
    And the http response content must be like Docker Bamberg
