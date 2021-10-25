
Feature: Test for the home page

Background: Define URL
    Given url 'http://localhost:3000/api/'

    Scenario: Get all tags
        Given path 'tags'
        When method Get
        Then status 200

    Scenario: Get 10 articles from Home Page
        Given param limit = 10
        Given param offset = 0
        Given path 'articles'
        When method Get
        Then status 200   

    Scenario: Get 5 articles from Home page
        Given params {limit:5, offset:0}
        Given path 'articles'
        When method Get
        Then status 201    