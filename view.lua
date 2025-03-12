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
    inp = controller.sanitise_input(inp)
    if inp[1] == model.commands[5] then return nil end --handle exit since the rest of the loop is not needed
    if controller.find_in_table(model.commands, inp[1])== nil then print('no such command')
    else
    local func_index =controller.find_in_table(model.commands,inp[1])
    model.command_list[func_index](model.data, inp[2])
    model.write(model.data)
    end
    main_loop()

end

return res