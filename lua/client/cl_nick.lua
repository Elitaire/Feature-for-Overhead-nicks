local function NicknameOverHead( ply )

--Features
    hook.Add("PostPlayerDraw", "NicknameOverHead", NicknameOverHead)
    function GM:HUDDrawTargetID()
        return false
    end
    
    hook.Add('PostDrawTranslucentRenderables', 'NicknameOverHead', function()
        if(!hook.Run('HUDShouldDraw', 'NicknameOverHead')) then return end
        for k, v in pairs(player.GetAll()) do
            NicknameOverHead(v)
        end
    end)
    