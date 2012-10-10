class CartesianProduct
  include Enumerable
  
  def initialize(arr1,arr2)
    @a=arr1
    @b=arr2
  end
  
  def each
    @a.each do |i|
      @b.each do |j|
        yield [i,j]
      end
    end
  end
end
