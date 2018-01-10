if ismac || isunix  %If linux or MacOs
    MacGUI %Run mac version as it works on both
elseif ispc %If windows PC
    WindowsGUI %Run windows GUI
else
    disp('Platform not supported')
end 
