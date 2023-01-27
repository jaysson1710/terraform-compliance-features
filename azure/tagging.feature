Feature: Test tagging compliance  # /target/src/features/tagging.feature
    related_resources: all
    Scenario: Ensure all resources have tags
        Given I have any defined
        Then it must contain tags
        And its value must not be null

    Scenario Outline: Ensure that specific tags are defined
        Given I have any defined
        When it has tags
        Then it must contain tags
        Then it must contain "<tags>"
        And its value must match the "<value>" regex

        Examples:
            | tags              | value              |
            | companyName       | ^[a-zA-Z]          |
            | environment       | ^(prd\|uat\|dev)$ |
