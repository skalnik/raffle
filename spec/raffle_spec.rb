require 'spec_helper'

describe RaffleApp do
  def app
    @app ||= RaffleApp.new
  end

  describe "/", :type => :request do
    it "is successful" do
      visit "/"
      page.should have_content("Success!")
    end
  end
end
