local model = require 'model'
local controller= require 'controller'
local res = {
    test = 'string from view'

}

function res.init()
    model.init()
    main_loop()
end


function main_loop()
    --first print commands
    print("\n command list  \n l --------- list tasks  \n u <index> - update task \n a --------- add task \n r <index> - remove task \n e --------- exit")
    print('\n awaiting input...')
    local inp = io.read()
    -- print(table.find(model.commands, inp))
    print(controller.find_in_table(model.commands,inp))
end

return res