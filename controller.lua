
local res = {    
    test = 'string from controller'
}

function res.create(tbl)
    -- print('should add a new task')
    print( type(tbl))
    print('enter new task')
    local new_task = io.read()
    table.insert(tbl, new_task)
    print('new task added at index: '.. #tbl)
    
end
function res.read(tbl)
    print('should return a single task')
end
function res.read_all(tbl)
    -- print('should return all tasks')
    -- print(#tbl)
    if #tbl==0 then 
        print('no data available')
    else
        for i = 1 , #tbl do
            print( i .. "--" .. tbl[i] )
        end
    end

end
function res.update(tbl)
    print('should update a single task')
end

function res.delete(tbl,inp )
    -- print('should remove a single task')
    -- print('given inp= ' .. inp)
    print('val '.. inp)
    table.remove(tbl,inp)
    print('removed task at index: '.. inp)
    
end

function res.find_in_table(tbl, el)
    for k, v in pairs(tbl) do
        if v == el then
            return k
        end
    end
    return nil
end

function res.sanitise_input(inp)
    local res = {}
    for match in string.gmatch(inp, "[^" .. " " .. "]+") do
        table.insert(res, match)
    end
    return res
end


return res