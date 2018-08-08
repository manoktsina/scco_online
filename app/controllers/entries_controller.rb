class EntriesController < ApplicationController
  def index
    @entries = Entry.sorted
  end
end
