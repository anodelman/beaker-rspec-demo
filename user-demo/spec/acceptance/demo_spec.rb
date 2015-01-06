require 'spec_helper_acceptance'

describe "my tests" do

  # an example using the beaker DSL
  it "should say hello!" do
    hosts.each do |host|
      on host, 'echo hello' do |result|
        expect(result.stdout).to match(/hello/)
      end
    end
  end

  # an example using Serverspec
  describe package('puppet') do
    it { should be_installed }
  end

end
