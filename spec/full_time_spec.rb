describe FullTime do
  subject(:profile) do
    eval(File.read('spec/fixtures/cv.rb'))
  end

  describe '.profile' do
    it { expect(profile).to be_instance_of(FullTime::Profile) }

    it('name') { expect(profile.name).to eq('Rebecca Lee') }
    it('email') { expect(profile.email).to eq('revy@blacklagoon.moe') }
    it('homepage') { expect(profile.homepage).to eq('https://lagooncompany.fandom.com/wiki/Revy') }
    it('github') { expect(profile.github).to eq('https://github.com/revy') }
    it('location') { expect(profile.location).to eq('Roanapur') }

    describe 'employment' do
      subject(:employment) { profile.employment }

      it { is_expected.to be_instance_of(FullTime::Employment) }

      describe 'companies' do
        subject(:companies) { employment.companies }

        it { expect(companies.count).to eq(2) }

        describe 'company' do
          subject(:company) { companies.first }

          it { is_expected.to be_instance_of(FullTime::Company) }

          it('name') { expect(company.name).to eq('Headshot') }
          it('homepage') { expect(company.homepage).to eq('http://headshot.com') }

          describe 'projects' do
            subject(:projects) { company.projects }

            it { expect(projects.count).to eq(1) }

            describe 'project' do
              subject(:project) { projects.first }

              it { is_expected.to be_instance_of(FullTime::Project) }

              it('name') { expect(project.name).to eq('Gamma') }
              it('start_date') { expect(project.start_date).to eq('January 2020') }
              it('end_date') { expect(project.end_date).to eq('Current') }
              it('homepage') { expect(project.homepage).to eq('https://gamma.com') }
              it('description') { expect(project.description).to eq('Gamma Season') }
              it('title') { expect(project.title).to eq('Gunfighter') }

              it 'technologies' do
                expect(project.technologies).to include(
                  'Two Berettas',
                  'Knife'
                )
              end

              it 'achievements' do
                expect(project.achievements).to include(
                  'Murdered Ginji Matsuzaki',
                  'Infiltrated 20+ enemies',
                  'Drank 10+ rum bottles'
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

        it('name') { expect(university.name).to eq('Roanapur Technical University') }
        it('start_date') { expect(university.start_date).to eq('2005') }
        it('end_date') { expect(university.end_date).to eq('2010') }

        it('title') { expect(university.title).to eq('Gunfighter') }
      end
    end

    describe 'certification' do
      subject(:certification) { profile.certification }

      it { is_expected.to be_instance_of(FullTime::Certification) }

      describe 'courses' do
        subject(:courses) { certification.courses }

        it { expect(courses.count).to eq(2) }

        describe 'course' do
          subject(:course) { courses.first }

          it { is_expected.to be_instance_of(FullTime::Course) }

          it('title') { expect(course.title).to eq('Two Hand Shooting: Part 1') }
          it('company') { expect(course.company).to eq('Bang! Bang! Bang!') }
          it('homepage') { expect(course.homepage).to eq('https://bangbangbang.com') }
        end
      end
    end

    specify 'interests' do
      expect(profile.interests).to include(
        'Sex',
        'Guns',
        'Alcohol'
      )
    end
  end

  describe '.export!' do
    context 'HTML' do
      it 'exports ruby profile within ' do
        profile

        expect do
          FullTime.export!(:html, 'spec/fixtures/template.html.erb')
        end.to output(/<h2>Rebecca Lee<\/h2>/).to_stdout
      end
    end
  end
end
