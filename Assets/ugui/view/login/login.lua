---
--- Generated by EmmyLua(https://github.com/EmmyLua)
--- Created by zenghuian.
--- DateTime: 2019-08-12 18:05
---

local View = {}
local netWork = require('network.networkService')
function View:Awake()
    print("start scripts")
    local loginBtn = self.LoginBtn
    ChangeUIText(self.LoginText,"登录")
    RegistButtonEvent(loginBtn,self.Call)
end


function View:Call()
    local connectStatus = netWork.Connect("127.0.0.1","10001")
    --print("Call",connectStatus)
end

return View
