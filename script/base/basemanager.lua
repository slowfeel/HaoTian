--管理器基类
--@author jianghong

local BaseManager = Class("BaseManager",Cls.BaseClass)

function BaseManager:create()
    BaseManager.super.create(self)
    Ins.Log:info("manager","create a manager instance,name = %s",self.__cname)
end

function BaseManager:delete()
    BaseManager.super.delete(self)
    Ins.Log:info("manager","delete a manager instance,name = %s",self.__cname)
end


return BaseManager
