require_relative 'book'

describe Book do
  before :each do
    @text = 'A bunch of words'
    @b = PrintableBook.new('Women', 'Bukowski', @text)
  end

  it 'should hold on to the contents' do
    @b.content.should == @text
  end

  it 'should know which words it has' do
    @b.words.should include('A')
    @b.words.should include('bunch')
    @b.words.should include('of')
    @b.words.should include('words')
  end

  it 'should know how many words it contains' do
    @b.word_count.should == 4
  end

  it 'should know how to print itself' do
    stub_printer = stub :available? => true, :render => nil
    @b.print(stub_printer).should == 'Done'
  end

  it 'should return the proper string if printer is offline' do
    stub_printer = stub :available? => false, :render => nil
    @b.print(stub_printer).should == 'Printer unavailable'
  end
	
end
