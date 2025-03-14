local controller = require 'controller'
local res = {
    test = 'string from model',
    
}
res.data ={}
res.commands = {'l',"u",'a','r','e'}
res.command_list ={
    controller.read_all,
    controller.update,
    controller.create,
    controller.delete,
}
local path = 'data.csv'


function res.init()
    print('Initializing data from disk...')
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
    -- res.data = content or
    if #content>0 then table.insert(res.data,content)end
    print('Data loaded successfully. Length: ' .. #res.data .. ' bytes')
    
    return true
end



function res.write(tbl)
    if #tbl== 0 then
        -- print('nothing to write to disk')
    else
        -- print('should write to disk '.. #tbl)
        local res = ''
        for i= 1, #tbl   do
            res = res .. tbl[i] ..  ","
        end
        -- print(res)
    end
        local file,err = io.open(path,'w')
    if file then
        file:write(tostring(res))
        file:close()
    else
        print("error:", err)
    end
end
return res