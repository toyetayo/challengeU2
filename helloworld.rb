class HelloWorld
  # Class-level method to return the greeting
  def self.hello(name = nil)
    if name
      "Hello, #{name}!"
    else
      "Hello, World!"
    end
  end
end

# Call the method and print the result
puts HelloWorld.hello
puts HelloWorld.hello('Tim')

    

