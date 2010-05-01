# Be sure to restart your server when you modify this file.

# Your secret key for verifying cookie session data integrity.
# If you change this key, all old sessions will become invalid!
# Make sure the secret is at least 30 characters and all random, 
# no regular words or you'll be exposed to dictionary attacks.
ActionController::Base.session = {
  :key         => '_portalnota10_session',
  :secret      => 'ef573766ebfdca5459849fcda0db324d63a56d2f3e575296b238a9283b560ee1e04185c894fb18b709bd22b4b7fee683f2db5c3e74eaf29b73f1e934a42bd539'
}

# Use the database for sessions instead of the cookie-based default,
# which shouldn't be used to store highly confidential information
# (create the session table with "rake db:sessions:create")
# ActionController::Base.session_store = :active_record_store
