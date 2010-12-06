# Be sure to restart your server when you modify this file.

# Your secret key for verifying cookie session data integrity.
# If you change this key, all old sessions will become invalid!
# Make sure the secret is at least 30 characters and all random, 
# no regular words or you'll be exposed to dictionary attacks.
ActionController::Base.session = {
  :key         => '_pancic_session',
  :secret      => 'd16137d0764a56d8a61d5db97a9e5efc57d2e66b6197cbe548f8d5748afc9ad42bb25525532deeecbe8df3b4853bbfb539dcb8f7ad38c1e0ac64696ff2513498'
}

# Use the database for sessions instead of the cookie-based default,
# which shouldn't be used to store highly confidential information
# (create the session table with "rake db:sessions:create")
# ActionController::Base.session_store = :active_record_store
