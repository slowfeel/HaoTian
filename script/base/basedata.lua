--数据基类
--@author jianghong

local BaseData = Class("BaseData",Cls.BaseClass)

function BaseData:create()
    BaseData.super.create(self)
    Ins.Log:info("data","create a data, name = %s",self.__cname)
end

function BaseData:delete()
    BaseData.super.delete(self)
    Ins.Log:info("data","delete a data, name = %s",self.__cname)
end

return BaseData
