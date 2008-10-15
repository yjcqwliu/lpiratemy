 manyou_config = "#{RAILS_ROOT}/config/manyou.yml"
	    if File.exist?(manyou_config)
		  manyou = YAML.load_file(manyou_config)[RAILS_ENV] 
		  ENV['manyou_API_KEY'] = manyou['api_key']
		  ENV['manyou_SECRET_KEY'] = manyou['secret_key']
		  ENV['manyou_RELATIVE_URL_ROOT'] = manyou['canvas_page_name']
		  ENV['callback_url'] = manyou['callback_url']
		end