
local res = {    
    test = 'string from controller'
}

function res.create()
    print('should add a new task')
end
function res.read()
    print('should return a single task')
end
function res.read_all(tbl)
    -- print('should return all tasks')
    -- print(#tbl)
    if #tbl==0 then 
        print('no data available')
    else
        for i =0 , #tbl do
            print( i .. "--" .. tbl[i] )
        end
    end

end
function res.update()
    print('should update a single task')
end
function res.delete()
    print('should remove a single task')
end
function res.find_in_table(tbl, el)
    for k, v in pairs(tbl) do
        if v == el then
            return k
        end
    end
    return nil
end


return res