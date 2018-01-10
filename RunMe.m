if ismac
    MacGUI
elseif ispc
    WindowsGUI
else
    disp('Platform not supported')
end 
