class YoutubeSearch
  include PageObject
  text_field(:search_box, :id => 'search')
  button(:search, :id => 'search-icon-legacy')

  def visit_site
    navigate_to 'https://www.youtube.com'
  end

  def search_for(search_key)
    self.search_box = search_key
  end

  def click_search_button
    sleep(1)
    search
  end

  def search_result_present?(search_key)
    search_box == search_key
  end
end