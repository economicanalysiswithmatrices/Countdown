if ismac
    MacGUI
elseif ispc
    WindowsGUI
elseif
    disp('Platform not supported')
end 
