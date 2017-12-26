require 'fileutils'

dirList = []
for arg in ARGV
    dirList << arg
end

filenames = Dir.entries(dirList[0])
filenames.delete(".")
filenames.delete("..")

extList = []
filenames.each do |i|
    extList << i.split('.')[1]
end

extList.each do |i|
    Dir.mkdir(arg + "/" + i, 0744)  #permissions = rw-r-r
end

filenames.each do |i|
    FileUtils.mv(arg + "/" + i, arg + "/" + i.split('.')[1])
end
