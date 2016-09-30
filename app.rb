require 'sinatra'
require 'rack/indifferent'
require 'json'
require 'haml'

class App < Sinatra::Base

  def self.root
    @@root ||= Pathname.new(File.dirname(__FILE__))
  end

  ## Begin render statements
  get '/' do
    haml :index
  end
end
