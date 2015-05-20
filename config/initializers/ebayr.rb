Ebayr.dev_id = ENV['EBAY_DEV_ID']
Ebayr.auth_token = ENV['EBAY_AUTH_TOKEN']
Ebayr.app_id = ENV['EBAY_APP_ID']
Ebayr.cert_id = ENV['EBAY_CERT_ID']

# Set this to true for testing in the eBay Sandbox (but remember to use the
# appropriate keys!). It's true by default.
Ebayr.sandbox = false if Rails.env.production?
