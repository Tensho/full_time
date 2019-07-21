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

    it('intro') { expect(profile.intro).to eq('Maladjusted, confident, loud,easily bored, battle hardened, battle hungry, sarcastic, rude, deadly, very competitive, cynical, confident, aggressive, and extremely ill-tempered nihilist with a dark sense of humor.') }

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

      describe 'certificates' do
        subject(:certificates) { certification.certificates }

        it { expect(certificates.count).to eq(2) }

        describe 'certificate' do
          subject(:certificate) { certificates.first }

          it { is_expected.to be_instance_of(FullTime::Certificate) }

          it('title') { expect(certificate.title).to eq('Two Hand Shooting - Professional') }
          it('authority') { expect(certificate.authority).to eq('Bang! Bang! Bang!') }
          it('start_date') { expect(certificate.start_date).to eq('July 2019') }
          it('end_date') { expect(certificate.end_date).to eq('July 2021') }
          it('license_number') { expect(certificate.license_number).to eq('BERRETA002') }
          it('url') { expect(certificate.url).to eq('https://bangbangbang.com/public/BERRETA002') }
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

  describe '.render' do
    context 'HTML' do
      it 'renders ruby profile within ERB template' do
        profile

        expect(FullTime.render('spec/fixtures/template.html.erb')).to match(/<h2>Rebecca Lee<\/h2>/)
      end
    end

    context 'PDF' do
      it 'renders ruby profile within Prawn template' do
        profile

        expect(FullTime.render('spec/fixtures/template.pdf.prawn')).to match(/PDF-1\.3/)
      end
    end
  end
end
