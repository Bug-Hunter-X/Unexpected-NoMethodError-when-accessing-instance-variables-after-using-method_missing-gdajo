```ruby
class MyClass
  def initialize(value)
    @value = value
  end

  def value
    @value
  end

  def method_missing(method_name, *args, &block)
    # Handle method calls dynamically
    puts "Method '#{method_name}' called with args: #{args.inspect}"
  end
end

my_object = MyClass.new(10)
my_object.nonexistent_method(1, 2, 3) # This will execute method_missing
puts my_object.value # This will now correctly print 10
```