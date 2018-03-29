--日志相关
--@author jianghong

local Log = Class("Log",Cls.BaseClass)

function Log:create()
    Log.super.create(self)
end

function Log:delete()
    Log.super.delete(self)
end

function Log:info(tag,...)
end

function Log:debug(tag,...)
end

function Log:warn(tag,...)
end

function Log:error(tag,...)
end

return Log
