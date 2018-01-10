if ismac
    MacGUI
else ispc
    WindowsGUI
else
    disp('Platform not supported')
end 
