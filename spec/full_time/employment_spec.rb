describe FullTime::Employment do
  describe '#initialize' do
    it 'empty companies' do
      expect(subject.companies).to be_empty
    end
  end

  describe '#company' do
    context 'without block' do
      it 'returns nil' do
        expect(subject.company).to be_nil
      end
    end

    context 'with block' do
      it 'sets company name' do
        subject.company('Acme Inc') {}

        expect(subject.companies.first.name).to eq('Acme Inc')
      end

      it 'returns new company instance' do
        expect(subject.company {}).to be_instance_of(FullTime::Company)
      end

      it 'accumulates companies' do
        expect {
          subject.company {}
        }.to change {
          subject.companies.size
        }.by(1)
      end
    end
  end
end
