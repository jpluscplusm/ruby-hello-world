require File.expand_path '../spec_helper.rb', __FILE__

require "net/http"

describe 'Hello World app' do
  describe '/' do
    it 'returns Hello, World!' do
      get '/'

      expect(last_response).to be_ok
      expect(last_response.body).to eq("Hello, World!\n")
    end
  end
end