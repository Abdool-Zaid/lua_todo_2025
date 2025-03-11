local res = {
    test = 'string from model',
    
}
res.data ={}
function res.init()
    print('Initializing data from disk...')
    local path = 'data.csv'
    local file, err
    
    -- Try to open file for reading first
    file, err = io.open(path, "rb")
    
    -- If file doesn't exist, create it
    if not file then
        print('File not found, creating new file: ' .. path)
        file, err = io.open(path, "w")
        if not file then
            print('Error creating file: ' .. err)
            return false
        end
        -- Write initial content if needed
        file:write("")
        file:close()
        
        -- Reopen for reading
        file, err = io.open(path, "rb")
        if not file then
            print('Error opening new file: ' .. err)
            return false
        end
    end

    -- Read file content
    local content = file:read("*a")
    file:close()
    
    -- Store and verify data
    res.data = content or ""
    print('Data loaded successfully. Length: ' .. #res.data .. ' bytes')
    
    return true
end



function res.write()
    print('should write to disk')
end
return res