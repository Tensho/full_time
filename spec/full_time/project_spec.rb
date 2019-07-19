require 'shared_examples/dsl_attribute_accessors'

describe FullTime::Project do
  it_embraces 'DSL attribute accessors',
    homepage: 'https://dannychoo.com',
    description: 'No description',
    title: 'CEO'

  %i(name start_date end_date).each do |attribute|
    it "has #{attribute} attribute" do
      expect { subject.public_send(attribute) }.not_to raise_error
    end
  end

  describe '#initialize' do
    it 'empty technologies' do
      expect(subject.technologies).to be_empty
    end

    it 'empty achievements' do
      expect(subject.achievements).to be_empty
    end
  end

  describe '#technologies' do
    context 'without block' do
      it 'acts as getter' do
        expect(subject.technologies).to be_empty
      end
    end

    context 'with block' do
      it 'yields block' do
        expect { |b| subject.technologies(&b) }.to yield_control
      end

      it 'acts as setter' do
        subject.technologies do
          • '3D Max'
          • 'Photoshop'
        end

        expect(subject.technologies).to contain_exactly(
          '3D Max',
          'Photoshop'
        )
      end
    end
  end

  describe '#achievements' do
    context 'without block' do
      it 'acts as getter' do
        expect(subject.achievements).to be_empty
      end
    end

    context 'with block' do
      it 'yields block' do
        expect { |b| subject.achievements(&b) }.to yield_control
      end

      it 'acts as setter' do
        subject.achievements do
          • 'Designed the concept of Smart Doll'
          • 'Created Mirai Suenaga character'
        end

        expect(subject.achievements).to contain_exactly(
          'Designed the concept of Smart Doll',
          'Created Mirai Suenaga character'
        )
      end
    end
  end
end
