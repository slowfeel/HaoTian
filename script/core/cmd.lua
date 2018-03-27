--协议相关
--@author jianghong

local Cmd = class("Cmd",Cls.baseClass)

function Cmd:ctor()
    Cmd.super.ctor(self)
end

function Cmd:delete()
    Cmd.super.delete(self)
end

return Cmd
