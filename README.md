# EloBrain
![Gem](https://img.shields.io/gem/v/elo_brain?color=Green&label=Gem&logo=rubygems)

This gem is an easy way to calculate new elos after a match between 2 players.

The calculation's logic is based on : [Wikipedia](https://fr.wikipedia.org/wiki/Classement_Elo#Th%C3%A9orie_math%C3%A9matique)

## Installation

Add this line to your application's Gemfile:

```ruby
gem 'elo_brain'
```

And then execute:

    $ bundle install

Or install it yourself as:

    $ gem install elo_brain

## Usage

First we need to create 2 players :
```ruby
player1 = EloBrain::Players::Player.from(elo: 1_200, nb_matches: 10, situation: 'winner')
player2 = EloBrain::Players::Player.from(elo: 1_400, nb_matches: 15, situation: 'looser')
```
Then we can calculate the new elo of both players by creating a match :
```ruby
match = EloBrain::Matches::Match.from(player1: player1, player2: player2)
match.calculate_new_elos # => { player1_new_elo: 1230.3898770659184, player2_new_elo: 1390.3898770659184 }
```
The result of the calculation is a <b>Hash</b>.

## Development

After checking out the repo, run `bin/setup` to install dependencies. Then, run `bundle exec rspec` to run the tests. You can also run `bin/console` for an interactive prompt that will allow you to experiment.

To install this gem onto your local machine, run `bundle exec rake install`. To release a new version, update the version number in `version.rb`, and then run `bundle exec rake release`, which will create a git tag for the version, push git commits and tags, and push the `.gem` file to [rubygems.org](https://rubygems.org).

## Contributing

Bug reports and pull requests are welcome on GitHub at https://github.com/[USERNAME]/elo_brain. This project is intended to be a safe, welcoming space for collaboration, and contributors are expected to adhere to the [code of conduct](https://github.com/[USERNAME]/elo_brain/blob/master/CODE_OF_CONDUCT.md).


## License

The gem is available as open source under the terms of the [MIT License](https://opensource.org/licenses/MIT).

## Code of Conduct

Everyone interacting in the EloBrain project's codebases, issue trackers, chat rooms and mailing lists is expected to follow the [code of conduct](https://github.com/[USERNAME]/elo_brain/blob/master/CODE_OF_CONDUCT.md).
