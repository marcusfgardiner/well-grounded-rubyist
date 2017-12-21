class Array
    def my_map
        c = 0
        acc = []
        until c == size
            acc << yield(self[c])
            c += 1
        end
#Return the accumulated array, as map does (whereas each returns the original array)        
        acc
    end
end


#------------------------
# building my_map from my_each
class Array

  def my_each
    c = 0
    until c == size
      yield(self[c])
      c += 1
    end
    self
  end

end
#------------------------


class Array
    def my_map_2
        acc = []
            #Don't actually need to write this 'self.my_each' because if don't provide an object, it uses the default object i.e. self
            my_each{|e| acc << yield e}
        acc
    end
end
