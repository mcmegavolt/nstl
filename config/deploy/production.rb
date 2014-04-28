set :stage, :production

server '31.41.217.13', user: 'evestudio', roles: %w{web app db},
  ssh_options: {
    # keys: %w(/var/www/evestudio/data/.ssh/id_rsa),
    forward_agent: false,
    auth_methods: %w(password), # %w(publickey password)
    password: 'eVE8tUd10pA8sw0rd'
  }

fetch(:default_env).merge!(rails_env: :production)