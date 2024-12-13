local SecureService = {
    GetService = function(self, ServiceName)
        return cloneref(game:GetService(ServiceName))
    end
}
