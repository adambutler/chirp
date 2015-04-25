# Chrip

A simple streaming twitter board for events.

![chirp](https://cloud.githubusercontent.com/assets/1238468/7334629/ae460102-eb90-11e4-8fdf-8528d1fdd4c9.gif)

## Install

```
$ git clone git@github.com:adambutler/chirp.git
$ cd chirp
$ bundle install
$ rake db:create
$ rake db:migrate
$ cp .env.example .env
```

## Run Specs

```
# With guard
guard

# .. or without
bundle exec rspec
```

## Contributing

Contributions are welcome, please follow [GitHub Flow](https://guides.github.com/introduction/flow/index.html)
