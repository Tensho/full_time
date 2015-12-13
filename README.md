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

## Usage

```
FullTime.profile do
  name 'Andrew Babichev'
  email 'andrew.babichev@gmail.com'
  homepage 'http://andrewbabichev.com'
  github 'https://github.com/Tensho'
  location 'Kiev, Ukraine'

  employment do
    company 'Intetics' do
      homepage 'http://intetics.com'

      project 'Resolver', start_date: 'January 2016', end_date: 'Current' do
        homepage 'https://resolver.co.uk'
        description 'Free online tool for complaints and claims'
        title 'Senior Software Engineer & Team Lead'

        technologies do
          • 'Primary Languages: Ruby, SQL'
          • 'Secondary Languages: Coffees/JS, Slim/HAML/HTML5, Elixir'
          • 'Web Frontend Frameworks: AngularJS'
          • 'Web Backend Frameworks: Rails, Grape, Rocket Pants'
          • 'Background Processors: Sidekiq, Sneakers'
          • 'Databases: MySQL, DynamoDB, MongoDB, Postgres, Redis, Memcached, Neo4j, AuroraDB'
          • 'Queues/Message Brokers: Redis, RabbitMQ'
          • 'AWS: EC2, ECS, EBS, ELB, Route53, RDS, S3, CloudFront, DynamoDB, VPC, IAM, ElastiCache'
          • 'Configuration Management: Puppet'
          • 'Web Servers: Nginx'
          • 'OS: Ubuntu, Alpine, MacOS'
          • 'CMS: Refinery'
        end

        achievements do
          • 'Setup test framework and covered with specs existing and new features'
          • 'Deployment scripts support and enhancement'
          • 'Setup backup model for MySQL to AWS S3 and Rackspace Cloud Files'
          • 'Developed credit card number concealer'
          • "Contributed filter parameters config fixes to 'rails' and 'dookeeper' gems in the sake of application"
          • 'Setup and integrated web application with IBM Bluemix cognitive services AlchemyAPI, Watson and Tone Analyzer'
          • 'Developed and implemented HTML email sanitizers (loofah scrubbers)'
          • 'Consolidated MailChimp/Mandrill templates workflow, introduced dynamic content'
          • 'Setup CDN (AWS CloudFront distributions)'
          • 'Setup CI/CD (GitHub, CircleCI, Slack)'
          • 'Integrated web application with secure (TLS) email server'
          • 'Internationalized and localized web application'
          • 'Adjusted Puppet manifests for better reliability of infrastructure configuration'
          • 'Adjusted custom Ruby scripts for AWS EC2 instances provisioning'
          • 'Specified Puppet node definitions for new services'
          • "Contributed typecasted attributes to 'mongoid' gem in the sake of application"
          • 'Handled emoticons in MySQL'
          • 'Introduced asynchronous event sourcing with RabbitMQ'
          • 'Developed Mailer microservice'
          • 'Developed Admin microservice'
          • "Contributed re-enabled cap task invocation at 'capistrano', 'capistrano-sidekiq' and 'capistrano-sneakers' gems in the sake of application"
          • "Contributed settings and options merge to 'mandrill_dm' gem in the sake of application"
          • 'Introduced Docker'
          • 'Interviewed and mentored other developers'
          • 'Introduced new developers to the application'
          • 'Spread out Agile principles and Kanban methodology to the team'
        end
      end
    end

    company 'GlobalLogic' do
      homepage 'http://globallogic.com'

      project 'Advanced creative platform for online advertising', start_date: 'November 2014', end_date: 'January 2016' do
        description 'Advanced creative platform for online advertising, which allows you to automate processes related to creative services. It supports both platforms – desktop and mobile.'
        title 'Full-stack Rails developer'

        technologies do
          • 'Ruby'
          • 'Rails'
          • 'MySQL'
          • 'Postgres'
          • 'Slim/HTML5'
          • 'Coffeescript/Javascript'
          • 'SASS/CSS'
          • 'AWS (CloudFormation, EC2, EBS, RDS, S3, CloudFront, SES, IAM)'
          • 'Ansible'
          • 'Docker'
        end

        achievements do
          • 'Setup test framework and covered with specs existing and new features'
          • 'Performed development operations – infrastructure setup, configuration and application deployment'
          • 'Delivered first and launched subsequent production releases intime'
          • 'Developed bulk import/export of the records from/to excel spreadsheet'
          • 'Interviewed and mentored other developers'
          • 'Introduced new developers to the application'
          • "Contributed to 'cocoon' gem in the sake of application"
          • 'Refactored advertisement showing mechanics'
          • 'Developed application multitenancy'
          • 'Migrated from MySQL to Postgres'
          • 'Researched solutions for the cross-browser issues'
          • 'Refactored event tracking system for existing advertisements'
          • 'Introduced video player to the advertisements'
          • 'Spread out Agile principles and SCRUM methodology to the team'
        end
      end
    end

    company 'DataArt' do
      homepage 'http://dataart.com'

      project 'Online advertising aggregator', start_date: 'July 2014', end_date: 'November 2014' do
        description 'Online advertising aggregator from different services, particularly Google Adwords and Bing Ads, which provides data to the end user in the target scope. The application was divided into several parts: Rails application for the user management purposes, Ember application (frontend) for the users with dashboard/charts/statistics, Rails API application (backend) to support frontend, MapReduce cluster for the data import and analysis from advertising services.'
        title 'Backend Rails developer'

        technologies do
          • 'Ruby'
          • 'Rails'
          • 'Postgres'
          • 'AWS (EMR, EC2, RDS, S3)'
          • 'Google Analytics'
          • 'Google DFP'
          • 'Bing Ads'
        end

        achievements do
          • 'Setup test framework and covered with specs existing and new features'
          • 'Figured out detailed requirements'
          • 'Developed Hadoop MapReduce streaming steps'
          • 'Enhanced API according to frequently changing business logic'
          • 'Implemented 3rd party integrations'
          • 'Delivered first production releases intime'
          • 'Adopted Agile principles and Kanban methodology'
        end
      end
    end

    company 'Anadea Inc' do
      homepage 'http://anadea.info'

      project 'NowShop', start_date: 'October 2012', end_date: 'July 2014' do
        homepage 'http://nowshop.com/'
        description 'NowShop delivers integrated web-shops for news sites. The platform includes over 1.000.000 products in all categories, full payment solution as well as 3rd party delivery solution.'
        title 'Backend Rails developer'

        technologies do
          • 'Ruby'
          • 'Rails'
          • 'Postgres'
          • 'XML'
          • 'XML Scheme'
          • 'HTML'
        end

        achievements do
          • 'Developed mechanism for obtaining XML data feeds from the retailers in different countries (Denmark, Norway, Sweden, United Kingdom), validation, parsing and multithread saving to the database'
          • 'Implemented XML import optimizations like digests, queries reduction, ActiveRecord refusal in favor of SQL'
          • 'Supported the time task scheduler for the periodic tasks with logging and email notification'
          • 'Developed HTML scrappers for the retailer sites to grab products info'
          • 'Covered with specs existing and new features in TDD style'
          • 'Sustained shop UI uptodate the backend side'
          • 'Adopted Agile principles and XP methodology'
        end
      end
    end

    company 'Donetskoblgaz PLC' do
      # description 'Donetskoblgaz is the regional gas transfer monopolist'

      project 'Internal accounting system', start_date: 'July 2008', end_date: 'October 2012' do
        homepage ''
        description ''
        title 'Software Engineer'

        technologies do
          • 'Perl'
          • 'MS SQL Server'
          • 'Oracle'
          • 'XML'
          • 'DTD'
          • 'DBF'
          • 'HTML'
          • 'Excel'
        end

        achievements do
          • 'Figured out detailed requirements, evaluated system program needs, wrote and maintained program code to meet system requirements, system designs and technical specifications'
          • 'Maintained inner accounting software package (client-server model)'
          • 'Developed web-services to provide the customers ability to view the balance, edit counter values, make payments'
          • 'Improved software for the data exchange between organization and banks'
          • 'Administrated ERP Parus 8.2 database, wrote technical and user documentation, enterprise standards'
          • 'Assumed a leadership role in cooperate work, inspired and motivated other employees'
          • 'Adopted Waterfall methodology'
        end
      end
    end
  end

  education do
    university 'Donetsk National Technical University', start_date: '2003', end_date: '2008' do
      title 'Specialist System Programming'
    end
  end

  certification do
    course do
      title 'Web Application Architectures'
      company 'Coursera'
      homepage 'https://www.coursera.org/course/webapplications'
    end

    course do
      title 'Algorithms: Design and Analysis, Part 1'
      company 'Coursera'
      homepage 'https://www.coursera.org/course/algo'
    end

    course do
      title 'Gamification'
      company 'Coursera'
      homepage 'https://www.coursera.org/course/Gamification'
    end

    course do
      title 'Functional Programming Principles in Scala'
      company 'Coursera'
      homepage 'https://www.coursera.org/course/progfun'
    end
  end

  interests do
    • 'Software Architecture'
    • 'Web Technologies'
    • 'Arduino'
    • 'Cooking'
    • 'Tea'
    • 'Chess'
    • 'Go'
    • 'Japan'
  end
end
```

The next command converts your CV to HTML:

```
$ full_time
```

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
  * Interests
```
  
## Development

After checking out the repo, run `bin/setup` to install dependencies. Then, run `bin/rake` to run the tests. You can also run `bin/console` for an interactive prompt that will allow you to experiment.

To install this gem onto your local machine, run `bundle exec rake install`. To release a new version, update the version number in `version.rb`, and then run `bundle exec rake release`, which will create a git tag for the version, push git commits and tags, and push the `.gem` file to [rubygems.org](https://rubygems.org).

## TODO

* Allow to pass CV and template file paths to executable, like `$full_time cv.rb template.html.erb`
* Present any collection with a list in the template
* Extend "Certification" with `expire_date`, `license_number`, `url`, `authority` (like in LinkedIn) + Adjust README "High-Level Structure"
```
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
```
intro <<-INTRO
 Software Engineer
 10 years in IT industry
 Engineering, development, delivery
INTRO
```
* Add "Services: Mandrill" to "Skills"
* Open source
* Add the different template engines, e.g. render to `pdf`, `doc`, etc

## Contributing

Bug reports and pull requests are welcome on GitHub at https://github.com/Tensho/full_time.

