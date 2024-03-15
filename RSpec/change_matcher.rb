class Counter
  attr_reader :value

  def initialize
    @value = 0
  end

  def increment
    @value += 1
  end
end

# Test
describe Counter do
  it 'increments the value by 1' do
    cnt = Counter.new

    expect { cnt.increment }
      .to change(cnt, :value).by(1)
  end
end

# count = Counter.new
# count.increment

# puts count.value