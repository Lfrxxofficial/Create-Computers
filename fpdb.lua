function drawscreen(iname, imod, itype, iprice)
  term.clear()
  term.setCursorPos(1,1)
  term.write(iname)
  term.setCursorPos(1,3)
  term.write(imod .. "    " .. itype)
  term.setTextColor(colors.green)
  term.setCursorPos(1,4)
  term.write("price: " .. iprice)
  term.setTextColor(colors.white)
  sleep(10)
  shell.run("clear")
end

function drawnotfoundscreen()
  term.clear()
  term.setCursorPos(1,1)
  print("Sorry You Have Got Us Here")
  print("We dont have this item")
    sleep(10)
  shell.run("clear")
end

function drawitsfreescreen()
  term.clear()
  term.setCursorPos(1,1)
  print("Bruh.")
  print("Obviously ITS FREE")
    sleep(10)
  shell.run("clear")
end

local items = {
  diamond = {mod="minecraft", type="item", price="2n 5d"},
  dirt = {mod="minecraft", type="block", price="FREE"},
  iron = {mod="minecraft", type="item", price="6e"},
  gold = {mod="minecraft", type="item", price="3e"},
  steel = {mod="mekanism", type="item", price="7e"},
  engine = {mod="vs2", type="blocks,modded", price="8e"},
  air = {free=true}
}

term.setBackgroundColor(colors.gray)
term.setTextColor(colors.white)
term.clear()

term.setCursorPos(1,1)
term.write("fpdb")
term.setCursorPos(1,2)
term.write("Fair Prices DataBase")
term.setCursorPos(1,5)
term.write("Enter Item Name")
term.setCursorPos(1,10)
term.write("Please Note! We may not have all of the items or")
term.setCursorPos(1,11)
term.write("Blocks")
term.setCursorPos(1,7)

local iname = read():lower()
local item = items[iname]

if not item then
  drawnotfoundscreen()
elseif item.free or item.price == "FREE" then
  drawitsfreescreen()
else
  drawscreen(iname, item.mod, item.type, item.price)
end

