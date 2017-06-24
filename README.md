# UserList

Phoenix Webpack and Distillery demo application

To start UserList app:

  * Install dependencies with `mix deps.get`
  * Create and migrate your database with `mix ecto.create && mix ecto.migrate`
  * Start Phoenix endpoint with `mix phoenix.server`

Now you can visit [`localhost:4000`](http://localhost:4000) from your browser.

## Shell commands

Population of this list is connected to each commit, please, see commit history.

  * `mix phoenix.new userlist --no-brunch`
  * `cd userlist/`
  * `mix ecto.create && mix ecto.migrate`
  * `mix phoenix.gen.model User users name active:boolean`
  * `mix ecto.migrate`
  * `mix run priv/repo/seeds.exs`
  * `npm init`
  * `npm install --save-dev webpack`
  * `npm install --save-dev copy-webpack-plugin`
  * `mix deps.get`
  * `mix release.init`
  * `npm install --save-dev babel-loader babel-core babel-preset-es2015`
  * `npm run deploy`
  * `MIX_ENV=prod mix phoenix.digest`
  * `MIX_ENV=prod mix release`
  * `PORT=8080 _build/prod/rel/userlist/bin/userlist console`