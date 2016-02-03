# matlab_using

Open source matlab toolboxes

# Installation

paste the following code in your matlab command window:

folder_name=uigetdir;
urlwrite('https://raw.githubusercontent.com/alexdarlington/matlab_using/master/using.m',[folder_name '\using.m']);
addpath(folder_name);
savepath;

# Usage example

to install the library 'alex', add the following line to your scripts or paste into the command window:

using('alex');

this has added a new function to your path, try using it:

alex('hello')
