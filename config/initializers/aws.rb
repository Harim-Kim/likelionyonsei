CarrierWave.configure do |config|
  config.fog_provider = 'fog/aws' 
  config.fog_credentials = {
    provider:              'AWS',                        # required
    aws_access_key_id:     'AKIAJTUGX3AHAA73PRJQ',                          # required
    aws_secret_access_key: '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',                     # required
    region:                'ap-northeast-2',                  # optional, defaults to 'us-east-1'
    endpoint:              'https://s3.ap-northeast-2.amazonaws.com' # optional, defaults to nil
  }
  config.fog_directory  = 'yllp'                          # required
end
