class BookmarksController < ApplicationController
  def create
    @bookmark = Bookmark.new
    @bookmark.user = current_user
    @bookmark.journey
  end
end
#take from the cards the id of journey bookmark.journey
#save the bookmark and redirect to dashboard path
