require 'shared_examples/dsl_attribute_accessors'

describe FullTime::Company do
  it_embraces 'DSL attribute accessors',
    homepage: 'https://dannychoo.com'

  %i(name).each do |attribute|
    it "has #{attribute} attribute" do
      expect { subject.public_send(attribute) }.not_to raise_error
    end
  end

  describe '#initialize' do
    it 'empty projects' do
      expect(subject.projects).to be_empty
    end
  end

  describe '#project' do
    context 'without block' do
      it 'returns nil' do
        expect(subject.project).to be_nil
      end
    end

    context 'with block' do
      it 'sets project name' do
        subject.project('Alpha') {}

        expect(subject.projects.first.name).to eq('Alpha')
      end

      it 'returns new company instance' do
        expect(subject.project {}).to be_instance_of(FullTime::Project)
      end

      it 'accumulates companies' do
        expect {
          subject.project {}
        }.to change {
          subject.projects.size
        }.by(1)
      end
    end
  end
end
