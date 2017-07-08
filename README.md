# Star Wars API Wrapper
A simplified interface for interacting with the [Star Wars API]
Main page: https://github.com/RianaFerreira/swapir

## Requirements
* Ruby >= 2.4.1

Swapir depends on these other gems for usage at runtime:
* [rest-client] consumes the [Star Wars API]
* [json] parses the [Star Wars Api] response
* [bundler] manages dependencies

## Installation
Add the following line to a Gemfile:

    gem 'swapir'

and run `bundle install` from your shell.

If you use Rubygems, run this command manually from your shell to install the latest Swapir version:

    gem install swapir


## Usage
Once the gem is installed you have access to a simple `Swapir` public interface. This will help you to find more information about your favourite Star Wars characters, movies, planets, species, starships and vehicles.

> Note: the Star Wars API returns paginated collections of 10 records
>       per request. Swapir collects all the paginated results and    >       returns the total number of records in the collection

Take a look at the [wiki] for more information.

### Interesting resources
* [rubygems] building a gem
* [creating] a ruby gem using bundler
* [ruby-lang] Ruby core reference
* [ruby programming] modules
* [learn ruby the hard way] modules
* [ruby blog] adding class methods and instance methods to a class
* [codeship blog] good module, bad module
* [minitest] assertions


[bundler]: http://bundler.io/
[json]: https://github.com/flori/json
[rest-client]: https://github.com/rest-client/rest-client
[Star Wars API]: https://swapi.co/

[rubygems]: http://guides.rubygems.org/make-your-own-gem/
[codeship blog]: https://blog.codeship.com/good-module-bad-module/
[creating]:http://bundler.io/v1.15/guides/creating_gem.html
[ruby-lang]: https://www.ruby-lang.org/en/documentation/
[learn ruby the hard way]: https://learnrubythehardway.org/book/ex44.html
[minitest]: http://ruby-doc.org/stdlib-2.0.0/libdoc/minitest/rdoc/MiniTest/Assertions.html
[ruby programming]: https://en.wikibooks.org/wiki/Ruby_Programming/Syntax/Classes#Mixing_in_Modules
[ruby blog]: http://rubyblog.pro/2017/04/class-methods-and-instance-methods-by-including-one-module

[wiki]: https://github.com/RianaFerreira/swapir/wiki
