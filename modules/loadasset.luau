LoadCustomAsset = function(url: string)
    if getcustomasset then
        if isfile(url) then
            return getcustomasset(url, true)
        elseif url:lower():sub(1, 4) == "http" then
            local fileName = `temp_{tick()}.txt`
            writefile(fileName, game:HttpGet(url))
            local result = getcustomasset(fileName, true)
            delfile(fileName)
            return result
        end
    end
end
