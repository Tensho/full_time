shared_examples 'DSL attribute accessors' do |data|
  data.each do |attribute, value|
    describe "##{attribute}" do
      context 'without arguments' do
        before { subject.public_send(attribute, value) }

        it 'acts as getter' do
          expect(subject.public_send(attribute)).to eq(value)
        end
      end

      context 'with one arguments' do
        it 'acts as setter' do
          subject.public_send(attribute, value)

          expect(subject.public_send(attribute)).to eq(value)
        end
      end
    end
  end
end
