class Book
  attr_accessor :title, :author

  def initialize( title, author, content)
    @title = title
    @author = author
    @content = content
  end

  def title
    print @title
  end

  def author
    print @author
  end

  def content
    @content
  end

  def words
    @content.split
  end

  def word_count
    words.size
  end
end

class PrintableBook < Book

  def print(printer)
    return 'Printer unavailable' unless printer.available?
    printer.render( "#{title}\n" )
    printer.render( "By #{author}\n" )
    printer.render( content )
    'Done'
  end

end 
