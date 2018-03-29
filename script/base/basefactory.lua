--工厂基类
--@author jianghong

local BaseFactory = Class("BaseFactory",Cls.BaseClass)

function BaseFactory:create()
    BaseFactory.super.create(self)
    Ins.Log:info("factory","create a factory, name = %s",self.__cname)
end

function BaseFactory:delete()
    BaseFactory.super.delete(self)
    Ins.Log:info("factory","delete a factory, name = %s",self.__cname)
end

return BaseFactory
