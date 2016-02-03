function using(package)

% open source eco system for matlab

% get the directory where using is installed
fullpath = mfilename('fullpath')
[token,pathr] = strtok(fliplr(fullpath),'\')
path = fliplr(pathr)

% toolboxes
toolboxes.alex = 'https://github.com/alexdarlington/matlabopensource/archive/master.zip'

addr = toolboxes.(package)

% outfilename = websave(package,addr)
urlwrite(addr,[path package '.zip'])

filenames = unzip([path package '.zip'],path)

newdir = filenames{1}
newdir = newdir(length(path)+1:end)
newdir = strtok(newdir,'\')

addpath([path newdir])
