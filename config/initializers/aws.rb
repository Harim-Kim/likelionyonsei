CarrierWave.configure do |config|
  config.fog_provider = 'fog/aws' 
  config.fog_credentials = {
    provider:              'AWS',                        # required
    aws_access_key_id:     'AKIAZ3FWOGLL2TUZXS7O',                          # required
    aws_secret_access_key: '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',                     # required
    region:                'ap-northeast-2',                  # optional, defaults to 'us-east-1'
    endpoint:              'https://s3.ap-northeast-2.amazonaws.com' # optional, defaults to nil
  }
  config.fog_directory  = 'yllp'                          # required
end