--日志相关
--@author jianghong

local Log = Class("Log",Cls.BaseClass)
local format = string.format
local concat = table.concat
local LEVEL_STR = {"INFO","DEBUG","WARN","ERROR"}
function Log:create()
    Log.super.create(self)
    self._level = 0 --日志等级
    self._tags = {}
end

function Log:delete()
    self._level = nil
    self._tags = nil
    Log.super.delete(self)
end

function Log:isLegal(level,tag)
    if level < self._level then
        return false
    end
    if not self._tags[tag] then
        return false
    end
    return true
end

function Log:log(level,tag, fmt, ...)
    if not self:isLegal(level,tag) then
        return false
    end
    local content = {
        "[",
        os.date(),
        "]",
        LEVEL_STR[level],
        "->",
        format(fmt,...),
    }
    return self:write(concat(content))
end

function Log:write(str)
    return print(str)
end

--info,log level = 1
function Log:info(tag, fmt, ...)
    return self:log(1,tag, fmt, ...)
end

--debug,log level = 2
function Log:debug(tag,fmt, ...)
    return self:log(2, tag, fmt, ...)
end

--warn, log level = 3
function Log:warn(tag, fmt, ...)
    return self:log(3, tag, fmt, ...)
end
--error,log level = 4
function Log:error(tag,fmt, ...)
    return self:log(4, tag, fmt, ...)
end

function Log:setLevel(level)
    self._level = level
end

function Log:addTag(tag)
    self._tags[tag] = true
end

function Log:delTag(tag)
    self._tags[tag] = false
end

return Log
