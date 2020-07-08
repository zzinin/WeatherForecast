#Author: RAHUL RANJAN
@Search-CityWeather
Feature: Acceptance testing to search Weather for cities
      Check that weather serach for cities is all ok

  @Search-CityWeather-Positive
  Scenario Outline: Search with city
    Given I am on the weather website "http://localhost:3000/"
    When I input the city "<City>"
    Then Weather details are displayed for cities

    Examples: 
      | City      |
      | aberdeen  |
      | glasgow   |
      | edinburgh |
      | perth     |
      | striling  |

  @check1
  Scenario Outline: check that Five days report displayed
    Given I am on the weather website "http://localhost:3000/"
    When I input the city "<City>"
    Then Five day weather details are displayed "<Day>"

    Examples: 
      | City      | Day |
      | aberdeen  |  20 |
      | glasgow   |  21 |
      | edinburgh |  22 |
      | perth     |  23 |
      | striling  |  24 |

  @check2
  Scenario Outline: check that when days are clicked
    Given I am on the weather website "http://localhost:3000/"
    When I input the city "<City>"
    And I click on the day "<Day>"
    Then I get forecast for city in Hours
      | Hours |
      | 13:00 |
      | 14:00 |
      | 15:00 |

    Examples: 
      | City      | Day |
      | aberdeen  |  20 |
      | glasgow   |  21 |
      | edinburgh |  22 |
      | perth     |  23 |
      | striling  |  24 |

  @check3
  Scenario Outline: check that when days are clicked and again clicked
    Given I am on the weather website "http://localhost:3000/"
    When I input the city "<City>"
    And I click on the day "<Day>"
    Then I see that Three hours of forecast for city disappeared

    Examples: 
      | City      | Day |
      | aberdeen  |  20 |
      | glasgow   |  21 |
      | edinburgh |  22 |
      | perth     |  23 |
      | striling  |  24 |

  @check4
  Scenario Outline: check that when days are clicked and again clicked
    Given I am on the weather website "http://localhost:3000/"
    When I input the city "<City>"
    And I click on the day "<Day>"
    Then I see that Three hours of forecast for city summary for condition
    And condition is displaying most dominant condition for the day

    Examples: 
      | City      | Day |
      | aberdeen  |  20 |
      | glasgow   |  21 |
      | edinburgh |  22 |
      | perth     |  23 |
      | striling  |  24 |

  @check5
  Scenario Outline: check that when days are clicked and again clicked
    Given I am on the weather website "http://localhost:3000/"
    When I input the city "<City>"
    And I click on the day "<Day>"
    Then I see that Three hours of forecast for city with summary for wind
    And most dominant wind speed is displayed for the day

    Examples: 
      | City      | Day |
      | aberdeen  |  20 |
      | glasgow   |  21 |
      | edinburgh |  22 |
      | perth     |  23 |
      | striling  |  24 |

  @check6
  Scenario Outline: check that when days are clicked and again clicked
    Given I am on the weather website "http://localhost:3000/"
    When I input the city "<City>"
    And I click on the day "<Day>"
    Then I see that Three hours of forecast for city for rainfall
    And rainfall is aggregarted for the day

    Examples: 
      | City      | Day |
      | aberdeen  |  20 |
      | glasgow   |  21 |
      | edinburgh |  22 |
      | perth     |  23 |
      | striling  |  24 |

  @check7
  Scenario Outline: check that when days are clicked and again clicked
    Given I am on the weather website "http://localhost:3000/"
    When I input the city "<City>"
    And I click on the day "<Day>"
    Then I see that Three hours of forecast for city temperature
    And Temperature is displaying Maximum temperatutre  for the day
    And Temparture is displaying Minimum temperature for the day

    Examples: 
      | City      | Day |
      | aberdeen  |  20 |
      | glasgow   |  21 |
      | edinburgh |  22 |
      | perth     |  23 |
      | striling  |  24 |

  @Search-CityWeather-Negative
  Scenario Outline: Search with city
    Given I am on the weather website "http://localhost:3000/"
    When I input the city "<City>"
    Then Weather details not displayed for cities "<City>"
    And error message is displayed "<error>"

    Examples: 
      | City      | error |
      | aberdeen  | error |
      | glasgow   | error |
      | edinburgh | error |
      | perth     | error |
      | striling  | error |
