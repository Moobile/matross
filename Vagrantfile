$ruby_version = File.read(".ruby-version").chomp

$script = <<SCRIPT
sudo apt-get update
sudo apt-get install git-core build-essential nginx -y

git clone https://github.com/sstephenson/rbenv.git ~/.rbenv
git clone https://github.com/sstephenson/ruby-build.git ~/.rbenv/plugins/ruby-build

echo 'export PATH="$HOME/.rbenv/bin:$PATH"' >> ~/.bash_profile
echo 'eval "$(rbenv init -)"' >> ~/.bash_profile
. ~/.bash_profile

rbenv install #{$ruby_version}
SCRIPT

Vagrant::Config.run do |config|

  [:app].each_with_index do |role, i|
    config.vm.define(role, primary: true) do |config|
      config.vm.box = role
      config.vm.box = 'precise64'
      config.vm.box_url = 'http://files.vagrantup.com/precise64.box'
      config.vm.forward_port 22, "222#{i}".to_i
      config.vm.provision :shell, inline: $script, privileged: false
    end
  end

end
