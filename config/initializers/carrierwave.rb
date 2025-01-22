# require "carrierwave/storage/abstract"
# require "carrierwave/storage/file"
# require "carrierwave/storage/fog"

CarrierWave.configure do |config|
  # if Rails.env.production?
    # config.storage :fog
    # config.fog_provider = "fog/aws"
    config.fog_credentials = {
      provider: "AWS",
      aws_access_key_id: ENV["S3_ACCESS_KEY_ID"],
      aws_secret_access_key: ENV["S3_SECRET_ACCESS_KEY"],
      region: 'ap-northeast-1'
      #   path_style: true
    }
    config.fog_directory  = "mini4wd"
    config.fog_public = false
    
  # else
    # config.storage :file # 分岐の処理はアップローダークラスに記載
    # config.enable_processing = false if Rails.env.test?
  # end
end
