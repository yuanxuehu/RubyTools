#!/usr/bin/ruby
# filename : test.rb

class Sample
  def hello
    puts "Hello, World!"
  end
end

s = Sample.new
s.hello



#运行文件
class Student
  attr_accessor :first_name, :last_name, :primary_phone_number

  def introduction
    puts "Hi, I'm #{first_name}!"
  end
end

frank = Student.new
frank.first_name = "TigerHu"
frank.introduction



#方法参数
class Student
  attr_accessor :first_name, :last_name, :primary_phone_number

  def introduction(target)
    puts "Hi #{target}, I'm #{first_name}!"
  end
end

frank = Student.new
frank.first_name = "Maxsu"
frank.introduction('Minlee')



#返回值
class Student
  attr_accessor :first_name, :last_name, :primary_phone_number

  def introduction(target)
    puts "Hi #{target}, I'm #{first_name}!"
  end

  def favorite_number
    7
  end
end

frank = Student.new
frank.first_name = "Maxsu"
puts "Maxsu's favorite number is #{frank.favorite_number}."



#Ruby 中的 Here Document 建立多行字符串
print <<EOF
    This is the first way of creating
    here document ie. multiple line string.
EOF
 
print <<"EOF";                # 与上面相同
    This is the second way of creating
    here document ie. multiple line string.
EOF
 
print <<`EOC`                 # 执行命令
    echo hi there
    echo lo there
EOC
 
print <<"foo", <<"bar"        # 您可以把它们进行堆叠
    I said foo.
foo
    I said bar.
bar



#Ruby BEGIN 语句 声明 code 会在程序运行之前被调用
puts "This is main Ruby Program1"
 
BEGIN {
   puts "Initializing Ruby Program"
}



#Ruby END 语句 声明 code 会在程序的结尾被调用
puts "This is main Ruby Program2"
 
END {
   puts "Terminating Ruby Program2"
}
BEGIN {
   puts "Initializing Ruby Program2"
}


=begin
这是注释。
这也是注释。
这也是注释。
这还是注释。
=end

