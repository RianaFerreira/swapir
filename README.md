# Star Wars API Wrapper
A simplified interface for interacting with the [Star Wars API]
Main page: https://github.com/RianaFerreira/swapir

## Requirements
* Ruby 2.4.1
The swapir gem depends on these other gems for usage at runtime:
* [rest-client] consumes the [Star Wars API]
* [json] parses the [Star Wars Api] response

## Usage
To use swapir you can

    require 'swapir'

Now you have access to a simple public interface that allows you to find more information about your favourite Star Wars characters, movies, planets, species, starships and vehicles.

Take a look at the [wiki] for more information.

### Interesting resources
* [rubygems] building a gem
* [ruby-lang] Ruby core reference
* [ruby programming] modules
* [learn ruby the hard way] modules
* [ruby blog] adding class methods and instance methods to a class
* [codeship blog] good module, bad module

## TODO list
1. Spec coverage
2. Do not expose request and decode methods in the public API
3. Improve request exception handling

[rest-client]: https://github.com/rest-client/rest-client
[json]: https://github.com/flori/json
[Star Wars API]: https://swapi.co/

[rubygems]: http://guides.rubygems.org/make-your-own-gem/
[ruby-lang]: https://www.ruby-lang.org/en/documentation/
[learn ruby the hard way]: https://learnrubythehardway.org/book/ex44.html
[ruby programming]: https://en.wikibooks.org/wiki/Ruby_Programming/Syntax/Classes#Mixing_in_Modules
[ruby blog]: http://rubyblog.pro/2017/04/class-methods-and-instance-methods-by-including-one-module
[codeship blog]: https://blog.codeship.com/good-module-bad-module/

[wiki]: https://github.com/RianaFerreira/swapir/wiki
