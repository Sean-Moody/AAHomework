def sluggish_longest(fish)
    fish.each do |fis|
        return fis if fish.all?{|ele| fis.length >= ele.length}
    end
end

fish1 = ['fish', 'fiiish', 'fiiiiish', 'fiiiish', 'fffish', 'ffiiieeeeeeeeeiisshh', 'fsh', 
'fiiiissshhhhhh']

# p sluggish_longest(fish1) #== fish1[-1]

def dominant_longest(fish)

    return fish[0] if fish.length == 1

    mid = fish.length/2
    left = dominant_longest(fish[0...mid])
    right= dominant_longest(fish[mid + 1..-1])
    
    


    p mid
    p left
    p right
end

p dominant_longest(fish1)