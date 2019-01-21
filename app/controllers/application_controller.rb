class ApplicationController < ActionController::Base
  protect_from_forgery with: :exception

  require 'json'
  require "open-uri"
  require 'cgi'

  # declare string constants
  BASE_URI = "https://secure.toronto.ca/cc_sr_v1/data/swm_waste_wizard_APR?limit=1000"

  def home
    @results = []
    #@starred_repos = Github::Repo.findStarred
      if params[:query] && params[:query] != ""
        query = params[:query]
        # get total menus count
        parsed_uri = URI.parse(BASE_URI).read
        json_waste_objects = JSON.parse(parsed_uri)

        json_waste_objects.each do |o|
          #check keywords
          if o["keywords"].include? query
            result_object = { title: o["title"], description: CGI.unescapeHTML(o["body"]) }
            @results.push(result_object)
          end
        end
      end
    render template: "home"
  end
end
