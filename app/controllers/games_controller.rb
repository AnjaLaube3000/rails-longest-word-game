class GamesController < ApplicationController
  def new
    alphabet = ('a'..'z').to_a
    @random_letters = []
    10.times do
      letter = alphabet.sample
      @random_letters << letter
    end
  end

  def score
    @input = params[:found_word]
    @grid = params[:banana]
    raise
  end
end


# hidden_field_tag 'tags_list'
# # => <input id="tags_list" name="tags_list" type="hidden" />

# hidden_field_tag 'token', 'VUBJKB23UIVI1UU1VOBVI@'
# # => <input id="token" name="token" type="hidden" value="VUBJKB23UIVI1UU1VOBVI@" />

# hidden_field_tag 'collected_input', '', onchange: "alert('Input collected!')"
# # => <input id="collected_input" name="collected_input" onchange="alert('Input collected!')"
# #    type="hidden" value="" />



# <!-- Time to implement the GamesController#score logic. Do we have all the information at hand? What do we need? Do we need to pass more information through the POST request? Have a look at hidden_field_tag.

# We want to handle three scenarios:

# The word can’t be built out of the original grid
# The word is valid according to the grid, but is not a valid English word
# The word is valid according to the grid and is an English word
# (You can use this API to check if a word is valid.)

# At the bottom of the results, add a link_to to go back to the New game page.

#  -->
