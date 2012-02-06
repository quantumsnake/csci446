class ExtraController < ApplicationController
  def stuff
    @files = Dir.glob('*')
  end
end
