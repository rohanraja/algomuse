class ApplicationController < ActionController::Base
  # Prevent CSRF attacks by raising an exception.
  # For APIs, you may want to use :null_session instead.
  protect_from_forgery with: :exception

  def coderay(text)
  		text.gsub(/\<code( language="(.+?)")?\>(.+?)\<\/code\>/m) do
    #	content_tag("notextile", CodeRay.scan($3, $2).div(:css => :class))

    		CodeRay.scan($3, $2).div(:css => :class)
  		end

	end


end
