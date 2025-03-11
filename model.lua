local res = {
    test = 'string from model',
    
}
res.data ={}
function res.init()
    print('should read data from disk and store in mem')

end

function res.write()
    print('should write to disk')
end
return res