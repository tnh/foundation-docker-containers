require "serverspec"
require "docker"

describe "Dockerfile" do
  before(:all) do
    image = Docker::Image.build_from_dir('.')

    set :os, family: :alpine
    set :backend, :docker
    set :docker_image, image.id
  end

  describe command('java -version') do
    its(:exit_status) { should eq 0 }
    its(:stderr) { should match /1.8.0_151/ }
  end

  describe file('/etc/alpine-release') do
    it { should contain '3.7.0' }
  end

  describe file('/usr/lib/jvm/java-1.8-openjdk/jre/lib/security/java.security') do
    it { should contain 'networkaddress.cache.ttl=30' }
  end

end
