--协议相关
--@author jianghong

local Cmd = Class("Cmd",Cls.BaseClass)

function Cmd:ctor()
    Cmd.super.ctor(self)
end

function Cmd:delete()
    Cmd.super.delete(self)
end

function Cmd:register(opcode,target,callback)
end

function Cmd:unRegister(opcode,target)
end

function Cmd:dispatch(opcode,data)
end

return Cmd
