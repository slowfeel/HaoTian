--初始化全局表
local G = _G
local function initGlobalTable(name)
    G[name] = {}
end

local function loadLuaFile(name)
    return require(name)
end

local function loadCfgFile(name)
    return loadLuaFile(name)
end

--初始化一个文件名索引表
Lnk = loadLuaFile("filelink")
--初始化一个定义表,用来放所有枚举
Def = loadLuaFile("default")

--初始化一个类表,用来放所有类
initGlobalTable("Cls")
--初始化一个配置表,用来放配置
initGlobalTable("Cfg")
--初始化一个工具表,用来放工具方法
initGlobalTable("Utl")
--初始化一个实例表,用来放所有的实例
initGlobalTable("Ins")

--初始化全局函数
loadLuaFile("global")

setmetatable(G,{__newIndex=function(t,k,v)
                    assert(false,"不可设置全局变量,请检查代码")
end})

local rawget = rawget
local rawset = rawset

--初始化配置表
setmetatable(Cfg,{__index = function(t,k)
                      if not rawget(t,k) then
                          rawset(t,k,loadCfgFile(Lnk[k]))
                      end
                      return rawget(t,k)
end})

--初始化列表
setmetatable(Cls,{__index = function(t,k)
                      if not rawget(t,k) then
                          rawset(t,k,loadLuaFile(Lnk[k]))
                      end
                      return rawget(t,k)
end})

--初始化实例表
setmetatable(Ins,{__index = function(t,k)
                      if not rawget(t,k) then
                          rawset(t,k,Cls[k].new())
                      end
                      return rawget(t,k)
end})
