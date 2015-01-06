require 'spec_helper_acceptance'

describe "my tests" do

  # an example using the beaker DSL
  # use http://www.rubydoc.info/github/puppetlabs/beaker/Beaker/DSL
  it "should say hello!" do
    hosts.each do |host|
      on host, 'echo hello' do |result|
        expect(result.stdout).to match(/hello/)
      end
    end
  end

  # an example using Serverspec
  # use http://serverspec.org/resource_types.html
  describe package('puppet') do
    it { should be_installed }
  end

end
