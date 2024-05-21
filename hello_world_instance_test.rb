#!/usr/bin/env ruby
begin
    gem 'minitest', '>= 5.0.0'
    require 'minitest/autorun'
    require_relative 'hello_world_instance'
  rescue Gem::LoadError => e
    puts "\nMissing Dependency:\n#{e.backtrace.first} #{e.message}"
    puts 'Minitest 5.0 gem must be installed for the xRuby track.'
  rescue LoadError => e
    puts "\nError:\n#{e.backtrace.first} #{e.message}"
    puts DATA.read
    exit 1
  end
  
  class HelloWorldTest < Minitest::Test
    def test_no_method_name
      
      assert_equal 'Hello, World. My name is Wally!', HelloWorld.new('Wally').hello
    end
  
    def test_no_method_name_different_object_name
      
      assert_equal 'Hello, World. My name is Daisy!', HelloWorld.new('Daisy').hello
    end
  
    def test_sample_name
      
      assert_equal 'Hello, Alice. My name is Wally!', HelloWorld.new('Wally').hello('Alice')
    end
  
    def test_other_sample_name
      assert_equal 'Hello, Bob. My name is Wally!', HelloWorld.new('Wally').hello('Bob')
    end
  
    def test_other_sample_name_with_different_object_name
        
      assert_equal 'Hello, Bob. My name is Daisy!', HelloWorld.new('Daisy').hello('Bob')
    end
  end
  
  