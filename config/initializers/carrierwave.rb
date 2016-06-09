CarrierWave.configure do |config|
	config.fog_credentials = {
		:provider => 'AWS',
		:aws_access_key_id => 'AKIAIHC4CWW6EEPODLGA',
		:aws_secret_access_key => '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',
		:region => 'northern-california'

	}

	config.fog_directory = 'bucketlistbucket'
	# config.fog_public = false
end
