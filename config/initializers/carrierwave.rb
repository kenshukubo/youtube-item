CarrierWave.configure do |config|
  config.fog_credentials = {
    provider: 'AWS',
    aws_access_key_id: ENV["S3_ACCESS_KEY"],
    aws_secret_access_key: ENV["S3_SECRET_KEY"],
    region: 'ap-northeast-1'
  }
  config.cache_storage = :fog

  if Rails.env.development?
    config.fog_directory  = 'development-tubest'

  # elsif Rails.env.staging?
  #   config.fog_directory  = 'staging-cryptospells-web'
  #   config.asset_host = 'https://d3a3jeglo6h485.cloudfront.net' #cloudfront用
  # elsif Rails.env.production?
  #   config.fog_directory  = 'production-cryptospells-web'
  #   config.asset_host = 'https://d3n9a7g7xguuos.cloudfront.net' #cloudfront用
  end
end