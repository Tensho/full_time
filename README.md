# FullTime

Handle your CV like a pro

## Installation

Add this line to your application's Gemfile:

```ruby
gem 'full_time'
```

And then execute:

    $ bundle

Or install it yourself as:

    $ gem install full_time
    
Depending on your export target you have to install the next gems:

| Target   | Gem                                      |
| -------- | ---------------------------------------- |
| HTML     | [tilt](https://github.com/rtomayko/tilt) |

## Usage

Declare your CV within DSL:

```ruby
# cv.rb

FullTime.profile do
  name 'Rebecca Lee'
  email 'revy@blacklagoon.moe'
  homepage 'https://lagooncompany.fandom.com/wiki/Revy'
  github 'https://github.com/revy'
  location 'Roanapur'

  employment do
    company 'The Lagoon Company' do
      homepage 'http://thelagooncompany.com'

      project 'Alpha', start_date: 'November 2010', end_date: 'January 2015' do
        homepage 'https://alpha.com'
        description 'Alpha Season'
        title 'Gunslinger'

        technologies do
          • 'Two Berettas'
          • 'PM-63 Submachine Gun'
          • 'Gepard Anti Materiel Rifle'
        end

        achievements do
          • 'Infiltrated 500+ enemies'
          • 'Drank 200+ rum bottles'
        end
      end
    end
  end

  education do
    university 'Roanapur Technical University', start_date: '2005', end_date: '2010' do
      title 'Gunfighter'
    end
  end

  certification do
    course do
      title 'Two Hand Shooting: Part 1'
      company 'Bang! Bang! Bang!'
      homepage 'https://bangbangbang.com'
    end
  end

  interests do
    • 'Sex'
    • 'Guns'
    • 'Alcohol'
  end
end
```

The next command converts your CV to HTML within custom ERB template:

    $ full_time -t html cv.rb ./example/template.html.erb > cv.html 

For the more extensive example checkout `example/cv.rb`.

## High-Level Structure

```
* Profile
  * Employment
    * Company
      * Project
  * Education
    * University
  * Certification
    * Course
```
  
## TODO

* Present any collection with a list in the template
* Extend "Certification" with `expire_date`, `license_number`, `url`, `authority` (like in LinkedIn) + Adjust README "High-Level Structure"
```ruby
certificate do
  title 'AWS Certified Developer - Associate (DVA)'
  authority 'Amazon Web Services'
  expire_date 'March 2020'
  license_number 'S4BBW3CKBBQQQM94'
  homepage 'https://aws.amazon.com/certification/certified-developer-associate'
  url 'https://www.certmetrics.com/amazon/public/badge.aspx?i=2&t=c&d=2018-03-01&ci=AWS00435488'
end
```
* Add "Intro"
```ruby
intro <<-INTRO
 Software Engineer
 10 years in IT industry
 Engineering, development, delivery
INTRO
```
* Add "Skills" –> "Services" (Mandrill, Pingdom, etc)
* Add the different template engines, e.g. render to `pdf`, `doc`, etc
* Add LinkedIn export support
* Add CI
* Add badges
  
## Development

- Checkout repo
- `bin/setup` – install required dependencies
- `bin/console` – get console for experiments
- `bin/rake install` – install gem onto local machine

## Test

- `bin/rspec spec/full_time_spec.rb` – run single test
- `bin/rake` – run all tests

## Release

- Update the version number in `version.rb`
- `bin/rake install` – build and install gem into system gems
- `bin/rake release` – create a git tag for the version, push git commits and tags and push the `.gem` file to [rubygems.org](https://rubygems.org).

## Contributing

Bug reports and pull requests are welcome on GitHub at https://github.com/Tensho/full_time.
