require 'shared_examples/dsl_attribute_accessors'

describe FullTime::Profile do
  it_embraces 'DSL attribute accessors',
    name: 'Danny Choo',
    email: 'danny@dannychoo.com',
    homepage: 'https://dannychoo.com',
    github: 'https://github.com/dannychoo',
    twitter: 'https://twitter.com/dannychoo',
    linkedin: 'https://www.linkedin.com/in/dannychoo',
    goodreads: 'https://goodreads.com/user/show/39664841-danny-choo',
    location: 'Tokyo, Japan',
    extra: 'Visa sponsorship required'

  describe '#employment' do
    context 'without block' do
      it 'acts as getter' do
        expect(subject.employment).to be_nil
      end
    end

    context 'with block' do
      let!(:employment) { subject.employment {} }

      it 'acts as setter' do
        expect(subject.employment {}).to be_instance_of(FullTime::Employment)
      end
    end
  end

  describe '#skills' do
    context 'without block' do
      it 'acts as getter' do
        expect(subject.skills).to be_empty
      end
    end

    context 'with block' do
      it 'yields block' do
        expect { |b| subject.skills(&b) }.to yield_control
      end

      it 'acts as setter' do
        subject.skills do
          • 'Design'
          • '3D Printing '
        end

        expect(subject.skills).to contain_exactly(
          'Design',
          '3D Printing '
        )
      end
    end
  end

  describe '#education' do
    context 'without block' do
      it 'acts as getter' do
        expect(subject.education).to be_nil
      end
    end

    context 'with block' do
      let!(:education) { subject.education {} }

      it 'acts as setter' do
        expect(subject.education {}).to be_instance_of(FullTime::Education)
      end
    end
  end

  describe '#certification' do
    context 'without block' do
      it 'acts as getter' do
        expect(subject.certification).to be_nil
      end
    end

    context 'with block' do
      let!(:certification) { subject.certification {} }

      it 'acts as setter' do
        expect(subject.certification {}).to be_instance_of(FullTime::Certification)
      end
    end
  end

  describe '#interests' do
    context 'without block' do
      it 'acts as getter' do
        expect(subject.interests).to be_empty
      end
    end

    context 'with block' do
      it 'yields block' do
        expect {|b| subject.interests(&b)}.to yield_control
      end

      it 'acts as setter' do
        subject.interests do
          • 'Designed the concept of Smart Doll'
          • 'Created Mirai Suenaga character'
        end

        expect(subject.interests).to contain_exactly(
          'Designed the concept of Smart Doll',
          'Created Mirai Suenaga character'
        )
      end
    end
  end
end
