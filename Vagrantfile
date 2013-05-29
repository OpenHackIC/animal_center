# vi: set ft=ruby :

Vagrant::Config.run do |config|
  config.vm.box = 'heroku-cedar'

  config.vm.box_url = 'http://dl.dropbox.com/u/1906634/heroku.box'
  # This box doesn't (seem) to have a PostgresQL user installed for use with Vagrant.  To rectify:
  #
  #     sudo su postgres -c 'createuser --createdb --no-superuser --no-createrole vagrant'
  #     cd /vagrant
  #     bundle install
  #     bundle exec rake db:create
  #     bundle exec rake db:schema:load
  #
  # TODO: Consider automating in an idempotent way, possibly with `config.vm.provision :shell ...`

  # Forward default `foreman start web` port
  config.vm.forward_port 5000, 5000

  # # If things are going slow, you can try more CPUs and RAM.  It doesn't seem to be bounding the performance now, though.
  # config.vm.customize ['modifyvm', :id, '--cpus', 2, '--memory', 1024]
end
