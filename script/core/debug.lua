--崩溃数据手机相关
--@author jianghong

local Debug = Class("Debug",Cls.BaseClass)
local assert = assert
local format = string.format
function Debug:create()
    Debug.super.create(self)
end

function Debug:delete()
    Debug.super.delete(self)
end

function Debug:assert(state, fmt, ...)
    assert(state,format(fmt,...))
end

function Debug:dump(state, fmt, ...)
end

return Debug
