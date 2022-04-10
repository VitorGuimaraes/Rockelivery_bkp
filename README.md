# Rockelivery

## Installing dependencies
To install Elixir:
  `wget https://packages.erlang-solutions.com/erlang-solutions_2.0_all.deb && sudo dpkg -i erlang-solutions_2.0_all.deb`
  `sudo apt update`
  `sudo apt install esl-erlang && sudo apt install elixir`

To install/upgrade Hex package manager:
  `mix local.hex`

To install Phoenix framework:
  `mix archive.install hex phx_new`

To install PostgreSQL (Linux):
  `sudo sh -c 'echo "deb http://apt.postgresql.org/pub/repos/apt $(lsb_release -cs)-pgdg main" > /etc/apt/sources.list.d/pgdg.list'`
  `wget --quiet -O - https://www.postgresql.org/media/keys/ACCC4CF8.asc | sudo apt-key add -`
  `sudo apt update && sudo apt install postgresql-12  postgresql-client-12 postgresql-12 libpq-dev postgresql-server-dev-12 postgresql-contrib -y`
  
  sudo -u postgres psql 
  ALTER USER postgres WITH PASSWORD 'your_password';

  Install PgAdmin (optional):
  `sudo curl https://www.pgadmin.org/static/packages_pgadmin_org.pub | sudo apt-key add && sudo sh -c 'echo "deb https://ftp.postgresql.org/pub/pgadmin/pgadmin4/apt/$(lsb_release -cs) pgadmin4 main" > /etc/apt/sources.list.d/pgadmin4.list && apt update' && sudo apt install pgadmin4`

To install inotify-tools:
  It enables Phoenix's Live Reloading feature 
  `sudo apt install inotify-tools`

## Running the project
To start your Phoenix server:

  * Install dependencies with `mix deps.get`
  * Create and migrate your database with `mix ecto.setup`
  * Start Phoenix endpoint with `mix phx.server` or inside IEx with `iex -S mix phx.server`

Now you can visit [`localhost:4000`](http://localhost:4000) from your browser.

