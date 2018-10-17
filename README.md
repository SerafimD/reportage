# reportage_dsl
[![Build Status](https://travis-ci.org/SerafimD/reportage_dsl.svg?branch=master)](https://travis-ci.org/SerafimD/reportage_dsl)

## Table of Content
* [Why reportage_dsl?](#why-reportage_dsl)
* [Install](#install)
* [Usage](#usage)
* [License](#license)

## Why reportage_dsl?

What if you have a bunch of raw data and you need to quickly generate a 
readable report to show it to your boss / colleague?
 You just need the data to be wrapped, no settings and everything works out of the box!
Then this gem will solve your problems.

## Install
Add this line to your Gemfile:

```ruby
gem 'reportage_dsl'

```
And then execute:

    $ bundle

Or install it yourself as:

    $ gem install reportage_dsl

## Usage
Generate PDF
```ruby
require 'reportage_dsl'

rep = ReportageDSL::Generator.new
rep.add [0, 1, 2]
rep.to_pdf
```
<br>

Generate XML
```ruby
require 'reportage_dsl'

rep = ReportageDSL::Generator.new
rep << [0, 1, 2]
rep.to_xml
```

## License
reportage_dsl is released under the [MIT License](http://www.opensource.org/licenses/MIT).