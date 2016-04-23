Feature: Webcontent for the Docker Bamberg website
  The Webcontent of the Docker Bamberg website is maintained
  in a git repository and build with jekyll.

  The git repository must be cloned and the website must be
  generated with jekyll.

  The repository clone is located at `/data/repo` and
  the generated website content at `/data/htdocs`.

  Scenario: Local clone of the git repository must exist
    Given the directory /data/repo exists
    Then the file type must be directory
    And the directory must contain a file like _config.yml
    And the directory must contain a file like index.html
    And the directory must contain a file like feed.xml
    And the directory must contain a file like .git

  Scenario: A generated copy of the website must exist
    Given the directory /data/htdocs exists
    Then the file type must be directory
    And the directory must contain a file like feed.xml
    And the directory must contain a file like index.html
    Given the file /data/htdocs/index.html exists
    Then the files content must match Docker Bamberg

