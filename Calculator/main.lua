-----------------------------------------------------------------------------------------
--
-- main.lua
--
-----------------------------------------------------------------------------------------

-- Your code here

_W = display.contentWidth;
_H = display.contentHeight;

local bg = display.newImage("bg.jpg", _W/2, _H/2);

local ed1 = display.newText('1', _W/2 - 100, _H/2, native.systemFont, 56);
local ed2 = display.newText('2', _W/2 - 50, _H/2, native.systemFont, 56);
local ed3 = display.newText('3', _W/2, _H/2, native.systemFont, 56);
local ed4 = display.newText('4', _W/2 + 50, _H/2, native.systemFont, 56);
local ed5 = display.newText('5', _W/2 + 100, _H/2, native.systemFont, 56);

local ed6 = display.newText('6', _W/2 - 100, _H/2 + 100, native.systemFont, 56);
local ed7 = display.newText('7', _W/2 - 50, _H/2 + 100, native.systemFont, 56);
local ed8= display.newText('8', _W/2, _H/2 + 100, native.systemFont, 56);
local ed9 = display.newText('9', _W/2 + 50, _H/2 + 100, native.systemFont, 56);

local pl = display.newText('+', _W/2 + 100, _H/2 + 100, native.systemFont, 56);

local rv = display.newText('=', _W/2 + 100, _H/2 + 200, native.systemFont, 56);

local c = display.newText('C', _W/2 - 100, _H/2 + 200, native.systemFont, 56);

obg1 = 0
obg2 = 0
obg3 = ''

local function th1 ()
    if obg1 == 0 then 
        obg1 = 1
    else 
        obg2 = 1
    end
end

local function th2 ()
    if obg1 == 0 then 
        obg1 = 2
    else 
        obg2 = 2
    end
end

local function th3()
    if obg1 == 0 then 
        obg1 = 3 
     else 
      obg2 = 3
     end
end

local function th4()
    if obg1 == 0 then 
        obg1 = 4 
     else 
      obg2 = 4
     end
end

local function th5()
    if obg1 == 0 then 
        obg1 = 5  
     else 
      obg2 = 5
     end
end

local function th6()
    if obg1 == 0 then 
        obg1 = 6 
     else 
      obg2 = 6
     end
end

local function th7()
    if obg1 == 0 then 
        obg1 = 7
     else 
      obg2 = 7
     end
end

local function th8()
    if obg1 == 0 then 
        obg1 = 8 
     else 
      obg2 = 8
     end
end

local function th9()
    if obg1 == 0 then 
        obg1 = 9 
     else 
      obg2 = 9
     end
end

local function plth ()
    obg3 = '+'
end

local function rvth ()
    if obg3 == '+' then 
        obg5 = obg1 + obg2
        endrvs = display.newText( obg5, _W/2, _H/2 - 100, native.systemFont, 56);
    end
end

local function restart()
    endrvs.text = ''
    obg1 = 0
    obg2 = 0
end 

ed1:addEventListener("tap", th1);
ed2:addEventListener("tap", th2);
ed3:addEventListener("tap", th3);
ed4:addEventListener("tap", th4);
ed5:addEventListener("tap", th5);
ed6:addEventListener("tap", th6);
ed7:addEventListener("tap", th7);
ed8:addEventListener("tap", th8);
ed9:addEventListener("tap", th9);
pl:addEventListener("tap", plth);
c:addEventListener("tap", restart);
rv:addEventListener("tap", rvth);