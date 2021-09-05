require 'sinatra/base'

class TestApp < Sinatra::Base
  VIEWS  = File.dirname(__FILE__) + "/views"

  get "/console_log" do
    render_view "console_log"
  end

  def render_view(view)
    erb File.read("#{VIEWS}/#{view}.erb")
  end
end
