module UsersHelper

 # Returns the Gravatar (http://gravatar.com/) for the given user.
 #I have changed it after the error: wrong number of arguments (2 for 1)
def gravatar_for(user, options = { size: 50 })
  gravatar_id = Digest::MD5::hexdigest(user.email.downcase)
  size = options[:size]
  gravatar_url = "https://secure.gravatar.com/avatar/#{gravatar_id}?s=#{size}"
  image_tag(gravatar_url, alt: user.name, class: "gravatar")
end
end
