class ToppagesController < ApplicationController
  def index
    @bands = Band.all
  end

  def second
    @bands = Band.all
  end
end
