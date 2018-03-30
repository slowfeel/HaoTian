--数据中心
--@author jianghong

local DataCenter = Class("DataCenter",Cls.BaseClass)

function DataCenter:create()
    DataCenter.super.create(self)
    self._dataMap = {}
end

function DataCenter:delete()
    self._dataMap = nil
    DataCenter.super.delete(self)
end

function DataCenter:getData(name)
    return self._dataMap[name]
end

function DataCenter:setData(name,data)
    local old  = self._dataMap[name]
    if old then
        old:reset(data)
    else
        self._dataMap[name] = data
    end
end

return DataCenter
