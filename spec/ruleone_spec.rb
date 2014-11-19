# Any live cell with less than two live neighbours dies, as if caused by under population
# TDD as if you really mean it
# Not allowed to write  a variable, class or test a method. Test the pure rule.

describe 'Rule 1' do

  it 'one is less than 2' do
    expect(1 < 2).to be true
  end

  it 'zero is less than 2' do
    expect(0 < 2).to be true
  end

  it 'two is not less than 2' do
    expect(2 < 2).not_to be true
  end

  it 'one will die' do
    death = true
    expect(1 < 2).to eq death
  end

  it 'one will die because it has less than 2 live neighbours' do
    live_neighbours = 2
    death = true
    expect(1 < live_neighbours).to eq death
  end

  it 'one cell will die because it has less than 2 live neighbours' do
    live_neighbours = 2
    death = true
    cell = 1
    expect(cell < live_neighbours).to eq death
  end

  it 'when we apply rule 1 on one cell with less than 2 neighbours it will die' do
    live_neighbours = 2
    death = true
    cell = 1
    apply_rule_one = cell < live_neighbours
    expect(apply_rule_one).to eq death
  end
  
end
