--类型方法
local type = type

return {
    isNumber = function(value)
        return type(value) == "number"
    end,
    isString = function(value)
        return type(value) == "string"
    end,
    isFunction = function(value)
        return type(value) == "function"
    end,
    isTable = function(value)
        return type(value) == "table"
    end,
}
