describe FullTime do
  describe 'profile' do
    subject(:profile) do
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
            title 'Algorithms: Design and Analysis, Part 1'
            company 'Coursera'
            homepage 'https://www.coursera.org/course/algo'
          end

          course do
            title 'Web Application Architectures'
            company 'Coursera'
            homepage 'https://www.coursera.org/course/webapplications'
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
    end

    it { is_expected.to be_instance_of(FullTime::Profile) }

    it('name') { expect(profile.name).to eq('Andrew Babichev') }
    it('email') { expect(profile.email).to eq('andrew.babichev@gmail.com') }
    it('homepage') { expect(profile.homepage).to eq('http://andrewbabichev.com') }
    it('github') { expect(profile.github).to eq('https://github.com/Tensho') }
    it('location') { expect(profile.location).to eq('Kiev, Ukraine') }

    describe 'employment' do
      subject(:employment) { profile.employment }

      it { is_expected.to be_instance_of(FullTime::Employment) }

      describe 'companies' do
        subject(:companies) { employment.companies }

        it { expect(companies.count).to eq(5) }

        describe 'company' do
          subject(:company) { companies.first }

          it { is_expected.to be_instance_of(FullTime::Company) }

          it('name') { expect(company.name).to eq('Intetics') }
          it('homepage') { expect(company.homepage).to eq('http://intetics.com') }

          describe 'projects' do
            subject(:projects) { company.projects }

            it { expect(projects.count).to eq(1) }

            describe 'project' do
              subject(:project) { projects.first }

              it { is_expected.to be_instance_of(FullTime::Project) }

              it('name') { expect(project.name).to eq('Resolver') }
              it('start_date') { expect(project.start_date).to eq('January 2016') }
              it('end_date') { expect(project.end_date).to eq('Current') }
              it('homepage') { expect(project.homepage).to eq('https://resolver.co.uk') }
              it('description') { expect(project.description).to eq('Free online tool for complaints and claims') }
              it('title') { expect(project.title).to eq('Senior Software Engineer & Team Lead') }

              it 'technologies' do
                expect(project.technologies).to include(
                'Primary Languages: Ruby, SQL',
                'Secondary Languages: Coffees/JS, Slim/HAML/HTML5, Elixir',
                'Web Frontend Frameworks: AngularJS',
                'Web Backend Frameworks: Rails, Grape, Rocket Pants',
                'Background Processors: Sidekiq, Sneakers',
                'Databases: MySQL, DynamoDB, MongoDB, Postgres, Redis, Memcached, Neo4j, AuroraDB',
                'Queues/Message Brokers: Redis, RabbitMQ',
                'AWS: EC2, ECS, EBS, ELB, Route53, RDS, S3, CloudFront, DynamoDB, VPC, IAM, ElastiCache',
                'Configuration Management: Puppet',
                'Web Servers: Nginx',
                'OS: Ubuntu, Alpine, MacOS',
                'CMS: Refinery'
                )
              end

              it 'achievements' do
                expect(project.achievements).to include(
                  'Setup test framework and covered with specs existing and new features',
                  'Deployment scripts support and enhancement',
                  'Setup backup model for MySQL to AWS S3 and Rackspace Cloud Files',
                  'Developed credit card number concealer',
                  "Contributed filter parameters config fixes to 'rails' and 'dookeeper' gems in the sake of application",
                  'Setup and integrated web application with IBM Bluemix cognitive services AlchemyAPI, Watson and Tone Analyzer',
                  'Developed and implemented HTML email sanitizers (loofah scrubbers)',
                  'Consolidated MailChimp/Mandrill templates workflow, introduced dynamic content',
                  'Setup CDN (AWS CloudFront distributions)',
                  'Setup CI/CD (GitHub, CircleCI, Slack)',
                  'Integrated web application with secure (TLS) email server',
                  'Internationalized and localized web application',
                  'Adjusted Puppet manifests for better reliability of infrastructure configuration',
                  'Adjusted custom Ruby scripts for AWS EC2 instances provisioning',
                  'Specified Puppet node definitions for new services',
                  "Contributed typecasted attributes to 'mongoid' gem in the sake of application",
                  'Handled emoticons in MySQL',
                  'Introduced asynchronous event sourcing with RabbitMQ',
                  'Developed Mailer microservice',
                  'Developed Admin microservice',
                  "Contributed re-enabled cap task invocation at 'capistrano', 'capistrano-sidekiq' and 'capistrano-sneakers' gems in the sake of application",
                  "Contributed settings and options merge to 'mandrill_dm' gem in the sake of application",
                  'Introduced Docker',
                  'Interviewed and mentored other developers',
                  'Introduced new developers to the application',
                  'Spread out Agile principles and Kanban methodology to the team'
                )
              end
            end
          end
        end
      end
    end

    describe 'education' do
      subject(:education) { profile.education }

      it { is_expected.to be_instance_of(FullTime::Education) }

      describe 'university' do
        subject(:university) { education.university }

        it { is_expected.to be_instance_of(FullTime::University) }

        it('name') { expect(university.name).to eq('Donetsk National Technical University') }
        it('start_date') { expect(university.start_date).to eq('2003') }
        it('end_date') { expect(university.end_date).to eq('2008') }

        it('title') { expect(university.title).to eq('Specialist System Programming') }
      end
    end

    describe 'certification' do
      subject(:certification) { profile.certification }

      it { is_expected.to be_instance_of(FullTime::Certification) }

      describe 'courses' do
        subject(:courses) { certification.courses }

        it { expect(courses.count).to eq(4) }

        describe 'course' do
          subject(:course) { courses.first }

          it { is_expected.to be_instance_of(FullTime::Course) }

          it('title') { expect(course.title).to eq('Algorithms: Design and Analysis, Part 1') }
          it('company') { expect(course.company).to eq('Coursera') }
          it('homepage') { expect(course.homepage).to eq('https://www.coursera.org/course/algo') }
        end
      end
    end

    specify 'interests' do
      expect(profile.interests).to include(
        'Software Architecture',
        'Web Technologies',
        'Arduino',
        'Cooking',
        'Tea',
        'Chess',
        'Go',
        'Japan'
      )
    end
  end
end
