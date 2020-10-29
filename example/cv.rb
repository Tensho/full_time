require 'full_time'

FullTime.profile do
  name 'Andrew Babichev'
  email 'andrew.babichev@gmail.com'
  homepage 'http://tensho.github.io'
  github 'https://github.com/Tensho'
  twitter 'https://twitter.com/Tensh0'
  linkedin 'https://www.linkedin.com/in/andrewbabichev'
  goodreads 'https://goodreads.com/tensho'
  location 'Irpin, Ukraine, 08206'
  extra 'Visa: Sponsorship required'

  intro '12+ years in IT industry. Focused on cloud DevOps and backend web development. Fond of operating systems, networking, distributed systems, book reading, baduk, tea. Open source software contributor.'

  skills do
    • 'Languages: Ruby, SQL, JavaScript/CoffeeScript, HTML/Slim/Haml, CSS/SASS, Elixir, HCL'
    • 'Frameworks: Rails'
    • 'Databases: MySQL, Postgres, DynamoDB, MongoDB, Neo4j'
    • 'Queues/Message Brokers: Redis, RabbitMQ'
    • 'Testing: RSpec, Capybara, FactoryBot, Jasmine'
    • 'Web Standards: HTTP, JSON, XML/DTD, REST, JSON API, SOAP/WSDL, AMQP, DNS'
    • 'Email Standards: SMTP, IMAP'
    • 'Networking: TCP/IP'
    • 'Web Servers: Nginx'
    • 'IaaS: AWS (EC2, EBS, ASG, ECS, ELB, Route53, RDS, S3, VPC, IAM, CloudFront, CloudWatch, CloudTrail, DynamoDB, ElastiCache, CloudFormation, Lambda, SNS)'
    • 'PaaS: Heroku'
    • 'Configuration Management: Puppet, Packer'
    • 'Infrastructure Management: Terraform'
    • 'Task Management: Trello, JIRA, GitHub Projects'
    • 'Version Source Control: Git'
    • 'Collaboration: GitHub, GitLab, Confluence, Slack'
    • 'Continuous Integration: CircleCI, TravisCI, GitLab CI/CD'
    • 'OS/Execution Environment: MacOS, Linux, Docker'
    • 'CMS: Refinery'
    • 'IDE/Editor: RubyMine, GoLand, Sublime Text, Vim'
    • 'Services: Gmail, Mandrill, Pingdom, Geckoboard, HoneyBadger, Keybase, Zoom'
    • 'Methodology: Kanban, Scrum, Programming Motherfucker'
  end

  employment do
    company 'Grammarly' do
      homepage 'http://grammarly.com'

      project 'Platform', start_date: 'August 2019', end_date: 'Current' do
        title 'Platform Engineer'

        technologies do
          • 'Primary Languages: Go, HCL'
          • 'Secondary Languages: Bash'
          • 'AWS: ECS, EC2, EBS, ASG, ALB/NLB, Route53, RDS, S3, VPC, TGW, IAM, CloudFront, CloudWatch, CloudTrail, Lambda, SNS, SecurityHub, WAF, API Gateway'
          • 'Server Templating: Packer'
          • 'Configuration Management: Ansible'
          • 'Infrastructure Management: Terraform'
          • 'Web Servers: Nginx'
          • 'OS/Execution Environment: Amazon Linux 2 (CentOS), Ubuntu, Alpine, MacOS, Docker, Windows'
        end

        achievements do
          • 'Develop AWS infrastructure providing the basement for secure, scalable, available and reliable Grammarly services'
          • 'Take part in scheduled on-call activities supporting Platform goodies and helping engineers around'
          • 'Support company needs as AWS WorkSpaces service owner in terraform-provider-aws project'
          • 'Drive DevOps and SRE principles'
        end
      end
    end

    company 'Intetics' do
      homepage 'http://intetics.com'

      project 'Resolver', start_date: 'January 2016', end_date: 'August 2019' do
        homepage 'https://resolver.co.uk'
        description 'Free online tool for complaints and claims.'
        title 'Senior Software Engineer & Team Lead'

        technologies do
          • 'Primary Languages: Ruby, SQL'
          • 'Secondary Languages: CoffeeScript/JavaScript, Slim/HAML/HTML5'
          • 'Web Frontend Frameworks: AngularJS'
          • 'Web Backend Frameworks: Rails, Sinatra, Grape, Rocket Pants'
          • 'Background Processors: Sidekiq, Sneakers'
          • 'Databases: MySQL, DynamoDB, MongoDB, Postgres, Redis, Memcached, Neo4j, AuroraDB'
          • 'Queues/Message Brokers: Redis, RabbitMQ'
          • 'AWS: EC2, EBS, ASG, ECS, ELB, Route53, RDS, S3, VPC, IAM, CloudFront, CloudWatch, CloudTrail, DynamoDB, ElastiCache, CloudFormation, Lambda, SNS'
          • 'Server Templating: Packer'
          • 'Configuration Management: Puppet'
          • 'Infrastructure Management: Terraform'
          • 'Web Servers: Nginx'
          • 'OS/Execution Environment: Ubuntu, Alpine, MacOS, Docker'
          • 'CMS: Refinery'
        end

        achievements do
          • 'Extended test framework and covered with specs existing and new features'
          • 'Introduced continuous delivery pipeline (GitHub, CircleCI, Capistrano, Slack)'
          • 'Setup backup model for MySQL to AWS S3 and Rackspace Cloud Files'
          • "Contributed filter parameters config fixes to 'rails' and 'dookeeper' gems in the sake of application"
          • 'Setup and integrated web application with IBM Bluemix cognitive services AlchemyAPI, Watson and Tone Analyzer'
          • 'Developed and implemented HTML email sanitizers (loofah scrubbers)'
          • 'Consolidated MailChimp/Mandrill templates workflow, introduced dynamic content'
          • 'Setup CDN (AWS CloudFront distributions)'
          • 'Integrated Mandrill and custom TLS email server outbound/inbound mailing systems for the multiple regions'
          • 'Internationalized and localized web application'
          • 'Adjusted Puppet manifests and node definitions for the existing and new services in the sake of the better reliability of infrastructure configuration'
          • 'Adjusted custom Ruby scripts for AWS EC2 instances provisioning'
          • "Contributed typecasted attributes to 'mongoid' gem in the sake of the application"
          • 'Handled emoticons in MySQL'
          • 'Introduced asynchronous event sourcing with RabbitMQ'
          • 'Developed mailer microservice'
          • 'Developed companies administration application'
          • "Numerous contributions to 'mandrill_dm', 'capistrano', 'capistrano-sidekiq' and 'capistrano-sneakers' gems in the sake of the application"
          • "Contributed URI query parameters parsing to 'amq-protocol', 'bunny', 'amqp' gems in the sake of the application"
          • "Contributed unparsed mail field value to 'mail' gem in the sake of the application"
          • 'Replaced Rails protected attributes with strong parameters'
          • 'Introduced Docker and AWS ECS'
          • 'Introduced Packer + Terraform for AutoScaling purposes and Blue/Green deployments in the multi-region environment'
          • 'Interviewed and mentored other developers in the highly distributed team'
          • 'Introduced new developers to the application'
          • 'Spread out Agile principles and Scrum methodology to the team'
        end
      end
    end

    company 'GlobalLogic' do
      homepage 'http://globallogic.com'

      project 'ACP', start_date: 'November 2014', end_date: 'January 2016' do
        description 'Advanced creative platform for online advertising, which allows you to automate the processes related to creative services. It supports both platforms – desktop and mobile.'
        title 'Senior Software Engineer'

        technologies do
          • 'Primary Languages: Ruby, SQL'
          • 'Secondary Languages: CoffeeScript/JavaScript, Slim/HAML/HTML5, SASS/CSS'
          • 'Web Backend Frameworks: Rails, Sinatra, Grape, Rocket Pants'
          • 'Databases: MySQL, Postgres'
          • 'AWS: (EC2, EBS, RDS, S3, CloudFront, IAM, CloudFormation, SES)'
          • 'Configuration Management: Ansible'
          • 'OS/Execution Environment: Docker'
        end

        achievements do
          • 'Setup test framework and covered with specs existing and new features'
          • 'Performed development operations – infrastructure setup, configuration and application deployment'
          • 'Developed bulk import/export of the records from/to excel spreadsheet'
          • 'Interviewed and mentored other developers'
          • 'Introduced new developers to the application'
          • "Contributed to 'cocoon' gem in the sake of application"
          • 'Performed major refactoring to advertisement showing mechanics'
          • 'Developed application multitenancy'
          • 'Migrated from MySQL to Postgres'
          • 'Researched solutions for the cross-browser issues'
          • 'Refactored event tracking system for the existing advertisements'
          • 'Introduced video player to the advertisements'
          • 'Delivered first and launched subsequent production releases intime'
          • 'Spread out Agile principles and SCRUM methodology to the team'
        end
      end
    end

    company 'DataArt' do
      homepage 'http://dataart.com'

      project 'Online advertising aggregator', start_date: 'July 2014', end_date: 'November 2014' do
        description 'Online advertising aggregator from different services, particularly Google Adwords and Bing Ads, which provides data to the end user in the target scope. The application was divided into several parts: Rails application for the user management purposes, Ember application (frontend) for the users with dashboard/charts/statistics, Rails API application (backend) to support frontend, MapReduce cluster for the data import and analysis from advertising services.'
        title 'Software Engineer'

        technologies do
          • 'Ruby'
          • 'Rails'
          • 'Postgres'
          • 'MongoDB'
          • 'AWS (EMR, EC2, RDS, S3)'
          • 'Google Analytics'
          • 'Google DFP'
          • 'Bing Ads'
          • 'JSON'
        end

        achievements do
          • 'Setup test framework and covered with specs existing and new features'
          • 'Figured out detailed requirements'
          • 'Developed Hadoop MapReduce streaming steps'
          • 'Enhanced API according to frequently changing business logic'
          • 'Implemented 3rd party integrations with Google Analytics & DFP, Bing Ads'
          • 'Delivered the first production releases intime'
          • 'Adopted Agile principles and Kanban methodology'
        end
      end
    end

    company 'Anadea Inc' do
      homepage 'http://anadea.info'

      project 'NowShop', start_date: 'October 2012', end_date: 'July 2014' do
        homepage 'http://nowshop.com'
        description 'Online e-commerce platform, that provides integrated web-shops for the news sites. The platform includes over 1.000.000 products in all categories, full payment solution as well as 3rd party delivery solution.'
        title 'Software Engineer'

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
          • 'Implemented XML import optimizations to speed up the process x2 times like digesting, queries reduction, ActiveRecord refusal in favor of raw SQL'
          • 'Supported the time task scheduler for the periodic tasks with logging and email notification'
          • 'Developed HTML scrappers for the retailer sites to grab products info'
          • 'Covered with specs existing and new features in TDD style'
          • 'Maintained shop UI uptodate the backend side'
          • 'Adopted Agile principles and XP methodology'
        end
      end
    end

    company 'Donetskoblgaz PLC' do
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
          • 'Assumed a leadership role in cooperative work, inspired and motivated other employees'
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
    certificate do
      title 'AWS Certified Solutions Architect - Associate (SAA)'
      authority 'Amazon Web Services'
      start_date 'April 2018'
      end_date 'April 2020'
      license_number 'MGV91PF2BE1QQBGD'
      url 'https://www.certmetrics.com/amazon/public/badge.aspx?i=1&t=c&d=2018-04-02&ci=AWS00435488'
    end

    certificate do
      title 'AWS Certified Developer - Associate (DVA)'
      authority 'Amazon Web Services'
      start_date 'March 2018'
      end_date 'March 2020'
      license_number 'S4BBW3CKBBQQQM94'
      url 'https://www.certmetrics.com/amazon/public/badge.aspx?i=2&t=c&d=2018-03-01&ci=AWS00435488'
    end

    certificate do
      title 'Web Application Architectures'
      authority 'Coursera'
      end_date 'May 2015'
    end

    certificate do
      title 'Algorithms: Design and Analysis, Part 1'
      authority 'Coursera'
      end_date 'April 2015'
    end

    certificate do
      title 'Gamification'
      authority 'Coursera'
      end_date 'April 2014'
    end

    certificate do
      title 'Functional Programming Principles in Scala'
      authority 'Coursera'
      end_date 'December 2013'
    end
  end

  interests do
    • 'Software Architecture'
    • 'Web Technologies'
    • 'Reading'
    • 'Open Source'
    • 'Cooking'
    • 'Tea'
    • 'Chess'
    • 'Go (Baduk)'
    • 'Japan'
  end
end
