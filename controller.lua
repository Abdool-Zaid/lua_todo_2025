local res = {    
    test = 'string from controller'
}

function res.create()
    print('should add a new task')
end
function res.read()
    print('should return a single task')
end
function res.read_all()
    print('should return all tasks')
end
function res.update()
    print('should update a single task')
end
function res.delete()
    print('should remove a single task')
end

return res