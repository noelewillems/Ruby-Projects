# Sources:
# https://stackoverflow.com/questions/8657740/ruby-get-object-keys-as-array
# https://ruby-doc.org/core-2.7.0/Hash.html

require 'pp'
exclText = File.read(ARGV[1]).split
exclWords = Array[]
exclText.each do |a|
    exclWords.push(a)
end
words = []
File.open(ARGV[0], "r") do |f|
f.each_line do |line|
    arr = line.downcase.split(/[^'\w]+/)
    arr.each do |word|
        unless exclWords.include? word
            words << word
        end
    end
end

# Sets values to word frequency
wordsMap = words.tally

# Orders map by word count (value)
newWords = Hash[wordsMap.sort_by{|k, v| v}.reverse]
top50 = Hash.new(0)
cnt = 0
newWords.each do |word, count|
    if cnt < 50 
        cnt = cnt + 1
        top50.store("#{word}", count)
    end
end

first = top50.values[0].to_f
last = top50.values[49].to_f
top50 = top50.sort.to_h
sizeRange = 1000.0 / (first - last)
HTMLfile = File.new((ARGV[2]), "w+")
HTMLfile.puts "<!DOCTYPE html><html><body>"
i = 0
top50.each do |k, v|
    if i < 50
        i = i + 1
        re = rand(0..255)
        gr = rand(0..255)
        bl = rand(0..255)
        # HTMLfile.write "<span style = \"font-size:", (v * sizeRange) + 100, "%; color:black\">", k, "</span>\n"
        HTMLfile.write "<span style = \"font-size:", (v * sizeRange) + 100, "%; color:rgb(", re, ",", gr, ",", bl, "\")>", k, "                           </span>"
    end
end
HTMLfile.write "</body></html>"

end