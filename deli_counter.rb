def line(line)
    def big_line(line)
        arr = []
        line.each.with_index(1){|name, index| arr << "#{index}. #{name}"}
        "The line is currently: #{arr.join(' ')}"
    end
    puts line.size == 0 ? "The line is currently empty." : big_line(line)
end

def take_a_number(line, name)
    line << name
    puts "Welcome, #{name}. You are number #{line.size} in line."
end

def now_serving(line)
    def serve(line)
        message = "Currently serving #{line.first}."
        line.shift
        message
    end
    puts line.size == 0 ? "There is nobody waiting to be served!" : serve(line)
end