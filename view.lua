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
    -- print(model.commands[5])
    if inp == model.commands[5] then return nil end --handle exit since the rest of the loop is not needed
    local func_index =controller.find_in_table(model.commands,inp)
    model.command_list[func_index](model.data)
    main_loop()

end

return res