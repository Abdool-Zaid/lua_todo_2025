local model = require 'model'

local res = {
    test = 'string from view'

}

function res.init()
    print('should start up view loop, @rem add escape btn')
    model.init()
end
return res