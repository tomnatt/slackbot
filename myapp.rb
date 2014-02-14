#!/bin/ruby

require 'rubygems'
require 'sinatra'
require 'json'

class MyApp < Sinatra::Base

    # routing
    get '/' do
        content_type :json
        { :text => 'I have two questions' }.to_json
    end

end
