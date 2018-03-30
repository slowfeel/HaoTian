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

--使用一个BaseData重新设置当前data的数据
--@params data = BaseData
function BaseData:reset(data)
end

function BaseData:getInfo()
    return self._info
end

function BaseDate:setInfo(info)
    self._info = info
end

return BaseData
