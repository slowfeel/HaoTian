--模块基类
--@author jianghong

local BaseModule = Class("BaseModule",Cls.BaseClass)

function BaseModule:create()
    BaseModule.super.create(self)
    Ins.Log:info("module","create a module, name = %s",self.__cname)
end

function BaseModule:delete()
    BaseModule.super.delete(self)
    Ins.Log:info("module","delete a module, name = %s",self.__cname)
end

return BaseModule
