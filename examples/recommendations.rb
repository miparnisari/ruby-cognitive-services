require '../lib/recommendationsApi'
require 'yaml'

config = YAML.load_file('../config/keys.yml')
key = config['recommendations']['key']
region = config['recommendations']['region']

r = Cognitive::Recommendations::Client.new(key, region)

response = r.upload_catalog('1', 'catalog', '../spec/books_catalog.txt')

puts response