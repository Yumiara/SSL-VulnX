getgenv().AddOnF = function( tab : tab , windUI : WindUI , isUi_Closed )
    ScriptCache.TrailsColors = {
        Rainbow = CSnew{
            CSKnew(0, fromRGB(255,0,0)),
            CSKnew(0.16, fromRGB(255,128,0)),
            CSKnew(0.33, fromRGB(255,255,0)),
            CSKnew(0.50, fromRGB(0,255,0)),
            CSKnew(0.66, fromRGB(0,128,255)),
            CSKnew(0.83, fromRGB(128,0,255)),
            CSKnew(1, fromRGB(255,0,0)),
        },
        Purple = CSnew{
            CSKnew(0, fromRGB(200,120,255)),
            CSKnew(1, fromRGB(120,60,200))
        },
        Ocean = CSnew{
            CSKnew(0, fromRGB(0,170,255)),
            CSKnew(1, fromRGB(0,85,170))
        },
        Fire = CSnew{
            CSKnew(0, fromRGB(255,160,0)),
            CSKnew(1, fromRGB(255,40,0))
        },
        White = CSnew{
            CSKnew(0, fromRGB(255,255,255)),
            CSKnew(1, fromRGB(200,200,200))
        },
        Sunset = CSnew{
            CSKnew(0, fromRGB(255,94,77)),
            CSKnew(1, fromRGB(255,195,113))
        },
        Aqua = CSnew{
            CSKnew(0, fromRGB(0,255,255)),
            CSKnew(1, fromRGB(0,128,255))
        },
        NeonPink = CSnew{
            CSKnew(0, fromRGB(255,20,147)),
            CSKnew(1, fromRGB(255,105,180))
        },
        Lime = CSnew{
            CSKnew(0, fromRGB(0,255,0)),
            CSKnew(1, fromRGB(128,255,0))
        },
        CyanPurple = CSnew{
            CSKnew(0, fromRGB(0,255,255)),
            CSKnew(1, fromRGB(128,0,255))
        },
        Gold = CSnew{
            CSKnew(0, fromRGB(255,215,0)),
            CSKnew(1, fromRGB(255,165,0))
        },
        Magenta = CSnew{
            CSKnew(0, fromRGB(255,0,255)),
            CSKnew(1, fromRGB(200,0,200))
        },
        DarkRed = CSnew{
            CSKnew(0, fromRGB(139,0,0)),
            CSKnew(1, fromRGB(255,0,0))
        },
        LightBlue = CSnew{
            CSKnew(0, fromRGB(173,216,230)),
            CSKnew(1, fromRGB(0,191,255))
        },
        PinkOrange = CSnew{
            CSKnew(0, fromRGB(255,105,180)),
            CSKnew(1, fromRGB(255,165,0))
        },
        Teal = CSnew{
            CSKnew(0, fromRGB(0,128,128)),
            CSKnew(1, fromRGB(0,255,255))
        },
        Lavender = CSnew{
            CSKnew(0, fromRGB(230,230,250)),
            CSKnew(1, fromRGB(180,180,255))
        },
        Crimson = CSnew{
            CSKnew(0, fromRGB(220,20,60)),
            CSKnew(1, fromRGB(255,0,0))
        },
        Mint = CSnew{
            CSKnew(0, fromRGB(152,255,152)),
            CSKnew(1, fromRGB(0,255,128))
        },
        OrangePurple = CSnew{
            CSKnew(0, fromRGB(255,128,0)),
            CSKnew(1, fromRGB(128,0,255))
        },
        Silver = CSnew{
            CSKnew(0, fromRGB(192,192,192)),
            CSKnew(1, fromRGB(220,220,220))
        },
        DarkBlue = CSnew{
            CSKnew(0, fromRGB(0,0,139)),
            CSKnew(1, fromRGB(0,0,255))
        },
        Peach = CSnew{
            CSKnew(0, fromRGB(255,218,185)),
            CSKnew(1, fromRGB(255,200,150))
        },
        NeonGreen = CSnew{
            CSKnew(0, fromRGB(57,255,20)),
            CSKnew(1, fromRGB(0,255,0))
        },
        BluePink = CSnew{
            CSKnew(0, fromRGB(0,128,255)),
            CSKnew(1, fromRGB(255,105,180))
        }
    };    
    ScriptCache.TrailsColorNames = ScriptCache.TrailsColorNames or (function() ScriptCache.TrailsColorNames = {}; for i,_ in pir(ScriptCache.TrailsColors) do tablein(ScriptCache.TrailsColorNames, i); end; return ScriptCache.TrailsColorNames; end)();
    ScriptCache.SelectedTrailColor = ScriptCache.SelectedTrailColor or nil;
    ScriptCache.AddOn_trailController = ScriptCache.AddOn_trailController or nil;
    ScriptData.SavedFeatures.AddOnPfp_Pragraph = { Desc = '<b><font color="#ff0000">[VULX]</font></b> Official addon by <font color="#00ff00">TTJY</font>. <i>Note:</i> This is a simple script with <b>no bypass</b> — use at your own risk!', };
    ScriptData.SavedFeatures.AddOnPfp_SectionTrail = { Title = "✨ Trail ✨", TextXAlignment = "Center" };
    ScriptCache.SavedFeatures.AddOnPfp_MakeTrail = { Title = "Make Trail"; Callback = function() if ScriptCache.AddOn_trailController then ScriptCache.AddOn_trailController.Destroy(); end; ScriptCache.AddOn_trailController = CreateArmTrails(selc, ScriptCache.SelectedTrailColor); end; };
    ScriptCache.SavedFeatures.AddOnPfp_RemoveTrail = { Title = "Remove Trail"; Callback = function() if ScriptCache.AddOn_trailController then return ScriptCache.AddOn_trailController.Destroy(); end; end };

    local function findArmPart(character, side)
        local humanoid = FindFirstChildOfClass(character, "Humanoid");
        if not humanoid then return nil; end;
    
        local isR15 = humanoid.RigType == Enum.HumanoidRigType.R15;
        local candidates = nil;
    
        if isR15 then
            candidates = (side == "Left") and {"LeftHand","LeftLowerArm","LeftUpperArm"} or {"RightHand","RightLowerArm","RightUpperArm"};
        else
            candidates = (side == "Left") and {"Left Arm"} or {"Right Arm"};
        end;
    
        for _, name in ipir(candidates) do
            local part = FindFirstChild(character, name, true);
            if part and IsA(part, "BasePart") then
                return part;
            end;
        end;
        return nil;
    end;

    local function CreateArmTrails(character, presetName)
        local colorSeq = ScriptCache.TrailsColors[presetName] or ScriptCache.TrailsColors["Rainbow"];
    
        local lifetime = 0.5;
        local widthScale = NSnew(1);
        local offsetA = Vec3(0, 0.10, 0);
        local offsetB = Vec3(0, -0.10, 0);
    
        local leftArm = findArmPart(character, "Left");
        local rightArm = findArmPart(character, "Right");
    
        if not leftArm and not rightArm then
            return nil;
        end;
    
        local attachments = {};
        local trails = {};
    
        local function makeTrail(part)
            if not part then return; end;
    
            local a1 = Instancen("Attachment");
            a1.Position = offsetA;
            a1.Parent = part;
    
            local a2 = Instancen("Attachment");
            a2.Position = offsetB;
            a2.Parent = part;
    
            tablein(attachments, a1);
            tablein(attachments, a2);
    
            local trail = Instancen("Trail");
            trail.Attachment0 = a1;
            trail.Attachment1 = a2;
            trail.Lifetime = lifetime;
            trail.Color = colorSeq;
            trail.Transparency = NSnew(0, 1);
            trail.WidthScale = widthScale;
            trail.Parent = part;
            trail.Enabled = true;
    
            tablein(trails, trail);
        end;
    
        makeTrail(leftArm);
        makeTrail(rightArm);
    
        return {
            Destroy = function()
                for _, t in ipir(trails) do if t then Destroy(t); end; end;
                for _, a in ipir(attachments) do if a then Destroy(a); end; end;
            end;
        };
    end;

    tab:Paragraph(ScriptData.SavedFeatures.AddOnPfp_Pragraph);
    tab:Section(ScriptData.SavedFeatures.AddOnPfp_SectionTrail);
    tab:Dropdown({
        Title = "Select Color",
        Values = ScriptCache.TrailsColorNames,
        Value = ScriptCache.SelectedTrailColor,
        AllowNone = true,
        Callback = function(option)
            ScriptCache.SelectedTrailColor = option;
        end
    });
    tab:Button(ScriptCache.SavedFeatures.AddOnPfp_MakeTrail);
    tab:Button(ScriptCache.SavedFeatures.AddOnPfp_RemoveTrail);
end;
