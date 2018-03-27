--日志相关
--@author jianghong

local Log = class("Log",Cls.baseClass)

function Log:ctor()
    Log.super.ctor(self)
end

function Log:delete()
    Log.super.delete(self)
end

function lgo:info(tag,...)
end

function Log:debug(tag,...)
end

function Log:warn(tag,...)
end

function Log:error(tag,...)
end

return Log
