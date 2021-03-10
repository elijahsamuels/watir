class ApplicationController < ActionController::Base
	# include ApplicationHelper # provides access to helper classes in ApplicationHelper  
	skip_forgery_protection
	# protect_from_forgery unless: -> { request.format.json? }

end


# HELP: i had to turn this on in order to get data from the frontend to pass to the controller. why? This was the error reading:

# ActionController::InvalidAuthenticityToken (The browser returned a 'null' origin for a request with origin-based forgery protection turned on. This usually
# 	means you have the 'no-referrer' Referrer-Policy header enabled, or that the request came from a site that
# 	refused to give its origin. This makes it impossible for Rails to verify the source of the requests. Likely the
# 	best solution is to change your referrer policy to something less strict like same-origin or strict-origin.
# 	If you cannot change the referrer policy, you can disable origin checking with the
# 	Rails.application.config.action_controller.forgery_protection_origin_check setting.
# 	):

# https://apidock.com/rails/ActionController/RequestForgeryProtection
# https://api.rubyonrails.org/v5.2.0/classes/ActionController/RequestForgeryProtection.html