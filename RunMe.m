if ismac || isunix  % if linux or MacOs
    MacGUI % run mac version as it works on both
elseif ispc % if windows PC
    WindowsGUI % run windows GUI
else
    disp('Platform not supported')
end 
