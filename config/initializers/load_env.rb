require 'json'

env_file = if Rails.env.development?
             Rails.root.join('config', 'env_vars', 'local.json')
           elsif Rails.env.test?
             Rails.root.join('config', 'env_vars', 'test.json')
           elsif Rails.env.production?
             Rails.root.join('config', 'env_vars', 'production.json')
           end

vars = JSON.parse(File.read(env_file))

vars.each_key do |key|
  next if ENV[key].present?

  ENV[key] = vars[key]
end

