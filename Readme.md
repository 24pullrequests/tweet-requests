# 24 Pull Requests

[![Build Status](https://travis-ci.org/24pullrequests/tweet-requests.svg?branch=master)](https://travis-ci.org/24pullrequests/tweet-requests)
[![Dependency Status](https://img.shields.io/gemnasium/24pullrequests/tweet-requests.svg?style=flat)](https://gemnasium.com/24pullrequests/tweet-requests)
[![Gitter chat](https://img.shields.io/badge/gitter-24pullrequests-brightgreen.svg?style=flat)](https://gitter.im/24pullrequests/tweet-requests)
[![Code Climate](https://img.shields.io/codeclimate/github/24pullrequests/tweet-requests.svg?style=flat)](https://codeclimate.com/github/24pullrequests/tweet-requests)
[![Test Coverage](https://img.shields.io/codeclimate/coverage/github/24pullrequests/tweet-requests.svg?style=flat)](https://codeclimate.com/github/24pullrequests/tweet-requests)

> **Giving back little gifts of code** &#127873;

24 Pull Requests is a yearly initiative to encourage developers around the world to send 24 pull requests between December 1st and December 24th.

This is the site to help promote the project, highlighting why, how and where to send your pull requests.

## Development

Source hosted at [GitHub](https://github.com/24pullrequests/tweet-requests).
Report issues/feature requests on [GitHub Issues](https://github.com/24pullrequests/tweet-requests/issues). Follow us on Twitter [@24pullrequests](https://twitter.com/24pullrequests). We also hangout on [Gitter](https://gitter.im/24pullrequests/24pullrequests).

### Getting Started

New to Ruby? No worries! You can follow these instructions to install a local server, or you can use the included Vagrant setup.

#### Installing a Local Server

First things first, you'll need to install Ruby 2.4.2. I recommend using the excellent [rbenv](https://github.com/rbenv/rbenv),
and [ruby-build](https://github.com/rbenv/ruby-build)

```bash
rbenv install 2.4.2
rbenv global 2.4.2
```

Now, let's install the gems from the `Gemfile` ("Gems" are synonymous with libraries in other
languages).

```bash
gem install bundler && rbenv rehash
bundle install
```

### Tests

Standard RSpec/Capybara tests are used for testing the application. The tests can be run with `bundle exec rake`.

### Environment variables

`bundle exec figaro install`

Or for more information about using figaro, see https://github.com/laserlemon/figaro

### Note on Patches/Pull Requests

 * Fork the project.
 * Make your feature addition or bug fix.
 * Add tests for it. This is important so I don't break it in a future version unintentionally.
 * Send a pull request. Bonus points for topic branches.

### Code of Conduct

Please note that this project is released with a [Contributor Code of Conduct](CODE_OF_CONDUCT.md). By participating in this project you agree to abide by its terms.

## Copyright

Copyright (c) 2016 Andrew Nesbitt. See [LICENSE](https://github.com/24pullrequests/tweet-requests/blob/master/LICENSE) for details.
