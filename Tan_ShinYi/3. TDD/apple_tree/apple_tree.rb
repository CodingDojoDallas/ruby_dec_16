class AppleTree
  attr_accessor :height, :age, :apple_count
  def initialize
    @height=0
    @age=0
    @apple_count=0
  end
  def year_gone_by
    @age +=1
    if @age>2 && @age<10
      @apple_count+=5
    end

    if @age>=10
      @apple_count=0
    else
      @height += 2
    end
    self
  end

  def pick_apples
    @apple_count=0
  end
end
