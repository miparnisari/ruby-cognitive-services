require 'yaml'
require './lib/recommendationsApi'

describe Cognitive::Recommendations::Client do

  subject(:rec_client) {
    Cognitive::Recommendations::Client.new(@key, @region)
  }

  before(:all) do
    config = YAML.load_file('./config/keys.yml')
    @key = config['recommendations']['key']
    @region = config['recommendations']['region']
  end

  it 'should upload catalog' do
    model_id = 1
    catalog_display_name = 'catalog'
    catalog = './spec/books_catalog.txt'
    response = rec_client.upload_catalog(model_id, catalog_display_name, catalog)
    expect(response).not_to be_empty
  end
end

