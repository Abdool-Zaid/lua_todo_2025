local model = require 'model'

local res = {
    test = 'string from view'

}

function res.init()
    model.init()
    main_loop()
end


function main_loop()
    --first print commands
    print("command list  \n l --------- list tasks  \n u <index> - update task \n a --------- add task \n r <index> - remove task \n e --------- exit")
end

return res