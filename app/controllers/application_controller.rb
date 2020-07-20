class ApplicationController < ActionController::Base
  # Prevent CSRF attacks by raising an exception.
  # For APIs, you may want to use :null_session instead.
  protect_from_forgery with: :exception
end

# navigate artist pages
##   shows the name on the show page in a h1 tag (FAILED - 1)
##  to artist pages (FAILED - 2)
##   shows the bio on the show page in a p tag (FAILED - 3)

#   artist form
#   shows a new form that submits content and redirects and prints out params (FAILED - 4)
#   shows an edit form that submits content, redirects and prints out params (FAILED - 5)
  
#   navigate genre pages
#   shows the name on the show page in a h1 tag (FAILED - 6)
#   to genre pages (FAILED - 7)
  
#   genre form
#   shows a new form that submits content and redirects and prints out params (FAILED - 8)
#   shows an edit form that submits content and redirects and prints out params (FAILED - 9)
  
#   navigate song pages
##   shows the name on the show page in a h1 tag (FAILED - 10)
#   displays a link to the genre page (FAILED - 11)
#   displays a link to the artist page (FAILED - 12)
#   to song pages (FAILED - 13)

#   song form
##   shows a new form that submits content and redirects and prints out params (FAILED - 14)
#   shows an edit form that submits content and redirects and prints out params (FAILED - 15)
  
##   song index
##   displays the song name (FAILED - 16) 