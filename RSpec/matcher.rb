describe 'matcher' do
  context 'be_truthy' do
    something = {
      var: false
    }
    it { expect(something).to be_truthy } # true
    it { expect(something[:var]).to eq(false) } # more specific -- false
  end

  # context 'be_truthy' do
  #   it { expect(nil).to be_falsey }
  #   it { expect(false).to be_falsey }
  # end

  # context 'be true' do
  #   it { expect(true).to eq true }
  # end

  # context 'be false' do
  #   it { expect(false).to eq false }
  # end

  # context 'be_nil' do
  #   it { expect(nil).to be_nil }
  #   it { expect(nil).to eq nil }
  # end
end
