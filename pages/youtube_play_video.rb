require_relative 'youtube_search'
class PlayYoutubeVideo < YoutubeSearch
  a(:video, :id => "video-title")
  def play_first_video
    video
    puts video
  end
end