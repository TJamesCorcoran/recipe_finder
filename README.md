## Intro

PurePoint test program

As per spec, uses:
* Ruby 2.4.0
* Rails 5.0.3
* Bootstrap 4.0.0 alpha

I use "unicorn" and "foreman" because Heroku uses those and they're safe defaults.

## To run

1. cd .
1. sudo apt install ruby-foreman
1. bundle install
1. rake assets:precompile
1. foreman start web -p5000
1. surf to localhost://5000

## Bugs

* Has zero programatic test coverage / rspecs.  Unacceptable!
* I worry about user input validation.  Can user supply javascript via search field? Who knows!
* using bootstrap, but style does not match example.
    * move "submit" button to R of search field
	* add space around table
* method of getting 20 results is brittle - better to download a page, count results, keep iterating. No time to revisit.

## History

25 Aug 2017 - tjamescorcoran@gmail.com
