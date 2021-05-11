GOOGLE_STORAGE_KEYS = Rails.application.credentials.google_storage.freeze

CarrierWave.configure do |config|
  config.fog_provider = 'fog/google'
  config.fog_credentials = {
      provider:               'Google',
      google_project:         'my-first-project',
      google_json_key_string: GOOGLE_STORAGE_KEYS[:google_json_key_string]
      # or use google_json_key_location if using an actual file
  }
  config.fog_directory = 'carieerwave'
end
