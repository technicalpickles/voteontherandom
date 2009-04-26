# Be sure to restart your server when you modify this file.

# Your secret key for verifying cookie session data integrity.
# If you change this key, all old sessions will become invalid!
# Make sure the secret is at least 30 characters and all random, 
# no regular words or you'll be exposed to dictionary attacks.
ActionController::Base.session = {
  :key         => '_voteontherandom_session',
  :secret      => 'a6440a84dffef2296c54589921570695c9c430df3fa1bc381cbf6e3b6763cbc774c09425ee300ab973e7eb87e3fbccf37e1cc5ba6197f6e4a46d9223630a6a95'
}

# Use the database for sessions instead of the cookie-based default,
# which shouldn't be used to store highly confidential information
# (create the session table with "rake db:sessions:create")
# ActionController::Base.session_store = :active_record_store
