require File.expand_path '../spec_helper.rb', __FILE__

describe "My Sinatra Application" do
  it "should allow accessing the home page" do
    get '/'

    expect(last_response).to be_ok
    expect(last_response.body).to eq("Hello, World!\n")
  end
end