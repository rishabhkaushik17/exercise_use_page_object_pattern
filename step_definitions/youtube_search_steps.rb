require_relative '../pages/youtube_play_video'

Given(/^a user goes to Youtube home page$/) do
  @youtube = PlayYoutubeVideo.new(@browser)
  @youtube.visit_site
end

When(/^user searches for (.*)$/) do |search_keyword|
  @youtube.search_for(search_keyword)
  @youtube.click_search_button
end

Then(/^site should return result for (.*)$/) do |search_keyword|
  expect(@youtube.search_result_present?(search_keyword)).to eq(true)
end

Then(/^play the first searched video$/) do
  @youtube.play_first_video
end