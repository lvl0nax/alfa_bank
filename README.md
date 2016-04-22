# AlfaBank

[![Code Climate](https://codeclimate.com/github/lvl0nax/alfa_bank/badges/gpa.svg)](https://codeclimate.com/github/lvl0nax/alfa_bank)
[![Build Status](https://travis-ci.org/lvl0nax/alfa_bank.svg?branch=master)](https://travis-ci.org/lvl0nax/alfa_bank)
[![Gem Version](https://badge.fury.io/rb/alfa_bank.svg)](https://badge.fury.io/rb/alfa_bank)

DESCRIPTION COMING SOON


## Installation

Add this line to your application's Gemfile:

```ruby
gem 'alfa_bank'
```

And then execute:

    $ bundle

Or install it yourself as:

    $ gem install alfa_bank

## Usage

###Configuration(initializer):

```ruby
AlfaBank.configure do |config|
  config.user_name = ENV[:ALFA_BANK_USERNAME]  # username alfa-bank api account
  config.password = ENV[:ALFA_BANK_PASSWORD]   # password from alfa-bank api account
  config.base_link = 'https://test.paymentgate.ru/testpayment/rest/'
end
```

###usage

```ruby
params =
  { order_number: 1,
    amount: 10043, # in cents
    return_url: [YOUR_APP_RETURN_URL]}
AlfaBank::Client.register_order(params)
```

[WIKI](https://github.com/lvl0nax/alfa_bank/wiki)

## Development

After checking out the repo, run `bin/setup` to install dependencies. Then, run `rake false` to run the tests. You can also run `bin/console` for an interactive prompt that will allow you to experiment.

To install this gem onto your local machine, run `bundle exec rake install`. To release a new version, update the version number in `version.rb`, and then run `bundle exec rake release`, which will create a git tag for the version, push git commits and tags, and push the `.gem` file to [rubygems.org](https://rubygems.org).

## Contributing

Bug reports and pull requests are welcome on GitHub at https://github.com/[USERNAME]/alfa_bank. This project is intended to be a safe, welcoming space for collaboration, and contributors are expected to adhere to the [Contributor Covenant](contributor-covenant.org) code of conduct.


## License

The gem is available as open source under the terms of the [MIT License](http://opensource.org/licenses/MIT).

