--协议相关
--@author jianghong

local cmd = class("cmd",Cls.baseClass)

function cmd:ctor()
    cmd.super.ctor(self)
end

function cmd:delete()
    cmd.super.delete(self)
end

return cmd
