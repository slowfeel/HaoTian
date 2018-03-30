
--编写一个测试的文件,具体编写可以参考logtest.lua文件
--然后在下面的表里面加入进去
local test_file_list = {
    "logtest",
}

do_test = function(info,func)
    print(info .. ".....................开始")
    func()
    print(info .. ".....................完成")
end

for i = 1,#test_file_list do
    require(test_file_list[i])
end

do_test = nil
