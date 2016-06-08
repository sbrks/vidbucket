config.paperclip_defaults = {
  storage: :s3,
  s3_credentials: {
    bucket: ENV.fetch('bucketlistbucket'),
    access_key_id: ENV.fetch('AKIAIHC4CWW6EEPODLGA'),
    secret_access_key: ENV.fetch('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'),
    s3_region: ENV.fetch('Northern California'),
  }
}