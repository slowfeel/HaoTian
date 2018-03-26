--日志相关
--@author jianghong

local log = class("log",Cls.baseClass)

function log:ctor()
    log.super.ctor(self)
end

function log:delete()
    log.super.delete(self)
end

function lgo:info(tag,...)
end

function log:debug(tag,...)
end

function log:warn(tag,...)
end

function log:error(tag,...)
end

return log
