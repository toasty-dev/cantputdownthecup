--temploader

local CupImage = [[
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

local ClientStore = require(SecureService:GetService("Players").LocalPlayer.PlayerScripts.TS.ui.store).ClientStore

function GetMatchState()
    return ClientStore:getState().Game.matchState
end

if typeof(rconsolecreate) ~= nil then
	rconsolecreate()
	rconsolename("Cup || V1 || Loader")
	rconsoleprint("@@MAGENTA@@")

	rconsoleprint(CupImage .. "Authenticating...")
	task.wait(1)
    rconsoleclear()

	rconsoleprint(CupImage .. "Sipping wock...")
	task.wait(1)
    rconsoleclear()

	rconsoleprint(CupImage .. "Checking game...")
	task.wait(1)

	if game.PlaceId == 6872265039 then
		rconsoleclear()
		rconsoleprint(CupImage .. "Queued for execution on teleport...")
		queueonteleport("print('a')")
		task.wait(1)
		rconsoleclear()
	elseif game.PlaceId == 8560631822 or 6872274481 then
		rconsoleclear()
		rconsoleprint(CupImage .. "Waiting for active match...")
		repeat
			task.wait()
		until GetMatchState() ~= 0
		rconsoleclear()
	else
		rconsoleclear()
		rconsoleprint(CupImage .. "Game unsupported.")
		task.wait(1)
		rconsoleclear()
	end

	rconsoleprint(CupImage .. "Successfully loaded!")
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

	rconsoleprint(CupImage .. "Authenticating...")
	task.wait(1)
    rconsoleclear()

	rconsoleprint(CupImage .. "Sipping wock...")
	task.wait(1)
    rconsoleclear()

	rconsoleprint(CupImage .. "Checking game...")
	task.wait(1)

	if game.PlaceId == 6872265039 then
		rconsoleclear()
		rconsoleprint(CupImage .. "Queued for execution on teleport...")
		queueonteleport("print('a')")
		task.wait(1)
		rconsoleclear()
	elseif game.PlaceId == 8560631822 or 6872274481 then
		rconsoleclear()
		rconsoleprint(CupImage .. "Waiting for active match...")
		repeat
			task.wait()
		until GetMatchState() ~= 0
		rconsoleclear()
	else
		rconsoleclear()
		rconsoleprint(CupImage .. "Game unsupported.")
		task.wait(1)
		rconsoleclear()
	end

	rconsoleprint(CupImage .. "Successfully loaded!")
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
	rconsoledestroy()
end
