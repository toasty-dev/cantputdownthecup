--temploader

local cupascii = [[
	       ==---=+
    ---------==========-
  -:-----=***+***++======-+
 ---=+=##*+#=*##*##*+*+*==-
 ---******#=+*#+####+*#**-:
 ====---*###**+#****=------
 ===========---------------
 ==============------------
  ==============---------:-
  ==========--------------
   =============---------
   *============---------
    ===============-----=
    =============-------
     ============-------
     ===========-------
      ==========-------
      ==========------
      +=========------
       =========-----+
        =======-----+
           +===-=
]]

local SecureService = {
    GetService = function(self, ServiceName)
        return cloneref(game:GetService(ServiceName))
    end
}

local ClientStore = require(game:GetService("Players").LocalPlayer.PlayerScripts.TS.ui.store).ClientStore
local CoreGui = SecureService:GetService("CoreGui")
local UserInputService = SecureService:GetService("UserInputService")
local TweenService = SecureService:GetService("TweenService")

function GetMatchState()
    return ClientStore:getState().Game.matchState
end

if typeof(rconsolecreate) then
	rconsolecreate()
	rconsolename("Cup || V1 || Loader")
	rconsoleprint("@@MAGENTA@@")

	rconsoleprint(cupascii .. "Authenticating...")
	task.wait(1)
    rconsoleclear()

	rconsoleprint(cupascii .. "Sipping wock...")
	task.wait(1)
    rconsoleclear()

	rconsoleprint(cupascii .. "Checking game...")
	task.wait(1)

	if game.PlaceId == 6872265039 then
		rconsoleclear()
		rconsoleprint(cupascii .. "Queued for execution on teleport...")
		queueonteleport("print('a')")
		task.wait(1)
		rconsoleclear()
	elseif game.PlaceId == 8560631822 or 6872274481 then
		rconsoleclear()
		rconsoleprint(cupascii .. "Waiting for active match...")
		repeat
			task.wait()
		until GetMatchState() ~= 0
		rconsoleclear()
	else
		rconsoleclear()
		rconsoleprint(cupascii .. "Game unsupported.")
		task.wait(1)
		rconsoleclear()
	end

	rconsoleprint(cupascii .. "Successfully loaded!")
	task.wait(1)
    rconsoleclear()

	rconsoleprint("Closing in 3...")
	task.wait(1)
    rconsoleclear()

	rconsoleprint("Closing in 2...")
	task.wait(1)
    rconsoleclear()

	rconsoleprint("Closing in 1...")
	task.wait(1)
    rconsoleclear()

	rconsoledestroy()
else
    loadstring(game:HttpGet("https://raw.githubusercontent.com/toasty-dev/cantputdownthecup/refs/heads/main/modules/rconsole.luau",true))()

	rconsolecreate()
	rconsolename("Cup || V1 || Loader")
	rconsoleprint("@@MAGENTA@@")

	rconsoleprint(cupascii .. "Authenticating...")
	task.wait(1)
    rconsoleclear()

	rconsoleprint(cupascii .. "Sipping wock...")
	task.wait(1)
    rconsoleclear()

	rconsoleprint(cupascii .. "Checking game...")
	task.wait(1)

	if game.PlaceId == 6872265039 then
		rconsoleclear()
		rconsoleprint(cupascii .. "Queued for execution on teleport...")
		queueonteleport("print('a')")
		task.wait(1)
		rconsoleclear()
	elseif game.PlaceId == 8560631822 or 6872274481 then
		rconsoleclear()
		rconsoleprint(cupascii .. "Waiting for active match...")
		repeat
			task.wait()
		until GetMatchState() ~= 0
		rconsoleclear()
	else
		rconsoleclear()
		rconsoleprint(cupascii .. "Game unsupported.")
		task.wait(1)
		rconsoleclear()
	end

	rconsoleprint(cupascii .. "Successfully loaded!")
	task.wait(1)
    rconsoleclear()

	rconsoleprint("Closing in 3...")
	task.wait(1)
    rconsoleclear()

	rconsoleprint("Closing in 2...")
	task.wait(1)
    rconsoleclear()

	rconsoleprint("Closing in 1...")
	task.wait(1)
    rconsoleclear()

	rconsoledestroy()
end
