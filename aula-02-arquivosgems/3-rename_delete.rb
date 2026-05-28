#1- renomeando arquivos
File.rename("data/files.txt", "data/courses.txt")

#2- excluindo arquivos
if File.exist?("data/course123.txt")
    File.delete("data/course123.txt")
end