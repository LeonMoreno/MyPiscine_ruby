# frozen_string_literal: true

require_relative 'factorial'

describe Factorial do
  context 'Con numeros mayores que 1' do
    # before do
    #   @result = subject.factorial_of(5)
    # end
    let(:calculator) { Factorial.new }

    it 'find factorial 5' do
      expect(calculator.factorial_of(5)).to eq(120)
    end

    it 'Factorial de 10' do
      expect(subject.factorial_of(10)).to eq(3_628_800)
    end
  end

  context 'con numeros menores o iguales a 1' do
    it 'Factorial de 1' do
      expect(subject.factorial_of(1)).to eq(1)
    end

    it 'Factorial de 0' do
      expect(subject.factorial_of(0)).to eq(1)
    end
  end

  context 'nada relacionado con el subject' do
    it 'algo no relacionado' do
      expect(5 + 5).to eq(10)
    end

    it 'to be nil' do
      expect(nil).to be_nil
    end

    it 'to be true' do
      expect(true).to be(true)
    end
  end

  context 'uno con varios expect' do
    it 'varios calculates the factorial of 5' do
      calculator = Factorial.new
      result = calculator.factorial_of(5)

      expect(result).to eq(120)
      expect(result).to be_a(Integer)
      expect(result).to be_positive
      expect(subject).not_to be_nil
    end
  end

  context 'not_to ensayo' do
    it 'not_to equal' do
      expect(subject.factorial_of(3)).not_to eq(100)
    end
  end

  context 'instance de algo' do
    calculato = Factorial.new

    it 'instancia de Factorial' do
      expect(calculato).to be_instance_of(Factorial)
    end
  end

  context 'calls log_addition after factorial_of' do
    # let (:calculato) { Factorial.new } // lo dejo como ejemplo

    before do
      allow(subject).to receive(:log_factorial).and_call_original
    end

    it 'instancia de Factorial' do
      res = subject.factorial_of(3)
      expect(subject).to have_received(:log_factorial).with(res)
    end
  end

end
