# -*- mode: ruby -*-
# vi: set ft=ruby :

Vagrant::Config.run do |config|
  config.vm.box = 'heroku-cedar'
  config.vm.box_url = 'http://dl.dropbox.com/u/1906634/heroku.box'

  config.vm.forward_port 3000, 3000

  # # If things are going slow, you can try more CPUs and RAM.  It doesn't seem to be bounding the performance now, though.
  # config.vm.customize ['modifyvm', :id, '--cpus', 2, '--memory', 1024]
end
