# Yamlable

Simple Ruby Module that adds to_yaml to any Object that includes it.

## Installation

Add this line to your application's Gemfile:

```ruby
gem 'yamlable'
```

And then execute:

    $ bundle

Or install it yourself as:

    $ gem install yamlable

## Usage


```ruby
class Example
  include Yamlable
  ...
```

```ruby
ex = Example.new
ex_yaml = ex.to_yaml
ex_again = Yamlable.from_yaml(ex_yaml)
```
  

## Development

After checking out the repo, run `bin/setup` to install dependencies. Then, run `rake` to run the tests. You can also run `bin/console` for an interactive prompt that will allow you to experiment.

To install this gem onto your local machine, run `bundle exec rake install`. To release a new version, update the version number in `version.rb`, and then run `bundle exec rake release`, which will create a git tag for the version, push git commits and tags, and push the `.gem` file to [rubygems.org](https://rubygems.org).

## Contributing

Bug reports and pull requests are welcome on GitHub at https://github.com/folkengine/yamlable.

