ENV['APP_ENV'] = 'test'

require_relative 'spec_helper'
require_relative '../app'
require 'rack/test'

describe 'Server Service' do
  include Rack::Test::Methods

  def app
    Sinatra::Application
  end

  it "should load the home page" do
    get '/'
    expect(last_response).to be_ok
  end

  it "should load the education page" do
    get '/education'
    expect(last_response).to be_ok
  end

  it "should load the PRs page" do
    get '/prs'
    expect(last_response).to be_ok
  end

  it "should load the about page" do
    get '/about'
    expect(last_response).to be_ok
  end

end
