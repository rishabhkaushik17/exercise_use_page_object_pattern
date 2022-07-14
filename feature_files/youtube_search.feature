Feature: Youtube Search

  Scenario Outline: Playing video on youtube
    Given a user goes to Youtube home page
    When user searches for <search_keyword>
    Then site should return result for <search_keyword>
    Then play the first searched video

    Examples:
      | search_keyword |
      | do gallan |
      | baari |