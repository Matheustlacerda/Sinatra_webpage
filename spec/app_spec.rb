ENV['APP_ENV'] = 'test'

require_relative 'spec_helper'
require_relative '../app'
require 'rack/test'

describe 'Server Service' do
  include Rack::Test::Methods

  def app
    Sinatra::Application
  end


describe '/' do
  it "must load home page" do
    get '/'
    expect(last_response).to be_ok
  end
end

describe '/education' do
  it "must load education page" do
    get '/education'
    expect(last_response).to be_ok
  end
end

describe '/prs' do
  it "must load PRs page" do
    get '/prs'
    expect(last_response).to be_ok
  end
end

describe '/about' do
  it "must load about page" do
    get '/about'
    expect(last_response).to be_ok
  end
end

describe 'Page not found' do
  it "returns status 404" do
    get 'not_found'
    expect(last_response.status).to eq 404
  end
end
end
