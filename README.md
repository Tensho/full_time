# FullTime

The gem allows to declare your CV with Ruby DSL and render it further with [`tilt`](https://github.com/rtomayko/tilt) supported engines. 

## Installation

    $ gem install full_time

For some formats you require additional gems: 
    
| Target  | Gem                                        |
| ------- | ------------------------------------------ |
| HTML    | –                                          |
| PDF     | [prawn](https://github.com/prawnpdf/prawn) |

 Check out template engines supported by [`tilt`](https://github.com/rtomayko/tilt#tilt---).

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
    certificate do
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

Add custom template of your choice and convert CV Ruby file to HTML file within custom ERB template:

    $ full_time -t html ./cv.rb template.html.erb > cv.html
    
or PDF file within custom Prawn template:

    $ full_time -t html ./cv.rb template.pdf.prawn > cv.pdf

For the more extensive example checkout `example` folder.

## High-Level CV Structure

```
* Profile
  * Employment
    * Company
      * Project
  * Education
    * University
  * Certification
    * Certificate
```
  
## TODO

* Investigate LinkedIn API
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

<!-- DonnuCTF{1_am_50_g1ad_t0_5ee_y0u} -->
