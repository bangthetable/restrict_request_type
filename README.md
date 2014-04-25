# RestrictRequestType

TODO: Write a gem description

## Installation

Add this line to your application's Gemfile:

    gem 'restrict_request_type'

And then execute:

    $ bundle

Or install it yourself as:

    $ gem install restrict_request_type

## Usage

Add this to the top of the controller:

    restrict_request_type of: [:show], to: [:json]

Status code [406](http://www.checkupdown.com/status/E406.html) will be returned if a format is that is not allowed is requested for.

## Contributing

1. Fork it
2. Create your feature branch (`git checkout -b my-new-feature`)
3. Commit your changes (`git commit -am 'Add some feature'`)
4. Push to the branch (`git push origin my-new-feature`)
5. Create new Pull Request
