--定时器相关
--@author jianghong

local Timer = Class("Timer",Cls.BaseClass)

function Timer:create()
    Timer.super.create(self)
    self._secondMap = {}
    self._frameMap = {}
    self._customMap = {}
    self._secondDt = 0
    self._customDt = 0
end

function Timer:delete()
    self._customDt = nil
    self._secondDt = nil
    self._secondMap = nil
    self._frameMap = nil
    self._customMap = nil
    Timer.super.delete(self)
end

--定时器回调不分先后
function Timer:update(dt)

    --更新每帧回调
    for name,info in pairs(self._frameMap) do
        info.callback(dt)
        info.count = info.count+1
        if info.count > info.sumCount then
            self._frameMap[name] = nil
        end
    end

    --更新特殊时间回调
    for name, info in pairs(self._customMap) do
        info.time = info.time+dt
        if info.time > info.interval then
            info.callback(dt)
            info.count = info.count+1
            if info.count > info.sumCount then
                self._customMap[name] = nil
            end
        end
    end

    self._secondDt = self._secondDt + dt
    if self._secondDt > 1.0 then
        self._secondDt = 0
        --更新每秒回调
        for name,info in pairs(self._secondMap) do
            info.callback(dt)
            info.count = info.count+1
            if info.count > info.sumCount then
                self._secondMap[name] = nil
            end
        end
    end
end

--添加一个每帧的回调
function Timer:frameUpdate(name,callback,count)
    local info = self._frameMap[name]
    if info then
        Ins.Log:warn("timer","frame update is exist,name = %s",name)
        return
    end
    self._frameMap[name] = {
        callback = callback,
        sumCount = count,
        count = 0,
    }
end

--添加一个自定义时间间隔回调
function Timer:customUpdate(name,callback,count,interval)
    local info = self._customMap[name]
    if info then
        Ins.Log:warn("timer","custom update is exist,name = %s",name)
        return
    end
    self._customMap[name] = {
        callback = callback,
        sumCount = count,
        count = 0,
        interval = interval,
        time = 0,
    }
end

--添加一个每秒回调
function Timer:secondUpdate(name,callback,count)
    local info = self._secondMap[name]
    if info then
        Ins.Log:warn("timer","second update is exist,name = %s",name)
        return
    end
    self._secondMap[name] = {
        callback = callback,
        sumCount = count,
        count = 0,
    }
end

--移除一个回调
function Timer:removeUpdate(name)
    self._secondMap[name] = nil
    self._frameMap[name] = nil
    self._customMap[name] = nil
end

return Timer
