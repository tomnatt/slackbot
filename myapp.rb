#!/bin/ruby

require 'rubygems'
require 'sinatra'
require 'json'

require 'slack/post'

class MyApp < Sinatra::Base

    slack_token = ENV['SLACK_TOKEN']

    Slack::Post.configure(
        subdomain: 'uniofbathdmc',
        token: slack_token
    )

    # routing
    get '/' do

        Slack::Post.post("Yo", "#test")

        content_type :json
        { :text => "blah" }.to_json
    end

    post '/talk' do 
        #Slack::Post.post("Yo", "#test")

        name = params[:user_name]

        content_type :json
        { :text => "Hi #{name}" }.to_json
    end 

end
