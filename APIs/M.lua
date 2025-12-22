------------- CREDITS -------------

--[[
     _      ___         ____  ______
    | | /| / (_)__  ___/ / / / /  _/
    | |/ |/ / / _ \/ _  / /_/ // /  
    |__/|__/_/_//_/\_,_/\____/___/
    
    v1.6.62  |  2025-12-09  |  Roblox UI Library for scripts
    
    To view the source code, see the `src/` folder on the official GitHub repository.
    
    Author: Footagesus ( Footages, .ftgs, oftgs )
    Github: https://github.com/Footagesus/WindUI
    Discord: https://discord.gg/ftgs-development-hub-1300692552005189632
    License: MIT

     __      ___    _ _      _   ___   __ 
     \ \    / / |  | | |    | \ | \ \ / /
      \ \  / /| |  | | |    |  \| |\ V / 
       \ \/ / | |  | | |    | . ` | > <  
        \  /  | |__| | |____| |\  |/ . \ 
         \/    \____/|______|_| \_/_/ \_\

    v2.1.03  |  2025-12-10  |  Roblox Script
    
    Author: VULNX TEAM ( Ironic, TTJY, Datey, 7thSenz )
    Github: https://github.com/Yumiara/SSL-VulnX
    Discord: https://discord.gg/sCCQUp3hHc
    License: ND

     _____ ____  
     |_   _|  _ \ 
       | | | |_) |
       | | |  _ < 
      _| |_| |_) |
     |_____|____/ 
              
    v1  |  2025-07-06  | Code Obfuscator & Optimizer
    
    Author: dr_breen
    Github: https://github.com/7Duser/ironbrew1
    License: ND
]]

------------- Game Load -------------

if not game:IsLoaded() then
    game.Loaded:Wait();
end;

if loaded then
    return WindUI and WindUI:Notify({
        Title = "<font color='rgb(255, 0, 0)0)'>ALERT</font>",
        Content = "Close current UI before re-execute.",
        Icon = "circle-alert",
        Duration = 20,
    });
elseif loaded2 then
    return WindUI and WindUI:Notify({
        Title = "<font color='rgb(255,0,0)'>ALERT</font>",
        Content = "This script can't be re-execute.",
        Icon = "circle-alert",
        Duration = 20,
    });
end;

if LSecureLoad and LSecureUI and Functions then 
    return LSecureLoad();
elseif InKey then
    return InKey();
end;

if ReplicatedFirst_lc and API_Only then return warn("[VULNX] : Loaded Main.lua via execution"); end;

------------- Super Global ----------

GG = (getgenv and getgenv()) or _G or shared or false;

if not GG then
    return game:GetService("Players").LocalPlayer:Kick("GG not found. Please report this bug in discord server and tell us your executor.");
end;
if not isfolder or not isfile or not makefolder or not writefile or not readfile then
    return game:GetService("Players").LocalPlayer:Kick("Your executor doesn't support file system. Please report this bug in discord server and tell us your executor.");
end;

GG.GG = GG;

GG.LoaderSettings = (LoaderSettings and LoaderSettings.ExecutedByUser and LoaderSettings) or {
    BadNetwork = false; -- Will remove some script assets like logo.
    AllowCache = true; -- Will Cache All Script files & Assets
    AllowKickWithError = false; -- Once the script error exceed limit, it will kick instead of log in console

    AllowPlayerTab = true; -- Enable Tab.Player
    AllowAI = true; -- Enable Tab.AI
    AllowAddOn = true; -- Enable Tab.AddOn

    AllowVULX_pvCMD = true; -- Allow Private Users to use cmd and control other users

    AllowServer_Customization = false;
};

LoaderSettings.TheMimicLoader = LoaderSettings.TheMimicLoader or {
    Load_Sections = true; -- Will load all teleport locations instead of just an auto complete
    Load_WithPlaceID_Checks = false; -- Enable this will make the script check for place like chapter 1 or 2 and load it instead of load all
};

GG.GameId = game.GameId;
GG.PlaceId = game.PlaceId;

------------- OBF Fixer -------------

GG.LPH_NO_VIRTUALIZE = function(...)
    return ...;
end;
GG.IB_NO_VIRTUALIZE = function(...)
    return ...;
end;

------------- Replicated First -------------

if not ReplicatedFirst_lc then
    GG.setc = setclipboard or toclipboard or function(...) return warn(...); end;

    GG.getinfo = getinfo or debug.getinfo;
    GG.clonefunction = clonefunction or clonefunc;
    GG.cloneref = cloneref or clonereference;

    if not getinfo then return game:GetService("Players").LocalPlayer:Kick("Your executor doesn't have getinfo."); end;
    if clonefunction and getinfo(clonefunction).what == "Lua" then
    GG.clonefunction = function(...) return ...; end; end;
    if cloneref and getinfo(cloneref).what == "Lua" then
    GG.cloneref = function(...) return ...; end; end;

    GG.base64encode = base64encode or (crypt and crypt.base64encode);
    GG.base64decode = base64decode or (crypt and crypt.base64decode);

    GG.GetService = clonefunction(game.GetService);

    GG.getinfo = (getinfo and clonefunction(getinfo)) or (debug.getinfo and clonefunction(debug.getinfo));
    GG.pcall = clonefunction(pcall);

    GG.tble = table;
    GG.tk = task;
    GG.str = string;
    GG.mmaths = math;
    GG.Col3 = Color3;
    GG.BCol = BrickColor;
    GG.Reg3 = Region3;
    GG.Instance = Instance;
    GG.UDim2 = UDim2;
    GG.Font = Font;
    GG.coru = coroutine;
    GG.bff = buffer;

    GG.SecureEnv = {
        dumpheap = dumpheap or debug.dumpheap;
        getconstants = getconstants or debug.getconstants;
        getproto = getproto or debug.getproto;
        setmemorycategory = setmemorycategory or debug.setmemorycategory;
        profilebegin = profilebegin or debug.profilebegin;
        loadmodule = loadmodule or debug.loadmodule;
        traceback = traceback or debug.traceback;
        getinfo = getinfo or debug.getinfo;
        getstack = getstack or debug.getstack;
        isvalidlevel = isvalidlevel or debug.isvalidlevel;
        getupvalues = getupvalues or debug.getupvalues;
        getconstant = getconstant or debug.getconstant;
        getfenv = getfenv or debug.getfenv;
        getupvalue = getupvalue or debug.getupvalue;
        getmemorycategory = getmemorycategory or debug.getmemorycategory;
        resetmemorycategory = resetmemorycategory or debug.resetmemorycategory;
        getprotos = getprotos or debug.getprotos;
        dumpcodesize = dumpcodesize or debug.dumpcodesize;
        setstack = setstack or debug.setstack;
        profileend = profileend or debug.profileend;
        dumprefs = dumprefs or debug.dumprefs;
        validlevel = validlevel or debug.validlevel;
        setupvalue = setupvalue or debug.setupvalue;
        setconstant = setconstant or debug.setconstant;
        getregistry = getregistry or debug.getregistry;
        info = info or debug.info;

        wait = wait;
        delay = delay;
        spawn = spawn;
        tick = tick;

        tostring = tostring;
        tos = tostring;
        tonumber = tonumber;
        ton = tonumber;

        tablein = tble.insert;
        tablecl = tble.clear;
        tablef = tble.find;
        tsort = tble.sort;
        tconcat = tble.concat;
        tunpack = tble.unpack;
        tabler = tble.remove;
        tEach = tble.foreach;

        RNew = Random.new;

        twait = tk.wait;
        tdefer = tk.tdefer;
        tspawn = tk.spawn;
        tcancel = tk.cancel;
        tdelay = task.delay;
        tdesyn = tk.desynchronize;
        tsyn = tk.synchronize;

        strgsub = str.gsub;
        strsub = str.sub;
        strfind = str.find;
        strlen = str.len;
        strchar = str.char;
        strbyte = str.byte;
        strsplit = str.split;
        strmatch = str.match;
        strgmatch = str.gmatch;
        strupper = str.upper;
        strlower = str.lower;
        strformat = str.format;
        strpack = str.pack;
        strpacksize = str.packsize;
        strreverse = str.reverse;
        strunpack = str.unpack;
        strrep = str.rep;

        mlog = mmaths.log;
        mldexp = mmaths.ldexp;
        mdeg = mmaths.deg;
        mcosh = mmaths.cosh;
        mround = mmaths.round;
        mrandom = mmaths.random;
        mfrexp = mmaths.frexp;
        mtanh = mmaths.tanh;
        mfloor = mmaths.floor;
        mmax = mmaths.max;
        msqrt = mmaths.sqrt;
        mmodf = mmaths.modf;
        mhuge = mmaths.huge;
        mpow = mmaths.pow;
        macos = mmaths.acos;
        mtan = mmaths.tan;
        mcos = mmaths.cos;
        mpi = mmaths.pi;
        matan = mmaths.atan;
        mmap = mmaths.map;
        msign = mmaths.sign;
        mceil = mmaths.ceil;
        mclamp = mmaths.clamp;
        mnoise = mmaths.noise;
        mabs = mmaths.abs;
        mexp = mmaths.exp;
        msinh = mmaths.sinh;
        masin = mmaths.asin;
        mmin = mmaths.min;
        mrandomseed = mmaths.randomseed;
        mfmod = mmaths.fmod;
        mrad = mmaths.rad;
        matan2 = mmaths.atan2;
        mlog10 = mmaths.log10;
        msin = mmaths.sin;
        mlerp = mmaths.lerp;
        
        fromRGB = Color3.fromRGB;
        fromHex = Col3.fromHex;
        fromHSV = Col3.fromHSV;
        toHSV = Col3.toHSV;
        Col3new = Col3.new;

        BCol = BrickColor;
        BBlue = BCol.Blue;
        BWhite = BCol.White;
        BYellow = BCol.Yellow;
        BRed = BCol.Red;
        BGray = BCol.Gray;
        Bpalette = BCol.palette;
        BNew = BCol.New;
        BBlack = BCol.Black;
        BGreen = BCol.Green;
        BRandom = BCol.Random;
        BDarkGray = BCol.DarkGray;
        Brandom = BCol.random;
        Bnew = BCol.new;

        FfromId = Font.fromId;
        FfromEnum = Font.fromEnum;
        FfromName = Font.fromName;
        Fnew = Font.new;

        Regnew = Reg3.new;

        TwInfo = TweenInfo.new;

        Rectn = Rect.new;

        Vec3 = Vector3.new;
        Vec2 = Vector2.new;
        CF = CFrame.new;
        CFAg = CFrame.Angles;
        CFLook = CFrame.lookAt;
        CFMat = CFrame.fromMatrix;

        pir = pairs;
        ipir = ipairs;
        ipairs = ipairs;
        next = next;

        pcal = pcall;
        xpcal = xpcall;
        ypcal = ypcall;

        Instancen = Instance.new;
        fromExisting = Instance.fromExisting;

        Dim2 = UDim2.new;
        Dim2Off = UDim2.fromOffset;
        Dim2Scale = UDim2.fromScale;

        Dim = UDim.new;

        NSnew = NumberSequence.new;
        NSKnew = NumberSequenceKeypoint.new;

        CSnew = ColorSequence.new;
        CSKnew = ColorSequenceKeypoint.new;

        breadf64 = bff and bff.readf64;
        breadu32 = bff and bff.readu32;
        btostring = bff and bff.tostring;
        breadi8 = bff and bff.readi8;
        breadu16 = bff and bff.readu16;
        bcopy = bff and bff.copy;
        breadu8 = bff and bff.readu8;
        bwritebits = bff and bff.writebits;
        bwritei16 = bff and bff.writei16;
        bwriteu16 = bff and bff.writeu16;
        bfromstring = bff and bff.fromstring;
        bwritef32 = bff and bff.writef32;
        breadi32 = bff and bff.readi32;
        bfill = bff and bff.fill;
        bwriteu32 = bff and bff.writeu32;
        bwriteu8 = bff and bff.writeu8;
        bcreate = bff and bff.create;
        bwritestring = bff and bff.writestring;
        bwritei8 = bff and bff.writei8;
        breadbits = bff and bff.readbits;
        breadi16 = bff and bff.readi16;
        bwritef64 = bff and bff.writef64;
        blen = bff and bff.len;
        bwritei32 = bff and bff.writei32;
        breadstring = bff and bff.readstring;
        breadf32 = bff and bff.readf32;
        
        LowerC = hookfunction or hookfunc;
        UpperC = hookmetamethod;
        ResetC = restorefunction;

        oclock = os.clock;
        odiff = os.difftime;
        otime = os.time;
        odate = os.date;

        queueOT = queueonteleport or queue_on_teleport or (syn and syn.queue_on_teleport) or (fluxus and fluxus.queue_on_teleport) or on_teleport;
        Request = http_request or request;
    };

    GG.SecureEnvS = {
        ProximityPromptService = "ProximityPromptService";
        VirtualInputManager = "VirtualInputManager";
        RbxAnalyticsService = "RbxAnalyticsService";
        LocalizationService = "LocalizationService";
        CollectionService = "CollectionService";
        UserInputService = "UserInputService";
        TeleportService = "TeleportService";
        TextService = "TextChatService";
        TweenService = "TweenService";
        HttpService = "HttpService";
        StarterGui = "StarterGui";
        GuiService = "GuiService";
        R  = "ReplicatedStorage";
        SoundS = "SoundService";
        TestS = "TestService";
        VU = "VirtualUser";
        H = "RunService";
        W = "Workspace";
        L = "Lighting";
        P = "Players";
        C = "CoreGui";
    };

    GG.ReplicatedFirst_lc = true;
end;

------------- Global API Setup -------------

GG.ExecName = (identifyexecutor and identifyexecutor()) or "nil";
GG.Load_Icona = false;
GG.ScriptCache = {};

ScriptCache.gcF = {};
ScriptCache.userIdentify = {
    is_loaded_lc = false;

    device = nil;

    is_Internal = nil;
    is_executor_WhiteList = nil;

    gcF = false;

    unc_infos = false;
};
ScriptCache.AutoConfigPathCache = {};

GG.include = function(globalOrName:string, as:string)
    if not AssetStorage then return; end; local fn:(any)->(any)=nil;
    if type(globalOrName) == 'function' then fn = globalOrName;
    elseif type(globalOrName) == 'string' then
        local found = AssetStorage[globalOrName];
        if type(found) ~= 'function' then return; end;
        fn = found;
    else return; end;
    local result = fn();
    if result and as then
    GG[as] = result; return;
    else return result; end;
end;

ScriptCache.userIdentify.gcF = {};
ScriptCache.userIdentify.gcF.is_Internal = function(...): boolean? return GG.ScriptCache.userIdentify.is_Internal; end;
ScriptCache.userIdentify.gcF.get_device = function(...): boolean? return GG.ScriptCache.userIdentify.device; end;
ScriptCache.userIdentify.gcF.is_exec_white = function(...): boolean? return GG.ScriptCache.userIdentify.is_executor_WhiteList; end;
ScriptCache.userIdentify.gcF.getunc_infos = function(...): boolean? return GG.ScriptCache.userIdentify.unc_infos; end;

ScriptCache.userIdentify.secureEnv = function(index: string, env: (...any) -> nil): nil
    if clonefunction and env and type(env) == 'function' then
        GG[index] = clonefunction(env);
    else
        GG[index] = env;
    end;
end;
ScriptCache.userIdentify.secureEnvS = function(index: string, service : string): nil
    if cloneref and service then
        GG[index] = cloneref(GetService(game, service));
    else
        GG[index] = service;
    end;
end;

------------- LC Loader -------------

for i=1, 3 do
    local GlobalOneRunCall, GlobalOneRunError = pcall(function()
        table.foreach(GG.SecureEnv, GG.ScriptCache.userIdentify.secureEnv);
        table.foreach(GG.SecureEnvS, GG.ScriptCache.userIdentify.secureEnvS);

        GG.SecureEnvR = {
            HttpGet = game.HttpGet;
            EnCodeJ = HttpService.JSONEncode;
            DeCodeJ = HttpService.JSONDecode;
            GenerateGUID = HttpService.GenerateGUID;

            GetClientId = RbxAnalyticsService.GetClientId;

            GetPivot = W.GetPivot;
            PivotTo = W.PivotTo;
            FindPartsInRegion3WithIgnoreList = W.FindPartsInRegion3WithIgnoreList;

            IsA = game.IsA;
            Clone = game.Clone;
            GetFullName = game.GetFullName;
            IsDescendantOf = game.IsDescendantOf;
            PropChangeSignal = game.GetPropertyChangedSignal;
            AttChangeSignal = game.GetAttributeChangedSignal;

            GetNetworkPing = P.LocalPlayer.GetNetworkPing;
            GetPlayers = P.GetPlayers;

            TwCreate = TweenService.Create;

            GetAttribute = game.GetAttribute;
            SetAttribute = game.SetAttribute;

            WaitForChild = game.WaitForChild;

            FindFirstChild = game.FindFirstChild;
            FindFirstChildOfClass = game.FindFirstChildOfClass;
            FindFirstChildWhichIsA = game.FindFirstChildWhichIsA;
            FindFirstAncestor = game.FindFirstAncestor;
            FindFirstAncestorOfClass = game.FindFirstAncestorOfClass;
            FindFirstAncestorWhichIsA = game.FindFirstAncestorWhichIsA;

            GetChildren = game.GetChildren;
            GetDescendants = game.GetDescendants;

            Destroy = game.Destroy;

            Kick = P.LocalPlayer.Kick;
            
            GetServerTimeNow = W.GetServerTimeNow;
        };

        table.foreach(GG.SecureEnvR, GG.ScriptCache.userIdentify.secureEnv);

        GG.selff = P.LocalPlayer;
        GG.Cam = W.CurrentCamera;
        GG.cmdm = selff:GetMouse();
        GG.PSG = WaitForChild(selff, "PlayerGui", 999);
        GG.PlayerScripts = WaitForChild(selff, "PlayerScripts", 999);

        GG.selc = selff.Character;
        GG.Backpack = WaitForChild(selff, "Backpack");

        GG.RNG = Random.new();

        GG.HumRSelf = selc and FindFirstChild(selc, "HumanoidRootPart");
    end);

    if GlobalOneRunCall then
        GG.ScriptCache.userIdentify.is_loaded_lc = true; break;
    else
        if i >= 3 then
            return LoaderSettings.AllowKickWithError and warn("Please report this bug to discord server and provide your executor. : " .. GlobalOneRunError) or game:GetService("Players").LocalPlayer:Kick("Please report this bug to discord server and provide your executor. : " .. GlobalOneRunError);
        end;
    end;
end;

GG.newcclosure = newcclosure or function(...)
    return ...;
end;
GG.newlclosure = newlclosure or function(...)
    return ...;
end;

if UserInputService.TouchEnabled and not UserInputService.KeyboardEnabled then
    ScriptCache.userIdentify.device =  "Mobile";
elseif UserInputService.KeyboardEnabled and UserInputService.MouseEnabled then
    ScriptCache.userIdentify.device = "PC";
elseif UserInputService.GamepadEnabled then
    ScriptCache.userIdentify.device = "Console";
else
    ScriptCache.userIdentify.device = "Unknown";
end;

ScriptCache.userIdentify.unc_infos = {
    fireproximityprompt = (fireproximityprompt and getinfo(fireproximityprompt).what) or false;
    firetouchinterest = (firetouchinterest and getinfo(firetouchinterest).what) or false;
    isnetworkowner = (isnetworkowner and getinfo(isnetworkowner).what) or false;
    require = (require and getinfo(require).what) or false;
    request = (Request and getinfo(Request).what) or false;
    getgc = (getgc and getinfo(getgc).what) or false;
};

GG.loadsource = function(source:string):any
    for attempt = 1, 3 do
        local suc, res = pcal(function() return loadstring(source)(); end);
        if suc then
            return res;
        else
            warn(strformat("[VULNX] : Attempt %d : %s", attempt, res)); twait();
        end;
    end;
end;

GG.loadScriptFromCache = function(srcName, fileName, noload, custom_time, is_ignore)
    if LoaderSettings.AllowCache then
        if not isfolder("FlowXS") then
            return makefolder("FlowXS");
        end;

        local CD = custom_time or 600;
        local versionFile = "FlowXSVersion.json";
        local cacheFile = "FlowXS/" .. tos(fileName);
        local no_write = is_ignore;

        GG.ALLVersion = ALLVersion or {};
        ALLVersion[tos(fileName)] = ALLVersion[tos(fileName)] or tos(tick());

        local function refresh()
            local source = HttpGet(game, srcName);
            ALLVersion[tos(fileName)] = tos(tick());
            writefile(cacheFile, source);
            if not no_write then
                writefile(versionFile, EnCodeJ(HttpService, ALLVersion));
            end;
            return source;
        end;

        if tick() - ton(ALLVersion[tos(fileName)]) >= CD then
            warn("[VULNX] : Loaded " .. fileName .. " from GitHub via auto-update");
            local s = refresh();
            return noload and s or loadsource(s);
        end;

        local cachedSource = isfile(cacheFile) and readfile(cacheFile);
        if not cachedSource or not isfile(versionFile) then
            warn("[VULNX] : Loaded " .. fileName .. " from GitHub");
            local s = refresh();
            return noload and s or loadsource(s);
        end;

        warn("[VULNX] : Loaded " .. fileName .. " from device and NOT GitHub");
        return noload and cachedSource or loadsource(cachedSource);
    else
        local source = HttpGet(game, srcName);
        warn("[VULNX] : Loaded " .. fileName .. " via nowrite.2");
        return noload and source or loadsource(source);
    end;
end;

------------- Script Asset / Script Cache 1 -------------

GG.AssetStorage = {};
AssetStorage.Languages = function(): nil
    if ScriptCache.Languages then return; end;
    if GameId == 1 then
        ScriptCache.Languages = {
            {
                Key = "Hello",
                Values = {
                    ["en"] = "Hello",
                    ["th"] = "สวัสดี"
                };
            };
        };
    end;
end;
AssetStorage.Localization = function(): nil
    if SetUpLanguage and ApplyLanguage then return; end; 
    GG.SetUpLanguage = function(entries:{[nil]:{Key:string,Values:{[string]:string}}}): nil
        ScriptCache.localTable = (ScriptCache.localTable and ScriptCache.localTable.Parent and ScriptCache.localTable) or Instancen("LocalizationTable", W);
        ScriptCache.localTable.DevelopmentLanguage = LocalizationService.SystemLocaleId;
        ScriptCache.localTable:SetEntries(entries);
    end;
    GG.ApplyLanguage = function(lang:string,word:string): string
        return ScriptCache.localTable:GetString(lang, word);
    end;
end;
AssetStorage.CommonF = function(...): {[string]:(any)->(...any)}
    if CommonF then return; end; GG.CommonF = {};
    function CommonF:TableToIndex(indexTable:{[any]:any},...): {[nil]:any}
        if not indexTable then return {}; end;
        local NewTBL:{[nil]:any} = {}; for i,v in pir(indexTable) do
            tablein(NewTBL,i);
        end; return newTable
    end;
    function CommonF:tEqual(a, b)
        local ca, cb = 0, 0;
        tEach(a, function() ca += 1 end);
        tEach(b, function() cb += 1 end);
        return ca == cb;
    end;
    function CommonF:SKey(key:Enum,...): nil
        return VirtualInputManager:SendKeyEvent(true, key, false, game);
    end;
    function CommonF:OffKey(key:Enum,...): nil
        return VirtualInputManager:SendKeyEvent(false, key, false, game);
    end;
    function CommonF:CallKey(key:Enum,c:number?,...): nil
        return self:SKey(key), twait(c or 0), self:OffKey(key);
    end;
    function CommonF:RefreshPlayer()
        local tbl:{string}={};
        for _,v in pir(GetPlayers(P)) do
            tablein(tbl, v.Name);
        end; return tbl;
    end;
    function CommonF:GetNearestPlayer():(Player,number)
        local nearest, dista = nil, mmaths.huge;
        for _, p in pir(GetPlayers(P)) do
            if p ~= selff and p.Character and FindFirstChild(p.Character,"HumanoidRootPart") then
                local d = dist(p.Character.HumanoidRootPart.Position);
                if d < dista then
                    dista = d; nearest = p;
                end;
            end;
        end; return nearest, dista;
    end;    
    function CommonF:GetTime(...): string
        local currentTime:number=L.ClockTime;
        if currentTime >= 6 and currentTime < 18 then
            return "Day";
        else
            return "Night";
        end;
    end;
    function CommonF:ReadDate(...): string
        return odate("%Y-%m-%d %H:%M:%S", otime()) .. " +07:00";
    end;
    function CommonF:LTech(tech:string,...): nil
        L.Technology = Enum.Technology[tech];
    end;
    function CommonF:HumanoidEquip(Tool:Tool): nil
        if not Tool or not selc or not Tool.Parent or not Tool.Parent.Parent then return; end;
        local Humanoid:Humanoid = FindFirstChildOfClass(selc, "Humanoid");
        return Humanoid and Humanoid:EquipTool(Tool);
    end;
    function CommonF:Tp(cf:CFrame,t:number,...): nil
        if not HumRSelf or not cf then return; end;
        HumRSelf.CFrame = cf;
        return true, twait(t);
    end;
    function CommonF:Anchored(bool:boolean): nil
        if not HumRSelf then return; end;
        HumRSelf.Anchored = bool;
    end;
    function CommonF:MakeFloatPart()
        local selcRootX = FindFirstChild(W, "selcRootX");
        if not selcRootX then
            UFPart = Instancen("Part");
            UFPart.Size = Vec3(2, 0.2, 1.5);
            UFPart.Material = Enum.Material.Grass;
            UFPart.Anchored = true;
            UFPart.Transparency = 1;
            UFPart.Parent = W;
            UFPart.Name = "selcRootX";
        else
            UFPart = selcRootX;
        end;
        return UFPart;
    end;
    function CommonF:UpdateClientState(which:string): any
        if which == "Float" then
            local FloatYeilding_Var = CF(0, -10000, 0);
            local FloatYeilding_Var_Use = CF(0, -3.1, 0);
            return function( ForceFloat : boolean, HumRSelf : HumanoidRootPart , configValue : boolean ): any
                if not HumRSelf then return; end;
                if not UFPart then return self:MakeFloatPart();
                else if configValue or ForceFloat then
                        if not ForceFloat then
                            UFPart.CFrame = FloatYeilding_Var;
                        elseif ForceFloat == "None" then
                            if configValue then
                                UFPart.CFrame = HumRSelf.CFrame * FloatYeilding_Var_Use;
                            else
                                UFPart.CFrame = HumRSelf.CFrame * FloatYeilding_Var;
                            end;
                        elseif ForceFloat == true then
                            UFPart.CFrame = HumRSelf.CFrame * FloatYeilding_Var_Use;
                        end;
                    else
                        UFPart.CFrame = FloatYeilding_Var;
                    end; return;
                end;
            end;
        elseif which == "Noclip" then
            return function( enable : boolean ): nil
                if enable then
                    for _, child in pir(selc and GetDescendants(selc) or {}) do
                        if IsA(child, "BasePart") and child.Name ~= "bobber" then
                            child.CanCollide = false;
                        end;
                    end; return;
                end; return;
            end;
        end;

        if which == "WalkSpeed" then
            return function( speed : number , enable : bool ): nil
                if not enable or not selc or not FindFirstChildOfClass(selc, "Humanoid") then return; end;
                selc.Humanoid.WalkSpeed = speed;
            end;
        elseif which == "JumpPower" then
            return function( power : number , enable : bool ): nil
                if not enable or not selc or not FindFirstChildOfClass(selc, "Humanoid") then return; end;
                selc.Humanoid.JumpPower = power;
                selc.Humanoid.UseJumpPower = true;
            end;
        end;
        if which == "WalkSpeedC" then
            return function( speed : number , enable : bool ): nil
                if enable then
                    if not GG.WalkSpeedConnector then
                        GG.SecureSelcSaved = FindFirstChild(selc, "Humanoid");

                        if GG.SecureSelcSaved and GG.SecureSelcSaved.Parent then
                        
                            GG.WalkSpeedConnector = GG.SecureSelcSaved:GetPropertyChangedSignal("WalkSpeed"):Connect(function()
                                GG.SecureSelcSaved.WalkSpeed = Configs["Player"]["Client"]["WalkSpeed"];
                            end);

                            GG.SecureSelcSaved.WalkSpeed = speed;

                        end;
                    else
                        if GG.SecureSelcSaved and GG.SecureSelcSaved.Parent then
                            GG.SecureSelcSaved.WalkSpeed = speed;
                        end;
                        if GG.SecureSelcSaved ~= FindFirstChild(selc, "Humanoid") then
                            if GG.WalkSpeedConnector then
                                GG.WalkSpeedConnector:Disconnect();
                                GG.WalkSpeedConnector = false;
                            end;
                        end;
                    end;
                else
                    if GG.WalkSpeedConnector then
                        GG.WalkSpeedConnector:Disconnect();
                        GG.WalkSpeedConnector = false;
                        GG.SecureSelcSaved.WalkSpeed = 16;
                    end;
                end;
            end;
        end;
    end;
    function CommonF:findPrompt(tbl:{},condition):ProximityPrompt
        for _, v in pir(tbl) do
            if IsA(v, "ProximityPrompt") and condition(v) then
                return v;
            end;
        end;
    end;
    function CommonF:Rejoin()
        return TeleportService:TeleportToPlaceInstance(PlaceId, game.JobId, selff);
    end;
    return CommonF;
end;
AssetStorage.GraphicsPlay = function(...): {[string]:(any)->(...any)}
    if GCP then return; end; GG.GCP = {};
    function GCP:ApplyLowest(className:string,at:Instance): nil
        if not at or not at.Parent then return; end;
    end;
    function GCP:ApplyAll(at:Instance,method:string,fors:{string}): nil
        for i,v in pir((method=="Descendants" and GetDescendants(at)) or (method=="Children" and GetChildren(at))) do
            if tablef(fors, v.ClassName) then
                self:ApplyLowest(v.ClassName, v);
            end;
        end;
    end;
end;
AssetStorage.ESPModl = function(...): {[string]:(any)->(...any)}?
    local ESPF = {};
    function ESPF:Clear()
        for _, v in pir(GG.ESPT) do
            if v and v.Parent then
                Destroy(v, true);
            end;
        end;
    end;
    function ESPF:CreateBox(obj:Instance,dat:{targetObj:Instance,Color:Color3,Size:Vector3,isneed:boolean}): BoxHandleAdornment
        local Box:BoxHandleAdornment = Instancen("BoxHandleAdornment", dat.targetObj);
        Box.Color3 = dat.Color;
        Box.AlwaysOnTop = true;
        Box.Size = dat.Size;
        Box.Transparency = 0.5;
        Box.Adornee = dat.targetObj;
        Box.ZIndex = 1;

        local Billboard:BillboardGui = Instancen("BillboardGui", dat.targetObj);
        Billboard.Adornee = dat.targetObj;
        Billboard.AlwaysOnTop = true;
        Billboard.Size = Dim2(0, 100, 0, 30);
        Billboard.StudsOffset = Vec3(0, dat.Size.Y/2 + 1, 0);

        local Label:TextLabel = Instancen("TextLabel", Billboard);
        Label.Size = Dim2(1, 0, 1, 0);
        Label.BackgroundTransparency = 1;
        Label.Text = GetAttribute(obj, "Username") or obj.Name;
        Label.TextColor3 = dat.Color;
        Label.TextStrokeTransparency = 0.2;
        Label.Font = Enum.Font.SourceSansBold;
        Label.TextScaled = true;

        tablein(ESPT, Box);
        tablein(ESPT, Billboard);

        return Box;
    end;
    function ESPF:ESP(obj:Instance,Color:Color3,Size:Vector3,isneed:boolean): nil
        if not obj or typeof(obj) ~= 'Instance' then return; end;
        local dat = {
            targetObj = nil;
            Color = Color or fromRGB(255,255,255);
            Size = Size or Vec3(5,5,5);
            isneed = isneed or false;
        };

        if dat.isneed then
            if IsA(obj, "Model") then
                dat.targetObj = FindFirstChild(obj, "HumanoidRootPart") or FindFirstChild(obj, "RootPart");
                if not dat.targetObj then
                    dat.targetObj = FindFirstChildWhichIsA(obj, "BasePart", true);
                end;
            end;
        end;

        dat.targetObj = dat.targetObj or obj;
        if not dat.targetObj then return; end;

        return self:CreateBox(obj, dat);
    end;
    return ESPF;
end;
AssetStorage.Wind = function(...): {[string]:(any)->(...any)}?
    local Windy:{[string]:(any)->(...any)} = {};
    function Windy:UITracking( key : number ): any
        if key == 1 then
            return function()
                if ScriptCache.Window then
                    return ScriptCache.Window.Destroyed;
                end;
            end;
        end;
    end;
    function Windy:AutoSetupToggle(a:tab,b:{any},c:any): {[string]:any}
        ScriptCache.NewToggle = a:Toggle(b);
        if c then ScriptCache.NewToggle:Set(c); end;
        ScriptCache.PanicConnect[#ScriptCache.PanicConnect + 1] = ScriptCache.NewToggle;
        return ScriptCache.NewToggle;
    end;
    function Windy:AutoSetupKeybind(a:tab,b:{any},c:any): {[string]:any}
        b.Value = c.Name;
        ScriptCache.NewKeybind = a:Keybind(b);
        return ScriptCache.NewKeybind;
    end;
    function Windy:IsGamePause(wind): any
        if not selff.GameplayPaused or ScriptCache.AlreadyNotifyPause then return; end;
        ScriptCache.AlreadyNotifyPause = true;
        return tspawn(function()
            wind:Notify({
                Title = "<font color='rgb(255,0,0)'>ALERT</font>",
                Content = "YOUR GAMEPLAY HAS BEEN PAUSE. Script is waiting until this problem is fully fix or gameplay load.",
                Icon = "circle-alert",
                Duration = 20,
            });
            twait(20); ScriptCache.AlreadyNotifyPause = false;
        end);
    end;
    function Windy:PairsAddOn(tab : tab , addOn : () -> () ): any
        tab:Paragraph({ Title = "Introduction", Desc = "This is the AddOn tab, a place for users who know coding to create their own scripts. Remember, any addon can be risky as it is not from the official VULX Script. Our documentation is available at gitbook.com/vulx, and you can find more addons on our Discord server." });
        return AddOnF(tab, windUI, function()
            return SystemStackDestroy;
        end);
    end;
    function Windy:GetConfigFromPath( pt:string, rp:string ): string
        pt = rp .. "/" .. pt;
        if ScriptCache.AutoConfigPathCache[pt] then
            return ScriptCache.AutoConfigPathCache[pt];
        end;
        local Splited = strsplit(pt,"/");
        local FullPath = Configs;
        for i,v in pir(Splited) do
            FullPath = FullPath[v];
            if FullPath == nil then
                return nil;
            end;
        end;
        ScriptCache.AutoConfigPathCache[pt]=FullPath;
        return FullPath;
    end;
    function Windy:VisibilityModuleSet(ui:{[string]:any}): nil
        local main:Frame=nil;
        if ui.ToggleFrame then main = ui.ToggleFrame.UIElements.Main;
        elseif ui.DropdownFrame then main = ui.DropdownFrame.UIElements.Main;
        elseif ui.SliderFrame then main = ui.SliderFrame.UIElements.Main;
        elseif ui.ButtonFrame then main = ui.ButtonFrame.UIElements.Main;
        elseif ui.KeybindFrame then main = ui.KeybindFrame.UIElements.Main; end;
        if main then main.Visible = not main.Visible; end;
    end;
    function Windy:UIFromData( tab:Tab, data:{any}, path:string ): nil
        for i,v in ipir(data) do
            if v.__type == "Module" then
                if v.__dats then
                    self:UIFromModule(tab,v.__dats,path,v.Title,v.allign); continue;
                else
                    self:UIFromData(tab,v.__data,path); continue;
                end;
            end;
            if v.__type ~= "Divider" and v.__type ~= "Section" and v.__type ~= "Code" and v.Path then
                self:GetConfigFromPath(v.Path, path);
            end;
            v.Callback = v.Callback or function(state)
                local fullPath = path.."/"..v.Path;
                ScriptCache.AutoConfigPathCache[fullPath] = state;
                local Splited = strsplit(fullPath,"/");
                local t = Configs;
                for i = 1, #Splited - 1 do
                    t = t[ Splited[i] ];
                end;
                t[ Splited[#Splited] ] = state;
            end;
            if v.__type == "Dropdown" then
                v.Value = (v.Path and ScriptCache.AutoConfigPathCache[path.."/"..v.Path]) or v.Value;
                v.AllowNone = v.AllowNone or false;
                if v.RECall then
                    local drp = tab:Dropdown(v);
                    v.RECall.Callback = function()
                        return drp:Refresh(v.RECall.RECall());
                    end;
                    tab:Button(v.RECall);
                    continue;
                end;
                tab:Dropdown(v);
            elseif v.__type == "Keybind" then
                self:AutoSetupKeybind(tab, v, ScriptCache.AutoConfigPathCache[path.."/"..v.Path]);
            elseif v.__type == "Toggle" then
                Functions:AutoSetupToggle(tab, v, (v.Path and ScriptCache.AutoConfigPathCache[path.."/"..v.Path]) or v.Value);
            elseif v.__type == "Slider" then
                v.Value.Default = ScriptCache.AutoConfigPathCache[path.."/"..v.Path] or v.Value.Default;
                tab:Slider(v);
            elseif v.__type == "Code" then
                if v.RECall then
                    local CodeT = tab:Code(v);
                    v.RECall.Callback = function(...)
                        return CodeT:SetCode(v.RECall.RECallback() or "");
                    end
                    tab:Button(v.RECall);
                    continue;
                end;
                tab:Code(v);
            else
                tab[v.__type](tab, v);
            end;
        end;
    end;
    function Windy:UIFromModule(tab:Tab,dats:{[nil]:{[string]:any}},path:string,title:string,allign:TextXAlignment): nil
        local maxdats=#dats;
        local Group = tab:Group({});
        for i, dat in ipir(dats) do
            local mod = Group:Section({
                Title = dat.Title;
                Box = true,
                Opened = dat.Open,
            }); for _, v in ipir(dat.__dat) do
                if v.__type ~= "Divider" and v.__type ~= "Section" and v.__type ~= "Code" and v.Path then
                    self:GetConfigFromPath(v.Path, path);
                end;
                v.Callback = v.Callback or function(state)
                    local fullPath = path.."/"..v.Path;
                    ScriptCache.AutoConfigPathCache[fullPath] = state;
                    local Splited = strsplit(fullPath,"/");
                    local t = Configs;
                    for i = 1, #Splited - 1 do
                        t = t[ Splited[i] ];
                    end;
                    t[ Splited[#Splited] ] = state;
                end;
                if v.__type == "Dropdown" then
                    v.Value = (v.Path and ScriptCache.AutoConfigPathCache[path.."/"..v.Path]) or v.Value;
                    v.AllowNone = v.AllowNone or false;
                    if v.RECall then
                        local drp = mod:Dropdown(v);
                        v.RECall.Callback = function()
                            return drp:Refresh(v.RECall.RECall());
                        end;
                        mod:Button(v.RECall);
                        continue;
                    end;
                    mod:Dropdown(v);
                elseif v.__type == "Keybind" then
                    self:AutoSetupKeybind(mod, v, ScriptCache.AutoConfigPathCache[path.."/"..v.Path]);
                elseif v.__type == "Toggle" then
                    Functions:AutoSetupToggle(mod, v, (v.Path and ScriptCache.AutoConfigPathCache[path.."/"..v.Path]) or v.Value);
                elseif v.__type == "Slider" then
                    v.Value.Default = ScriptCache.AutoConfigPathCache[path.."/"..v.Path] or v.Value.Default;
                    mod:Slider(v);
                elseif v.__type == "Code" then
                    if v.RECall then
                        local CodeT = mod:Code(v);
                        v.RECall.Callback = function(...)
                            return CodeT:SetCode(v.RECall.RECallback() or "");
                        end
                        mod:Button(v.RECall);
                        continue;
                    end;
                    mod:Code(v);
                else
                    mod[v.__type](mod, v);
                end;
            end; if i < maxdats then
                Group:Space();
            end;
        end;
    end;
    return Windy;
end;
AssetStorage.Key = function(): nil
    GG.UploadToGlobal_Key = GG.UploadToGlobal_Key or function( arg : {} )
        local emptyfunction = function(...) return; end;
        local modules : {} = {};
        function modules:newCopy()
            local G2L = {};
            G2L["1"] = Instancen("ScreenGui", C);
            G2L["1"].IgnoreGuiInset = true;
            G2L["1"].ScreenInsets= Enum.ScreenInsets.None;
            G2L["1"].Name= "MultiKey";
            G2L["1"].ZIndexBehavior= Enum.ZIndexBehavior.Sibling;
            G2L["1"].ResetOnSpawn= false;
        
            G2L["2"] = Instancen("ImageLabel", G2L["1"]);
            G2L["2"].ZIndex= 9999;
            G2L["2"].BorderSizePixel= 0;
            G2L["2"].SliceCenter= Rectn(256, 256, 256, 256);
            G2L["2"].SliceScale= 0.08594;
            G2L["2"].BackgroundColor3= fromRGB(255, 255, 255);
            G2L["2"].ScaleType= Enum.ScaleType.Slice;
            G2L["2"].AutomaticSize= Enum.AutomaticSize.XY;
            G2L["2"].ImageColor3= fromRGB(25, 25, 28);
            G2L["2"].AnchorPoint= Vec2(0.5, 0.5);
            G2L["2"].Image= "rbxassetid://80999662900595";
            G2L["2"].BackgroundTransparency= 1;
            G2L["2"].Position= Dim2(0.5, 0, 0.5, 0);
        
            G2L["3"] = Instancen("Frame", G2L["2"]);
            G2L["3"].ZIndex= 99999;
            G2L["3"].BorderSizePixel= 0;
            G2L["3"].BackgroundColor3= fromRGB(25, 25, 28);
            G2L["3"].AutomaticSize= Enum.AutomaticSize.Y;
            G2L["3"].Size= Dim2(0, 430, 0, 0);
            G2L["3"].BackgroundTransparency= 1;
        
            G2L["4"] = Instancen("UIPadding", G2L["3"]);
        
            G2L["5"] = Instancen("Frame", G2L["3"]);
            G2L["5"].BorderSizePixel= 0;
            G2L["5"].BackgroundColor3= fromRGB(255, 255, 255);
            G2L["5"].Size= Dim2(1, 0, 1, 0);
            G2L["5"].BackgroundTransparency= 1;
        
            G2L["6"] = Instancen("Frame", G2L["5"]);
            G2L["6"].BorderSizePixel= 0;
            G2L["6"].BackgroundColor3= fromRGB(255, 255, 255);
            G2L["6"].Size= Dim2(1, 0, 1, 0);
            G2L["6"].BackgroundTransparency= 1;
        
            G2L["7"] = Instancen("UIListLayout", G2L["6"]);
            G2L["7"].Padding= Dim(0, 18);
            G2L["7"].SortOrder= Enum.SortOrder.LayoutOrder;
        
            G2L["8"] = Instancen("Frame", G2L["6"]);
            G2L["8"].BorderSizePixel= 0;
            G2L["8"].BackgroundColor3= fromRGB(255, 255, 255);
            G2L["8"].AutomaticSize= Enum.AutomaticSize.Y;
            G2L["8"].Size= Dim2(1, 0, 0, 0);
            G2L["8"].BackgroundTransparency= 1;
        
            G2L["9"] = Instancen("Frame", G2L["8"]);
            G2L["9"].BorderSizePixel= 0;
            G2L["9"].BackgroundColor3= fromRGB(255, 255, 255);
            G2L["9"].AutomaticSize= Enum.AutomaticSize.XY;
            G2L["9"].BackgroundTransparency= 1;
        
            G2L.a= Instancen("UIListLayout", G2L["9"]);
            G2L.a.Padding= Dim(0, 14);
            G2L.a.VerticalAlignment= Enum.VerticalAlignment.Center;
            G2L.a.SortOrder= Enum.SortOrder.LayoutOrder;
            G2L.a.FillDirection= Enum.FillDirection.Horizontal;
        
            G2L.b= Instancen("Frame", G2L["9"]);
            G2L.b.BorderSizePixel= 0;
            G2L.b.BackgroundColor3= fromRGB(255, 255, 255);
            G2L.b.Size= Dim2(0, 24, 0, 24);
            G2L.b.LayoutOrder= -1;
            G2L.b.BackgroundTransparency= 1;
        
            G2L.c= Instancen("ImageLabel", G2L.b);
            G2L.c.BorderSizePixel= 0;
            G2L.c.BackgroundColor3= fromRGB(255, 255, 255);
            G2L.c.ScaleType= Enum.ScaleType.Crop;
            G2L.c.Image= "rbxassetid://77771201330939";
            G2L.c.ImageRectSize= Vec2(96, 96);
            G2L.c.Size= Dim2(1, 0, 1, 0);
            G2L.c.BackgroundTransparency= 1;
            G2L.c.ImageRectOffset= Vec2(0, 768);
        
        
            G2L.d= Instancen("UICorner", G2L.c);
            G2L.d.CornerRadius= Dim(0, 18);
        
            G2L.e= Instancen("TextLabel", G2L["9"]);
            G2L.e.BorderSizePixel= 0;
            G2L.e.TextSize= 20;
            G2L.e.BackgroundColor3= fromRGB(255, 255, 255);
            G2L.e.FontFace= Fnew("rbxassetid://12187365364", Enum.FontWeight.SemiBold, Enum.FontStyle.Normal);
            G2L.e.TextColor3= fromRGB(255, 255, 255);
            G2L.e.BackgroundTransparency= 1;
            G2L.e.RichText= true;
            G2L.e.Text= "Select Service";
            G2L.e.AutomaticSize= Enum.AutomaticSize.XY;
        
            G2L.f= Instancen("Frame", G2L["6"]);
            G2L.f.BorderSizePixel= 0;
            G2L.f.BackgroundColor3= fromRGB(255, 255, 255);
            G2L.f.Size= Dim2(1, 0, 0, 42);
            G2L.f.BackgroundTransparency= 1;
        
            G2L["10"] = Instancen("UIListLayout", G2L.f);
            G2L["10"].HorizontalAlignment= Enum.HorizontalAlignment.Center;
            G2L["10"].Padding= Dim(0, 9);
            G2L["10"].SortOrder= Enum.SortOrder.LayoutOrder;
            G2L["10"].FillDirection= Enum.FillDirection.Horizontal;
        
            G2L["11"] = Instancen("TextButton", G2L.f);
            G2L["11"].BorderSizePixel= 0;
            G2L["11"].TextColor3= fromRGB(255, 255, 255);
            G2L["11"].AutoButtonColor= false;
            G2L["11"].TextSize= 14;
            G2L["11"].BackgroundColor3= fromRGB(255, 255, 255);
            G2L["11"].Size= Dim2(0.45, 0, 1, 0);
            G2L["11"].BackgroundTransparency= 1;
            G2L["11"].LayoutOrder= 2;
            G2L["11"].Text= "";
            G2L["11"].Position= Dim2(-0.00377, 0, 0, 0);
        
            G2L["12"] = Instancen("ImageLabel", G2L["11"]);
            G2L["12"].BorderSizePixel= 0;
            G2L["12"].SliceCenter= Rectn(256, 256, 256, 256);
            G2L["12"].SliceScale= 0.03906;
            G2L["12"].BackgroundColor3= fromRGB(255, 255, 255);
            G2L["12"].ScaleType= Enum.ScaleType.Slice;
            G2L["12"].ImageTransparency= 1;
            G2L["12"].ImageColor3= fromRGB(83, 83, 92);
            G2L["12"].Image= "rbxassetid://80999662900595";
            G2L["12"].Size= Dim2(1, 0, 1, 0);
            G2L["12"].BackgroundTransparency= 1;
            G2L["12"].Name= "Squircle";
        
            G2L["13"] = Instancen("ImageLabel", G2L["11"]);
            G2L["13"].BorderSizePixel= 0;
            G2L["13"].SliceCenter= Rectn(256, 256, 256, 256);
            G2L["13"].SliceScale= 0.03906;
            G2L["13"].BackgroundColor3= fromRGB(255, 255, 255);
            G2L["13"].ScaleType= Enum.ScaleType.Slice;
            G2L["13"].ImageTransparency= 0.95;
            G2L["13"].Image= "rbxassetid://80999662900595";
            G2L["13"].Size= Dim2(1, 0, 1, 0);
            G2L["13"].BackgroundTransparency= 1;
            G2L["13"].Name= "Special";
        
            G2L["14"] = Instancen("ImageLabel", G2L["11"]);
            G2L["14"].BorderSizePixel= 0;
            G2L["14"].SliceCenter= Rectn(512, 512, 512, 512);
            G2L["14"].SliceScale= 0.01953;
            G2L["14"].BackgroundColor3= fromRGB(255, 255, 255);
            G2L["14"].ScaleType= Enum.ScaleType.Slice;
            G2L["14"].ImageColor3= fromRGB(0, 0, 0);
            G2L["14"].AnchorPoint= Vec2(0.5, 0.5);
            G2L["14"].Image= "rbxassetid://84825982946844";
            G2L["14"].Size= Dim2(1, 3, 1, 3);
            G2L["14"].BackgroundTransparency= 1;
            G2L["14"].Name= "Shadow";
            G2L["14"].Position= Dim2(0.5, 0, 0.5, 0);
        
            G2L["15"] = Instancen("ImageLabel", G2L["11"]);
            G2L["15"].BorderSizePixel= 0;
            G2L["15"].SliceCenter= Rectn(256, 256, 256, 256);
            G2L["15"].SliceScale= 0.03906;
            G2L["15"].BackgroundColor3= fromRGB(255, 255, 255);
            G2L["15"].ScaleType= Enum.ScaleType.Slice;
            G2L["15"].ImageTransparency= 0.85;
            G2L["15"].Image= "rbxassetid://117788349049947";
            G2L["15"].Size= Dim2(1, 0, 1, 0);
            G2L["15"].BackgroundTransparency= 1;
        
            G2L["16"] = Instancen("ImageLabel", G2L["11"]);
            G2L["16"].BorderSizePixel= 0;
            G2L["16"].SliceCenter= Rectn(256, 256, 256, 256);
            G2L["16"].SliceScale= 0.03906;
            G2L["16"].BackgroundColor3= fromRGB(255, 255, 255);
            G2L["16"].ScaleType= Enum.ScaleType.Slice;
            G2L["16"].ImageTransparency= 1;
            G2L["16"].Image= "rbxassetid://80999662900595";
            G2L["16"].Size= Dim2(1, 0, 1, 0);
            G2L["16"].BackgroundTransparency= 1;
            G2L["16"].Name= "Frame";
        
            G2L["17"] = Instancen("UIPadding", G2L["16"]);
            G2L["17"].PaddingRight= Dim(0, 12);
            G2L["17"].PaddingLeft= Dim(0, 12);
        
            G2L["18"] = Instancen("UIListLayout", G2L["16"]);
            G2L["18"].HorizontalAlignment= Enum.HorizontalAlignment.Center;
            G2L["18"].Padding= Dim(0, 8);
            G2L["18"].VerticalAlignment= Enum.VerticalAlignment.Center;
            G2L["18"].SortOrder= Enum.SortOrder.LayoutOrder;
            G2L["18"].FillDirection= Enum.FillDirection.Horizontal;
        
            G2L["19"] = Instancen("TextLabel", G2L["16"]);
            G2L["19"].BorderSizePixel= 0;
            G2L["19"].TextSize= 18;
            G2L["19"].BackgroundColor3= fromRGB(255, 255, 255);
            G2L["19"].FontFace= Fnew("rbxassetid://12187365364", Enum.FontWeight.SemiBold, Enum.FontStyle.Normal);
            G2L["19"].TextColor3= fromRGB(255, 255, 255);
            G2L["19"].BackgroundTransparency= 1;
            G2L["19"].RichText= true;
            G2L["19"].Text= "Linkvertise";
            G2L["19"].AutomaticSize= Enum.AutomaticSize.XY;
        
            G2L["1a"] = Instancen("TextButton", G2L.f);
            G2L["1a"].BorderSizePixel= 0;
            G2L["1a"].TextColor3= fromRGB(255, 255, 255);
            G2L["1a"].AutoButtonColor= false;
            G2L["1a"].TextSize= 14;
            G2L["1a"].BackgroundColor3= fromRGB(255, 255, 255);
            G2L["1a"].Size= Dim2(0.45, 0, 1, 0);
            G2L["1a"].BackgroundTransparency= 1;
            G2L["1a"].LayoutOrder= 2;
            G2L["1a"].Text= "";
            G2L["1a"].Position= Dim2(-0.00377, 0, 0, 0);
        
            G2L["1b"] = Instancen("ImageLabel", G2L["1a"]);
            G2L["1b"].BorderSizePixel= 0;
            G2L["1b"].SliceCenter= Rectn(256, 256, 256, 256);
            G2L["1b"].SliceScale= 0.03906;
            G2L["1b"].BackgroundColor3= fromRGB(255, 255, 255);
            G2L["1b"].ScaleType= Enum.ScaleType.Slice;
            G2L["1b"].ImageTransparency= 1;
            G2L["1b"].ImageColor3= fromRGB(83, 83, 92);
            G2L["1b"].Image= "rbxassetid://80999662900595";
            G2L["1b"].Size= Dim2(1, 0, 1, 0);
            G2L["1b"].BackgroundTransparency= 1;
            G2L["1b"].Name= "Squircle";
        
            G2L["1c"] = Instancen("ImageLabel", G2L["1a"]);
            G2L["1c"].BorderSizePixel= 0;
            G2L["1c"].SliceCenter= Rectn(256, 256, 256, 256);
            G2L["1c"].SliceScale= 0.03906;
            G2L["1c"].BackgroundColor3= fromRGB(255, 255, 255);
            G2L["1c"].ScaleType= Enum.ScaleType.Slice;
            G2L["1c"].ImageTransparency= 0.95;
            G2L["1c"].Image= "rbxassetid://80999662900595";
            G2L["1c"].Size= Dim2(1, 0, 1, 0);
            G2L["1c"].BackgroundTransparency= 1;
            G2L["1c"].Name= "Special";
        
            G2L["1d"] = Instancen("ImageLabel", G2L["1a"]);
            G2L["1d"].BorderSizePixel= 0;
            G2L["1d"].SliceCenter= Rectn(512, 512, 512, 512);
            G2L["1d"].SliceScale= 0.01953;
            G2L["1d"].BackgroundColor3= fromRGB(255, 255, 255);
            G2L["1d"].ScaleType= Enum.ScaleType.Slice;
            G2L["1d"].ImageColor3= fromRGB(0, 0, 0);
            G2L["1d"].AnchorPoint= Vec2(0.5, 0.5);
            G2L["1d"].Image= "rbxassetid://84825982946844";
            G2L["1d"].Size= Dim2(1, 3, 1, 3);
            G2L["1d"].BackgroundTransparency= 1;
            G2L["1d"].Name= "Shadow";
            G2L["1d"].Position= Dim2(0.5, 0, 0.5, 0);
        
            G2L["1e"] = Instancen("ImageLabel", G2L["1a"]);
            G2L["1e"].BorderSizePixel= 0;
            G2L["1e"].SliceCenter= Rectn(256, 256, 256, 256);
            G2L["1e"].SliceScale= 0.03906;
            G2L["1e"].BackgroundColor3= fromRGB(255, 255, 255);
            G2L["1e"].ScaleType= Enum.ScaleType.Slice;
            G2L["1e"].ImageTransparency= 0.85;
            G2L["1e"].Image= "rbxassetid://117788349049947";
            G2L["1e"].Size= Dim2(1, 0, 1, 0);
            G2L["1e"].BackgroundTransparency= 1;
        
            G2L["1f"] = Instancen("ImageLabel", G2L["1a"]);
            G2L["1f"].BorderSizePixel= 0;
            G2L["1f"].SliceCenter= Rectn(256, 256, 256, 256);
            G2L["1f"].SliceScale= 0.03906;
            G2L["1f"].BackgroundColor3= fromRGB(255, 255, 255);
            G2L["1f"].ScaleType= Enum.ScaleType.Slice;
            G2L["1f"].ImageTransparency= 1;
            G2L["1f"].Image= "rbxassetid://80999662900595";
            G2L["1f"].Size= Dim2(1, 0, 1, 0);
            G2L["1f"].BackgroundTransparency= 1;
            G2L["1f"].Name= "Frame";
        
            G2L["20"] = Instancen("UIPadding", G2L["1f"]);
            G2L["20"].PaddingRight= Dim(0, 12);
            G2L["20"].PaddingLeft= Dim(0, 12);
        
            G2L["21"] = Instancen("UIListLayout", G2L["1f"]);
            G2L["21"].HorizontalAlignment= Enum.HorizontalAlignment.Center;
            G2L["21"].Padding= Dim(0, 8);
            G2L["21"].VerticalAlignment= Enum.VerticalAlignment.Center;
            G2L["21"].SortOrder= Enum.SortOrder.LayoutOrder;
            G2L["21"].FillDirection= Enum.FillDirection.Horizontal;
        
            G2L["22"] = Instancen("TextLabel", G2L["1f"]);
            G2L["22"].BorderSizePixel= 0;
            G2L["22"].TextSize= 18;
            G2L["22"].BackgroundColor3= fromRGB(255, 255, 255);
            G2L["22"].FontFace= Fnew("rbxassetid://12187365364", Enum.FontWeight.SemiBold, Enum.FontStyle.Normal);
            G2L["22"].TextColor3= fromRGB(255, 255, 255);
            G2L["22"].BackgroundTransparency= 1;
            G2L["22"].RichText= true;
            G2L["22"].Text= "-";
            G2L["22"].AutomaticSize= Enum.AutomaticSize.XY;
        
            G2L["23"] = Instancen("UIPadding", G2L["6"]);
            G2L["23"].PaddingTop= Dim(0, 16);
            G2L["23"].PaddingRight= Dim(0, 16);
            G2L["23"].PaddingLeft= Dim(0, 16);
            G2L["23"].PaddingBottom= Dim(0, 16);
        
            G2L["24"] = Instancen("Frame", G2L["6"]);
            G2L["24"].BorderSizePixel= 0;
            G2L["24"].BackgroundColor3= fromRGB(255, 255, 255);
            G2L["24"].Size= Dim2(1, 0, 0, 42);
            G2L["24"].LayoutOrder= 100;
            G2L["24"].BackgroundTransparency= 1;
        
            G2L["25"] = Instancen("UIListLayout", G2L["24"]);
            G2L["25"].HorizontalAlignment= Enum.HorizontalAlignment.Right;
            G2L["25"].Padding= Dim(0, 9);
            G2L["25"].SortOrder= Enum.SortOrder.LayoutOrder;
            G2L["25"].FillDirection= Enum.FillDirection.Horizontal;
        
            G2L["26"] = Instancen("TextButton", G2L["24"]);
            G2L["26"].BorderSizePixel= 0;
            G2L["26"].TextColor3= fromRGB(255, 255, 255);
            G2L["26"].AutoButtonColor= false;
            G2L["26"].TextSize= 14;
            G2L["26"].BackgroundColor3= fromRGB(255, 255, 255);
            G2L["26"].AutomaticSize= Enum.AutomaticSize.X;
            G2L["26"].Size= Dim2(0, 0, 1, 0);
            G2L["26"].BackgroundTransparency= 1;
            G2L["26"].LayoutOrder= 2;
            G2L["26"].Text= "";
        
            G2L["27"] = Instancen("ImageLabel", G2L["26"]);
            G2L["27"].BorderSizePixel= 0;
            G2L["27"].SliceCenter= Rectn(256, 256, 256, 256);
            G2L["27"].SliceScale= 0.03906;
            G2L["27"].BackgroundColor3= fromRGB(255, 255, 255);
            G2L["27"].ScaleType= Enum.ScaleType.Slice;
            G2L["27"].ImageTransparency= 1;
            G2L["27"].ImageColor3= fromRGB(83, 83, 92);
            G2L["27"].Image= "rbxassetid://80999662900595";
            G2L["27"].Size= Dim2(1, 0, 1, 0);
            G2L["27"].BackgroundTransparency= 1;
            G2L["27"].Name= "Squircle";
        
            G2L["28"] = Instancen("ImageLabel", G2L["26"]);
            G2L["28"].BorderSizePixel= 0;
            G2L["28"].SliceCenter= Rectn(256, 256, 256, 256);
            G2L["28"].SliceScale= 0.03906;
            G2L["28"].BackgroundColor3= fromRGB(255, 255, 255);
            G2L["28"].ScaleType= Enum.ScaleType.Slice;
            G2L["28"].ImageTransparency= 0.95;
            G2L["28"].Image= "rbxassetid://80999662900595";
            G2L["28"].Size= Dim2(1, 0, 1, 0);
            G2L["28"].BackgroundTransparency= 1;
            G2L["28"].Name= "Special";
        
            G2L["29"] = Instancen("ImageLabel", G2L["26"]);
            G2L["29"].BorderSizePixel= 0;
            G2L["29"].SliceCenter= Rectn(512, 512, 512, 512);
            G2L["29"].SliceScale= 0.01953;
            G2L["29"].BackgroundColor3= fromRGB(255, 255, 255);
            G2L["29"].ScaleType= Enum.ScaleType.Slice;
            G2L["29"].ImageColor3= fromRGB(0, 0, 0);
            G2L["29"].AnchorPoint= Vec2(0.5, 0.5);
            G2L["29"].Image= "rbxassetid://84825982946844";
            G2L["29"].Size= Dim2(1, 3, 1, 3);
            G2L["29"].BackgroundTransparency= 1;
            G2L["29"].Name= "Shadow";
            G2L["29"].Position= Dim2(0.5, 0, 0.5, 0);
        
            G2L["2a"] = Instancen("ImageLabel", G2L["26"]);
            G2L["2a"].BorderSizePixel= 0;
            G2L["2a"].SliceCenter= Rectn(256, 256, 256, 256);
            G2L["2a"].SliceScale= 0.03906;
            G2L["2a"].BackgroundColor3= fromRGB(255, 255, 255);
            G2L["2a"].ScaleType= Enum.ScaleType.Slice;
            G2L["2a"].ImageTransparency= 0.85;
            G2L["2a"].Image= "rbxassetid://117788349049947";
            G2L["2a"].Size= Dim2(1, 0, 1, 0);
            G2L["2a"].BackgroundTransparency= 1;
        
            G2L["2b"] = Instancen("ImageLabel", G2L["26"]);
            G2L["2b"].BorderSizePixel= 0;
            G2L["2b"].SliceCenter= Rectn(256, 256, 256, 256);
            G2L["2b"].SliceScale= 0.03906;
            G2L["2b"].BackgroundColor3= fromRGB(255, 255, 255);
            G2L["2b"].ScaleType= Enum.ScaleType.Slice;
            G2L["2b"].ImageTransparency= 1;
            G2L["2b"].Image= "rbxassetid://80999662900595";
            G2L["2b"].Size= Dim2(1, 0, 1, 0);
            G2L["2b"].BackgroundTransparency= 1;
            G2L["2b"].Name= "Frame";
        
            G2L["2c"] = Instancen("UIPadding", G2L["2b"]);
            G2L["2c"].PaddingRight= Dim(0, 12);
            G2L["2c"].PaddingLeft= Dim(0, 12);
        
            G2L["2d"] = Instancen("UIListLayout", G2L["2b"]);
            G2L["2d"].HorizontalAlignment= Enum.HorizontalAlignment.Center;
            G2L["2d"].Padding= Dim(0, 8);
            G2L["2d"].VerticalAlignment= Enum.VerticalAlignment.Center;
            G2L["2d"].SortOrder= Enum.SortOrder.LayoutOrder;
            G2L["2d"].FillDirection= Enum.FillDirection.Horizontal;
        
            G2L["2e"] = Instancen("TextLabel", G2L["2b"]);
            G2L["2e"].BorderSizePixel= 0;
            G2L["2e"].TextSize= 18;
            G2L["2e"].BackgroundColor3= fromRGB(255, 255, 255);
            G2L["2e"].FontFace= Fnew("rbxassetid://12187365364", Enum.FontWeight.SemiBold, Enum.FontStyle.Normal);
            G2L["2e"].TextColor3= fromRGB(255, 255, 255);
            G2L["2e"].BackgroundTransparency= 1;
            G2L["2e"].RichText= true;
            G2L["2e"].Text= "Cancel";
            G2L["2e"].AutomaticSize= Enum.AutomaticSize.XY;
        
            G2L["2f"] = Instancen("Frame", G2L["6"]);
            G2L["2f"].BorderSizePixel= 0;
            G2L["2f"].BackgroundColor3= fromRGB(255, 255, 255);
            G2L["2f"].Size= Dim2(1, 0, 0, 42);
            G2L["2f"].BackgroundTransparency= 1;
        
            G2L["30"] = Instancen("UIListLayout", G2L["2f"]);
            G2L["30"].HorizontalAlignment= Enum.HorizontalAlignment.Center;
            G2L["30"].Padding= Dim(0, 9);
            G2L["30"].SortOrder= Enum.SortOrder.LayoutOrder;
            G2L["30"].FillDirection= Enum.FillDirection.Horizontal;
        
            G2L["31"] = Instancen("TextButton", G2L["2f"]);
            G2L["31"].BorderSizePixel= 0;
            G2L["31"].TextColor3= fromRGB(255, 255, 255);
            G2L["31"].AutoButtonColor= false;
            G2L["31"].TextSize= 14;
            G2L["31"].BackgroundColor3= fromRGB(255, 255, 255);
            G2L["31"].Size= Dim2(0.45, 0, 1, 0);
            G2L["31"].BackgroundTransparency= 1;
            G2L["31"].LayoutOrder= 2;
            G2L["31"].Text= "";
            G2L["31"].Position= Dim2(-0.00377, 0, 0, 0);
        
            G2L["32"] = Instancen("ImageLabel", G2L["31"]);
            G2L["32"].BorderSizePixel= 0;
            G2L["32"].SliceCenter= Rectn(256, 256, 256, 256);
            G2L["32"].SliceScale= 0.03906;
            G2L["32"].BackgroundColor3= fromRGB(255, 255, 255);
            G2L["32"].ScaleType= Enum.ScaleType.Slice;
            G2L["32"].ImageTransparency= 1;
            G2L["32"].ImageColor3= fromRGB(83, 83, 92);
            G2L["32"].Image= "rbxassetid://80999662900595";
            G2L["32"].Size= Dim2(1, 0, 1, 0);
            G2L["32"].BackgroundTransparency= 1;
            G2L["32"].Name= "Squircle";
        
            G2L["33"] = Instancen("ImageLabel", G2L["31"]);
            G2L["33"].BorderSizePixel= 0;
            G2L["33"].SliceCenter= Rectn(256, 256, 256, 256);
            G2L["33"].SliceScale= 0.03906;
            G2L["33"].BackgroundColor3= fromRGB(255, 255, 255);
            G2L["33"].ScaleType= Enum.ScaleType.Slice;
            G2L["33"].ImageTransparency= 0.95;
            G2L["33"].Image= "rbxassetid://80999662900595";
            G2L["33"].Size= Dim2(1, 0, 1, 0);
            G2L["33"].BackgroundTransparency= 1;
            G2L["33"].Name= "Special";
        
            G2L["34"] = Instancen("ImageLabel", G2L["31"]);
            G2L["34"].BorderSizePixel= 0;
            G2L["34"].SliceCenter= Rectn(512, 512, 512, 512);
            G2L["34"].SliceScale= 0.01953;
            G2L["34"].BackgroundColor3= fromRGB(255, 255, 255);
            G2L["34"].ScaleType= Enum.ScaleType.Slice;
            G2L["34"].ImageColor3= fromRGB(0, 0, 0);
            G2L["34"].AnchorPoint= Vec2(0.5, 0.5);
            G2L["34"].Image= "rbxassetid://84825982946844";
            G2L["34"].Size= Dim2(1, 3, 1, 3);
            G2L["34"].BackgroundTransparency= 1;
            G2L["34"].Name= "Shadow";
            G2L["34"].Position= Dim2(0.5, 0, 0.5, 0);
        
            G2L["35"] = Instancen("ImageLabel", G2L["31"]);
            G2L["35"].BorderSizePixel= 0;
            G2L["35"].SliceCenter= Rectn(256, 256, 256, 256);
            G2L["35"].SliceScale= 0.03906;
            G2L["35"].BackgroundColor3= fromRGB(255, 255, 255);
            G2L["35"].ScaleType= Enum.ScaleType.Slice;
            G2L["35"].ImageTransparency= 0.85;
            G2L["35"].Image= "rbxassetid://117788349049947";
            G2L["35"].Size= Dim2(1, 0, 1, 0);
            G2L["35"].BackgroundTransparency= 1;
        
            G2L["36"] = Instancen("ImageLabel", G2L["31"]);
            G2L["36"].BorderSizePixel= 0;
            G2L["36"].SliceCenter= Rectn(256, 256, 256, 256);
            G2L["36"].SliceScale= 0.03906;
            G2L["36"].BackgroundColor3= fromRGB(255, 255, 255);
            G2L["36"].ScaleType= Enum.ScaleType.Slice;
            G2L["36"].ImageTransparency= 1;
            G2L["36"].Image= "rbxassetid://80999662900595";
            G2L["36"].Size= Dim2(1, 0, 1, 0);
            G2L["36"].BackgroundTransparency= 1;
            G2L["36"].Name= "Frame";
        
            G2L["37"] = Instancen("UIPadding", G2L["36"]);
            G2L["37"].PaddingRight= Dim(0, 12);
            G2L["37"].PaddingLeft= Dim(0, 12);
        
            G2L["38"] = Instancen("UIListLayout", G2L["36"]);
            G2L["38"].HorizontalAlignment= Enum.HorizontalAlignment.Center;
            G2L["38"].Padding= Dim(0, 8);
            G2L["38"].VerticalAlignment= Enum.VerticalAlignment.Center;
            G2L["38"].SortOrder= Enum.SortOrder.LayoutOrder;
            G2L["38"].FillDirection= Enum.FillDirection.Horizontal;
        
            G2L["39"] = Instancen("TextLabel", G2L["36"]);
            G2L["39"].BorderSizePixel= 0;
            G2L["39"].TextSize= 18;
            G2L["39"].BackgroundColor3= fromRGB(255, 255, 255);
            G2L["39"].FontFace= Fnew("rbxassetid://12187365364", Enum.FontWeight.SemiBold, Enum.FontStyle.Normal);
            G2L["39"].TextColor3= fromRGB(255, 255, 255);
            G2L["39"].BackgroundTransparency= 1;
            G2L["39"].RichText= true;
            G2L["39"].Text= "-";
            G2L["39"].AutomaticSize= Enum.AutomaticSize.XY;
        
            G2L["3a"] = Instancen("TextButton", G2L["2f"]);
            G2L["3a"].BorderSizePixel= 0;
            G2L["3a"].TextColor3= fromRGB(255, 255, 255);
            G2L["3a"].AutoButtonColor= false;
            G2L["3a"].TextSize= 14;
            G2L["3a"].BackgroundColor3= fromRGB(255, 255, 255);
            G2L["3a"].Size= Dim2(0.45, 0, 1, 0);
            G2L["3a"].BackgroundTransparency= 1;
            G2L["3a"].LayoutOrder= 2;
            G2L["3a"].Text= "";
            G2L["3a"].Position= Dim2(-0.00377, 0, 0, 0);
        
            G2L["3b"] = Instancen("ImageLabel", G2L["3a"]);
            G2L["3b"].BorderSizePixel= 0;
            G2L["3b"].SliceCenter= Rectn(256, 256, 256, 256);
            G2L["3b"].SliceScale= 0.03906;
            G2L["3b"].BackgroundColor3= fromRGB(255, 255, 255);
            G2L["3b"].ScaleType= Enum.ScaleType.Slice;
            G2L["3b"].ImageTransparency= 1;
            G2L["3b"].ImageColor3= fromRGB(83, 83, 92);
            G2L["3b"].Image= "rbxassetid://80999662900595";
            G2L["3b"].Size= Dim2(1, 0, 1, 0);
            G2L["3b"].BackgroundTransparency= 1;
            G2L["3b"].Name= "Squircle";
        
            G2L["3c"] = Instancen("ImageLabel", G2L["3a"]);
            G2L["3c"].BorderSizePixel= 0;
            G2L["3c"].SliceCenter= Rectn(256, 256, 256, 256);
            G2L["3c"].SliceScale= 0.03906;
            G2L["3c"].BackgroundColor3= fromRGB(255, 255, 255);
            G2L["3c"].ScaleType= Enum.ScaleType.Slice;
            G2L["3c"].ImageTransparency= 0.95;
            G2L["3c"].Image= "rbxassetid://80999662900595";
            G2L["3c"].Size= Dim2(1, 0, 1, 0);
            G2L["3c"].BackgroundTransparency= 1;
            G2L["3c"].Name= "Special";
        
            G2L["3d"] = Instancen("ImageLabel", G2L["3a"]);
            G2L["3d"].BorderSizePixel= 0;
            G2L["3d"].SliceCenter= Rectn(512, 512, 512, 512);
            G2L["3d"].SliceScale= 0.01953;
            G2L["3d"].BackgroundColor3= fromRGB(255, 255, 255);
            G2L["3d"].ScaleType= Enum.ScaleType.Slice;
            G2L["3d"].ImageColor3= fromRGB(0, 0, 0);
            G2L["3d"].AnchorPoint= Vec2(0.5, 0.5);
            G2L["3d"].Image= "rbxassetid://84825982946844";
            G2L["3d"].Size= Dim2(1, 3, 1, 3);
            G2L["3d"].BackgroundTransparency= 1;
            G2L["3d"].Name= "Shadow";
            G2L["3d"].Position= Dim2(0.5, 0, 0.5, 0);
        
            G2L["3e"] = Instancen("ImageLabel", G2L["3a"]);
            G2L["3e"].BorderSizePixel= 0;
            G2L["3e"].SliceCenter= Rectn(256, 256, 256, 256);
            G2L["3e"].SliceScale= 0.03906;
            G2L["3e"].BackgroundColor3= fromRGB(255, 255, 255);
            G2L["3e"].ScaleType= Enum.ScaleType.Slice;
            G2L["3e"].ImageTransparency= 0.85;
            G2L["3e"].Image= "rbxassetid://117788349049947";
            G2L["3e"].Size= Dim2(1, 0, 1, 0);
            G2L["3e"].BackgroundTransparency= 1;
        
            G2L["3f"] = Instancen("ImageLabel", G2L["3a"]);
            G2L["3f"].BorderSizePixel= 0;
            G2L["3f"].SliceCenter= Rectn(256, 256, 256, 256);
            G2L["3f"].SliceScale= 0.03906;
            G2L["3f"].BackgroundColor3= fromRGB(255, 255, 255);
            G2L["3f"].ScaleType= Enum.ScaleType.Slice;
            G2L["3f"].ImageTransparency= 1;
            G2L["3f"].Image= "rbxassetid://80999662900595";
            G2L["3f"].Size= Dim2(1, 0, 1, 0);
            G2L["3f"].BackgroundTransparency= 1;
            G2L["3f"].Name= "Frame";
        
            G2L["40"] = Instancen("UIPadding", G2L["3f"]);
            G2L["40"].PaddingRight= Dim(0, 12);
            G2L["40"].PaddingLeft= Dim(0, 12);
        
            G2L["41"] = Instancen("UIListLayout", G2L["3f"]);
            G2L["41"].HorizontalAlignment= Enum.HorizontalAlignment.Center;
            G2L["41"].Padding= Dim(0, 8);
            G2L["41"].VerticalAlignment= Enum.VerticalAlignment.Center;
            G2L["41"].SortOrder= Enum.SortOrder.LayoutOrder;
            G2L["41"].FillDirection= Enum.FillDirection.Horizontal;
        
            G2L["42"] = Instancen("TextLabel", G2L["3f"]);
            G2L["42"].BorderSizePixel= 0;
            G2L["42"].TextSize= 18;
            G2L["42"].BackgroundColor3= fromRGB(255, 255, 255);
            G2L["42"].FontFace= Fnew("rbxassetid://12187365364", Enum.FontWeight.SemiBold, Enum.FontStyle.Normal);
            G2L["42"].TextColor3= fromRGB(255, 255, 255);
            G2L["42"].BackgroundTransparency= 1;
            G2L["42"].RichText= true;
            G2L["42"].Text= "-";
            G2L["42"].AutomaticSize= Enum.AutomaticSize.XY;
        
            G2L["43"] = Instancen("UIScale", G2L["2"]);
        
            G2L["44"] = Instancen("ImageLabel", G2L["2"]);
            G2L["44"].BorderSizePixel= 0;
            G2L["44"].SliceCenter= Rectn(256, 256, 256, 256);
            G2L["44"].SliceScale= 0.08594;
            G2L["44"].BackgroundColor3= fromRGB(255, 255, 255);
            G2L["44"].ScaleType= Enum.ScaleType.Slice;
            G2L["44"].ImageTransparency= 0.9;
            G2L["44"].Image= "rbxassetid://117788349049947";
            G2L["44"].Size= Dim2(1, 0, 1, 0);
            G2L["44"].BackgroundTransparency= 1;
        
            G2L["45"] = Instancen("UIGradient", G2L["44"]);
            G2L["45"].Rotation= 90;
            G2L["45"].Transparency= NSnew{NSKnew(0.000, 0),NSKnew(1.000, 1)};
        
            G2L["26"].Activated:Connect(function()
                G2L["1"]:Destroy();
                G2L["1"] = nil;
                G2L = nil;
            end);
            G2L["11"].Activated:Connect(function()
                G2L["1"]:Destroy();
                G2L["1"] = nil;
                G2L = nil;
                return setc("https://pandadevelopment.net/getkey?service=vulx&hwid="..gethwid());
            end);
        
            return G2L;
        end;
        function modules:new( arg )
            local G2L = {};
            local tbl = {};
            local configu = {
                Auth = arg and arg.Auth or emptyfunction;
                GetKey = arg and arg.GetKey or emptyfunction;
            };
        
            local G2L = {};
        
            G2L["1"] = Instancen("ScreenGui", C);
            G2L["1"].IgnoreGuiInset= true;
            G2L["1"].ScreenInsets= Enum.ScreenInsets.None;
            G2L["1"].Name= "FlowAuth";
            G2L["1"].ZIndexBehavior= Enum.ZIndexBehavior.Sibling;
            G2L["1"].ResetOnSpawn= false;
            
            G2L["2"] = Instancen("ImageLabel", G2L["1"]);
            G2L["2"].ZIndex= 9999;
            G2L["2"].BorderSizePixel= 0;
            G2L["2"].SliceCenter= Rectn(256, 256, 256, 256);
            G2L["2"].SliceScale= 0.08594;
            G2L["2"].BackgroundColor3= fromRGB(255, 255, 255);
            G2L["2"].ScaleType= Enum.ScaleType.Slice;
            G2L["2"].AutomaticSize= Enum.AutomaticSize.XY;
            G2L["2"].ImageColor3= fromRGB(25, 25, 28);
            G2L["2"].AnchorPoint= Vec2(0.5, 0.5);
            G2L["2"].Image= "rbxassetid://80999662900595";
            G2L["2"].BackgroundTransparency= 1;
            G2L["2"].Position= Dim2(0.5, 0, 0.5, 0);
            
            G2L["3"] = Instancen("Frame", G2L["2"]);
            G2L["3"].ZIndex= 99999;
            G2L["3"].BorderSizePixel= 0;
            G2L["3"].BackgroundColor3= fromRGB(25, 25, 28);
            G2L["3"].AutomaticSize= Enum.AutomaticSize.Y;
            G2L["3"].Size= Dim2(0, 430, 0, 0);
            G2L["3"].BackgroundTransparency= 1;
            
            G2L["4"] = Instancen("UIPadding", G2L["3"]);
            
            G2L["5"] = Instancen("Frame", G2L["3"]);
            G2L["5"].BorderSizePixel= 0;
            G2L["5"].BackgroundColor3= fromRGB(255, 255, 255);
            G2L["5"].Size= Dim2(1, 0, 1, 0);
            G2L["5"].BackgroundTransparency= 1;
            
            G2L["6"] = Instancen("Frame", G2L["5"]);
            G2L["6"].BorderSizePixel= 0;
            G2L["6"].BackgroundColor3= fromRGB(255, 255, 255);
            G2L["6"].Size= Dim2(1, 0, 1, 0);
            G2L["6"].BackgroundTransparency= 1;
            
            G2L["7"] = Instancen("UIListLayout", G2L["6"]);
            G2L["7"].Padding= Dim(0, 18);
            G2L["7"].SortOrder= Enum.SortOrder.LayoutOrder;
            
            G2L["8"] = Instancen("Frame", G2L["6"]);
            G2L["8"].BorderSizePixel= 0;
            G2L["8"].BackgroundColor3= fromRGB(255, 255, 255);
            G2L["8"].AutomaticSize= Enum.AutomaticSize.Y;
            G2L["8"].Size= Dim2(1, 0, 0, 0);
            G2L["8"].BackgroundTransparency= 1;
        
            
            G2L["9"] = Instancen("Frame", G2L["8"]);
            G2L["9"].BorderSizePixel= 0;
            G2L["9"].BackgroundColor3= fromRGB(255, 255, 255);
            G2L["9"].AutomaticSize= Enum.AutomaticSize.XY;
            G2L["9"].BackgroundTransparency= 1;
            
            G2L.a= Instancen("UIListLayout", G2L["9"]);
            G2L.a.Padding= Dim(0, 14);
            G2L.a.VerticalAlignment= Enum.VerticalAlignment.Center;
            G2L.a.SortOrder= Enum.SortOrder.LayoutOrder;
            G2L.a.FillDirection= Enum.FillDirection.Horizontal;
            
            G2L.b= Instancen("Frame", G2L["9"]);
            G2L.b.BorderSizePixel= 0;
            G2L.b.BackgroundColor3= fromRGB(255, 255, 255);
            G2L.b.Size= Dim2(0, 24, 0, 24);
            G2L.b.LayoutOrder= -1;
            G2L.b.BackgroundTransparency= 1;
            
            G2L.c= Instancen("ImageLabel", G2L.b);
            G2L.c.BorderSizePixel= 0;
            G2L.c.BackgroundColor3= fromRGB(255, 255, 255);
            G2L.c.ScaleType= Enum.ScaleType.Crop;
            G2L.c.Image= "rbxassetid://77771201330939";
            G2L.c.ImageRectSize= Vec2(96, 96);
            G2L.c.Size= Dim2(1, 0, 1, 0);
            G2L.c.BackgroundTransparency= 1;
            G2L.c.ImageRectOffset= Vec2(0, 768);
            
            G2L.d= Instancen("UICorner", G2L.c);
            G2L.d.CornerRadius= Dim(0, 18);
            
            G2L.e= Instancen("TextLabel", G2L["9"]);
            G2L.e.BorderSizePixel= 0;
            G2L.e.TextSize= 20;
            G2L.e.BackgroundColor3= fromRGB(255, 255, 255);
            G2L.e.FontFace= Fnew("rbxassetid://12187365364", Enum.FontWeight.SemiBold, Enum.FontStyle.Normal);
            G2L.e.TextColor3= fromRGB(255, 255, 255);
            G2L.e.BackgroundTransparency= 1;
            G2L.e.RichText= true;
            G2L.e.Text= "Authentication";
            G2L.e.AutomaticSize= Enum.AutomaticSize.XY;
            
            G2L.f= Instancen("TextLabel", G2L["6"]);
            G2L.f.TextWrapped= true;
            G2L.f.BorderSizePixel= 0;
            G2L.f.TextSize= 18;
            G2L.f.TextXAlignment= Enum.TextXAlignment.Left;
            G2L.f.TextTransparency= 0.2;
            G2L.f.BackgroundColor3= fromRGB(255, 255, 255);
            G2L.f.FontFace= Fnew("rbxassetid://12187365364", Enum.FontWeight.Medium, Enum.FontStyle.Normal);
            G2L.f.TextColor3= fromRGB(255, 255, 255);
            G2L.f.BackgroundTransparency= 1;
            G2L.f.RichText= true;
            G2L.f.Size= Dim2(1, 0, 0, 0);
            G2L.f.Text= 'We are very <font color="rgb(0, 255, 135)">s</font><font color="rgb(19, 251, 159)">o</font><font color="rgb(38, 248, 183)">r</font><font color="rgb(57, 245, 207)">r</font><font color="rgb(76, 242, 231)">y</font>, to have this auth or key system but this means a lot to us, this is where you support our project. Linkvertise has "no" 1H waiting time.';
            G2L.f.AutomaticSize= Enum.AutomaticSize.Y;
            
            G2L["10"] = Instancen("Frame", G2L["6"]);
            G2L["10"].BorderSizePixel= 0;
            G2L["10"].BackgroundColor3= fromRGB(255, 255, 255);
            G2L["10"].Size= Dim2(1, 0, 0, 42);
            G2L["10"].BackgroundTransparency= 1;

            G2L["11"] = Instancen("UIListLayout", G2L["10"]);
            G2L["11"].HorizontalAlignment= Enum.HorizontalAlignment.Right;
            G2L["11"].Padding= Dim(0, 9);
            G2L["11"].SortOrder= Enum.SortOrder.LayoutOrder;
            G2L["11"].FillDirection= Enum.FillDirection.Horizontal;

            G2L["12"] = Instancen("TextButton", G2L["10"]);
            G2L["12"].BorderSizePixel= 0;
            G2L["12"].TextColor3= fromRGB(255, 255, 255);
            G2L["12"].AutoButtonColor= false;
            G2L["12"].TextSize= 14;
            G2L["12"].BackgroundColor3= fromRGB(255, 255, 255);
            G2L["12"].AutomaticSize= Enum.AutomaticSize.X;
            G2L["12"].Size= Dim2(0, 0, 1, 0);
            G2L["12"].BackgroundTransparency= 1;
            G2L["12"].LayoutOrder= 2;
            G2L["12"].Text= "";

            G2L["13"] = Instancen("ImageLabel", G2L["12"]);
            G2L["13"].BorderSizePixel= 0;
            G2L["13"].SliceCenter= Rectn(256, 256, 256, 256);
            G2L["13"].SliceScale= 0.03906;
            G2L["13"].BackgroundColor3= fromRGB(255, 255, 255);
            G2L["13"].ScaleType= Enum.ScaleType.Slice;
            G2L["13"].ImageTransparency= 1;
            G2L["13"].ImageColor3= fromRGB(83, 83, 92);
            G2L["13"].Image= "rbxassetid://80999662900595";
            G2L["13"].Size= Dim2(1, 0, 1, 0);
            G2L["13"].BackgroundTransparency= 1;
            G2L["13"].Name= "Squircle";

            G2L["14"] = Instancen("ImageLabel", G2L["12"]);
            G2L["14"].BorderSizePixel= 0;
            G2L["14"].SliceCenter= Rectn(256, 256, 256, 256);
            G2L["14"].SliceScale= 0.03906;
            G2L["14"].BackgroundColor3= fromRGB(255, 255, 255);
            G2L["14"].ScaleType= Enum.ScaleType.Slice;
            G2L["14"].ImageTransparency= 0.95;
            G2L["14"].Image= "rbxassetid://80999662900595";
            G2L["14"].Size= Dim2(1, 0, 1, 0);
            G2L["14"].BackgroundTransparency= 1;
            G2L["14"].Name= "Special";

            G2L["15"] = Instancen("ImageLabel", G2L["12"]);
            G2L["15"].BorderSizePixel= 0;
            G2L["15"].SliceCenter= Rectn(512, 512, 512, 512);
            G2L["15"].SliceScale= 0.01953;
            G2L["15"].BackgroundColor3= fromRGB(255, 255, 255);
            G2L["15"].ScaleType= Enum.ScaleType.Slice;
            G2L["15"].ImageColor3= fromRGB(0, 0, 0);
            G2L["15"].AnchorPoint= Vec2(0.5, 0.5);
            G2L["15"].Image= "rbxassetid://84825982946844";
            G2L["15"].Size= Dim2(1, 3, 1, 3);
            G2L["15"].BackgroundTransparency= 1;
            G2L["15"].Name= "Shadow";
            G2L["15"].Position= Dim2(0.5, 0, 0.5, 0);

            G2L["16"] = Instancen("ImageLabel", G2L["12"]);
            G2L["16"].BorderSizePixel= 0;
            G2L["16"].SliceCenter= Rectn(256, 256, 256, 256);
            G2L["16"].SliceScale= 0.03906;
            G2L["16"].BackgroundColor3= fromRGB(255, 255, 255);
            G2L["16"].ScaleType= Enum.ScaleType.Slice;
            G2L["16"].ImageTransparency= 0.85;
            G2L["16"].Image= "rbxassetid://117788349049947";
            G2L["16"].Size= Dim2(1, 0, 1, 0);
            G2L["16"].BackgroundTransparency= 1;

            G2L["17"] = Instancen("ImageLabel", G2L["12"]);
            G2L["17"].BorderSizePixel= 0;
            G2L["17"].SliceCenter= Rectn(256, 256, 256, 256);
            G2L["17"].SliceScale= 0.03906;
            G2L["17"].BackgroundColor3= fromRGB(255, 255, 255);
            G2L["17"].ScaleType= Enum.ScaleType.Slice;
            G2L["17"].ImageTransparency= 1;
            G2L["17"].Image= "rbxassetid://80999662900595";
            G2L["17"].Size= Dim2(1, 0, 1, 0);
            G2L["17"].BackgroundTransparency= 1;
            G2L["17"].Name= "Frame";

            G2L["18"] = Instancen("UIPadding", G2L["17"]);
            G2L["18"].PaddingRight= Dim(0, 12);
            G2L["18"].PaddingLeft= Dim(0, 12);

            G2L["19"] = Instancen("UIListLayout", G2L["17"]);
            G2L["19"].HorizontalAlignment= Enum.HorizontalAlignment.Center;
            G2L["19"].Padding= Dim(0, 8);
            G2L["19"].VerticalAlignment= Enum.VerticalAlignment.Center;
            G2L["19"].SortOrder= Enum.SortOrder.LayoutOrder;
            G2L["19"].FillDirection= Enum.FillDirection.Horizontal;

            G2L["1a"] = Instancen("TextLabel", G2L["17"]);
            G2L["1a"].BorderSizePixel= 0;
            G2L["1a"].TextSize= 18;
            G2L["1a"].BackgroundColor3= fromRGB(255, 255, 255);
            G2L["1a"].FontFace= Fnew("rbxassetid://12187365364", Enum.FontWeight.SemiBold, Enum.FontStyle.Normal);
            G2L["1a"].TextColor3= fromRGB(255, 255, 255);
            G2L["1a"].BackgroundTransparency= 1;
            G2L["1a"].RichText= true;
            G2L["1a"].Text= "Cancel";
            G2L["1a"].AutomaticSize= Enum.AutomaticSize.XY;

            G2L["1b"] = Instancen("TextButton", G2L["10"]);
            G2L["1b"].BorderSizePixel= 0;
            G2L["1b"].TextColor3= fromRGB(255, 255, 255);
            G2L["1b"].AutoButtonColor= false;
            G2L["1b"].TextSize= 14;
            G2L["1b"].BackgroundColor3= fromRGB(255, 255, 255);
            G2L["1b"].AutomaticSize= Enum.AutomaticSize.X;
            G2L["1b"].Size= Dim2(0, 0, 1, 0);
            G2L["1b"].BackgroundTransparency= 1;
            G2L["1b"].LayoutOrder= 3;
            G2L["1b"].Text= "";

            G2L["1c"] = Instancen("ImageLabel", G2L["1b"]);
            G2L["1c"].BorderSizePixel= 0;
            G2L["1c"].SliceCenter= Rectn(256, 256, 256, 256);
            G2L["1c"].SliceScale= 0.03906;
            G2L["1c"].BackgroundColor3= fromRGB(255, 255, 255);
            G2L["1c"].ScaleType= Enum.ScaleType.Slice;
            G2L["1c"].ImageColor3= fromRGB(83, 83, 92);
            G2L["1c"].Image= "rbxassetid://80999662900595";
            G2L["1c"].Size= Dim2(1, 0, 1, 0);
            G2L["1c"].BackgroundTransparency= 1;
            G2L["1c"].Name= "Squircle";

            G2L["1d"] = Instancen("ImageLabel", G2L["1b"]);
            G2L["1d"].BorderSizePixel= 0;
            G2L["1d"].SliceCenter= Rectn(256, 256, 256, 256);
            G2L["1d"].SliceScale= 0.03906;
            G2L["1d"].BackgroundColor3= fromRGB(255, 255, 255);
            G2L["1d"].ScaleType= Enum.ScaleType.Slice;
            G2L["1d"].ImageTransparency= 1;
            G2L["1d"].Image= "rbxassetid://80999662900595";
            G2L["1d"].Size= Dim2(1, 0, 1, 0);
            G2L["1d"].BackgroundTransparency= 1;
            G2L["1d"].Name= "Special";

            G2L["1e"] = Instancen("ImageLabel", G2L["1b"]);
            G2L["1e"].BorderSizePixel= 0;
            G2L["1e"].SliceCenter= Rectn(512, 512, 512, 512);
            G2L["1e"].SliceScale= 0.01953;
            G2L["1e"].BackgroundColor3= fromRGB(255, 255, 255);
            G2L["1e"].ScaleType= Enum.ScaleType.Slice;
            G2L["1e"].ImageTransparency= 1;
            G2L["1e"].ImageColor3= fromRGB(0, 0, 0);
            G2L["1e"].AnchorPoint= Vec2(0.5, 0.5);
            G2L["1e"].Image= "rbxassetid://84825982946844";
            G2L["1e"].Size= Dim2(1, 3, 1, 3);
            G2L["1e"].BackgroundTransparency= 1;
            G2L["1e"].Name= "Shadow";
            G2L["1e"].Position= Dim2(0.5, 0, 0.5, 0);

            G2L["1f"] = Instancen("ImageLabel", G2L["1b"]);
            G2L["1f"].BorderSizePixel= 0;
            G2L["1f"].SliceCenter= Rectn(256, 256, 256, 256);
            G2L["1f"].SliceScale= 0.03906;
            G2L["1f"].BackgroundColor3= fromRGB(255, 255, 255);
            G2L["1f"].ScaleType= Enum.ScaleType.Slice;
            G2L["1f"].ImageTransparency= 0.95;
            G2L["1f"].Image= "rbxassetid://117788349049947";
            G2L["1f"].Size= Dim2(1, 0, 1, 0);
            G2L["1f"].BackgroundTransparency= 1;

            G2L["20"] = Instancen("ImageLabel", G2L["1b"]);
            G2L["20"].BorderSizePixel= 0;
            G2L["20"].SliceCenter= Rectn(256, 256, 256, 256);
            G2L["20"].SliceScale= 0.03906;
            G2L["20"].BackgroundColor3= fromRGB(255, 255, 255);
            G2L["20"].ScaleType= Enum.ScaleType.Slice;
            G2L["20"].ImageTransparency= 1;
            G2L["20"].Image= "rbxassetid://80999662900595";
            G2L["20"].Size= Dim2(1, 0, 1, 0);
            G2L["20"].BackgroundTransparency= 1;
            G2L["20"].Name= "Frame";

            G2L["21"] = Instancen("UIPadding", G2L["20"]);
            G2L["21"].PaddingRight= Dim(0, 12);
            G2L["21"].PaddingLeft= Dim(0, 12);

            G2L["22"] = Instancen("UIListLayout", G2L["20"]);
            G2L["22"].HorizontalAlignment= Enum.HorizontalAlignment.Center;
            G2L["22"].Padding= Dim(0, 8);
            G2L["22"].VerticalAlignment= Enum.VerticalAlignment.Center;
            G2L["22"].SortOrder= Enum.SortOrder.LayoutOrder;
            G2L["22"].FillDirection= Enum.FillDirection.Horizontal;

            G2L["23"] = Instancen("ImageLabel", G2L["20"]);
            G2L["23"].BorderSizePixel= 0;
            G2L["23"].BackgroundColor3= fromRGB(255, 255, 255);
            G2L["23"].ImageColor3= fromRGB(162, 162, 171);
            G2L["23"].Image= "rbxassetid://131526378523863";
            G2L["23"].ImageRectSize= Vec2(96, 96);
            G2L["23"].Size= Dim2(0, 21, 0, 21);
            G2L["23"].BackgroundTransparency= 1;
            G2L["23"].ImageRectOffset= Vec2(480, 768);

            G2L["24"] = Instancen("TextLabel", G2L["20"]);
            G2L["24"].BorderSizePixel= 0;
            G2L["24"].TextSize= 18;
            G2L["24"].BackgroundColor3= fromRGB(255, 255, 255);
            G2L["24"].FontFace= Fnew("rbxassetid://12187365364", Enum.FontWeight.SemiBold, Enum.FontStyle.Normal);
            G2L["24"].TextColor3= fromRGB(255, 255, 255);
            G2L["24"].BackgroundTransparency= 1;
            G2L["24"].RichText= true;
            G2L["24"].Text= "Continue";
            G2L["24"].AutomaticSize= Enum.AutomaticSize.XY;

            G2L["25"] = Instancen("TextBox", G2L["10"]);
            G2L["25"].BorderSizePixel= 0;
            G2L["25"].TextSize= 14;
            G2L["25"].TextColor3= fromRGB(255, 255, 255);
            G2L["25"].BackgroundColor3= fromRGB(255, 255, 255);
            G2L["25"].FontFace= Fnew("rbxassetid://12187365364", Enum.FontWeight.SemiBold, Enum.FontStyle.Normal);
            G2L["25"].ClipsDescendants= true;
            G2L["25"].PlaceholderText= "Enter Key...";
            G2L["25"].Size= Dim2(0.17, 0, 1, 0);
            G2L["25"].BorderColor3= fromRGB(0, 0, 0);
            G2L["25"].Text= "";
            G2L["25"].BackgroundTransparency= 1;

            G2L["26"] = Instancen("ImageLabel", G2L["25"]);
            G2L["26"].BorderSizePixel= 0;
            G2L["26"].SliceCenter= Rectn(256, 256, 256, 256);
            G2L["26"].SliceScale= 0.03906;
            G2L["26"].BackgroundColor3= fromRGB(255, 255, 255);
            G2L["26"].ScaleType= Enum.ScaleType.Slice;
            G2L["26"].ImageTransparency= 1;
            G2L["26"].Image= "rbxassetid://80999662900595";
            G2L["26"].Size= Dim2(1, 0, 1, 0);
            G2L["26"].BackgroundTransparency= 1;
            G2L["26"].Name= "Frame";

            G2L["27"] = Instancen("ImageLabel", G2L["25"]);
            G2L["27"].BorderSizePixel= 0;
            G2L["27"].SliceCenter= Rectn(256, 256, 256, 256);
            G2L["27"].SliceScale= 0.03906;
            G2L["27"].BackgroundColor3= fromRGB(255, 255, 255);
            G2L["27"].ScaleType= Enum.ScaleType.Slice;
            G2L["27"].ImageTransparency= 0.85;
            G2L["27"].Image= "rbxassetid://117788349049947";
            G2L["27"].Size= Dim2(1, 0, 1, 0);
            G2L["27"].BackgroundTransparency= 1;

            G2L["28"] = Instancen("ImageLabel", G2L["25"]);
            G2L["28"].BorderSizePixel= 0;
            G2L["28"].SliceCenter= Rectn(512, 512, 512, 512);
            G2L["28"].SliceScale= 0.01953;
            G2L["28"].BackgroundColor3= fromRGB(255, 255, 255);
            G2L["28"].ScaleType= Enum.ScaleType.Slice;
            G2L["28"].ImageColor3= fromRGB(0, 0, 0);
            G2L["28"].AnchorPoint= Vec2(0.5, 0.5);
            G2L["28"].Image= "rbxassetid://84825982946844";
            G2L["28"].Size= Dim2(1, 3, 1, 3);
            G2L["28"].BackgroundTransparency= 1;
            G2L["28"].Name= "Shadow";
            G2L["28"].Position= Dim2(0.5, 0, 0.5, 0);

            G2L["29"] = Instancen("ImageLabel", G2L["25"]);
            G2L["29"].BorderSizePixel= 0;
            G2L["29"].SliceCenter= Rectn(256, 256, 256, 256);
            G2L["29"].SliceScale= 0.03906;
            G2L["29"].BackgroundColor3= fromRGB(255, 255, 255);
            G2L["29"].ScaleType= Enum.ScaleType.Slice;
            G2L["29"].ImageTransparency= 0.95;
            G2L["29"].Image= "rbxassetid://80999662900595";
            G2L["29"].Size= Dim2(1, 0, 1, 0);
            G2L["29"].BackgroundTransparency= 1;
            G2L["29"].Name= "Special";

            G2L["2a"] = Instancen("ImageLabel", G2L["25"]);
            G2L["2a"].BorderSizePixel= 0;
            G2L["2a"].SliceCenter= Rectn(256, 256, 256, 256);
            G2L["2a"].SliceScale= 0.03906;
            G2L["2a"].BackgroundColor3= fromRGB(255, 255, 255);
            G2L["2a"].ScaleType= Enum.ScaleType.Slice;
            G2L["2a"].ImageTransparency= 1;
            G2L["2a"].ImageColor3= fromRGB(83, 83, 92);
            G2L["2a"].Image= "rbxassetid://80999662900595";
            G2L["2a"].Size= Dim2(1, 0, 1, 0);
            G2L["2a"].BackgroundTransparency= 1;
            G2L["2a"].Name= "Squircle";

            G2L["2b"] = Instancen("TextButton", G2L["10"]);
            G2L["2b"].BorderSizePixel= 0;
            G2L["2b"].TextColor3= fromRGB(255, 255, 255);
            G2L["2b"].AutoButtonColor= false;
            G2L["2b"].TextSize= 14;
            G2L["2b"].BackgroundColor3= fromRGB(255, 255, 255);
            G2L["2b"].AutomaticSize= Enum.AutomaticSize.X;
            G2L["2b"].Size= Dim2(0, 0, 1, 0);
            G2L["2b"].BackgroundTransparency= 1;
            G2L["2b"].LayoutOrder= 1;
            G2L["2b"].Text= "";

            G2L["2c"] = Instancen("ImageLabel", G2L["2b"]);
            G2L["2c"].BorderSizePixel= 0;
            G2L["2c"].SliceCenter= Rectn(256, 256, 256, 256);
            G2L["2c"].SliceScale= 0.03906;
            G2L["2c"].BackgroundColor3= fromRGB(255, 255, 255);
            G2L["2c"].ScaleType= Enum.ScaleType.Slice;
            G2L["2c"].ImageTransparency= 1;
            G2L["2c"].ImageColor3= fromRGB(83, 83, 92);
            G2L["2c"].Image= "rbxassetid://80999662900595";
            G2L["2c"].Size= Dim2(1, 0, 1, 0);
            G2L["2c"].BackgroundTransparency= 1;
            G2L["2c"].Name= "Squircle";

            G2L["2d"] = Instancen("ImageLabel", G2L["2b"]);
            G2L["2d"].BorderSizePixel= 0;
            G2L["2d"].SliceCenter= Rectn(256, 256, 256, 256);
            G2L["2d"].SliceScale= 0.03906;
            G2L["2d"].BackgroundColor3= fromRGB(255, 255, 255);
            G2L["2d"].ScaleType= Enum.ScaleType.Slice;
            G2L["2d"].ImageTransparency= 0.95;
            G2L["2d"].Image= "rbxassetid://80999662900595";
            G2L["2d"].Size= Dim2(1, 0, 1, 0);
            G2L["2d"].BackgroundTransparency= 1;
            G2L["2d"].Name= "Special";

            G2L["2e"] = Instancen("ImageLabel", G2L["2b"]);
            G2L["2e"].BorderSizePixel= 0;
            G2L["2e"].SliceCenter= Rectn(512, 512, 512, 512);
            G2L["2e"].SliceScale= 0.01953;
            G2L["2e"].BackgroundColor3= fromRGB(255, 255, 255);
            G2L["2e"].ScaleType= Enum.ScaleType.Slice;
            G2L["2e"].ImageColor3= fromRGB(0, 0, 0);
            G2L["2e"].AnchorPoint= Vec2(0.5, 0.5);
            G2L["2e"].Image= "rbxassetid://84825982946844";
            G2L["2e"].Size= Dim2(1, 3, 1, 3);
            G2L["2e"].BackgroundTransparency= 1;
            G2L["2e"].Name= "Shadow";
            G2L["2e"].Position= Dim2(0.5, 0, 0.5, 0);

            G2L["2f"] = Instancen("ImageLabel", G2L["2b"]);
            G2L["2f"].BorderSizePixel= 0;
            G2L["2f"].SliceCenter= Rectn(256, 256, 256, 256);
            G2L["2f"].SliceScale= 0.03906;
            G2L["2f"].BackgroundColor3= fromRGB(255, 255, 255);
            G2L["2f"].ScaleType= Enum.ScaleType.Slice;
            G2L["2f"].ImageTransparency= 0.85;
            G2L["2f"].Image= "rbxassetid://117788349049947";
            G2L["2f"].Size= Dim2(1, 0, 1, 0);
            G2L["2f"].BackgroundTransparency= 1;

            G2L["30"] = Instancen("ImageLabel", G2L["2b"]);
            G2L["30"].BorderSizePixel= 0;
            G2L["30"].SliceCenter= Rectn(256, 256, 256, 256);
            G2L["30"].SliceScale= 0.03906;
            G2L["30"].BackgroundColor3= fromRGB(255, 255, 255);
            G2L["30"].ScaleType= Enum.ScaleType.Slice;
            G2L["30"].ImageTransparency= 1;
            G2L["30"].Image= "rbxassetid://80999662900595";
            G2L["30"].Size= Dim2(1, 0, 1, 0);
            G2L["30"].BackgroundTransparency= 1;
            G2L["30"].Name= "Frame";

            G2L["31"] = Instancen("UIPadding", G2L["30"]);
            G2L["31"].PaddingRight= Dim(0, 12);
            G2L["31"].PaddingLeft= Dim(0, 12);

            G2L["32"] = Instancen("UIListLayout", G2L["30"]);
            G2L["32"].HorizontalAlignment= Enum.HorizontalAlignment.Center;
            G2L["32"].Padding= Dim(0, 8);
            G2L["32"].VerticalAlignment= Enum.VerticalAlignment.Center;
            G2L["32"].SortOrder= Enum.SortOrder.LayoutOrder;
            G2L["32"].FillDirection= Enum.FillDirection.Horizontal;

            G2L["33"] = Instancen("TextLabel", G2L["30"]);
            G2L["33"].BorderSizePixel= 0;
            G2L["33"].TextSize= 18;
            G2L["33"].BackgroundColor3= fromRGB(255, 255, 255);
            G2L["33"].FontFace= Fnew("rbxassetid://12187365364", Enum.FontWeight.SemiBold, Enum.FontStyle.Normal);
            G2L["33"].TextColor3= fromRGB(255, 255, 255);
            G2L["33"].BackgroundTransparency= 1;
            G2L["33"].RichText= true;
            G2L["33"].Text= "Copy Link";
            G2L["33"].AutomaticSize= Enum.AutomaticSize.XY;

            G2L["34"] = Instancen("UIPadding", G2L["6"]);
            G2L["34"].PaddingTop= Dim(0, 16);
            G2L["34"].PaddingRight= Dim(0, 16);
            G2L["34"].PaddingLeft= Dim(0, 16);
            G2L["34"].PaddingBottom= Dim(0, 16);

            G2L["35"] = Instancen("UIScale", G2L["2"]);

            G2L["36"] = Instancen("ImageLabel", G2L["2"]);
            G2L["36"].BorderSizePixel= 0;
            G2L["36"].SliceCenter= Rectn(256, 256, 256, 256);
            G2L["36"].SliceScale= 0.08594;
            G2L["36"].BackgroundColor3= fromRGB(255, 255, 255);
            G2L["36"].ScaleType= Enum.ScaleType.Slice;
            G2L["36"].ImageTransparency= 0.9;
            G2L["36"].Image= "rbxassetid://117788349049947";
            G2L["36"].Size= Dim2(1, 0, 1, 0);
            G2L["36"].BackgroundTransparency= 1;
            
            G2L["37"] = Instancen("UIGradient", G2L["36"]);
            G2L["37"].Rotation= 90;
            G2L["37"].Transparency= NSnew{NSKnew(0.000, 0),NSKnew(1.000, 1)};
        
            G2L["1b"].MouseButton1Click:Connect(function()
                return configu.Auth(G2L["25"].Text);
            end);
            G2L["2b"].MouseButton1Click:Connect(configu.GetKey);
            G2L["12"].MouseButton1Click:Connect(function(...)
                Destroy(G2L["1"]); G2L = nil;
            end);
    
            function modules:fadeAndTween(G2L, e)
                local tweenInfo = TwInfo(0.5, Enum.EasingStyle.Quad, Enum.EasingDirection.Out)
                for key, instance in pir(G2L) do
                    tspawn(function()
                        if IsA(instance, "TextLabel") and instance.Text ~= "Authentication" then
                            local tween = TwCreate(TweenService, instance, tweenInfo, {TextTransparency = 1});
                            instance.AutomaticSize = Enum.AutomaticSize.None; tween:Play();
                            tween.Completed:Once(function() instance.Visible = false; end);
                        elseif IsA(instance, "Frame") then
                            local size = instance.Size;
                            local tween = TwCreate(TweenService, instance, tweenInfo, {Size = UDim2.new(size.X.Scale, size.X.Offset, 0, 0)})
                            instance.AutomaticSize = Enum.AutomaticSize.None; tween:Play()
                            tween.Completed:Once(function() Destroy(instance); end);
                        end;
                    end);
                end;
                local function tweenText()
                    local textLabel = e;
                    local tweenInfoFadeOut = TwInfo(0.2, Enum.EasingStyle.Quad, Enum.EasingDirection.Out);
                    local tweenInfoFadeIn = TwInfo(0.2, Enum.EasingStyle.Quad, Enum.EasingDirection.In);
    
                    for _, msg in ipir({
                        {Text = "Vulnerability X", Duration = 0.5},
                        {Text = "Script verified by VULX AI", Duration = 0.5},
                        {Text = "Script verfied by TTJY's Bot", Duration = 0.5},
                        {Text = "Script made by TTJY", Duration = 0.5},
                        {Text = "Script made by Sevensenz7", Duration = 0.5},
                        {Text = "Script made by x.nep", Duration = 0.5},
                        {Text = "Thank you!", Duration = 0.5}
                    }) do
                        local tweenOut = TwCreate(TweenService, textLabel, tweenInfoFadeOut, {TextTransparency = 1});
                        tweenOut:Play(); tweenOut.Completed:Wait(); textLabel.Text = msg.Text;
                        local tweenIn = TwCreate(TweenService, textLabel, tweenInfoFadeIn, {TextTransparency = 0});
                        tweenIn:Play(); twait(msg.Duration + 0.4);
                    end;
                end;
                tweenText();
            end;
            return G2L, tbl;
        end;    
        return modules;
    end;
end;
AssetStorage.P30Dol = function(): nil
    if Prv_url then return; end; GG.Prv_url = "https://v0-admin-dashboard-delta-topaz.vercel.app";
end;
AssetStorage.AI = function(): nil
    if AI_Url then return; end;
    GG.AI_Url = "https://generativelanguage.googleapis.com/v1beta/models/gemini-2.0-flash:generateContent?key=";
    GG.BaseInfo = HttpGet(game, "https://raw.githubusercontent.com/Yumiara/SSL-VulnX/refs/heads/main/APIs/A.txt");
    GG.AI_Body = {
        contents = {{
            parts = {{ text = "Hi"; };};
        };};
    };
    GG.AI_Request = function(Hasahc : base1Vulx) : string
        if not Hasahc or Hasahc == "" then return ""; end;
        local ok, resp = pcal(function()
            return Request({
                Url = AI_Url .. Hasahc; Method = "POST";
                Headers = { ["Content-Type"] = "application/json"; };
                Body = EnCodeJ(HttpService, AI_Body);
            });
        end);
        if ok and resp and resp.Success and resp.Body then
            local dec = DeCodeJ(HttpService, resp.Body)
            if dec and dec.candidates and dec.candidates[1] and dec.candidates[1].content and dec.candidates[1].content.parts and dec.candidates[1].content.parts[1] then
                return dec.candidates[1].content.parts[1].text or "Empty response.";
            end; return "Malformed response.";
        end; return "Failed to connect to server.";
    end;
end;
AssetStorage.Error405 = function(): nil
    if Error405 then return; end;
    local lastSent = 0;
    GG.Error405 = {};

    function Error405:safeToString(v) local ok, s = pcal(function() return tos(v); end); return ok and s or ""; end;
    function Error405:truncate(s, n) return (#s <= n) and s or (strsub(s, 1, n - 3) .. "..."); end;
    function Error405:flattenTable(tbl)
        local out = {};
        local function recurse(t, prefix)
            prefix = prefix and (prefix ~= "" and prefix .. "." or "") or "";
            for k, v in pir(t) do
                local key = Error405:safeToString(k);
                if type(v) == "table" then
                    recurse(v, prefix .. key);
                else
                    out[#out + 1] = prefix .. key .. " : " .. Error405:safeToString(v);
                end;
            end;
        end;
        recurse(tbl or {}, "");
        return out;
    end;

    function Error405:configsToEmbeds(configTbl)
        local lines = Error405:flattenTable(configTbl or Configs or {});
        local embeds, currentLines, currentLen = {}, {}, 0;
        for i = 1, #lines do
            local line = lines[i] .. "\n"
            if currentLen + #line > 4000 and #currentLines > 0 then
                embeds[#embeds + 1] = {
                    title = "Configs",
                    description = Error405:truncate(tconcat(currentLines), 4096),
                    color = 4325120
                };
                currentLines, currentLen = {}, 0;
            end;
            currentLines[#currentLines + 1] = line;
            currentLen = currentLen + #line;
        end;
        if #currentLines > 0 then
            embeds[#embeds + 1] = {
                title = "Configs",
                description = Error405:truncate(tconcat(currentLines), 4096),
                color = 4325120;
            };
        end;
        if #embeds > 9 then
            local keep = 8;
            local merged = {};
            for i = keep + 1, #embeds do
                merged[#merged + 1] = embeds[i].description;
            end;
            local newEmbeds = {};
            for i = 1, keep do newEmbeds[#newEmbeds + 1] = embeds[i] end
            newEmbeds[#newEmbeds + 1] = {
                title = "Configs (continued)",
                description = Error405:truncate(tconcat(merged, "\n"), 4096),
                color = 4325120;
            };
            embeds = newEmbeds;
        end;
        return embeds;
    end;
    function Error405:sanitizeEmbed(e)
        return { title = Error405:truncate(Error405:safeToString(e.title), 256), description = Error405:truncate(Error405:safeToString(e.description), 4096), color = mfloor(ton(e.color) or 0) };
    end;
    function Error405:sendRequest(bodyStr)
        if not ErrorURL then return; end;
        return pcal(function()
            return Request({
                Url = ErrorURL, Method = "POST",
                Headers = { ["Content-Type"] = "application/json" },
                Body = bodyStr
            });
        end);
    end;
    function Error405:sendWebhook(errorMsg, stackTrace, scriptObj)
        local now = otime();
        if now - lastSent < 1 then return false; end;
        lastSent = now; local scriptName = "UnknownScript"
        if scriptObj then
            pcal(function() scriptName = scriptObj.GetFullName and GetFullName(scriptObj) or tos(scriptObj); end);
        end;
        local content = Error405:truncate(("**Error Detected**\n```time : %s\nuser : %s\n```"):format(Functions:ReadDate(), "Anonymous"), 2000);
        local embeds = Error405:configsToEmbeds(Configs);
        embeds[#embeds + 1] = Error405:sanitizeEmbed({
            title = "Error",
            description = ("Script: %s\n\nMessage:\n%s\n\nStacktrace:\n%s"):format(Error405:safeToString(scriptName), Error405:safeToString(errorMsg), Error405:safeToString(stackTrace or "")),
            color = 16711680;
        });
        while #embeds > 10 do table.remove(embeds, 1); end;
        local payload = { content = content, embeds = embeds };
        return Error405:sendRequest(EnCodeJ(HttpService, payload));
    end;
end;
AssetStorage.SensitiveService = function(): nil
    local RawC = {};
    GG.SLow_ForceSelfThisFunction = function( key )
        local Attempt_To_Index_Function = clonefunction(GG[key])
        GG[key] = function(...)
            Attempt_To_Index_Function(...) return Attempt_To_Index_Function;
        end;
        tablein(RawC, GG[key]);
    end;
    GG.SLow_SelfThisFunction = function( key )
        local Attempt_To_Index_Function = clonefunction(GG[key])
        GG[key] = function(...)
            local Return = Attempt_To_Index_Function(...);
            if Return then return Return; end;
            return Attempt_To_Index_Function;
        end;
        tablein(RawC, GG[key]);
    end;
    GG.Lower_ForceSelfThisFunction = function( key )
        local Attempt_To_Hooked = nil;
        if GG[key] then
            Attempt_To_Hooked = LowerC(GG[key], newcclosure(function(...)
                Attempt_To_Hooked(...); return GG[key];
            end));
        end;
        tablein(RawC, GG[key]);
    end;
    GG.Lower_SelfThisFunction = function( key )
        local Attempt_To_Hooked = nil;
        if GG[key] then
            Attempt_To_Hooked = LowerC(GG[key], newcclosure(function(...)
                local Return = Attempt_To_Hooked(...);
                if Return then return Return; end; return GG[key];
            end));
        end;
        tablein(RawC, GG[key]);
    end;
    GG.Restore_SensitiveService = function( offset )
        return tEach(RawC, function(_, v)
            if v == offset then
                pcal(function() ResetC(offset); table.remove(RawC, _); end);
            end;
        end);
    end;
end;
AssetStorage.QueueService = function(): nil
    ScriptCache.OnTeleportCC = nil;
    ScriptCache.f_I_table = {};
    ScriptCache.f_n_table = {};
    GG.Q_UploadFkey = function( key : any , f )
        ScriptCache.f_I_table[key] = f;
    end;
    GG.Q_UploadFNokey = function( key : any , f )
        tablein(ScriptCache.f_n_table, f);
    end;
    GG.Remove_Q_FKey = function( key : any , f )
        ScriptCache.f_I_table[key] = nil;
    end;
    GG.Remove_Q_FNoKey = function( key : any , f )
        for _,v in pir(ScriptCache.f_n_table) do
            table.remove(ScriptCache.f_n_table, _);
        end;
    end;
    GG.Q_Connect = function( States , is_Secure , queue_str )
        if ScriptCache.OnTeleportCC then
            ScriptCache.OnTeleportCC:Disconnect();
            ScriptCache.OnTeleportCC = nil;
        end;
        ScriptCache.OnTeleportCC = selff.OnTeleport:Connect(function(State)
            if GG.ONTCC and tablef(States, State) then -- Enum.TeleportState.Started, RequestedFromServer
                table.foreach(ScriptCache.f_I_table, function(i, v)
                    return is_Secure and pcal(v) or v();
                end);
                table.foreach(ScriptCache.f_n_table, function(i, v)
                    return is_Secure and pcal(v) or v();
                end);
                if queue_str then
                    return queueOT(queue_str);
                end;
            end;
        end);
    end;
    GG.Q_Disonnect = function()
        if ScriptCache.OnTeleportCC then
            ScriptCache.OnTeleportCC:Disconnect();
            ScriptCache.OnTeleportCC = nil;
        end;
    end;
    GG.Q_Connect_Get = function( States , is_Secure, Method , func )
        if ScriptCache.OnTeleportCC2 then
            ScriptCache.OnTeleportCC2:Disconnect();
            ScriptCache.OnTeleportCC2 = nil;
        end;
        ScriptCache.OnTeleportCC2 = selff.OnTeleport:Connect(function(State)
            if GG.ONTCC2 and tablef(States, State) then
                tEach(ScriptCache.f_I_table, function(i, v)
                    return is_Secure and pcal(v) or v();
                end);
                tEach(ScriptCache.f_n_table, function(i, v)
                    return is_Secure and pcal(v) or v();
                end);
                local queue_str = func and func();
                if queue_str then
                    return queueOT(queue_str);
                end;
            end;
        end);
    end;
    GG.Q_Disonnect2 = function()
        if ScriptCache.OnTeleportCC2 then
            ScriptCache.OnTeleportCC2:Disconnect(); ScriptCache.OnTeleportCC2 = nil;
        end;
    end;
end;
AssetStorage.Files = function()
    GG.FileSys = GG.FileSys or {};
    GG.FileSysOrigin = "FlowXS/";

    function FileSys:Continue( a : fileName , b : string): nil
        if appendfile and isfile then
            return (isfile(a) and appendfile(a,b));
        end;
        return warn("[VULNX] : Error : appendfile or isfile is not a valid function.");
    end;
    function FileSys:ListFrom( a : folderName , is_fullname : boolean , filesynx : string )
        if listfiles and isfolder then
            local ok, files = pcal(listfiles, FileSysOrigin .. a);
            if not ok then return {}; end;
            local list = {};
            for _, f in ipir(files) do
                local corrected_name = f;
                if is_fullname then
                    if not strfind(corrected_name, "FlowXS") then
                        corrected_name = FileSysOrigin .. a .. "/" .. corrected_name;
                    end;
                else
                    corrected_name = f:match("([^/\\]+)%.macro$");
                end;
                if filesynx then
                    corrected_name = corrected_name .. filesynx;
                end;
                tablein(list, corrected_name);
            end;
            return list;
        end;
        warn("[VULNX] : Error : listfiles or isfolder is not a valid function.");
        return {}; 
    end;
    function FileSys:WriteFrom( a : folderName , b : fileName , c : string ): nil
        if isfolder and writefile then
            local datas = c;
            if type(datas) == 'table' then
                datas = EnCodeJ(HttpService, datas);
            end;
            if not isfolder(FileSysOrigin .. a) then
                makefolder(FileSysOrigin .. a);
            end;
            return writefile(FileSysOrigin .. a .. "/" .. b, datas);
        end;
        return warn("[VULNX] : Error : isfolder or writefile is not a valid function.");
    end;
    function FileSys:ConvertTo( data : any , format : string ): any
        if format == "Lua" then
            if type(data) == 'string' then
                return "return function() " .. data .. "end";
            end;
            return warn("[VULNX] : ConvertTo : Error : Argument #1 must be string.");
        elseif format == "LuaJA" then
            if type(data) == 'table' then
                local str = "{"
                local first = true
            
                for k, v in pir(data) do
                    if not first then
                        str = str .. ",\n";
                    end;
                    first = false;
            
                    local keyStr = "[\"" .. tos(k) .. "\"]";
                    local valStr = "\"" .. tos(v) .. "\"";
                    str = str .. keyStr .. " = " .. valStr;
                end;
            
                str = str .. "}";
                return "return " .. str;
            end;
            return warn("[VULNX] : ConvertTo : Error : Argument #1 must be string.");
        elseif format == "JSON" then
            if type(data) == 'table' then
                -- Format to string;
            end;
            return warn("[VULNX] : ConvertTo : Error : Argument #1 must be table.");
        elseif format == "Encrypt" then
            return warn("[VULNX] : ConvertTo : Log : You are currently using demo filesystem.");
        end;
    end;
    function FileSys:RepairTbl(tbl: table): table
        if type(tbl) ~= "table" then
            return "nilByTTJY";
        end;
    
        local function safeRead(innerTbl, visited)
            if visited[innerTbl] then
                return "[Circular Reference]";
            end;
            visited[innerTbl] = true;
    
            local newTbl = {};
            for k, v in pairs(innerTbl) do
                local typeofv = typeof(v);
                if typeofv == 'Instance' then
                    local desc = "Object is an Instance";
                    if v.Parent then
                        desc = desc .. " | Path is [ " .. v:GetFullName() .. " ]";
                    else
                        desc = desc .. " | Path is [ nil." .. tostring(v) .. " ]";
                    end;
                    newTbl[k] = desc;
                elseif typeofv == 'table' then
                    newTbl[k] = safeRead(v, visited);
                elseif typeofv == 'CFrame' then
                    newTbl[k] = "Object was CFrame. [ CF(" .. tconcat({v:GetComponents()}, ", ") .. ") ]";
                elseif typeofv == 'Vector2' then
                    newTbl[k] = "Object was Vector2. [ Vec2(" .. tconcat({v.X, v.Y}, ", ") .. ") ]";
                elseif typeofv == 'Vector3' then
                    newTbl[k] = "Object was Vector3. [ Vec3(" .. tconcat({v.X, v.Y, v.Z}, ", ") .. ") ]";
                else
                    newTbl[k] = v;
                end;
            end;
            return newTbl;
        end;
    
        return safeRead(tbl, {});
    end;
end;
AssetStorage.fireproximityprompt = function()
    local originalUNC = fireproximityprompt;
    local unc, Execonce = {Prompts = {}}, FindFirstChild(W, "RegisiteryVarup2") or Instancen('Part');
    Execonce.Anchored = true; Execonce.CanTouch = false;
    Execonce.CanCollide = false; Execonce.CanQuery = false;
    Execonce.CastShadow = false; Execonce.Size = Vec3(0.01,0.01,0.01);
    Execonce.Name = 'RegisiteryVarup2'; Execonce.Transparency = 1;
    Execonce.Parent = W;
    function unc.fireprompt(ProximityPrompt, ...)
        if not unc[ProximityPrompt] then
            local Information = {};
            Information.HoldDuration = ProximityPrompt.HoldDuration;
            Information.MaxActivationDistance = ProximityPrompt.MaxActivationDistance;
            Information.RequiresLineOfSight = ProximityPrompt.RequiresLineOfSight;
            Information.Parent = ProximityPrompt.Parent;
            unc[ProximityPrompt] = Information;
        end; local Init = function()
            Execonce.CFrame = Cam.CFrame * CF(0,0,-4);
            ProximityPrompt.HoldDuration = -5;
            ProximityPrompt.MaxActivationDistance = 250;
            ProximityPrompt.Enabled = true;
            ProximityPrompt.RequiresLineOfSight = false;
            ProximityPrompt.Parent = Execonce;   
            local spam = tspawn(function()
                while true do 
                    twait(0.000001/9)
                    Execonce.CFrame = Cam.CFrame * CF(0,0,-4);
                    ProximityPrompt:InputHoldBegin();      
                    H.RenderStepped:Wait();
                    Execonce.CFrame = Cam.CFrame * CF(0,0,-4);
                    ProximityPrompt:InputHoldEnd();
                end;
            end); ProximityPrompt.Triggered:Wait(); 
            repeat
                KAWKWDKDK, WDAJDUWAY2waWDW = pcal(function()
                    tcancel(spam);
                end); twait();
            until KAWKWDKDK;
            local Loaded = unc[ProximityPrompt];
            ProximityPrompt.HoldDuration = Loaded.HoldDuration;
            ProximityPrompt.MaxActivationDistance = Loaded.MaxActivationDistance;
            ProximityPrompt.RequiresLineOfSight = Loaded.RequiresLineOfSight;
            ProximityPrompt.Parent = Loaded.Parent;
        end; local option = {...};
        if typeof(option[1]) == 'number' then
            for i=1,option[1] do
                Init();
            end;
        end;
    end;

    GG.Applyfireprox = function()
        GG.fireproximityprompt = unc.fireprompt;
    end;
    GG.Resetfireprox = function()
        GG.fireproximityprompt = originalUNC;
    end;
end;

GG.CONTROL = {F = 0, B = 0, L = 0, R = 0, Q = 0, E = 0};
if GG.ScriptCache.userIdentify.device == "Mobile" then
    pcal(function() GG.controlModule = require(PlayerScripts:WaitForChild("PlayerModule"):WaitForChild("ControlModule")); end);
end;

GG.error_handler = function(...)
    return warn("[VULNX] : Error : " .. ...);
end;
GG.dist = function( position : Vector3 ): Magnitude
    return selff:DistanceFromCharacter(position);
end;

GG.tableToString = function(tbl, name)
    name = name or "tbl";
    local function serialize(t, indent)
        indent = indent or 0;
        local str = "{ ";
        for k, v in ipir(t) do
            local key = nil;
            if type(k) == "string" then
                key = strformat("[%q]", k);
            else
                key = "[" .. tos(k) .. "]";
            end;

            local value;
            if type(v) == "table" then
                value = serialize(v, indent + 2);
            elseif type(v) == "string" then
                value = strformat("%q", v);
            else
                value = tos(v);
            end;
            str = str .. key .. " = " .. value .. ", ";
        end;
        str = str .. "}";
        return str;
    end;

    return name .. " = " .. serialize(tbl) .. ";";
end;
GG.configsToString = function()
    local function serialize(tbl, indent)
        indent = indent or ""
        local result = "{\n"
        for k,v in pir(tbl) do
            local key = (typeof(k) == "string") and strformat("[%q]", k) or "["..tos(k).."]";
            if typeof(v) == "table" then
                result ..= indent.."    "..key.." = "..serialize(v, indent.."    ")..";\n";
            elseif typeof(v) == "string" then
                result ..= indent.."    "..key.." = "..strformat("%q", v)..";\n";
            else
                result ..= indent.."    "..key.." = "..tos(v)..";\n";
            end;
        end;
        result ..= indent.."}";
        return result;
    end;
    local exported = "getgenv().Configs = " .. serialize(Configs);
    return exported;
end;

ScriptCache.createParagraph_Wel = ScriptCache.createParagraph_Wel or function(tab, title, desc, image, imageSize, color)
    return tab:Paragraph({
        Title = title,
        Desc = desc,
        Image = image,
        ImageSize = imageSize,
        Color = color or nil,
    });
end;
ScriptCache.createSection_Wel = ScriptCache.createSection_Wel or function(tab, title)
    return tab:Section({ Title = title, TextXAlignment = "Center" });
end;

ScriptCache.fetchDiscordInfo_Wel = ScriptCache.fetchDiscordInfo_Wel or function(url, wind)
    local res = nil;
    pcal(function()
        res = DeCodeJ(HttpService, Request({
            Url = url,
            Method = "GET",
            Headers = { ["Accept"] = "application/json" }
        }).Body);
    end);
    return res or {};
end;

GG.WelcomeHandler = GG.WelcomeHandler or function(tab: WelcomeTab, wind: WindUI): any
    ScriptCache.InviteCode = ScriptCache.InviteCode or "c8cUR6Unay";
    local DiscordAPI = "https://discord.com/api/v10/invites/" .. ScriptCache.InviteCode .. "?with_counts=true&with_expiration=true";
    
    local Response = ScriptCache.fetchDiscordInfo_Wel(DiscordAPI, wind);

    if Response and Response.guild then
        local desc = 
            ' <font color="#52525b">•</font> Member Count : ' .. tos(Response.approximate_member_count) ..
            '\n <font color="#16a34a">•</font> Online Count : ' .. tos(Response.approximate_presence_count);

        local img = "https://cdn.discordapp.com/icons/" .. Response.guild.id .. "/" .. Response.guild.icon .. ".png?size=1024";
        local DiscordInfo = ScriptCache.createParagraph_Wel(tab, Response.guild.name, desc, img, 42);

        tab:Button({
            Title = "Update Info",
            Callback = function()
                local u = ScriptCache.fetchDiscordInfo_Wel(DiscordAPI, wind);
                if u and u.guild then
                    DiscordInfo:SetDesc(
                        ' <font color="#52525b">•</font> Member Count : ' .. tos(u.approximate_member_count) ..
                        '\n <font color="#16a34a">•</font> Online Count : ' .. tos(u.approximate_presence_count)
                    );
                end;
            end;
        });
    else
        ScriptCache.createParagraph_Wel(tab, "Error when receiving information about the Discord server", EnCodeJ(HttpService, Response), "triangle-alert", 26, "Red");
    end;

    ScriptCache.createSection_Wel(tab, "✨ Script Infos ✨");

    ScriptCache.createParagraph_Wel(tab, "Forsaken",
        "VULX has the best <b>Forsaken</b> script, featuring invisibility, cool emotes, ESP, and other tools to enhance your gameplay.\n<font color=\"#FF0000\">Reach is still in development; to enable it, you must use <b>Config ONLY</b>.</font>",
        "sword");
    ScriptCache.createParagraph_Wel(tab, "Tower Defense Simulator",
        "VULX is the only script available for <b>Tower Defense Simulator</b>. Our features are great, but we highly recommend trying it on an <b>alt account</b> or recording a macro on an alt due to the strong anti-cheat system.\n<font color=\"#FF0000\">More updates are coming soon. For now, we only have the macro feature because TTJY has been busy.</font>",
        "shield");
    ScriptCache.createParagraph_Wel(tab, "All Star X",
        "VULX offers an <b>All Star X</b> script that includes an excellent macro, AFK farming, and more.\nThe game has no anti-cheat, so you don’t need to worry.",
        "shield");

    ScriptCache.createSection_Wel(tab, "💖 About Us 💖");

    ScriptCache.createParagraph_Wel(tab, "TTJY",
        "TTJY is a Luau developer who also created the official VULX site. With 5 years of scripting experience (TTJY Hub – NeuronX – Flow - VULX), TTJY manages all VULX APIs. If you need to report a bug, you can report it directly to TTJY.",
        "user");

    ScriptCache.createParagraph_Wel(tab, "Ironic",
        "Ironic is the founder of VULX. He usually manages VULX products like cheap Robux, accounts for sale, and oversees the community.",
        "user");

    ScriptCache.createParagraph_Wel(tab, "x.nep",
        "x.nep is also a Luau developer who helps with VULX in coding.",
        "user");

    ScriptCache.createParagraph_Wel(tab, "Contact Us",
        "Discord : discord.gg/c8cUR6Unay",
        "contact"
    );

    ScriptCache.HandleUNC = {
        Title = "Locked Feature",
        Desc = "This function is an internal function, Please change your executor in order to use this feature.",
        Callback = function() end
    };
end;

------------- Script Asset / Script Cache 2 -------------

GG.MobList = (PlaceId == 2753915549 and {
    "Bandit",
    "Monkey",
    "Gorilla",
    "Pirate",
    "Brute",
    "Desert Bandit",
    "Desert Officer",
    "Snow Bandit",
    "Snowman",
    "Chief Petty Officer",
    "Sky Bandit",
    "Dark Master",
    "Toga Warrior",
    "Gladiator",
    "Military Soldier",
    "Military Spy",
    "Fishman Warrior",
    "Fishman Commando",
    "God's Guard",
    "Shanda",
    "Royal Squad",
    "Royal Soldier",
    "Galley Pirate",
    "Galley Captain"
}) or (PlaceId == 4442272183 and {
    "Raider",
    "Mercenary",
    "Swan Pirate",
    "Factory Staff",
    "Marine Lieutenant",
    "Marine Captain",
    "Zombie",
    "Vampire",
    "Snow Trooper",
    "Winter Warrior",
    "Lab Subordinate",
    "Horned Warrior",
    "Magma Ninja",
    "Lava Pirate",
    "Ship Deckhand",
    "Ship Engineer",
    "Ship Steward",
    "Ship Officer",
    "Arctic Warrior",
    "Snow Lurker",
    "Sea Soldier",
    "Water Fighter"
}) or (PlaceId == 7449423635 and {
    "Pirate Millionaire",
    "Dragon Crew Warrior",
    "Dragon Crew Archer",
    "Hydra Enforcer",
    "Venomous Assailant",
    "Marine Commodore",
    "Marine Rear Admiral",
    "Fishman Raider",
    "Fishman Captain",
    "Forest Pirate",
    "Mythological Pirate",
    "Jungle Pirate",
    "Musketeer Pirate",
    "Reborn Skeleton",
    "Living Zombie",
    "Demonic Soul",
    "Posessed Mummy",
    "Peanut Scout",
    "Peanut President",
    "Ice Cream Chef",
    "Ice Cream Commander",
    "Cookie Crafter",
    "Cake Guard",
    "Baking Staff",
    "Head Baker",
    "Cocoa Warrior",
    "Chocolate Bar Battler",
    "Sweet Thief",
    "Candy Rebel",
    "Candy Pirate",
    "Snow Demon",
    "Isle Outlaw",
    "Island Boy",
    "Sun-kissed Warrior",
    "Isle Champion"
}) or {};
GG.BossList = (PlaceId == 2753915549 and {
    "The Gorilla King",
    "Bobby",
    "Yeti",
    "Mob Leader",
    "Vice Admiral",
    "Warden",
    "Chief Warden",
    "Swan",
    "Magma Admiral",
    "Fishman Lord",
    "Wysper",
    "Thunder God",
    "Cyborg",
    "Saber Expert"
}) or (PlaceId == 4442272183 and {
    "Diamond",
    "Jeremy",
    "Fajita",
    "Don Swan",
    "Smoke Admiral",
    "Cursed Captain",
    "Darkbeard",
    "Order",
    "Awakened Ice Admiral",
    "Tide Keeper"
}) or (PlaceId == 7449423635 and {
    "Stone",
    "Hydra Leader",
    "Kilo Admiral",
    "Captain Elephant",
    "Beautiful Pirate",
    "rip_indra True Form",
    "Longma",
    "Soul Reaper",
    "Cake Queen"
}) or {};
GG.MaterialList = (GameId == 7671049560 and {
	"Tiny Essence",
	"Small Essence",
	"Medium Essence",
	"Large Essence",
	"Greater Essence",
	"Superior Essence",
	"Epic Essence",
	"Legendary Essence",
	"Mythical Essence",
});
GG.OreList = (GameId == 7671049560 and {
	"Sand Stone",
	"Copper",
	"Fichilliumorite",
	"Platinum",
	"Fichillium",
	"Gold",
	"Tin",
	"Stone",
	"Silver",
	"Galaxite",
	"Iron",
	"Starite",
	"Mushroomite",
	"Grass",
	"Bananite",
	"Poopite",
	"Aite",
	"Cardboardite",
	"Eye Ore",
	"Demonite",
	"Slimite",
	"Boneite",
	"Cuprite",
	"Dark Boneite",
	"Cobalt",
	"Titanium",
	"Lapis Lazuli",
	"Quartz",
	"Amethyst",
	"Topaz",
	"Diamond",
	"Sapphire",
	"Emerald",
	"Magmaite",
	"Obsidian",
	"Mythril",
	"Uranium",
	"Darkryte",
	"Rivalite",
	"Ruby",
	"Fireite",
	"Lightite",
	"Volcanic Rock",
	"Magenta Crystal",
	"Orange Crystal",
	"Rainbow Crystal",
	"Arcane Crystal",
	"Crimson Crystal",
	"Blue Crystal",
	"Green Crystal",
});
GG.RunesList = (GameId == 7671049560 and {
	"Blast Chip",
	"Miner Shard",
	"Miner Shard 2",
	"Venom Crumb",
	"Drain Edge",
	"Briar Notch",
	"Rot Stitch",
	"Developer Sigil",
	"Frost Speck",
	"Chill Dust",
	"Flame Spark",
	"Rage Mark",
	"Ward Patch",
});
GG.WeaponList = (GameId == 7671049560 and {
	"Gauntlet",
	"Medium Chestplate",
	"Straight Sword",
	"Light Leggings",
	"Heavy Leggings",
	"Katana",
	"Heavy Chestplate",
	"Colossal Sword",
	"Medium Helmet",
	"Medium Leggings",
	"Great Axe",
	"Great Sword",
	"Heavy Helmet",
	"Light Chestplate",
	"Light Helmet",
	"Dagger",
});

------------- WindUI -------------

GG.LoadUILib = function()
    local a = nil; a = {cache = {}, load = function(b)
        if not a.cache[b] then
            a.cache[b] = {c = a[b]()}
        end; return a.cache[b].c;
    end}; do
        function a.a()
            return {
                Primary = fromHex"#0091FF",
                White = Col3new(1, 1, 1),
                Black = Col3new(0, 0, 0),
                Dialog = "Accent",
                Background = "Accent",
                BackgroundTransparency = 0,
                Hover = "Text",
                WindowBackground = "Background",
                WindowShadow = "Black",
                WindowTopbarTitle = "Text",
                WindowTopbarAuthor = "Text",
                WindowTopbarIcon = "Icon",
                WindowTopbarButtonIcon = "Icon",
                TabBackground = "Hover",
                TabTitle = "Text",
                TabIcon = "Icon",
                ElementBackground = "Text",
                ElementTitle = "Text",
                ElementDesc = "Text",
                ElementIcon = "Icon",
                PopupBackground = "Background",
                PopupBackgroundTransparency = "BackgroundTransparency",
                PopupTitle = "Text",
                PopupContent = "Text",
                PopupIcon = "Icon",
                DialogBackground = "Background",
                DialogBackgroundTransparency = "BackgroundTransparency",
                DialogTitle = "Text",
                DialogContent = "Text",
                DialogIcon = "Icon",
                Toggle = "Button",
                ToggleBar = "White",
                Checkbox = "Primary",
                CheckboxIcon = "White",
                Slider = "Primary",
                SliderThumb = "White",
                SliderIconFrom = fromHex"#908F95",
                SliderIconTo = fromHex"#908F95",
                Tooltip = fromHex"4C4C4C",
                TooltipText = "White",
                TooltipSecondary = "Primary",
                TooltipSecondaryText = "White"
            }
        end
        function a.b()
            local l = (function()
                local IconModule = {  
                    IconsType = "lucide", New = nil, IconThemeTag = nil,
                    Icons = {  
                        ["lucide"] = loadstring(game:HttpGetAsync("https://raw.githubusercontent.com/Footagesus/Icons/refs/heads/main/lucide/dist/Icons.lua"))(),  
                        ["solar"] = loadstring(game:HttpGetAsync("https://raw.githubusercontent.com/Footagesus/Icons/refs/heads/main/solar/dist/Icons.lua"))(),  
                        ["craft"] = loadstring(game:HttpGetAsync("https://raw.githubusercontent.com/Footagesus/Icons/refs/heads/main/craft/dist/Icons.lua"))(),  
                        ["geist"] = loadstring(game:HttpGetAsync("https://raw.githubusercontent.com/Footagesus/Icons/refs/heads/main/geist/dist/Icons.lua"))(),  
                        ["sfsymbols"] = loadstring(game:HttpGetAsync("https://raw.githubusercontent.com/Footagesus/Icons/refs/heads/main/sfsymbols/dist/Icons.lua"))(),  
                    },
                };
                local function parseIconString(iconString)  
                    if type(iconString) == "string" then  
                        local splitIndex = iconString:find(":");
                        if splitIndex then  
                            local iconType = iconString:sub(1, splitIndex - 1);
                            local iconName = iconString:sub(splitIndex + 1);
                            return iconType, iconName;
                        end;
                    end; return nil, iconString;
                end; function IconModule.AddIcons(packName, iconsData)
                    if type(packName) ~= "string" or type(iconsData) ~= "table" then
                        return error("AddIcons: packName must be string, iconsData must be table");
                    end; if not IconModule.Icons[packName] then
                        IconModule.Icons[packName] = {
                            Icons = {},
                            Spritesheets = {}
                        };
                    end; for iconName, iconValue in pir(iconsData) do
                        if type(iconValue) == "number" or (type(iconValue) == "string" and iconValue:match("^rbxassetid://")) then
                            local imageId = iconValue;
                            if type(iconValue) == "number" then
                                imageId = "rbxassetid://" .. tos(iconValue)
                            end; IconModule.Icons[packName].Icons[iconName] = {
                                Image = imageId,
                                ImageRectSize = Vec2(0, 0),
                                ImageRectPosition = Vec2(0, 0),
                                Parts = nil
                            }; IconModule.Icons[packName].Spritesheets[imageId] = imageId;
                        elseif type(iconValue) == "table" then
                            if iconValue.Image and iconValue.ImageRectSize and iconValue.ImageRectPosition then
                                local imageId = iconValue.Image;
                                if type(imageId) == "number" then
                                    imageId = "rbxassetid://" .. tos(imageId)
                                end; IconModule.Icons[packName].Icons[iconName] = {
                                    Image = imageId,
                                    ImageRectSize = iconValue.ImageRectSize,
                                    ImageRectPosition = iconValue.ImageRectPosition,
                                    Parts = iconValue.Parts
                                }; if not IconModule.Icons[packName].Spritesheets[imageId] then
                                    IconModule.Icons[packName].Spritesheets[imageId] = imageId;
                                end;
                            else
                                warn("[VULNX] : Invalid spritesheet data format for icon '" .. iconName .. "'");
                            end;
                        else
                            warn("[VULNX] : Unsupported data type for icon '" .. iconName .. "': " .. type(iconValue));
                        end;
                    end;
                end; function IconModule.SetIconsType(iconType)  
                    IconModule.IconsType = iconType  
                end; function IconModule.Init(New, IconThemeTag)  
                    IconModule.New = New;
                    IconModule.IconThemeTag = IconThemeTag;  
                    return IconModule;
                end; function IconModule.Icon(Icon, Type, DefaultFormat)  
                    local iconType, iconName = parseIconString(Icon);
                    local targetType = iconType or Type or IconModule.IconsType;
                    local targetName, iconSet = iconName, IconModule.Icons[targetType];
                    if iconSet and iconSet.Icons and iconSet.Icons[targetName] then  
                        return {   
                            iconSet.Spritesheets[tos(iconSet.Icons[targetName].Image)],   
                            iconSet.Icons[targetName],  
                        };
                    elseif iconSet and iconSet[targetName] and strfind(iconSet[targetName], "rbxassetid://") then
                        return DefaultFormat and { 
                            iconSet[targetName], 
                            { ImageRectSize = Vec2(0,0), ImageRectPosition = Vec2(0,0) }
                        } or iconSet[targetName];
                    end;
                    return nil;
                end; function IconModule.Icon2(Icon, Type, DefaultFormat)  
                    return IconModule.Icon(Icon, Type, true);
                end; function IconModule.Image(IconConfig)  
                    local Icon = {  
                        Icon = IconConfig.Icon or nil,  
                        Type = IconConfig.Type,  
                        Colors = IconConfig.Colors or { ( IconModule.IconThemeTag or Col3new(1,1,1) ), Col3new(1,1,1) },  
                        Size = IconConfig.Size or Dim2(0,24,0,24),  
                        IconFrame = nil,
                    };
                    local Colors = {};
                    for _, color in next, Icon.Colors do  
                        Colors[_] = {  
                            ThemeTag = typeof(color) == "string" and color,  
                            Color = typeof(color) == "Color3" and color,  
                        };
                    end; 
                    local IconLabel = IconModule.Icon2(Icon.Icon, Icon.Type);
                    local isrbxassetid = typeof(IconLabel) == "string" and strfind(IconLabel, 'rbxassetid://');
                    if IconModule.New then  
                        local IconFrame = IconModule.New("ImageLabel", {  
                            Size = Icon.Size,  
                            BackgroundTransparency = 1,  
                            ImageColor3 = Colors[1].Color or nil,  
                            ThemeTag = Colors[1].ThemeTag and {  
                                ImageColor3 = Colors[1].ThemeTag  
                            },  
                            Image = isrbxassetid and IconLabel or IconLabel[1],  
                            ImageRectSize = isrbxassetid and nil or IconLabel[2].ImageRectSize,  
                            ImageRectOffset = isrbxassetid and nil or IconLabel[2].ImageRectPosition,  
                        }); if not isrbxassetid and IconLabel[2].Parts then  
                            for _, part in next, IconLabel[2].Parts do  
                                local IconPartLabel = IconModule.Icon(part, Icon.Type)  
                                    
                                local IconPart = IconModule.New("ImageLabel", {  
                                    Size = Dim2(1,0,1,0),  
                                    BackgroundTransparency = 1,  
                                    ImageColor3 = Colors[1 + _].Color or nil,  
                                    ThemeTag = Colors[1 + _].ThemeTag and {  
                                        ImageColor3 = Colors[1 + _].ThemeTag  
                                    },  
                                    Image = IconPartLabel[1],  
                                    ImageRectSize = IconPartLabel[2].ImageRectSize,  
                                    ImageRectOffset = IconPartLabel[2].ImageRectPosition,  
                                    Parent = IconFrame,  
                                });
                            end;
                        end; Icon.IconFrame = IconFrame;
                    else  
                        local IconFrame = Instancen("ImageLabel");
                        IconFrame.Size = Icon.Size;
                        IconFrame.BackgroundTransparency = 1;
                        IconFrame.ImageColor3 = Colors[1].Color;
                        IconFrame.Image = isrbxassetid and IconLabel or IconLabel[1];
                        IconFrame.ImageRectSize = isrbxassetid and nil or IconLabel[2].ImageRectSize;
                        IconFrame.ImageRectOffset = isrbxassetid and nil or IconLabel[2].ImageRectPosition;
                        if not isrbxassetid and IconLabel[2].Parts then  
                            for _, part in next, IconLabel[2].Parts do  
                                local IconPartLabel = IconModule.Icon(part, Icon.Type);
                                local IconPart = Instancen("ImageLabel"); 
                                IconPart.Size = Dim2(1,0,1,0);
                                IconPart.BackgroundTransparency = 1;
                                IconPart.ImageColor3 = Colors[1 + _].Color;
                                IconPart.Image = IconPartLabel[1];
                                IconPart.ImageRectSize = IconPartLabel[2].ImageRectSize;
                                IconPart.ImageRectOffset = IconPartLabel[2].ImageRectPosition; 
                                IconPart.Parent = IconFrame;
                            end;
                        end; Icon.IconFrame = IconFrame;
                    end; return Icon;
                end; return IconModule;
            end)(); l.SetIconsType "lucide"
            local m, p = nil, {
                Font = "rbxassetid://12187365364",
                Localization = nil,
                CanDraggable = true,
                Theme = nil,
                Themes = nil,
                Icons = l,
                Signals = {},
                Objects = {},
                LocalizationObjects = {},
                FontObjects = {},
                Language = strmatch(LocalizationService.SystemLocaleId, "^[a-z]+"),
                DefaultProperties = {
                    ScreenGui = {
                        ResetOnSpawn = false,
                        ZIndexBehavior = "Sibling"
                    },
                    CanvasGroup = {
                        BorderSizePixel = 0,
                        BackgroundColor3 = Col3new(1, 1, 1)
                    },
                    Frame = {
                        BorderSizePixel = 0,
                        BackgroundColor3 = Col3new(1, 1, 1)
                    },
                    TextLabel = {
                        BackgroundColor3 = Col3new(1, 1, 1),
                        BorderSizePixel = 0,
                        Text = "",
                        RichText = true,
                        TextColor3 = Col3new(1, 1, 1),
                        TextSize = 14
                    },
                    TextButton = {
                        BackgroundColor3 = Col3new(1, 1, 1),
                        BorderSizePixel = 0,
                        Text = "",
                        AutoButtonColor = false,
                        TextColor3 = Col3new(1, 1, 1),
                        TextSize = 14
                    },
                    TextBox = {
                        BackgroundColor3 = Col3new(1, 1, 1),
                        BorderColor3 = Col3new(0, 0, 0),
                        ClearTextOnFocus = false,
                        Text = "",
                        TextColor3 = Col3new(0, 0, 0),
                        TextSize = 14
                    },
                    ImageLabel = {
                        BackgroundTransparency = 1,
                        BackgroundColor3 = Col3new(1, 1, 1),
                        BorderSizePixel = 0
                    },
                    ImageButton = {
                        BackgroundColor3 = Col3new(1, 1, 1),
                        BorderSizePixel = 0,
                        AutoButtonColor = false
                    },
                    UIListLayout = {
                        SortOrder = "LayoutOrder"
                    },
                    ScrollingFrame = {
                        ScrollBarImageTransparency = 1,
                        BorderSizePixel = 0
                    },
                    VideoFrame = {
                        BorderSizePixel = 0
                    }
                },
                Colors = {
                    Red = "#e53935",
                    Orange = "#f57c00",
                    Green = "#43a047",
                    Blue = "#039be5",
                    White = "#ffffff",
                    Grey = "#484848"
                },
                ThemeFallbacks = a.load "a",
                Shapes = {
                    Square = "rbxassetid://82909646051652",
                    ["Square-Outline"] = "rbxassetid://72946211851948",
                    Squircle = "rbxassetid://80999662900595",
                    SquircleOutline = "rbxassetid://117788349049947",
                    ["Squircle-Outline"] = "rbxassetid://117817408534198",
                    SquircleOutline2 = "rbxassetid://117817408534198",
                    ["Shadow-sm"] = "rbxassetid://84825982946844",
                    ["Squircle-TL-TR"] = "rbxassetid://73569156276236",
                    ["Squircle-BL-BR"] = "rbxassetid://93853842912264",
                    ["Squircle-TL-TR-Outline"] = "rbxassetid://136702870075563",
                    ["Squircle-BL-BR-Outline"] = "rbxassetid://75035847706564"
                };
            };
            function p.Init(r) m = r; end;
            function p.AddSignal(r, u)
                local v = r:Connect(u);
                tablein(p.Signals, v);
                return v;
            end; function p.DisconnectAll()
                for _, v in ipir(p.Signals) do
                    if typeof(v) == "RBXScriptConnection" and v.Connected then
                        v:Disconnect();
                    end;
                end; tble.clear(p.Signals); print("Cleared");
            end; function p.SafeCallback(r, ...)
                if not r then return; end;
                local u, v = pcal(r, ...);
                if not u then
                    if m and m.Window and m.Window.Debug then
                        local x, z = v:find":%d+: ";
                        return m:Notify {
                            Title = "DEBUG Mode: Error",
                            Content = not z and v or v:sub(z + 1),
                            Duration = 8
                        };
                    end;
                end;
            end; function p.Gradient(r, u)
                if m and m.Gradient then return m:Gradient(r, u); end;
                local v,x = {}, {}; for z, A in next, r do
                    local B = ton(z); if B then
                        B = mclamp(B / 100, 0, 1);
                        tablein(v, CSKnew(B, A.Color));
                        tablein(x, NSKnew(B, A.Transparency or 0));
                    end;
                end;
                tsort(v, function(B, C) return B.Time < C.Time; end);
                tsort(x, function(B, C) return B.Time < C.Time; end);
                if #v < 2 then
                    error"ColorSequence requires at least 2 keypoints";
                end; local B = {
                    Color = CSnew(v),
                    Transparency = NSnew(x)
                }; if u then
                    for C, F in pir(u) do
                        B[C] = F;
                    end;
                end; return B;
            end; function p.SetTheme(r)
                p.Theme = r;
                p.UpdateTheme(nil, false);
            end; function p.AddFontObject(r)
                tablein(p.FontObjects, r);
                p.UpdateFont(p.Font);
            end; function p.UpdateFont(r)
                p.Font = r; for u, v in next, p.FontObjects do
                    v.FontFace = Fnew(r, v.FontFace.Weight, v.FontFace.Style);
                end;
            end; function p.GetThemeProperty(r, u)
                local function getValue(v, x)
                    local z = x[v] if z == nil then
                        return nil;
                    end; if typeof(z) == "string" and strsub(z, 1, 1) == "#" then
                        return fromHex(z);
                    end; if typeof(z) == "Color3" then
                        return z;
                    end; if typeof(z) == "number" then
                        return z;
                    end; if typeof(z) == "table" and z.Color and z.Transparency then
                        return z;
                    end; if typeof(z) == "function" then
                        return z();
                    end; return z;
                end; local v = getValue(r, u); if v ~= nil then
                    if typeof(v) == "string" and strsub(v, 1, 1) ~= "#" then
                        local x = p.GetThemeProperty(v, u);
                        if x ~= nil then return x; end;
                    else
                        return v;
                    end;
                end; local x = p.ThemeFallbacks[r];
                if x ~= nil then
                    if typeof(x) == "string" and strsub(x, 1, 1) ~= "#" then
                        return p.GetThemeProperty(x, u);
                    else
                        return getValue(r, {[r] = x});
                    end;
                end; v = getValue(r, p.Themes.Dark) if v ~= nil then
                    if typeof(v) == "string" and strsub(v, 1, 1) ~= "#" then
                        local z = p.GetThemeProperty(v, p.Themes.Dark);
                        if z ~= nil then return z; end;
                    else
                        return v;
                    end;
                end; if x ~= nil then
                    if typeof(x) == "string" and strsub(x, 1, 1) ~= "#" then
                        return p.GetThemeProperty(x, p.Themes.Dark);
                    else
                        return getValue(r, {[r] = x});
                    end;
                end; return nil;
            end; function p.AddThemeObject(r, u)
                p.Objects[r] = {Object = r, Properties = u};
                p.UpdateTheme(r, false);
                return r;
            end; function p.AddLangObject(r)
                local u = p.LocalizationObjects[r];
                local v = u.Object;
                local x = currentObjTranslationId;
                p.UpdateLang(v, x);
                return v;
            end; function p.UpdateTheme(r, u)
                local function ApplyTheme(v)
                    for x, z in pir(v.Properties or {}) do
                        local A = p.GetThemeProperty(z, p.Theme)
                        if A ~= nil then
                            if typeof(A) == "Color3" then
                                local B = FindFirstChild(v.Object,"WindUIGradient");
                                if B then Destroy(B); end;
                                if not u then v.Object[x] = A; else
                                    TwCreate(v.Object, TwInfo(0.08), {[x] = A}):Play();
                                end;
                            elseif typeof(A) == "table" and A.Color and A.Transparency then
                                v.Object[x] = Col3new(1, 1, 1);
                                local B = FindFirstChild(v.Object, "WindUIGradient");
                                if not B then
                                    B = Instancen"UIGradient";
                                    B.Name = "WindUIGradient";
                                    B.Parent = v.Object;
                                end; B.Color = A.Color;
                                B.Transparency = A.Transparency;
                                for C, F in pir(A) do
                                    if C ~= "Color" and C ~= "Transparency" and B[C] ~= nil then
                                        B[C] = F;
                                    end;
                                end;
                            elseif typeof(A) == "number" then
                                if not u then v.Object[x] = A; else
                                    TwCreate(v.Object, TwInfo(0.08), {[x] = A}):Play();
                                end;
                            end;
                        else
                            local B = FindFirstChild(v.Object, "WindUIGradient");
                            if B then Destroy(B); end;
                        end;
                    end;
                end; if r then
                    local v = p.Objects[r]; if v then
                        ApplyTheme(v);
                    end;
                else for v, x in pir(p.Objects) do
                        ApplyTheme(x);
                    end;
                end;
            end; function p.SetLangForObject(r)
                if p.Localization and p.Localization.Enabled then
                    local u = p.LocalizationObjects[r];
                    if not u then return; end;
                    local v, x, z = u.Object, u.TranslationId, p.Localization.Translations[p.Language]
                    if z and z[x] then v.Text = z[x]; else
                        local A = p.Localization and p.Localization.Translations and p.Localization.Translations.en or nil
                        if A and A[x] then v.Text = A[x]; else
                            v.Text = "[" .. x .. "]";
                        end;
                    end;
                end;
            end; function p.ChangeTranslationKey(r, u, v)
                if p.Localization and p.Localization.Enabled then
                    local x = strmatch(v, "^" .. p.Localization.Prefix .. "(.+)")
                    if x then for z, A in ipir(p.LocalizationObjects) do
                            if A.Object == u then
                                A.TranslationId = x
                                p.SetLangForObject(z)
                                return;
                            end;
                        end; tablein(p.LocalizationObjects, { TranslationId = x, Object = u });
                        p.SetLangForObject(#p.LocalizationObjects);
                    end;
                end;
            end; function p.UpdateLang(r)
                if r then p.Language = r; end;
                for u = 1, #p.LocalizationObjects do
                    local v = p.LocalizationObjects[u]
                    if v.Object and v.Object.Parent ~= nil then
                        p.SetLangForObject(u);
                    else
                        p.LocalizationObjects[u] = nil;
                    end;
                end;
            end; function p.SetLanguage(r)
                p.Language = r;
                p.UpdateLang();
            end; function p.Icon(r, u)
                return l.Icon2(r, nil, u ~= false);
            end; function p.AddIcons(r, u)
                return l.AddIcons(r, u);
            end; function p.New(r, u, v)
                local x = Instancen(r) for z, A in next, p.DefaultProperties[r] or {} do
                    x[z] = A;
                end; for B, C in next, u or {} do
                    if B ~= "ThemeTag" then x[B] = C; end;
                    if p.Localization and p.Localization.Enabled and B == "Text" then
                        local F = strmatch(C, "^" .. p.Localization.Prefix .. "(.+)");
                        if F then
                            local G = #p.LocalizationObjects + 1;
                            p.LocalizationObjects[G] = {TranslationId = F, Object = x};
                            p.SetLangForObject(G);
                        end;
                    end;
                end; for F, G in next, v or {} do
                    G.Parent = x;
                end; if u and u.ThemeTag then
                    p.AddThemeObject(x, u.ThemeTag);
                end; if u and u.FontFace then
                    p.AddFontObject(x);
                end;
                return x;
            end; function p.NewRoundFrame(r, u, v, x, B, C)
                local function getImageForType(F) return p.Shapes[F]; end;
                local function getSliceCenterForType(F) return F ~= "Shadow-sm" and Rectn(256, 256, 256, 256) or Rectn(512, 512, 512, 512); end;
                local F = p.New( B and "ImageButton" or "ImageLabel", {
                    Image = getImageForType(u),
                    ScaleType = "Slice",
                    SliceCenter = getSliceCenterForType(u),
                    SliceScale = 1,
                    BackgroundTransparency = 1,
                    ThemeTag = v.ThemeTag and v.ThemeTag
                }, x); for G, H in pir(v or {}) do
                    if G ~= "ThemeTag" then
                        F[G] = H;
                    end;
                end; local function UpdateSliceScale(J)
                    local L = u ~= "Shadow-sm" and (J / (256)) or (J / 512);
                    F.SliceScale = mmax(L, 0.0001);
                end; local J = {}; function J.SetRadius(L, M)
                    UpdateSliceScale(M);
                end; function J.SetType(L, M)
                    u = M;
                    F.Image = getImageForType(M);
                    F.SliceCenter = getSliceCenterForType(M);
                    UpdateSliceScale(r);
                end; function J.UpdateShape(L, M, N)
                    if N then
                        u = N; F.Image = getImageForType(N);
                        F.SliceCenter = getSliceCenterForType(N);
                    end; if M then r = M; end;
                    UpdateSliceScale(r);
                end; function J.GetRadius(L)
                    return r;
                end; function J.GetType(L)
                    return u;
                end; UpdateSliceScale(r)
                return F, C and J or nil;
            end; local r = p.New;
            function p.SetDraggable(v)
                p.CanDraggable = v;
            end; function p.Drag(v, x, B)
                local C, F, G, H = nil, nil, nil, nil;
                local J = {CanDraggable = true};
                if not x or typeof(x) ~= "table" then
                    x = {v};
                end; local function update(L)
                    if not F or not J.CanDraggable then return; end;
                    local M = L.Position - G;
                    TwCreate(TweenService, v, TwInfo(0.02), {
                        Position = Dim2(H.X.Scale, H.X.Offset + M.X, H.Y.Scale, H.Y.Offset + M.Y)
                    }):Play();
                end; for L, M in pir(x) do
                    M.InputBegan:Connect(function(N)
                        if (N.UserInputType == Enum.UserInputType.MouseButton1 or N.UserInputType == Enum.UserInputType.Touch) and J.CanDraggable then
                            if C == nil then
                                C = M; F = true; G = N.Position; H = v.Position;
                                if B and typeof(B) == "function" then B(true, C); end;
                                N.Changed:Connect(function()
                                    if N.UserInputState == Enum.UserInputState.End then
                                        F = false; C = nil; if B and typeof(B) == "function" then
                                            B(false, nil);
                                        end;
                                    end;
                                end);
                            end;
                        end;
                    end); M.InputChanged:Connect(function(N)
                        if F and C == M then
                            if N.UserInputType == Enum.UserInputType.MouseMovement or N.UserInputType == Enum.UserInputType.Touch then
                                return update(N);
                            end;
                        end;
                    end);
                end; UserInputService.InputChanged:Connect(function(N)
                    if F and C ~= nil then
                        if N.UserInputType == Enum.UserInputType.MouseMovement or N.UserInputType == Enum.UserInputType.Touch then
                            return update(N);
                        end;
                    end;
                end); function J.Set(N, O)
                    J.CanDraggable = O;
                end; return J;
            end; l.Init(r, "Icon") function p.SanitizeFilename(v)
                local x = v:match"([^/]+)$" or v;
                x = x:gsub("%.[^%.]+$", "");
                x = x:gsub("[^%w%-_]", "_");
                if #x > 50 then x = x:sub(1, 50); end;
                return x;
            end; function p.Image(v, x, B, C, F, G, H, J)
                C = C or "Temp"; x = p.SanitizeFilename(x);
                local L = r("Frame", { Size = Dim2(0, 0, 0, 0), BackgroundTransparency = 1},
                    {
                        r( "ImageLabel", {
                            Size = Dim2(1, 0, 1, 0),
                            BackgroundTransparency = 1,
                            ScaleType = "Crop",
                            ThemeTag = (p.Icon(v) or H) and { ImageColor3 = G and (J or "Icon") or nil } or nil
                        },
                        { r( "UICorner", {CornerRadius = Dim(0, B)});
                    }
                )}); if p.Icon(v) then
                    Destroy(L.ImageLabel);  local M = l.Image({
                        Icon = v,
                        Size = Dim2(1, 0, 1, 0),
                        Colors = {(G and (J or "Icon") or false), "Button"}
                    }).IconFrame; M.Parent = L;
                elseif strfind(v, "http") then
                    local M = "WindUI/" .. C .. "/assets/." .. F .. "-" .. x .. ".png";
                    local N, O = pcal(function()
                        tspawn(function()
                            local N = Request({Url = v, Method = "GET"}).Body; writefile(M, N);
                            local O, P = pcal(getcustomasset, M);
                            if O then L.ImageLabel.Image = P; else
                                return Destroy(L);
                            end;
                        end);
                    end); if not N then return Destroy(L); end;
                elseif v == "" then
                    L.Visible = false;
                else
                    L.ImageLabel.Image = v;
                end; return L;
            end; function p.Color3ToHSB(v)
                local x, B, C = v.R, v.G, v.B;
                local F, G = mmax(x, B, C), mmin(x, B, C);
                local H, J = F - G, 0;
                if H ~= 0 then
                    if F == x then
                        J = (B - C) / H % 6;
                    elseif F == B then
                        J = (C - x) / H + 2;
                    else
                        J = (x - B) / H + 4;
                    end;
                    J = J * 60;
                else
                    J = 0;
                end; local L,M = (F == 0) and 0 or (H / F), F;
                return {h = mfloor(J + 0.5), s = L, b = M}
            end; function p.GetPerceivedBrightness(v)
                local x,B,C = v.R, v.G, v.B;
                return 0.299 * x + 0.587 * B + 0.114 * C;
            end; function p.GetTextColorForHSB(v)
                local x = p.Color3ToHSB(v); local B, C, F = x.h, x.s, x.b;
                if p.GetPerceivedBrightness(v) > 0.68 then
                    return fromHSV(B / 360, 0, 0.05);
                else
                    return fromHSV(B / 360, 0, 0.98);
                end;
            end; function p.GetAverageColor(v)
                local x, B, C = 0, 0, 0;
                local F = v.Color.Keypoints;
                for G, H in ipir(F) do
                    x = x + H.Value.R
                    B = B + H.Value.G
                    C = C + H.Value.B
                end; local J = #F;
                return Col3new(x / J, B / J, C / J);
            end; return p;
        end;
        function a.c()
            local b = {}; function b.New(d, e, f)
                local g = {
                    Enabled = e.Enabled or false,
                    Translations = e.Translations or {},
                    Prefix = e.Prefix or "loc:",
                    DefaultLanguage = e.DefaultLanguage or "en"
                }; f.Localization = g; return g;
            end; return b;
        end;
        function a.d()
            local b = a.load"b"; local d = b.New;
            local f = {
                Size = Dim2(0, 300, 1, -156),
                SizeLower = Dim2(0, 300, 1, -56),
                UICorner = 13,
                UIPadding = 14,
                Holder = nil,
                NotificationIndex = 0,
                Notifications = {}
            }; function f.Init(g)
                local h = {Lower = false};
                function h.SetLower(j)
                    h.Lower = j
                    h.Frame.Size = j and f.SizeLower or f.Size
                end; h.Frame = d("Frame", {
                    Position = Dim2(1, -29, 0, 56),
                    AnchorPoint = Vec2(1, 0),
                    Size = f.Size,
                    Parent = g,
                    BackgroundTransparency = 1
                }, {
                    d("UIListLayout", {
                        HorizontalAlignment = "Center",
                        SortOrder = "LayoutOrder",
                        VerticalAlignment = "Bottom",
                        Padding = Dim(0, 8)
                    }), d("UIPadding", {
                        PaddingBottom = Dim(0, 29)
                    });
                }); return h;
            end; function f.New(g)
                local h = {
                    Title = g.Title or "Notification",
                    Content = g.Content or nil,
                    Icon = g.Icon or nil,
                    IconThemed = g.IconThemed,
                    Background = g.Background,
                    BackgroundImageTransparency = g.BackgroundImageTransparency,
                    Duration = g.Duration or 5,
                    Buttons = g.Buttons or {},
                    CanClose = true,
                    UIElements = {},
                    Closed = false
                }; if h.CanClose == nil then
                    h.CanClose = true;
                end; f.NotificationIndex = f.NotificationIndex + 1;
                f.Notifications[f.NotificationIndex] = h;
                local j, l = nil, nil; if h.Icon then
                    j = b.Image(h.Icon, h.Title .. ":" .. h.Icon, 0, g.Window, "Notification", h.IconThemed);
                    j.Size = Dim2(0, 26, 0, 26);
                    j.Position = Dim2(0, f.UIPadding, 0, f.UIPadding);
                end; if h.CanClose then
                    l = d("ImageButton", {
                        Image = b.Icon "x"[1],
                        ImageRectSize = b.Icon "x"[2].ImageRectSize,
                        ImageRectOffset = b.Icon "x"[2].ImageRectPosition,
                        BackgroundTransparency = 1,
                        Size = Dim2(0, 16, 0, 16),
                        Position = Dim2(1, -f.UIPadding, 0, f.UIPadding),
                        AnchorPoint = Vec2(1, 0),
                        ThemeTag = {
                            ImageColor3 = "Text"
                        },
                        ImageTransparency = .4
                    }, {
                        d("TextButton", {
                            Size = Dim2(1, 8, 1, 8),
                            BackgroundTransparency = 1,
                            AnchorPoint = Vec2(0.5, 0.5),
                            Position = Dim2(0.5, 0, 0.5, 0),
                            Text = ""
                        });
                    });
                end; local m = d("Frame", {
                    Size = Dim2(0, 0, 1, 0),
                    BackgroundTransparency = .95,
                    ThemeTag = {BackgroundColor3 = "Text"}
                }); local p = d("Frame", {
                    Size = Dim2(1, h.Icon and -28 - f.UIPadding or 0, 1, 0),
                    Position = Dim2(1, 0, 0, 0),
                    AnchorPoint = Vec2(1, 0),
                    BackgroundTransparency = 1,
                    AutomaticSize = "Y"
                }, {
                    d("UIPadding", {
                        PaddingTop = Dim(0, f.UIPadding),
                        PaddingLeft = Dim(0, f.UIPadding),
                        PaddingRight = Dim(0, f.UIPadding),
                        PaddingBottom = Dim(0, f.UIPadding)
                    }), d("TextLabel", {
                        AutomaticSize = "Y",
                        Size = Dim2(1, -30 - f.UIPadding, 0, 0),
                        TextWrapped = true,
                        TextXAlignment = "Left",
                        RichText = true,
                        BackgroundTransparency = 1,
                        TextSize = 16,
                        ThemeTag = {
                            TextColor3 = "Text"
                        },
                        Text = h.Title,
                        FontFace = Fnew(b.Font, Enum.FontWeight.Medium)
                    }), d("UIListLayout", {
                        Padding = Dim(0, f.UIPadding / 3)
                    });
                }); if h.Content then
                    d("TextLabel", {
                        AutomaticSize = "Y",
                        Size = Dim2(1, 0, 0, 0),
                        TextWrapped = true,
                        TextXAlignment = "Left",
                        RichText = true,
                        BackgroundTransparency = 1,
                        TextTransparency = .4,
                        TextSize = 15,
                        ThemeTag = {TextColor3 = "Text"},
                        Text = h.Content,
                        FontFace = Fnew(b.Font, Enum.FontWeight.Medium),
                        Parent = p
                    });
                end; local r = b.NewRoundFrame(f.UICorner, "Squircle", {
                    Size = Dim2(1, 0, 0, 0),
                    Position = Dim2(2, 0, 1, 0),
                    AnchorPoint = Vec2(0, 1),
                    AutomaticSize = "Y",
                    ImageTransparency = .05,
                    ThemeTag = {ImageColor3 = "Background"}
                }, {
                    d("CanvasGroup", {
                        Size = Dim2(1, 0, 1, 0),
                        BackgroundTransparency = 1
                    }, {
                        m, d("UICorner", {
                            CornerRadius = Dim(0, f.UICorner)
                        })
                    }), d("ImageLabel", {
                        Name = "Background",
                        Image = h.Background,
                        BackgroundTransparency = 1,
                        Size = Dim2(1, 0, 1, 0),
                        ScaleType = "Crop",
                        ImageTransparency = h.BackgroundImageTransparency
                    }, {
                        d("UICorner", {
                            CornerRadius = Dim(0, f.UICorner)
                        })
                    }), p, j, l
                }); local u = d("Frame", {
                    BackgroundTransparency = 1,
                    Size = Dim2(1, 0, 0, 0),
                    Parent = g.Holder
                }, {r}); function h.Close(v)
                    if not h.Closed then
                        h.Closed = true; TwCreate(TweenService, u, TwInfo(0.45, Enum.EasingStyle.Quint, Enum.EasingDirection.Out), {Size = Dim2(1, 0, 0, -8)}):Play();
                        TwCreate(TweenService, r, TwInfo(0.55, Enum.EasingStyle.Quint, Enum.EasingDirection.Out), {Position = Dim2(2, 0, 1, 0)}):Play();
                        twait(0.45); Destroy(u);
                    end;
                end; tspawn(function()
                    twait(); TwCreate(TweenService, u, TwInfo(0.45, Enum.EasingStyle.Quint, Enum.EasingDirection.Out), {Size = Dim2(1, 0, 0, r.AbsoluteSize.Y)}):Play();
                    TwCreate(TweenService, r, TwInfo(0.45, Enum.EasingStyle.Quint, Enum.EasingDirection.Out), {Position = Dim2(0, 0, 1, 0)}):Play();
                    if h.Duration then
                        TwCreate(TweenService, m, TwInfo(h.Duration, Enum.EasingStyle.Linear, Enum.EasingDirection.InOut), {Size = Dim2(1, 0, 1, 0)}):Play();
                        twait(h.Duration); h:Close();
                    end;
                end); if l then
                    b.AddSignal(l.TextButton.MouseButton1Click, function()
                        h:Close();
                    end);
                end; return h;
            end; return f;
        end; function a.i()
            return [[
    {
        "name": "windui",
        "version": "1.6.62",
        "main": "./dist/main.lua",
        "repository": "https://github.com/Footagesus/WindUI",
        "discord": "https://discord.gg/ftgs-development-hub-1300692552005189632",
        "author": "Footagesus",
        "description": "Roblox UI Library for scripts",
        "license": "MIT",
        "scripts": {
            "dev": "bash build/build.sh dev $INPUT_FILE",
            "build": "bash build/build.sh build $INPUT_FILE",
            "live": "python -m http.server 8642",
            "watch": "chokidar . -i 'node_modules' -i 'dist' -i 'build' -c 'npm run dev --'",
            "live-build": "concurrently \"npm run live\" \"npm run watch --\"",
            "example-live-build": "INPUT_FILE=main_example.lua npm run live-build",
            "updater": "python updater/main.py"
        },
        "keywords": [
            "ui-library",
            "ui-design",
            "script",
            "script-hub",
            "exploiting"
        ],
        "devDependencies": {
            "chokidar-cli": "^3.0.0",
            "concurrently": "^9.2.0"
        }
    }]]
        end; function a.j()
            local aa = {}; local ab = a.load "b"; local ac = ab.New;
            function aa.New(ae, af, ag, ah, ai, aj, ak, al)
                ah = ah or "Primary"; local am, an = al or (not ak and 10 or 99), nil;
                if af and af ~= "" then
                    an = ac("ImageLabel", {
                        Image = ab.Icon(af)[1],
                        ImageRectSize = ab.Icon(af)[2].ImageRectSize,
                        ImageRectOffset = ab.Icon(af)[2].ImageRectPosition,
                        Size = Dim2(0, 21, 0, 21),
                        BackgroundTransparency = 1,
                        ImageColor3 = ah == "White" and Col3new(0, 0, 0) or nil,
                        ImageTransparency = ah == "White" and .4 or 0,
                        ThemeTag = {ImageColor3 = ah ~= "White" and "Icon" or nil}
                    });
                end; local ao = ac("TextButton", {
                    Size = Dim2(0, 0, 1, 0),
                    AutomaticSize = "X",
                    Parent = ai,
                    BackgroundTransparency = 1
                }, {
                    ab.NewRoundFrame(am, "Squircle", {
                        ThemeTag = {ImageColor3 = ah ~= "White" and "Button" or nil},
                        ImageColor3 = ah == "White" and Col3new(1, 1, 1) or nil,
                        Size = Dim2(1, 0, 1, 0),
                        Name = "Squircle",
                        ImageTransparency = ah == "Primary" and 0 or ah == "White" and 0 or 1
                    }), ab.NewRoundFrame(am, "Squircle", {
                        ImageColor3 = Col3new(1, 1, 1),
                        Size = Dim2(1, 0, 1, 0),
                        Name = "Special",
                        ImageTransparency = ah == "Secondary" and 0.95 or 1
                    }), ab.NewRoundFrame(am, "Shadow-sm", {
                        ImageColor3 = Col3new(0, 0, 0),
                        Size = Dim2(1, 3, 1, 3),
                        AnchorPoint = Vec2(0.5, 0.5),
                        Position = Dim2(0.5, 0, 0.5, 0),
                        Name = "Shadow",
                        ImageTransparency = 1,
                        Visible = not ak
                    }), ab.NewRoundFrame(am, not ak and "SquircleOutline" or "SquircleOutline2", {
                        ThemeTag = {ImageColor3 = ah ~= "White" and "Outline" or nil},
                        Size = Dim2(1, 0, 1, 0), ImageColor3 = ah == "White" and Col3new(0, 0, 0) or nil,
                        ImageTransparency = ah == "Primary" and .95 or .85,
                        Name = "SquircleOutline"
                    }, {
                        ac("UIGradient", {
                            Rotation = 70,
                            Color = CSnew {
                                CSKnew(0.0, fromRGB(255, 255, 255)),
                                CSKnew(0.5, fromRGB(255, 255, 255)),
                                CSKnew(1.0, fromRGB(255, 255, 255))
                            },
                            Transparency = NSnew {
                                NSKnew(0.0, 0.1),
                                NSKnew(0.5, 1),
                                NSKnew(1.0, 0.1)
                            };
                        });
                    }), ab.NewRoundFrame(am, "Squircle", {
                        Size = Dim2(1, 0, 1, 0), Name = "Frame",
                        ThemeTag = {ImageColor3 = ah ~= "White" and "Text" or nil},
                        ImageColor3 = ah == "White" and Col3new(0, 0, 0) or nil,
                        ImageTransparency = 1
                    }, {
                        ac("UIPadding", {
                            PaddingLeft = Dim(0, 16),
                            PaddingRight = Dim(0, 16)
                        }), ac("UIListLayout", {
                            FillDirection = "Horizontal",
                            Padding = Dim(0, 8),
                            VerticalAlignment = "Center",
                            HorizontalAlignment = "Center"
                        }), an, ac("TextLabel", {
                            BackgroundTransparency = 1, FontFace = Fnew(ab.Font, Enum.FontWeight.SemiBold), Text = ae or "Button",
                            ThemeTag = {TextColor3 = (ah ~= "Primary" and ah ~= "White") and "Text"},
                            TextColor3 = ah == "Primary" and Col3new(1, 1, 1) or ah == "White" and Col3new(0, 0, 0) or nil,
                            AutomaticSize = "XY",
                            TextSize = 18
                        });
                    });
                }); ab.AddSignal(ao.MouseEnter, function()
                    TwCreate(TweenService, ao.Frame, TwInfo(0.047), {ImageTransparency = 0.95}):Play();
                end); ab.AddSignal(ao.MouseLeave, function()
                    TwCreate(TweenService, ao.Frame, TwInfo(0.047), {ImageTransparency = 1}):Play();
                end); ab.AddSignal(ao.MouseButton1Up, function()
                    if aj then aj:Close()(); end;
                    if ag then ab.SafeCallback(ag); end;
                end); return ao;
            end; return aa;
        end;
        function a.k()
            local aa = {}; local ab = a.load "b"; local ac = ab.New;
            function aa.New(ae, af, ag, ah, ai, aj, ak, al)
                ah = ah or "Input"; local am, an = ak or 10, nil;
                if af and af ~= "" then
                    an = ac("ImageLabel", {
                        Image = ab.Icon(af)[1],
                        ImageRectSize = ab.Icon(af)[2].ImageRectSize,
                        ImageRectOffset = ab.Icon(af)[2].ImageRectPosition,
                        Size = Dim2(0, 21, 0, 21),
                        BackgroundTransparency = 1,
                        ThemeTag = {ImageColor3 = "Icon"}
                    });
                end; local ao = ah ~= "Input";
                local ap = ac("TextBox", {
                    BackgroundTransparency = 1,
                    TextSize = 17,
                    FontFace = Fnew(ab.Font, Enum.FontWeight.Regular),
                    Size = Dim2(1, an and -29 or 0, 1, 0),
                    PlaceholderText = ae,
                    ClearTextOnFocus = al or false,
                    ClipsDescendants = true,
                    TextWrapped = ao,
                    MultiLine = ao,
                    TextXAlignment = "Left",
                    TextYAlignment = ah == "Input" and "Center" or "Top",
                    ThemeTag = {PlaceholderColor3 = "PlaceholderText", TextColor3 = "Text"}
                }); local aq = ac("Frame", {
                    Size = Dim2(1, 0, 0, 42),
                    Parent = ag,
                    BackgroundTransparency = 1
                }, {
                    ac("Frame", {
                        Size = Dim2(1, 0, 1, 0),
                        BackgroundTransparency = 1
                    }, {
                        ab.NewRoundFrame(am, "Squircle", {
                            ThemeTag = {
                                ImageColor3 = "Accent"
                            },
                            Size = Dim2(1, 0, 1, 0),
                            ImageTransparency = .97
                        }), ab.NewRoundFrame(am, "SquircleOutline", {
                            ThemeTag = {
                                ImageColor3 = "Outline"
                            },
                            Size = Dim2(1, 0, 1, 0),
                            ImageTransparency = .95
                        }, {}), ab.NewRoundFrame(am, "Squircle", {
                            Size = Dim2(1, 0, 1, 0),
                            Name = "Frame",
                            ImageColor3 = Col3new(1, 1, 1),
                            ImageTransparency = .95
                        }, {
                            ac("UIPadding", {
                                PaddingTop = Dim(0, ah == "Input" and 0 or 12),
                                PaddingLeft = Dim(0, 12),
                                PaddingRight = Dim(0, 12),
                                PaddingBottom = Dim(0, ah == "Input" and 0 or 12)
                            }), ac("UIListLayout", {
                                FillDirection = "Horizontal",
                                Padding = Dim(0, 8),
                                VerticalAlignment = ah == "Input" and "Center" or "Top",
                                HorizontalAlignment = "Left"
                            }), an, ap
                        });
                    });
                }); if aj then
                    ab.AddSignal(PropChangeSignal(ap, "Text"), function()
                        if ai then
                            ab.SafeCallback(ai, ap.Text);
                        end;
                    end);
                else
                    ab.AddSignal(ap.FocusLost, function()
                        if ai then
                            ab.SafeCallback(ai, ap.Text);
                        end;
                    end);
                end; return aq;
            end; return aa;
        end;
        function a.l()
            local aa = a.load"b"; local ab = aa.New; local ad = {
                Holder = nil,
                Parent = nil
            }; function ad.Init(ae, af)
                Window = ae; ad.Parent = af;
                return ad;
            end; function ad.Create(ae, af)
                local ag = {UICorner = 24, UIPadding = 15, UIElements = {}};
                if ae then ag.UIPadding = 0; end; if ae then ag.UICorner = 26; end;
                af = af or "Dialog"; if not ae then
                    ag.UIElements.FullScreen = ab("Frame", {
                        ZIndex = 999,
                        BackgroundTransparency = 1,
                        BackgroundColor3 = fromHex "#000000",
                        Size = Dim2(1, 0, 1, 0),
                        Active = false,
                        Visible = false,
                        Parent = ad.Parent or (Window and Window.UIElements and Window.UIElements.Main and Window.UIElements.Main.Main)
                    }, {
                        ab("UICorner", {
                            CornerRadius = Dim(0, Window.UICorner)
                        });
                    });
                end; ag.UIElements.Main = ab("Frame", {
                    Size = Dim2(0, 280, 0, 0),
                    ThemeTag = {
                        BackgroundColor3 = af .. "Background"
                    },
                    AutomaticSize = "Y",
                    BackgroundTransparency = 1,
                    Visible = false,
                    ZIndex = 99999
                }, {
                    ab("UIPadding", {
                        PaddingTop = Dim(0, ag.UIPadding),
                        PaddingLeft = Dim(0, ag.UIPadding),
                        PaddingRight = Dim(0, ag.UIPadding),
                        PaddingBottom = Dim(0, ag.UIPadding)
                    });
                }); ag.UIElements.MainContainer = aa.NewRoundFrame(ag.UICorner, "Squircle", {
                    Visible = false,
                    ImageTransparency = ae and 0.15 or 0,
                    Parent = ae and ad.Parent or ag.UIElements.FullScreen,
                    Position = Dim2(0.5, 0, 0.5, 0),
                    AnchorPoint = Vec2(0.5, 0.5),
                    AutomaticSize = "XY",
                    ThemeTag = {
                        ImageColor3 = af .. "Background",
                        ImageTransparency = af .. "BackgroundTransparency"
                    },
                    ZIndex = 9999
                }, {ag.UIElements.Main}); function ag.Open(ah)
                    if not ae then
                        ag.UIElements.FullScreen.Visible = true;
                        ag.UIElements.FullScreen.Active = true;
                    end; tspawn(function()
                        ag.UIElements.MainContainer.Visible = true; if not ae then
                            TwCreate(TweenService, ag.UIElements.FullScreen, TwInfo(0.1), {BackgroundTransparency = 0.3}):Play();
                        end; TwCreate(TweenService, ag.UIElements.MainContainer, TwInfo(0.1), {ImageTransparency = 0}):Play();
                        tspawn(function()
                            twait(0.05); ag.UIElements.Main.Visible = true;
                        end);
                    end);
                end; function ag.Close(ah)
                    if not ae then
                        TwCreate(TweenService, ag.UIElements.FullScreen, TwInfo(0.1), {BackgroundTransparency = 1}):Play();
                        ag.UIElements.FullScreen.Active = false; tspawn(function()
                            twait(0.1); ag.UIElements.FullScreen.Visible = false;
                        end);
                    end; ag.UIElements.Main.Visible = false;
                    TwCreate(TweenService, ag.UIElements.MainContainer, TwInfo(0.1), {ImageTransparency = 1}):Play();
                    tspawn(function()
                        twait(0.1) if not ae then
                            Destroy(ag.UIElements.FullScreen);
                        else
                            Destroy(ag.UIElements.MainContainer);
                        end;
                    end); return function() end;
                end; return ag;
            end; return ad;
        end;
        function a.n()
            local function map(ab, ac, ad, ae, af)
                return (ab - ac) * (af - ae) / (ad - ac) + ae;
            end; local function viewportPointToWorld(ab, ac)
                local ad = Cam:ScreenPointToRay(ab.X, ab.Y);
                return ad.Origin + ad.Direction * ac;
            end; local function getOffset()
                local ab = Cam.ViewportSize.Y;
                return map(ab, 0, 2560, 8, 56);
            end; return {viewportPointToWorld, getOffset};
        end;
        function a.o()
            local ab = a.load "b"; local ac = ab.New;
            local ad, ae = unpack(a.load "n");
            local af = Instancen("Folder", Cam);
            local function createAcrylic()
                local ag = ac("Part", {
                    Name = "Body",
                    Color = Col3new(0, 0, 0),
                    Material = Enum.Material.Glass,
                    Size = Vec3(1, 1, 0),
                    Anchored = true,
                    CanCollide = false,
                    Locked = true,
                    CastShadow = false,
                    Transparency = 0.98
                }, {
                    ac("SpecialMesh", {
                        MeshType = Enum.MeshType.Brick,
                        Offset = Vec3(0, 0, -1E-6)
                    });
                }); return ag;
            end; local function createAcrylicBlur(ag)
                local ah = {}; ag = ag or 0.001;
                local ai = {topLeft = Vec2(), topRight = Vec2(), bottomRight = Vec2()};
                local aj = createAcrylic(); aj.Parent = af;
                local function updatePositions(ak, al)
                    ai.topLeft = al; ai.topRight = al + Vec2(ak.X, 0);
                    ai.bottomRight = al + ak;
                end; local function render()
                    local ak = Cam; if ak then
                        ak = ak.CFrame;
                    end; local al = ak;
                    if not al then
                        al = CF();
                    end; local am = al; local an = ai.topLeft;
                    local ao = ai.topRight; local ap = ai.bottomRight;
                    local aq = ad(an, ag); local ar = ad(ao, ag); local as = ad(ap, ag);
                    local at = (ar - aq).Magnitude; local au = (ar - as).Magnitude;
                    aj.CFrame = CFMat((aq + as) / 2, am.XVector, am.YVector, am.ZVector);
                    aj.Mesh.Scale = Vec3(at, au, 0);
                end; local function onChange(ak)
                    local al = ae(); local am = ak.AbsoluteSize - Vec2(al, al);
                    local an = ak.AbsolutePosition + Vec2(al / 2, al / 2);
                    updatePositions(am, an); tspawn(render);
                end; local function renderOnChange()
                    local ak = Cam; if not ak then
                        return;
                    end; tablein(ah, PropChangeSignal(ak, "CFrame"):Connect(render));
                    tablein(ah, PropChangeSignal(ak, "ViewportSize"):Connect(render));
                    tablein(ah, PropChangeSignal(ak, "FieldOfView"):Connect(render));
                    tspawn(render);
                end; aj.Destroying:Connect(function()
                    for ak, al in ah do
                        pcal(function()
                            al:Disconnect();
                        end);
                    end;
                end); renderOnChange();
                return onChange, aj;
            end; return function(ag)
                local ah = {}; local ai, aj = createAcrylicBlur(ag);
                local ak = ac("Frame", {
                    BackgroundTransparency = 1,
                    Size = Dim2Scale(1, 1)
                }); ab.AddSignal(PropChangeSignal(ak, "AbsolutePosition"), function()
                    ai(ak);
                end); ab.AddSignal(PropChangeSignal(ak, "AbsoluteSize"), function()
                    ai(ak);
                end); ah.AddParent = function(al)
                    ab.AddSignal(PropChangeSignal(al, "Visible"), function()
                        ah.SetVisibility(al.Visible);
                    end);
                end; ah.SetVisibility = function(al)
                    aj.Transparency = al and 0.98 or 1;
                end; ah.Frame = ak; ah.Model = aj;
                return ah;
            end;
        end;
        function a.p()
            local aa = a.load "b"; local ab = a.load "o";
            local ac = aa.New; return function(ad)
                local ae = {}; ae.Frame = ac("Frame", {
                    Size = Dim2Scale(1, 1),
                    BackgroundTransparency = 1,
                    BackgroundColor3 = fromRGB(255, 255, 255),
                    BorderSizePixel = 0
                }, {
                    ac("UICorner", {
                        CornerRadius = Dim(0, 8)
                    }), ac("Frame", {
                        BackgroundTransparency = 1,
                        Size = Dim2Scale(1, 1),
                        Name = "Background",
                        ThemeTag = {
                            BackgroundColor3 = "AcrylicMain"
                        }
                    }, {
                        ac("UICorner", {
                            CornerRadius = Dim(0, 8)
                        });
                    }), ac("Frame", {
                        BackgroundColor3 = fromRGB(255, 255, 255),
                        BackgroundTransparency = 1,
                        Size = Dim2Scale(1, 1)
                    }, {}), ac("ImageLabel", {
                        Image = "rbxassetid://9968344105",
                        ImageTransparency = 0.98,
                        ScaleType = Enum.ScaleType.Tile,
                        TileSize = Dim2(0, 128, 0, 128),
                        Size = Dim2Scale(1, 1),
                        BackgroundTransparency = 1
                    }, {
                        ac("UICorner", {
                            CornerRadius = Dim(0, 8)
                        });
                    }), ac("ImageLabel", {
                        Image = "rbxassetid://9968344227",
                        ImageTransparency = 0.9,
                        ScaleType = Enum.ScaleType.Tile,
                        TileSize = Dim2(0, 128, 0, 128),
                        Size = Dim2Scale(1, 1),
                        BackgroundTransparency = 1,
                        ThemeTag = {ImageTransparency = "AcrylicNoise"}
                    }, {
                        ac("UICorner", {
                            CornerRadius = Dim(0, 8)
                        });
                    }), ac("Frame", {
                        BackgroundTransparency = 1,
                        Size = Dim2Scale(1, 1),
                        ZIndex = 2
                    }, {});
                }); local af=nil; twait()
                if ad.UseAcrylic then
                    af = ab(); af.Frame.Parent = ae.Frame;
                    ae.Model = af.Model ae.AddParent = af.AddParent;
                    ae.SetVisibility = af.SetVisibility;
                end; return ae, af;
            end;
        end;
        function a.q()
            local ab = {AcrylicBlur = a.load "o", AcrylicPaint = a.load "p"};
            function ab.init()
                local ac = Instancen"DepthOfFieldEffect";
                ac.FarIntensity = 0; ac.InFocusRadius = 0.1;
                ac.NearIntensity = 1; local ad = {};
                function ab.Enable()
                    for ae, af in pir(ad) do
                        af.Enabled = false;
                    end; ac.Parent = L;
                end; function ab.Disable()
                    for ae, af in pir(ad) do
                        af.Enabled = af.enabled;
                    end; ac.Parent = nil;
                end; local function registerDefaults()
                    local function register(ae)
                        if IsA(ae, "DepthOfFieldEffect") then
                            ad[ae] = {enabled = ae.Enabled};
                        end;
                    end; for ae, af in pir(GetChildren(L)) do
                        register(af);
                    end; if Cam then
                        for ag, ah in pir(GetChildren(Cam)) do
                            register(ah);
                        end;
                    end;
                end; registerDefaults(); ab.Enable();
            end; return ab;
        end;
        function a.r()
            local aa = {}; local ab = a.load "b"; local ac = ab.New;
            function aa.new(ae)
                local af = {
                    Title = ae.Title or "Dialog", Content = ae.Content, Icon = ae.Icon,
                    IconThemed = ae.IconThemed, Thumbnail = ae.Thumbnail, Buttons = ae.Buttons, IconSize = 22
                }; local ag = a.load("l").Init(nil, ae.WindUI.ScreenGui.Popups);
                local ah = ag.Create(true, "Popup"); local ai, ak = 200, nil; local aj = 430;
                if af.Thumbnail and af.Thumbnail.Image then
                    aj = 430 + (ai / 2);
                end; ah.UIElements.Main.AutomaticSize = "Y";
                ah.UIElements.Main.Size = Dim2(0, aj, 0, 0);
                if af.Icon then
                    ak = ab.Image(
                        af.Icon, af.Title .. ":" .. af.Icon, 0,
                        ae.WindUI.Window, "Popup", true,
                        ae.IconThemed, "PopupIcon"
                    ) ak.Size = Dim2(0, af.IconSize, 0, af.IconSize)
                    ak.LayoutOrder = -1;
                end; local al = ac("TextLabel", {
                    AutomaticSize = "Y",
                    BackgroundTransparency = 1,
                    Text = af.Title,
                    TextXAlignment = "Left",
                    FontFace = Fnew(ab.Font, Enum.FontWeight.SemiBold),
                    ThemeTag = {TextColor3 = "PopupTitle"},
                    TextSize = 20,
                    TextWrapped = true,
                    Size = Dim2(1, ak and -af.IconSize - 14 or 0, 0, 0)
                }); local am = ac("Frame", {
                    BackgroundTransparency = 1,
                    AutomaticSize = "XY"
                }, {
                    ac("UIListLayout", {
                        Padding = Dim(0, 14),
                        FillDirection = "Horizontal",
                        VerticalAlignment = "Center"
                    }), ak, al
                }); local an = ac("Frame", {
                    AutomaticSize = "Y",
                    Size = Dim2(1, 0, 0, 0),
                    BackgroundTransparency = 1
                },{am}); local ao=nil;
                if af.Content and af.Content ~= "" then
                    ao = ac("TextLabel", {
                        Size = Dim2(1, 0, 0, 0),
                        AutomaticSize = "Y",
                        FontFace = Fnew(ab.Font, Enum.FontWeight.Medium),
                        TextXAlignment = "Left",
                        Text = af.Content,
                        TextSize = 18,
                        TextTransparency = .2,
                        ThemeTag = {TextColor3 = "PopupContent"},
                        BackgroundTransparency = 1,
                        RichText = true,
                        TextWrapped = true
                    });
                end; local ap = ac("Frame", {
                    Size = Dim2(1, 0, 0, 42),
                    BackgroundTransparency = 1
                }, {
                    ac("UIListLayout", {
                        Padding = Dim(0, 9),
                        FillDirection = "Horizontal",
                        HorizontalAlignment = "Right"
                    });
                }); local aq, ar=nil, nil;
                if af.Thumbnail and af.Thumbnail.Image then
                    if af.Thumbnail.Title then
                        ar = ac("TextLabel", {
                            Text = af.Thumbnail.Title,
                            ThemeTag = {TextColor3 = "Text"},
                            TextSize = 18,
                            FontFace = Fnew(ab.Font, Enum.FontWeight.Medium),
                            BackgroundTransparency = 1,
                            AutomaticSize = "XY",
                            AnchorPoint = Vec2(0.5, 0.5),
                            Position = Dim2(0.5, 0, 0.5, 0)
                        });
                    end; aq = ac("ImageLabel", {
                        Image = af.Thumbnail.Image,
                        BackgroundTransparency = 1,
                        Size = Dim2(0, ai, 1, 0),
                        Parent = ah.UIElements.Main,
                        ScaleType = "Crop"
                    }, {
                        ar, ac("UICorner", {
                            CornerRadius = Dim(0, 0)
                        });
                    });
                end; ac("Frame", {
                    Size = Dim2(1, aq and -ai or 0, 1, 0),
                    Position = Dim2(0, aq and ai or 0, 0, 0),
                    BackgroundTransparency = 1,
                    Parent = ah.UIElements.Main
                }, {
                    ac("Frame", {
                        Size = Dim2(1, 0, 1, 0),
                        BackgroundTransparency = 1
                    }, {
                        ac("UIListLayout", {
                            Padding = Dim(0, 18),
                            FillDirection = "Vertical"
                        }), an, ao, ap, ac("UIPadding", {
                            PaddingTop = Dim(0, 16),
                            PaddingLeft = Dim(0, 16),
                            PaddingRight = Dim(0, 16),
                            PaddingBottom = Dim(0, 16)
                        });
                    });
                }); local ar = a.load("j").New;
                for as, at in next, af.Buttons do
                    ar(at.Title, at.Icon, at.Callback, at.Variant, ap, ah);
                end; ah:Open(); return af;
            end; return aa;
        end;
        function a.s()
            return function(aa)
                return {
                    Dark = {
                        Name = "Dark",
                        Accent = fromHex "#18181b",
                        Dialog = fromHex "#161616",
                        Outline = fromHex "#FFFFFF",
                        Text = fromHex "#FFFFFF",
                        Placeholder = fromHex "#7a7a7a",
                        Background = fromHex "#101010",
                        Button = fromHex "#52525b",
                        Icon = fromHex "#a1a1aa",
                        Toggle = fromHex "#33C759",
                        Slider = fromHex "#0091FF",
                        Checkbox = fromHex "#0091FF"
                    }, Light = {
                        Name = "Light",
                        Accent = fromHex "#FFFFFF",
                        Dialog = fromHex "#f4f4f5",
                        Outline = fromHex "#09090b",
                        Text = fromHex "#000000",
                        Placeholder = fromHex "#555555",
                        Background = fromHex "#e4e4e7",
                        Button = fromHex "#18181b",
                        Icon = fromHex "#52525b"
                    }, Rose = {
                        Name = "Rose",
                        Accent = fromHex "#be185d",
                        Dialog = fromHex "#4c0519",
                        Outline = fromHex "#fecdd3",
                        Text = fromHex "#fdf2f8",
                        Placeholder = fromHex "#d67aa6",
                        Background = fromHex "#1f0308",
                        Button = fromHex "#e11d48",
                        Icon = fromHex "#fb7185"
                    }, Plant = {
                        Name = "Plant",
                        Accent = fromHex "#166534",
                        Dialog = fromHex "#052e16",
                        Outline = fromHex "#bbf7d0",
                        Text = fromHex "#f0fdf4",
                        Placeholder = fromHex "#4fbf7a",
                        Background = fromHex "#0a1b0f",
                        Button = fromHex "#16a34a",
                        Icon = fromHex "#4ade80"
                    }, Red = {
                        Name = "Red",
                        Accent = fromHex "#991b1b",
                        Dialog = fromHex "#450a0a",
                        Outline = fromHex "#fecaca",
                        Text = fromHex "#fef2f2",
                        Placeholder = fromHex "#d95353",
                        Background = fromHex "#1c0606",
                        Button = fromHex "#dc2626",
                        Icon = fromHex "#ef4444"
                    }, Indigo = {
                        Name = "Indigo",
                        Accent = fromHex "#3730a3",
                        Dialog = fromHex "#1e1b4b",
                        Outline = fromHex "#c7d2fe",
                        Text = fromHex "#f1f5f9",
                        Placeholder = fromHex "#7078d9",
                        Background = fromHex "#0f0a2e",
                        Button = fromHex "#4f46e5",
                        Icon = fromHex "#6366f1"
                    }, Sky = {
                        Name = "Sky",
                        Accent = fromHex "#0369a1",
                        Dialog = fromHex "#0c4a6e",
                        Outline = fromHex "#bae6fd",
                        Text = fromHex "#f0f9ff",
                        Placeholder = fromHex "#4fb6d9",
                        Background = fromHex "#041f2e",
                        Button = fromHex "#0284c7",
                        Icon = fromHex "#0ea5e9"
                    }, Violet = {
                        Name = "Violet",
                        Accent = fromHex "#6d28d9",
                        Dialog = fromHex "#3c1361",
                        Outline = fromHex "#ddd6fe",
                        Text = fromHex "#faf5ff",
                        Placeholder = fromHex "#8f7ee0",
                        Background = fromHex "#1e0a3e",
                        Button = fromHex "#7c3aed",
                        Icon = fromHex "#8b5cf6"
                    }, Amber = {
                        Name = "Amber",
                        Accent = fromHex "#b45309",
                        Dialog = fromHex "#451a03",
                        Outline = fromHex "#fde68a",
                        Text = fromHex "#fffbeb",
                        Placeholder = fromHex "#d1a326",
                        Background = fromHex "#1c1003",
                        Button = fromHex "#d97706",
                        Icon = fromHex "#f59e0b"
                    }, Emerald = {
                        Name = "Emerald",
                        Accent = fromHex "#047857",
                        Dialog = fromHex "#022c22",
                        Outline = fromHex "#a7f3d0",
                        Text = fromHex "#ecfdf5",
                        Placeholder = fromHex "#3fbf8f",
                        Background = fromHex "#011411",
                        Button = fromHex "#059669",
                        Icon = fromHex "#10b981"
                    }, Midnight = {
                        Name = "Midnight",
                        Accent = fromHex "#1e3a8a",
                        Dialog = fromHex "#0c1e42",
                        Outline = fromHex "#bfdbfe",
                        Text = fromHex "#dbeafe",
                        Placeholder = fromHex "#2f74d1",
                        Background = fromHex "#0a0f1e",
                        Button = fromHex "#2563eb",
                        Icon = fromHex "#3b82f6"
                    }, Crimson = {
                        Name = "Crimson",
                        Accent = fromHex "#b91c1c",
                        Dialog = fromHex "#450a0a",
                        Outline = fromHex "#fca5a5",
                        Text = fromHex "#fef2f2",
                        Placeholder = fromHex "#6f757b",
                        Background = fromHex "#0c0404",
                        Button = fromHex "#991b1b",
                        Icon = fromHex "#dc2626"
                    }, MonokaiPro = {
                        Name = "Monokai Pro",
                        Accent = fromHex "#fc9867",
                        Dialog = fromHex "#1e1e1e",
                        Outline = fromHex "#78dce8",
                        Text = fromHex "#fcfcfa",
                        Placeholder = fromHex "#6f6f6f",
                        Background = fromHex "#191622",
                        Button = fromHex "#ab9df2",
                        Icon = fromHex "#a9dc76"
                    }, CottonCandy = {
                        Name = "Cotton Candy",
                        Accent = fromHex "#ec4899",
                        Dialog = fromHex "#2d1b3d",
                        Outline = fromHex "#f9a8d4",
                        Text = fromHex "#fdf2f8",
                        Placeholder = fromHex "#8a5fd3",
                        Background = fromHex "#1a0b2e",
                        Button = fromHex "#d946ef",
                        Icon = fromHex "#06b6d4"
                    }, Rainbow = {
                        Name = "Rainbow", Accent = aa:Gradient({
                            ["0"] = {Color = fromHex "#00ff41", Transparency = 0},
                            ["33"] = {Color = fromHex "#00ffff", Transparency = 0},
                            ["66"] = {Color = fromHex "#0080ff", Transparency = 0},
                            ["100"] = {Color = fromHex "#8000ff", Transparency = 0}
                        }, {Rotation = 45}), Dialog = aa:Gradient({
                            ["0"] = {Color = fromHex "#ff0080", Transparency = 0},
                            ["25"] = {Color = fromHex "#8000ff", Transparency = 0},
                            ["50"] = {Color = fromHex "#0080ff", Transparency = 0},
                            ["75"] = {Color = fromHex "#00ff80", Transparency = 0},
                            ["100"] = {Color = fromHex "#ff8000", Transparency = 0}
                        }, {Rotation = 135}), Outline = fromHex "#ffffff", Text = fromHex "#ffffff",
                        Placeholder = fromHex "#00ff80", Background = aa:Gradient({
                            ["0"] = {Color = fromHex "#ff0040", Transparency = 0},
                            ["20"] = {Color = fromHex "#ff4000", Transparency = 0},
                            ["40"] = {Color = fromHex "#ffff00", Transparency = 0},
                            ["60"] = {Color = fromHex "#00ff40", Transparency = 0},
                            ["80"] = {Color = fromHex "#0040ff", Transparency = 0},
                            ["100"] = {Color = fromHex "#4000ff", Transparency = 0}
                        }, {Rotation = 90}), Button = aa:Gradient({
                            ["0"] = {Color = fromHex "#ff0080", Transparency = 0},
                            ["25"] = {Color = fromHex "#ff8000", Transparency = 0},
                            ["50"] = {Color = fromHex "#ffff00", Transparency = 0},
                            ["75"] = {Color = fromHex "#80ff00", Transparency = 0},
                            ["100"] = {Color = fromHex "#00ffff", Transparency = 0}
                        }, {Rotation = 60}), Icon = fromHex "#ffffff"
                    };
                };
            end;
        end;
        function a.t()
            local aa = {}; local ab = a.load "b"; local ac = ab.New;
            function aa.New(ae, af, ag, ah, ai)
                local aj, ak = ai or 10, nil;
                if af and af ~= "" then
                    ak = ac("ImageLabel", {
                        Image = ab.Icon(af)[1],
                        ImageRectSize = ab.Icon(af)[2].ImageRectSize,
                        ImageRectOffset = ab.Icon(af)[2].ImageRectPosition,
                        Size = Dim2(0, 21, 0, 21),
                        BackgroundTransparency = 1,
                        ThemeTag = {ImageColor3 = "Icon"}
                    });
                end; local al = ac("TextLabel", {
                    BackgroundTransparency = 1,
                    TextSize = 17,
                    FontFace = Fnew(ab.Font, Enum.FontWeight.Regular),
                    Size = Dim2(1, ak and -29 or 0, 1, 0),
                    TextXAlignment = "Left",
                    ThemeTag = {TextColor3 = ah and "Placeholder" or "Text"},
                    Text = ae
                }); local am = ac("TextButton", {
                    Size = Dim2(1, 0, 0, 42),
                    Parent = ag,
                    BackgroundTransparency = 1,
                    Text = ""
                }, {
                    ac("Frame", {
                        Size = Dim2(1, 0, 1, 0),
                        BackgroundTransparency = 1
                    }, {
                        ab.NewRoundFrame(aj, "Squircle", {
                            ThemeTag = {ImageColor3 = "Accent"},
                            Size = Dim2(1, 0, 1, 0),
                            ImageTransparency = .97
                        }), ab.NewRoundFrame(aj, "SquircleOutline", {
                            ThemeTag = {ImageColor3 = "Outline"},
                            Size = Dim2(1, 0, 1, 0),
                            ImageTransparency = .95
                        }, {
                            ac("UIGradient", {
                                Rotation = 70,
                                Color = CSnew {
                                    CSKnew(0.0, fromRGB(255, 255, 255)),
                                    CSKnew(0.5, fromRGB(255, 255, 255)),
                                    CSKnew(1.0, fromRGB(255, 255, 255))
                                },
                                Transparency = NSnew {
                                    NSKnew(0.0, 0.1),
                                    NSKnew(0.5, 1),
                                    NSKnew(1.0, 0.1)
                                };
                            });
                        }), ab.NewRoundFrame(aj, "Squircle", {
                            Size = Dim2(1, 0, 1, 0),
                            Name = "Frame",
                            ImageColor3 = Col3new(1, 1, 1),
                            ImageTransparency = .95
                        }, {
                            ac("UIPadding", {
                                PaddingLeft = Dim(0, 12),
                                PaddingRight = Dim(0, 12)
                            }), ac("UIListLayout", {
                                FillDirection = "Horizontal",
                                Padding = Dim(0, 8),
                                VerticalAlignment = "Center",
                                HorizontalAlignment = "Left"
                            }), ak, al
                        });
                    });
                }); return am;
            end; return aa;
        end;
        function a.u()
            local aa = {}; local ad = a.load("b"); local ae = ad.New
            function aa.New(ag, ah, ai, aj)
                local ak = ae("Frame", {
                    Size = Dim2(0, aj, 1, 0),
                    BackgroundTransparency = 1,
                    Position = Dim2(1, 0, 0, 0),
                    AnchorPoint = Vec2(1, 0),
                    Parent = ah,
                    ZIndex = 999,
                    Active = true
                }); local al = ad.NewRoundFrame(aj / 2, "Squircle", {
                    Size = Dim2(1, 0, 0, 0),
                    ImageTransparency = 0.85,
                    ThemeTag = {ImageColor3 = "Text"},
                    Parent = ak
                }); local am = ae("Frame", {
                    Size = Dim2(1, 12, 1, 12),
                    Position = Dim2(0.5, 0, 0.5, 0),
                    AnchorPoint = Vec2(0.5, 0.5),
                    BackgroundTransparency = 1,
                    Active = true,
                    ZIndex = 999,
                    Parent = al
                }); local an, ao = false, 0;
                local function updateSliderSize()
                    local ap = ag; local aq = ap.AbsoluteCanvasSize.Y;
                    local ar = ap.AbsoluteWindowSize.Y; if aq <= ar then
                        al.Visible = false;
                        return;
                    end; local as = mclamp(ar / aq, 0.1, 1);
                    al.Size = Dim2(1, 0, as, 0); al.Visible = true;
                end; local function updateScrollingFramePosition()
                    local ap = al.Position.Y.Scale; local aq = ag.AbsoluteCanvasSize.Y;
                    local ar = ag.AbsoluteWindowSize.Y; local as = mmax(aq - ar, 0);
                    if as <= 0 then return; end;
                    local at = mmax(1 - al.Size.Y.Scale, 0);
                    if at <= 0 then return; end; local au = ap / at;
                    ag.CanvasPosition = Vec2(ag.CanvasPosition.X, au * as);
                end; local function updateThumbPosition()
                    if an then return; end; local ap = ag.CanvasPosition.Y;
                    local aq = ag.AbsoluteCanvasSize.Y; local ar = ag.AbsoluteWindowSize.Y;
                    local as = mmax(aq - ar, 0); if as <= 0 then
                        al.Position = Dim2(0, 0, 0, 0);
                        return;
                    end; local at = ap / as;
                    local au = mmax(1 - al.Size.Y.Scale, 0);
                    local av = mclamp(at * au, 0, au);
                    al.Position = Dim2(0, 0, av, 0);
                end; ad.AddSignal(ak.InputBegan, function(ap)
                    if (ap.UserInputType == Enum.UserInputType.MouseButton1 or ap.UserInputType == Enum.UserInputType.Touch) then
                        local aq = al.AbsolutePosition.Y; local ar = aq + al.AbsoluteSize.Y;
                        if not (ap.Position.Y >= aq and ap.Position.Y <= ar) then
                            local as, at, au = ak.AbsolutePosition.Y, ak.AbsoluteSize.Y, al.AbsoluteSize.Y;
                            local av = ap.Position.Y - as - au / 2; local aw = at - au;
                            local ax = mclamp(av / aw, 0, 1 - al.Size.Y.Scale);
                            al.Position = Dim2(0, 0, ax, 0); updateScrollingFramePosition();
                        end;
                    end;
                end); ad.AddSignal(am.InputBegan, function(ap)
                    if ap.UserInputType == Enum.UserInputType.MouseButton1 or ap.UserInputType == Enum.UserInputType.Touch then
                        local aq, ar = nil, nil; an = true; ao = ap.Position.Y - al.AbsolutePosition.Y;
                        ac.InputChanged:Connect(function(as)
                            if as.UserInputType == Enum.UserInputType.MouseMovement or as.UserInputType == Enum.UserInputType.Touch then
                                local at, au, av = ak.AbsolutePosition.Y, ak.AbsoluteSize.Y, al.AbsoluteSize.Y;
                                local aw = as.Position.Y - at - ao; local ax = au - av;
                                local ay = mclamp(aw / ax, 0, 1 - al.Size.Y.Scale);
                                al.Position = Dim2(0, 0, ay, 0); updateScrollingFramePosition();
                            end;
                        end); ar = ac.InputEnded:Connect(function(as)
                            if as.UserInputType == Enum.UserInputType.MouseButton1 or as.UserInputType == Enum.UserInputType.Touch then
                                an = false; if aq then
                                    aq:Disconnect();
                                end; if ar then
                                    ar:Disconnect();
                                end;
                            end;
                        end);
                    end;
                end); ad.AddSignal(PropChangeSignal(ag, "AbsoluteWindowSize"), function()
                    updateSliderSize(); updateThumbPosition();
                end); ad.AddSignal(PropChangeSignal(ag, "AbsoluteCanvasSize"), function()
                    updateSliderSize(); updateThumbPosition();
                end); ad.AddSignal(PropChangeSignal(ag, "CanvasPosition"), function()
                    if not an then
                        updateThumbPosition();
                    end;
                end); updateSliderSize(); updateThumbPosition(); return ak;
            end; return aa;
        end;
        function a.v()
            local aa = {}; local ab = a.load"b"; local ac = ab.New;
            function aa.New(ae, af, ag)
                local ah, ai, ak = {
                    Title = af.Title or "Tag", Icon = af.Icon,
                    Color = af.Color or fromHex "#315dff",
                    Radius = af.Radius or 999,
                    TagFrame = nil, Height = 26, Padding = 10,
                    TextSize = 14, IconSize = 16
                }, nil, nil; if ah.Icon then
                    ai = ab.Image(ah.Icon, ah.Icon, 0, af.Window, "Tag", false); ai.Size = Dim2(0, ah.IconSize, 0, ah.IconSize);
                    ai.ImageLabel.ImageColor3 = typeof(ah.Color) == "Color3" and ab.GetTextColorForHSB(ah.Color) or nil;
                end; local aj = ac("TextLabel", {
                    BackgroundTransparency = 1,
                    AutomaticSize = "XY",
                    TextSize = ah.TextSize,
                    FontFace = Fnew(ab.Font, Enum.FontWeight.SemiBold),
                    Text = ah.Title,
                    TextColor3 = typeof(ah.Color) == "Color3" and ab.GetTextColorForHSB(ah.Color) or nil
                }); if typeof(ah.Color) == "table" then
                    ak = ac "UIGradient"; for al, am in next, ah.Color do
                        ak[al] = am;
                    end; aj.TextColor3 = ab.GetTextColorForHSB(ab.GetAverageColor(ak)); if ai then
                        ai.ImageLabel.ImageColor3 = ab.GetTextColorForHSB(ab.GetAverageColor(ak));
                    end;
                end; local al = ab.NewRoundFrame(ah.Radius, "Squircle", {
                    AutomaticSize = "X",
                    Size = Dim2(0, 0, 0, ah.Height),
                    Parent = ag,
                    ImageColor3 = typeof(ah.Color) == "Color3" and ah.Color or Col3new(1, 1, 1)
                }, {
                    ak, ac("UIPadding", {
                        PaddingLeft = Dim(0, ah.Padding),
                        PaddingRight = Dim(0, ah.Padding)
                    }), ai, aj, ac("UIListLayout", {
                        FillDirection = "Horizontal",
                        VerticalAlignment = "Center",
                        Padding = Dim(0, ah.Padding / 1.5)
                    });
                }); function ah.SetTitle(am, an)
                    ah.Title = an; aj.Text = an;
                end; function ah.SetColor(am, an)
                    ah.Color = an if typeof(an) == "table" then
                        local ao = ab.GetAverageColor(an); TwCreate(TweenService, aj, TwInfo(0.06), {TextColor3 = ab.GetTextColorForHSB(ao)}):Play();
                        local ap = FindFirstChildOfClass(al, "UIGradient") or ac("UIGradient", {Parent = al});
                        for aq, ar in next, an do ap[aq] = ar; end; TwCreate(TweenService, al, TwInfo(0.06), {ImageColor3 = Col3new(1, 1, 1)}):Play();
                    else
                        if ak then Destroy(ak); end TwCreate(TweenService, aj, TwInfo(0.06), {TextColor3 = ab.GetTextColorForHSB(an)}):Play();
                        if ai then TwCreate(TweenService, ai.ImageLabel, TwInfo(0.06), {ImageColor3 = ab.GetTextColorForHSB(an)}):Play(); end;
                        TwCreate(TweenService, al, TwInfo(0.06), {ImageColor3 = an}):Play();
                    end;
                end; return ah;
            end; return aa;
        end;
        function a.w()
            local ac, ad = nil, {
                Folder = nil,
                Path = nil,
                Configs = {},
                Parser = {
                    Colorpicker = {
                        Save = function(ae)
                            return {
                                __type = ae.__type,
                                value = ae.Default:ToHex(),
                                transparency = ae.Transparency or nil
                            }
                        end,
                        Load = function(ae, af)
                            if ae and ae.Update then
                                ae:Update(fromHex(af.value), af.transparency or nil)
                            end
                        end
                    },
                    Dropdown = {
                        Save = function(ae)
                            return {
                                __type = ae.__type,
                                value = ae.Value
                            }
                        end,
                        Load = function(ae, af)
                            if ae and ae.Select then
                                ae:Select(af.value)
                            end
                        end
                    },
                    Input = {
                        Save = function(ae)
                            return {
                                __type = ae.__type,
                                value = ae.Value
                            }
                        end,
                        Load = function(ae, af)
                            if ae and ae.Set then
                                ae:Set(af.value)
                            end
                        end
                    },
                    Keybind = {
                        Save = function(ae)
                            return {
                                __type = ae.__type,
                                value = ae.Value
                            }
                        end,
                        Load = function(ae, af)
                            if ae and ae.Set then
                                ae:Set(af.value)
                            end
                        end
                    },
                    Slider = {
                        Save = function(ae)
                            return {
                                __type = ae.__type,
                                value = ae.Value.Default
                            }
                        end,
                        Load = function(ae, af)
                            if ae and ae.Set then
                                ae:Set(ton(af.value))
                            end
                        end
                    },
                    Toggle = {
                        Save = function(ae)
                            return {
                                __type = ae.__type,
                                value = ae.Value
                            }
                        end,
                        Load = function(ae, af)
                            if ae and ae.Set then
                                ae:Set(af.value)
                            end
                        end
                    }
                }
            }; function ad.Init(ae, af)
                if not af.Folder then warn"[ WindUI.ConfigManager ] Window.Folder is not specified."; return false; end;
                ac = af; ad.Folder = ac.Folder; ad.Path = "WindUI/" .. tos(ad.Folder) .. "/config/"; if not isfolder("WindUI/" .. ad.Folder) then
                    makefolder("WindUI/" .. ad.Folder); if not isfolder("WindUI/" .. ad.Folder .. "/config/") then
                        makefolder("WindUI/" .. ad.Folder .. "/config/");
                    end;
                end; local ag = ad:AllConfigs(); for ah, ai in next, ag do
                    if isfile and readfile and isfile(ai .. ".json") then
                        ad.Configs[ai] = readfile(ai .. ".json");
                    end;
                end; return ad;
            end; function ad.CreateConfig(ae, af, ag)
                local ah = {
                    Path = ad.Path .. af .. ".json",
                    Elements = {}, CustomData = {},
                    AutoLoad = ag or false, Version = 1.2
                } if not af then
                    return false, "No config file is selected";
                end; function ah.SetAsCurrent(ai)
                    ac:SetCurrentConfig(ah);
                end; function ah.Register(ai, aj, ak)
                    ah.Elements[aj] = ak;
                end; function ah.Set(ai, aj, ak)
                    ah.CustomData[aj] = ak;
                end; function ah.Get(ai, aj)
                    return ah.CustomData[aj];
                end; function ah.SetAutoLoad(ai, aj)
                    ah.AutoLoad = aj;
                end; function ah.Save(ai)
                    if ac.PendingFlags then
                        for aj, ak in next, ac.PendingFlags do
                            ah:Register(aj, ak);
                        end;
                    end; local aj = {
                        __version = ah.Version, __elements = {},
                        __autoload = ah.AutoLoad, __custom = ah.CustomData
                    }; for ak, al in next, ah.Elements do
                        if ad.Parser[al.__type] then
                            aj.__elements[tos(ak)] = ad.Parser[al.__type].Save(al);
                        end;
                    end; local am = EnCodeJ(HttpService, aj);
                    if writefile then
                        writefile(ah.Path, am);
                    end; return aj;
                end; function ah.Load(ai)
                    if isfile and not isfile(ah.Path) then
                        return false, "Config file does not exist";
                    end; local aj, ak = pcal(function()
                        local aj = readfile or function()
                            warn "[ WindUI.ConfigManager ] The config system doesn't work in the studio.";
                            return nil;
                        end; return DeCodeJ(ab, aj(ah.Path));
                    end); if not aj then
                        return false, "Failed to parse config file";
                    end; if not ak.__version then
                        local al = {__version = ah.Version, __elements = ak, __custom = {}};
                        ak = al;
                    end; if ac.PendingFlags then
                        for al, am in next, ac.PendingFlags do
                            ah:Register(al, am);
                        end;
                    end; for al, am in next, (ak.__elements or {}) do
                        if ah.Elements[al] and ad.Parser[am.__type] then
                            tspawn(function()
                                ad.Parser[am.__type].Load(ah.Elements[al], am);
                            end);
                        end;
                    end; ah.CustomData = ak.__custom or {};
                    return ah.CustomData;
                end; function ah.Delete(ai)
                    if not delfile then
                        return false, "delfile function is not available";
                    end; if not isfile(ah.Path) then
                        return false, "Config file does not exist";
                    end; local aj, ak = pcal(function()
                        delfile(ah.Path);
                    end); if not aj then
                        return false, "Failed to delete config file: " .. tos(ak);
                    end; ad.Configs[af] = nil; if ac.CurrentConfig == ah then
                        ac.CurrentConfig = nil;
                    end; return true, "Config deleted successfully";
                end; function ah.GetData(ai)
                    return {elements = ah.Elements, custom = ah.CustomData, autoload = ah.AutoLoad};
                end; if isfile(ah.Path) then
                    local ai, aj = pcal(function()
                        return DeCodeJ(HttpService, readfile(ah.Path));
                    end); if ai and aj and aj.__autoload then
                        ah.AutoLoad = true; tspawn(function()
                            twait(0.5) local ak, al = pcal(function()
                                return ah:Load();
                            end); if ak then
                                if ac.Debug then
                                    print("[ WindUI.ConfigManager ] AutoLoaded config: " .. af);
                                end;
                            else
                                warn("[ WindUI.ConfigManager ] Failed to AutoLoad config: " .. af .. " - " .. tos(al));
                            end;
                        end);
                    end;
                end; ah:SetAsCurrent(); ad.Configs[af] = ah;
                return ah;
            end; function ad.Config(ae, af, ag)
                return ad:CreateConfig(af, ag);
            end; function ad.GetAutoLoadConfigs(ae)
                local af = {}; for ag, ah in pir(ad.Configs) do
                    if ah.AutoLoad then
                        tablein(af, ag);
                    end;
                end; return af;
            end; function ad.DeleteConfig(ae, af)
                if not delfile then
                    return false, "delfile function is not available";
                end; local ag = ad.Path .. af .. ".json";
                if not isfile(ag) then
                    return false, "Config file does not exist";
                end; local ah, ai = pcal(function()
                    delfile(ag);
                end); if not ah then
                    return false, "Failed to delete config file: " .. tos(ai);
                end; ad.Configs[af] = nil; if ac.CurrentConfig and ac.CurrentConfig.Path == ag then
                    ac.CurrentConfig = nil;
                end; return true, "Config deleted successfully";
            end; function ad.AllConfigs(ae)
                if not listfiles then
                    return {};
                end; local af = {};
                if not isfolder(ad.Path) then
                    makefolder(ad.Path);
                    return af;
                end; for ag, ah in next, listfiles(ad.Path) do
                    local ai = ah:match"([^\\/]+)%.json$";
                    if ai then
                        tablein(af, ai);
                    end;
                end; return af;
            end; function ad.GetConfig(ae, af)
                return ad.Configs[af];
            end; return ad;
        end;
        function a.x()
            local aa = {}; local ab = a.load"b"; local ac = ab.New;
            function aa.New(af)
                local ag, ah = {Button = nil}, nil; local ai = ac("TextLabel", {
                    Text = af.Title,
                    TextSize = 17,
                    FontFace = Fnew(ab.Font, Enum.FontWeight.Medium),
                    BackgroundTransparency = 1,
                    AutomaticSize = "XY"
                }); local aj = ac("Frame", {
                    Size = Dim2(0, 36, 0, 36),
                    BackgroundTransparency = 1,
                    Name = "Drag"
                }, {
                    ac("ImageLabel", {
                        Image = ab.Icon "move"[1],
                        ImageRectOffset = ab.Icon "move"[2].ImageRectPosition,
                        ImageRectSize = ab.Icon "move"[2].ImageRectSize,
                        Size = Dim2(0, 18, 0, 18),
                        BackgroundTransparency = 1,
                        Position = Dim2(0.5, 0, 0.5, 0),
                        AnchorPoint = Vec2(0.5, 0.5),
                        ThemeTag = {
                            ImageColor3 = "Icon"
                        },
                        ImageTransparency = .3
                    });
                }); local ak = ac("Frame", {
                    Size = Dim2(0, 1, 1, 0),
                    Position = Dim2(0, 36, 0.5, 0),
                    AnchorPoint = Vec2(0, 0.5),
                    BackgroundColor3 = Col3new(1, 1, 1),
                    BackgroundTransparency = .9
                }); local al = ac("Frame", {
                    Size = Dim2(0, 0, 0, 0),
                    Position = Dim2(0.5, 0, 0, 28),
                    AnchorPoint = Vec2(0.5, 0.5),
                    Parent = af.Parent,
                    BackgroundTransparency = 1,
                    Active = true,
                    Visible = false
                }); local am = ac("TextButton", {
                    Size = Dim2(0, 0, 0, 44),
                    AutomaticSize = "X",
                    Parent = al,
                    Active = false,
                    BackgroundTransparency = .25,
                    ZIndex = 99,
                    BackgroundColor3 = Col3new(0, 0, 0)
                }, {
                    ac("UIScale", {
                        Scale = 1
                    }), ac("UICorner", {
                        CornerRadius = Dim(1, 0)
                    }), ac("UIStroke", {
                        Thickness = 1,
                        ApplyStrokeMode = "Border",
                        Color = Col3new(1, 1, 1),
                        Transparency = 0
                    }, {
                        ac("UIGradient", {
                            Color = CSnew(fromHex "40c9ff", fromHex "e81cff")
                        })
                    }), aj, ak, ac("UIListLayout", {
                        Padding = Dim(0, 4),
                        FillDirection = "Horizontal",
                        VerticalAlignment = "Center"
                    }), ac("TextButton", {
                        AutomaticSize = "XY",
                        Active = true,
                        BackgroundTransparency = 1,
                        Size = Dim2(0, 0, 0, 36),
                        BackgroundColor3 = Col3new(1, 1, 1)
                    }, {
                        ac("UICorner", {
                            CornerRadius = Dim(1, -4)
                        }), ah, ac("UIListLayout", {
                            Padding = Dim(0, af.UIPadding),
                            FillDirection = "Horizontal",
                            VerticalAlignment = "Center"
                        }), ai, ac("UIPadding", {
                            PaddingLeft = Dim(0, 11),
                            PaddingRight = Dim(0, 11)
                        })
                    }), ac("UIPadding", {
                        PaddingLeft = Dim(0, 4),
                        PaddingRight = Dim(0, 4)
                    });
                }); ag.Button = am; function ag.SetIcon(an, ao)
                    if ah then Destroy(ah); end; if ao then
                        ah = ab.Image(ao, af.Title, 0, af.Folder, "OpenButton", true, af.IconThemed);
                        ah.Size = Dim2(0, 22, 0, 22);
                        ah.LayoutOrder = -1;
                        ah.Parent = ag.Button.TextButton;
                    end;
                end; if af.Icon then
                    ag:SetIcon(af.Icon);
                end; ab.AddSignal(PropChangeSignal(am, "AbsoluteSize"), function()
                    al.Size = Dim2(0, am.AbsoluteSize.X, 0, am.AbsoluteSize.Y);
                end); ab.AddSignal(am.TextButton.MouseEnter, function()
                    TwCreate(TweenService, am.TextButton, TwInfo(0.1), {BackgroundTransparency = 0.93}):Play()
                end); ab.AddSignal(am.TextButton.MouseLeave, function()
                    TwCreate(TweenService, am.TextButton, TwInfo(0.1), {BackgroundTransparency = 1}):Play();
                end); local an = ab.Drag(al);
                function ag.Visible(ao, ap)
                    al.Visible = ap;
                end; function ag.Edit(ao, ap)
                    local aq = {
                        Title = ap.Title,
                        Icon = ap.Icon,
                        Enabled = ap.Enabled,
                        Position = ap.Position,
                        OnlyIcon = ap.OnlyIcon or false,
                        Draggable = ap.Draggable or nil,
                        OnlyMobile = ap.OnlyMobile,
                        CornerRadius = ap.CornerRadius or Dim(1, 0),
                        StrokeThickness = ap.StrokeThickness or 2,
                        Color = ap.Color or CSnew(fromHex "40c9ff", fromHex "e81cff")
                    }; if aq.Enabled == false then
                        af.IsOpenButtonEnabled = false;
                    end; if aq.OnlyMobile ~= false then
                        aq.OnlyMobile = true;
                    else
                        af.IsPC = false;
                    end; if aq.Draggable == false and aj and ak then
                        aj.Visible = aq.Draggable; ak.Visible = aq.Draggable;
                        if an then
                            an:Set(aq.Draggable);
                        end;
                    end; if aq.Position and al then
                        al.Position = aq.Position;
                    end; if aq.OnlyIcon == true and ai then
                        ai.Visible = false;
                        am.TextButton.UIPadding.PaddingLeft = Dim(0, 7);
                        am.TextButton.UIPadding.PaddingRight = Dim(0, 7);
                    elseif aq.OnlyIcon == false then
                        ai.Visible = true;
                        am.TextButton.UIPadding.PaddingLeft = Dim(0, 11);
                        am.TextButton.UIPadding.PaddingRight = Dim(0, 11);
                    end; if ai then
                        if aq.Title then
                            ai.Text = aq.Title;
                            ab:ChangeTranslationKey(ai, aq.Title);
                        elseif aq.Title == nil then end;
                    end; if aq.Icon then
                        ag:SetIcon(aq.Icon);
                    end; am.UIStroke.UIGradient.Color = aq.Color;
                    if Glow then Glow.UIGradient.Color = aq.Color; end;
                    am.UICorner.CornerRadius = aq.CornerRadius;
                    am.TextButton.UICorner.CornerRadius = Dim(aq.CornerRadius.Scale, aq.CornerRadius.Offset - 4);
                    am.UIStroke.Thickness = aq.StrokeThickness;
                end; return ag;
            end; return aa;
        end;
        function a.y()
            local aa = {}; local ab = a.load "b"; local ac = ab.New;
            function aa.New(ae, af, ag, ah, ai, aj)
                local ak = {
                    Container = nil,
                    TooltipSize = 16,
                    TooltipArrowSizeX = ai == "Small" and 16 or 24,
                    TooltipArrowSizeY = ai == "Small" and 6 or 9,
                    PaddingX = ai == "Small" and 12 or 14,
                    PaddingY = ai == "Small" and 7 or 9,
                    Radius = 999,
                    TitleFrame = nil
                }; ah = ah or ""; aj = aj ~= false;
                local al = ac("TextLabel", {
                    AutomaticSize = "XY",
                    TextWrapped = aj,
                    BackgroundTransparency = 1,
                    FontFace = Fnew(ab.Font, Enum.FontWeight.Medium),
                    Text = ae,
                    TextSize = ai == "Small" and 15 or 17,
                    TextTransparency = 1,
                    ThemeTag = {TextColor3 = "Tooltip" .. ah .. "Text"}
                }); ak.TitleFrame = al; local am = ac("UIScale", {Scale = 0.9});
                local an = ac("Frame", {
                    AnchorPoint = Vec2(0.5, 0),
                    AutomaticSize = "XY",
                    BackgroundTransparency = 1,
                    Parent = af,
                    Visible = false
                }, {
                    ac("UISizeConstraint", {
                        MaxSize = Vec2(400, mmaths.huge)
                    }), ac("Frame", {
                        AutomaticSize = "XY",
                        BackgroundTransparency = 1,
                        LayoutOrder = 99,
                        Visible = ag,
                        Name = "Arrow"
                    }, {
                        ac("ImageLabel", {
                            Size = Dim2(0, ak.TooltipArrowSizeX, 0, ak.TooltipArrowSizeY),
                            BackgroundTransparency = 1,
                            Image = "rbxassetid://105854070513330",
                            ThemeTag = {
                                ImageColor3 = "Tooltip" .. ah
                            }
                        }, {})
                    }), ab.NewRoundFrame(ak.Radius, "Squircle", {
                        AutomaticSize = "XY",
                        ThemeTag = {
                            ImageColor3 = "Tooltip" .. ah
                        },
                        ImageTransparency = 1,
                        Name = "Background"
                    }, {
                        ac("Frame", {
                            AutomaticSize = "XY",
                            BackgroundTransparency = 1
                        }, {
                            ac("UICorner", {
                                CornerRadius = Dim(0, 16)
                            }), ac( "UIListLayout", {
                                Padding = Dim(0, 12),
                                FillDirection = "Horizontal",
                                VerticalAlignment = "Center"
                            }), al, ac("UIPadding", {
                                PaddingTop = Dim(0, ak.PaddingY),
                                PaddingLeft = Dim(0, ak.PaddingX),
                                PaddingRight = Dim(0, ak.PaddingX),
                                PaddingBottom = Dim(0, ak.PaddingY)
                            });
                        });
                    }), am, ac("UIListLayout", {
                        Padding = Dim(0, 0),
                        FillDirection = "Vertical",
                        VerticalAlignment = "Center",
                        HorizontalAlignment = "Center"
                    });
                }); ak.Container = an; function ak.Open(ao)
                    an.Visible = true; TwCreate(TweenService, an.Background, TwInfo(0.2, Enum.EasingStyle.Quint, Enum.EasingDirection.Out), {ImageTransparency = 0}):Play();
                    TwCreate(TweenService, an.Arrow.ImageLabel, TwInfo(0.2, Enum.EasingStyle.Quint, Enum.EasingDirection.Out), {ImageTransparency = 0}):Play();
                    TwCreate(TweenService, al, TwInfo(0.2, Enum.EasingStyle.Quint, Enum.EasingDirection.Out), {TextTransparency = 0}):Play();
                    TwCreate(TweenService, am, TwInfo(0.22, Enum.EasingStyle.Quint, Enum.EasingDirection.Out), {Scale = 1}):Play();
                end; function ak.Close(ao, ap)
                    TwCreate(TweenService, an.Background, TwInfo(0.3, Enum.EasingStyle.Quint, Enum.EasingDirection.Out), {ImageTransparency = 1}):Play();
                    TwCreate(TweenService, an.Arrow.ImageLabel, TwInfo(0.2, Enum.EasingStyle.Quint, Enum.EasingDirection.Out), {ImageTransparency = 1}):Play();
                    TwCreate(TweenService, al, TwInfo(0.3, Enum.EasingStyle.Quint, Enum.EasingDirection.Out), {TextTransparency = 1}):Play();
                    TwCreate(TweenService, am, TwInfo(0.35, Enum.EasingStyle.Quint, Enum.EasingDirection.In), {Scale = 0.9}):Play();
                    ap = ap ~= false; if ap then
                        twait(0.35); an.Visible = false; Destroy(an)
                    end;
                end; return ak;
            end; return aa;
        end;
        function a.z()
            local aa = a.load"b"; local ab, ac, ad = aa.New, aa.NewRoundFrame;
            local function Color3ToHSB(af)
                local ag, ah, ai = af.R, af.G, af.B
                local aj, ak = mmax(ag, ah, ai), mmin(ag, ah, ai);
                local al, am = aj - ak, 0;
                if al ~= 0 then
                    if aj == ag then
                        am = (ah - ai) / al % 6;
                    elseif aj == ah then
                        am = (ai - ag) / al + 2;
                    else
                        am = (ag - ah) / al + 4;
                    end;
                    am = am * 60;
                else
                    am = 0;
                end; local an, ao = (aj == 0) and 0 or (al / aj), aj;
                return {h = mfloor(am + 0.5), s = an, b = ao};
            end; local function GetPerceivedBrightness(af)
                local ag, ah, ai = af.R, af.G, af.B;
                return 0.299 * ag + 0.587 * ah + 0.114 * ai;
            end; local function GetTextColorForHSB(af)
                local ag = Color3ToHSB(af); local ah, ai, aj = ag.h, ag.s, ag.b;
                if GetPerceivedBrightness(af) > 0.5 then
                    return fromHSV(ah / 360, 0, 0.05);
                else
                    return fromHSV(ah / 360, 0, 0.98);
                end;
            end; local function getElementPosition(af, ag)
                if type(ag) ~= "number" or ag ~= mfloor(ag) then return nil, 1; end;
                local ah = #af; if ah == 0 or ag < 1 or ag > ah then
                    return nil, 2;
                end; local function isDelimiter(ai)
                    if ai == nil then return true; end; local aj = ai.__type;
                    return aj == "Divider" or aj == "Space" or aj == "Section" or aj == "Code";
                end; if isDelimiter(af[ag]) then
                    return nil, 3;
                end; local function calculate(ai, aj)
                    if aj == 1 then return "Squircle"; end;
                    if ai == 1 then return "Squircle-TL-TR"; end;
                    if ai == aj then return "Squircle-BL-BR"; end; return "Square";
                end; local ai, aj = 1, 0
                for ak = 1, ah do
                    local al = af[ak]; if isDelimiter(al) then
                        if ag >= ai and ag <= ak - 1 then
                            local am = ag - ai + 1;
                            return calculate(am, aj);
                        end; ai = ak + 1 aj = 0
                    else
                        aj = aj + 1;
                    end;
                end; if ag >= ai and ag <= ah then
                    local ak = ag - ai + 1;
                    return calculate(ak, aj);
                end; return nil, 4;
            end; return function(af)
                local ag = {
                    Title = af.Title,
                    Desc = af.Desc or nil,
                    Hover = af.Hover,
                    Thumbnail = af.Thumbnail,
                    ThumbnailSize = af.ThumbnailSize or 80,
                    Image = af.Image,
                    IconThemed = af.IconThemed or false,
                    ImageSize = af.ImageSize or 30,
                    Color = af.Color,
                    Scalable = af.Scalable,
                    Parent = af.Parent,
                    Justify = af.Justify or "Between",
                    UIPadding = af.Window.ElementConfig.UIPadding,
                    UICorner = af.Window.ElementConfig.UICorner,
                    UIElements = {},
                    Index = af.Index
                }; local ah, ai, aj, ak, al, am = ag.ImageSize, ag.ThumbnailSize, true, 0, nil, nil;
                if ag.Thumbnail then
                    al = aa.Image(
                        ag.Thumbnail, ag.Title,
                        af.Window.NewElements and ag.UICorner - 11 or (ag.UICorner - 4),
                        af.Window.Folder, "Thumbnail", false, ag.IconThemed
                    ); al.Size = Dim2(1, 0, 0, ai);
                end; if ag.Image then
                    am = aa.Image(
                        ag.Image, ag.Title, af.Window.NewElements and ag.UICorner - 11 or (ag.UICorner - 4),
                        af.Window.Folder, "Image", ag.IconThemed, not ag.Color and true or false, "ElementIcon"
                    ); if typeof(ag.Color) == "string" then
                        am.ImageLabel.ImageColor3 = GetTextColorForHSB(fromHex(aa.Colors[ag.Color]));
                    elseif typeof(ag.Color) == "Color3" then
                        am.ImageLabel.ImageColor3 = GetTextColorForHSB(ag.Color);
                    end; am.Size = Dim2(0, ah, 0, ah); ak = ah;
                end; local function CreateText(an, ao)
                    local ap = typeof(ag.Color) == "string" and GetTextColorForHSB(fromHex(aa.Colors[ag.Color])) or typeof(ag.Color) == "Color3" and GetTextColorForHSB(ag.Color);
                    return ab("TextLabel", {
                        BackgroundTransparency = 1,
                        Text = an or "",
                        TextSize = ao == "Desc" and 15 or 17,
                        TextXAlignment = "Left",
                        ThemeTag = {
                            TextColor3 = not ag.Color and ("Element" .. ao) or nil
                        },
                        TextColor3 = ag.Color and ap or nil,
                        TextTransparency = ao == "Desc" and .3 or 0,
                        TextWrapped = true,
                        Size = Dim2(ag.Justify == "Between" and 1 or 0, 0, 0, 0),
                        AutomaticSize = ag.Justify == "Between" and "Y" or "XY",
                        FontFace = Fnew(aa.Font, ao == "Desc" and Enum.FontWeight.Medium or Enum.FontWeight.SemiBold)
                    });
                end; local an = CreateText(ag.Title, "Title"); local ao = CreateText(ag.Desc, "Desc");
                if not ag.Title or ag.Title == "" then ao.Visible = false; end;
                if not ag.Desc or ag.Desc == "" then ao.Visible = false; end;
                ag.UIElements.Title = an; ag.UIElements.Desc = ao;
                ag.UIElements.Container = ab("Frame", {
                    Size = Dim2(1, 0, 1, 0),
                    AutomaticSize = "Y",
                    BackgroundTransparency = 1
                }, {
                    ab("UIListLayout", {
                        Padding = Dim(0, ag.UIPadding),
                        FillDirection = "Vertical",
                        VerticalAlignment = "Center",
                        HorizontalAlignment = ag.Justify == "Between" and "Left" or "Center"
                    }), al, ab("Frame", {
                        Size = Dim2(
                            ag.Justify == "Between" and 1 or 0,
                            ag.Justify == "Between" and -af.TextOffset or 0,
                            0,
                            0
                        ),
                        AutomaticSize = ag.Justify == "Between" and "Y" or "XY",
                        BackgroundTransparency = 1,
                        Name = "TitleFrame"
                    }, {
                        ab("UIListLayout", {
                            Padding = Dim(0, ag.UIPadding),
                            FillDirection = "Horizontal",
                            VerticalAlignment = af.Window.NewElements and
                                (ag.Justify == "Between" and "Top" or "Center") or
                                "Center",
                            HorizontalAlignment = ag.Justify ~= "Between" and ag.Justify or "Center"
                        }), am, ab( "Frame", {
                            BackgroundTransparency = 1,
                            AutomaticSize = ag.Justify == "Between" and "Y" or "XY",
                            Size = Dim2(
                                ag.Justify == "Between" and 1 or 0,
                                ag.Justify == "Between" and (am and -ak - ag.UIPadding or -ak) or 0,
                                1,
                                0
                            ),
                            Name = "TitleFrame"
                        }, {
                            ab("UIPadding", {
                                PaddingTop = Dim(0, af.Window.NewElements and ag.UIPadding / 2 or 0),
                                PaddingLeft = Dim(0, af.Window.NewElements and ag.UIPadding / 2 or 0),
                                PaddingRight = Dim(0, af.Window.NewElements and ag.UIPadding / 2 or 0),
                                PaddingBottom = Dim(0, af.Window.NewElements and ag.UIPadding / 2 or 0)
                            }), ab("UIListLayout", {
                                Padding = Dim(0, 6),
                                FillDirection = "Vertical",
                                VerticalAlignment = "Center",
                                HorizontalAlignment = "Left"
                            }), an, ao
                        });
                    });
                }); local ap = aa.Image("lock", "lock", 0, af.Window.Folder, "Lock", false);
                ap.Size = Dim2(0, 20, 0, 20); ap.ImageLabel.ImageColor3 = Col3new(1, 1, 1);
                ap.ImageLabel.ImageTransparency = .4; local aq = ab("TextLabel", {
                    Text = "Locked",
                    TextSize = 18,
                    FontFace = Fnew(aa.Font, Enum.FontWeight.Medium),
                    AutomaticSize = "XY",
                    BackgroundTransparency = 1,
                    TextColor3 = Col3new(1, 1, 1),
                    TextTransparency = .05
                }); local ar = ab("Frame", {
                    Size = Dim2(1, ag.UIPadding * 2, 1, ag.UIPadding * 2),
                    BackgroundTransparency = 1,
                    AnchorPoint = Vec2(0.5, 0.5),
                    Position = Dim2(0.5, 0, 0.5, 0),
                    ZIndex = 9999999
                }); local as, at = ac(ag.UICorner, "Squircle", {
                    Size = Dim2(1, 0, 1, 0),
                    ImageTransparency = .25,
                    ImageColor3 = Col3new(0, 0, 0),
                    Visible = false,
                    Active = false,
                    Parent = ar
                }, {
                    ab("UIListLayout", {
                        FillDirection = "Horizontal",
                        VerticalAlignment = "Center",
                        HorizontalAlignment = "Center",
                        Padding = Dim(0, 8)
                    }), ap, aq
                }, nil, true); local au, av = ac(ag.UICorner, "Squircle-Outline", {
                    Size = Dim2(1, 0, 1, 0),
                    ImageTransparency = 1,
                    Active = false,
                    ThemeTag = {
                        ImageColor3 = "Text"
                    },
                    Parent = ar
                }, {
                    ab("UIListLayout", {
                        FillDirection = "Horizontal",
                        VerticalAlignment = "Center",
                        HorizontalAlignment = "Center",
                        Padding = Dim(0, 8)
                    })
                }, nil, true); local aw, ax = ac(ag.UICorner, "Squircle", {
                    Size = Dim2(1, 0, 1, 0),
                    ImageTransparency = 1,
                    Active = false,
                    ThemeTag = {
                        ImageColor3 = "Text"
                    },
                    Parent = ar
                }, {
                    ab("UIListLayout", {
                        FillDirection = "Horizontal",
                        VerticalAlignment = "Center",
                        HorizontalAlignment = "Center",
                        Padding = Dim(0, 8)
                    })
                }, nil, true); local ay, az = ac(ag.UICorner, "Squircle-Outline", {
                    Size = Dim2(1, 0, 1, 0),
                    ImageTransparency = 1,
                    Active = false,
                    ThemeTag = {
                        ImageColor3 = "Text"
                    },
                    Parent = ar
                }, {
                    ab("UIListLayout", {
                        FillDirection = "Horizontal",
                        VerticalAlignment = "Center",
                        HorizontalAlignment = "Center",
                        Padding = Dim(0, 8)
                    }), ab("UIGradient", {
                        Name = "HoverGradient",
                        Color = CSnew {
                            CSKnew(0, Col3new(1, 1, 1)),
                            CSKnew(0.5, Col3new(1, 1, 1)),
                            CSKnew(1, Col3new(1, 1, 1))
                        },
                        Transparency = NSnew {
                            NSKnew(0, 1),
                            NSKnew(0.25, 0.9),
                            NSKnew(0.5, 0.3),
                            NSKnew(0.75, 0.9),
                            NSKnew(1, 1)
                        };
                    })
                }, nil, true); local aA, aB = ac(ag.UICorner,  "Squircle", {
                    Size = Dim2(1, 0, 1, 0),
                    ImageTransparency = 1,
                    Active = false,
                    ThemeTag = {
                        ImageColor3 = "Text"
                    },
                    Parent = ar
                }, {
                    ab("UIGradient", {
                        Name = "HoverGradient", Color = CSnew {
                            CSKnew(0, Col3new(1, 1, 1)),
                            CSKnew(0.5, Col3new(1, 1, 1)),
                            CSKnew(1, Col3new(1, 1, 1))
                        }, Transparency = NSnew {
                            NSKnew(0, 1),
                            NSKnew(0.25, 0.9),
                            NSKnew(0.5, 0.3),
                            NSKnew(0.75, 0.9),
                            NSKnew(1, 1)
                        }
                    }
                ), ab("UIListLayout", {
                        FillDirection = "Horizontal",
                        VerticalAlignment = "Center",
                        HorizontalAlignment = "Center",
                        Padding = Dim(0, 8)
                    })
                }, nil, true); local aC, aD = ac(ag.UICorner, "Squircle", {
                    Size = Dim2(1, 0, 0, 0),
                    AutomaticSize = "Y",
                    ImageTransparency = ag.Color and .05 or .93,
                    Parent = af.Parent,
                    ThemeTag = {
                        ImageColor3 = not ag.Color and "ElementBackground" or nil
                    },
                    ImageColor3 = ag.Color and (typeof(ag.Color) == "string" and fromHex(aa.Colors[ag.Color]) or typeof(ag.Color) == "Color3" and ag.Color) or nil
                }, {
                    ag.UIElements.Container,
                    ar, ab("UIPadding", {
                        PaddingTop = Dim(0, ag.UIPadding),
                        PaddingLeft = Dim(0, ag.UIPadding),
                        PaddingRight = Dim(0, ag.UIPadding),
                        PaddingBottom = Dim(0, ag.UIPadding)
                    })
                }, true, true); ag.UIElements.Main = aC; ag.UIElements.Locked = as;
                if ag.Hover then
                    aa.AddSignal(aC.MouseEnter, function()
                        if aj then
                            TwCreate(TweenService, aC, TwInfo(0.12), {ImageTransparency = ag.Color and 0.15 or 0.9}):Play();
                            TwCreate(TweenService, aA, TwInfo(0.12), {ImageTransparency = 0.9}):Play();
                            TwCreate(TweenService, ay, TwInfo(0.12), {ImageTransparency = 0.8}):Play();
                            aa.AddSignal(aC.MouseMoved, function(aE, aF)
                                aA.HoverGradient.Offset = Vec2(((aE - aC.AbsolutePosition.X) / aC.AbsoluteSize.X) - 0.5, 0)
                                ay.HoverGradient.Offset = Vec2(((aE - aC.AbsolutePosition.X) / aC.AbsoluteSize.X) - 0.5, 0)
                            end);
                        end;
                    end); aa.AddSignal(aC.InputEnded, function()
                        if aj then
                            TwCreate(TweenService, aC, TwInfo(0.12), {ImageTransparency = ag.Color and 0.05 or 0.93}):Play();
                            TwCreate(TweenService, aA, TwInfo(0.12), {ImageTransparency = 1}):Play();
                            TwCreate(TweenService, ay, TwInfo(0.12), {ImageTransparency = 1}):Play();
                        end;
                    end);
                end; function ag.SetTitle(aE, aF)
                    ag.Title = aF; an.Text = aF;
                end; function ag.SetDesc(aE, aF)
                    ag.Desc = aF; ao.Text = aF or "";
                    if not aF then
                        ao.Visible = false;
                    elseif not ao.Visible then
                        ao.Visible = true;
                    end;
                end; function ag.Colorize(aE, aF, b)
                    if ag.Color then
                        aF[b] = typeof(ag.Color) == "string" and GetTextColorForHSB(fromHex(aa.Colors[ag.Color])) or typeof(ag.Color) == "Color3" and GetTextColorForHSB(ag.Color) or nil;
                    end;
                end; if af.ElementTable then
                    aa.AddSignal(PropChangeSignal(an, "Text"), function()
                        if ag.Title ~= an.Text then
                            ag:SetTitle(an.Text);
                            af.ElementTable.Title = an.Text;
                        end;
                    end); aa.AddSignal(PropChangeSignal(ao, "Text"), function()
                        if ag.Desc ~= ao.Text then
                            ag:SetDesc(ao.Text);
                            af.ElementTable.Desc = ao.Text;
                        end;
                    end);
                end; function ag.SetThumbnail(aE, aF, b)
                    ag.Thumbnail = aF if b then
                        ag.ThumbnailSize = b; ai = b;
                    end; if al then
                        if aF then
                            Destroy(al); al = aa.Image(aF, ag.Title, ag.UICorner - 3, af.Window.Folder, "Thumbnail", false, ag.IconThemed);
                            al.Size = Dim2(1, 0, 0, ai); al.Parent = ag.UIElements.Container;
                            local d = FindFirstChild(ag.UIElements.Container, "UIListLayout");
                            if d then al.LayoutOrder = -1; end;
                        else
                            al.Visible = false;
                        end;
                    else
                        if aF then
                            al = aa.Image(aF, ag.Title, ag.UICorner - 3, af.Window.Folder, "Thumbnail", false, ag.IconThemed);
                            al.Size = Dim2(1, 0, 0, ai); al.Parent = ag.UIElements.Container;
                            local d = FindFirstChild(ag.UIElements.Container, "UIListLayout");
                            if d then al.LayoutOrder = -1; end;
                        end;
                    end;
                end; function ag.SetImage(aE, aF, b)
                    ag.Image = aF; if b then
                        ag.ImageSize = b; ah = b;
                    end; if aF then
                        am = aa.Image(
                            aF, ag.Title, ag.UICorner - 3,
                            af.Window.Folder, "Image",
                            not ag.Color and true or false
                        ); if typeof(ag.Color) == "string" then
                            am.ImageLabel.ImageColor3 = GetTextColorForHSB(fromHex(aa.Colors[ag.Color]));
                        elseif typeof(ag.Color) == "Color3" then
                            am.ImageLabel.ImageColor3 = GetTextColorForHSB(ag.Color);
                        end; am.Visible = true;
                        am.Size = Dim2(0, ah, 0, ah);
                        ak = ah;
                    else
                        if am then
                            am.Visible = true;
                        end; ak = 0;
                    end; ag.UIElements.Container.TitleFrame.TitleFrame.Size = Dim2(1, -ak, 1, 0);
                end; function ag.Destroy(aE)
                    Destroy(aC);
                end; function ag.Lock(aE)
                    aj = false; as.Active = true;
                    as.Visible = true;
                end; function ag.Unlock(aE)
                    aj = true; as.Active = false;
                    as.Visible = false;
                end; function ag.Highlight(aE)
                    local aF = ab("UIGradient", {
                        Color = CSnew {
                            CSKnew(0, Col3new(1, 1, 1)),
                            CSKnew(0.5, Col3new(1, 1, 1)),
                            CSKnew(1, Col3new(1, 1, 1))
                        }, Transparency = NSnew {
                            NSKnew(0, 1),
                            NSKnew(0.1, 0.9),
                            NSKnew(0.5, 0.3),
                            NSKnew(0.9, 0.9),
                            NSKnew(1, 1)
                        }, Rotation = 0,
                        Offset = Vec2(-1, 0), Parent = au
                    }); local b = ab("UIGradient", {
                        Color = CSnew {
                            CSKnew(0, Col3new(1, 1, 1)),
                            CSKnew(0.5, Col3new(1, 1, 1)),
                            CSKnew(1, Col3new(1, 1, 1))
                        }, Transparency = NSnew {
                            NSKnew(0, 1),
                            NSKnew(0.15, 0.8),
                            NSKnew(0.5, 0.1),
                            NSKnew(0.85, 0.8),
                            NSKnew(1, 1)
                        }, Rotation = 0,
                        Offset = Vec2(-1, 0), Parent = aw
                    }); au.ImageTransparency = 0.65; aw.ImageTransparency = 0.88;
                    TwCreate(TweenService, aF, TwInfo(0.75), {Offset = Vec2(1, 0)}):Play();
                    TwCreate(TweenService, b, TwInfo(0.75), {Offset = Vec2(1, 0)}):Play();
                    tspawn(function()
                        twait(0.75); au.ImageTransparency = 1; aw.ImageTransparency = 1;
                        Destroy(aF); Destroy(b);
                    end);
                end; function ag.UpdateShape(aE)
                    if af.Window.NewElements then
                        local aF = nil; if af.ParentConfig.ParentType == "Group" then
                            aF = "Squircle";
                        else
                            aF = getElementPosition(aE.Elements, ag.Index);
                        end; if aF and aC then
                            aD:SetType(aF);
                            at:SetType(aF);
                            ax:SetType(aF);
                            av:SetType(aF .. "-Outline");
                            aB:SetType(aF);
                            az:SetType(aF .. "-Outline");
                        end;
                    end;
                end; return ag;
            end;
        end;
        function a.A()
            local ac = {}; local aa = a.load "b"; local ab = aa.New;
            local ad = a.load("j").New; function ac.New(ae, af)
                af.Hover = false; af.TextOffset = 0; af.ParentConfig = af;
                af.IsButtons = af.Buttons and #af.Buttons > 0 and true or false;
                local ag = {
                    __type = "Paragraph",
                    Title = af.Title or "Paragraph",
                    Desc = af.Desc or nil,
                    Locked = af.Locked or false
                }; local ah = a.load "z"(af);
                ag.ParagraphFrame = ah;
                if af.Buttons and #af.Buttons > 0 then
                    local ai = ab("Frame", {
                        Size = Dim2(1, 0, 0, 38),
                        BackgroundTransparency = 1,
                        AutomaticSize = "Y",
                        Parent = ah.UIElements.Container
                    }, {
                        ab("UIListLayout", {
                            Padding = Dim(0, 10),
                            FillDirection = "Vertical"
                        });
                    }); for aj, ak in next, af.Buttons do
                        local al = ad(ak.Title, ak.Icon, ak.Callback, "White", ai, nil, nil, af.Window.NewElements and 12 or 10);
                        al.Size = Dim2(1, 0, 0, 38);
                    end;
                end; return ag.__type, ag;
            end return ac;
        end;
        function a.B()
            local ac = {}; local aa = a.load "b"; local ab = aa.New;
            function ac.New(ad, ae)
                local af, ag = {
                    __type = "Button",
                    Title = ae.Title or "Button",
                    Desc = ae.Desc or nil,
                    Icon = ae.Icon or "mouse-pointer-click",
                    IconThemed = ae.IconThemed or false,
                    Color = ae.Color,
                    Justify = ae.Justify or "Between",
                    IconAlign = ae.IconAlign or "Right",
                    Locked = ae.Locked or false,
                    Callback = ae.Callback or function() end,
                    UIElements = {}
                }, true; af.ButtonFrame = a.load "z" {
                    Title = af.Title,
                    Desc = af.Desc,
                    Parent = ae.Parent,
                    Window = ae.Window,
                    Color = af.Color,
                    Justify = af.Justify,
                    TextOffset = 20,
                    Hover = true,
                    Scalable = true,
                    Tab = ae.Tab,
                    Index = ae.Index,
                    ElementTable = af,
                    ParentConfig = ae
                }; af.UIElements.ButtonIcon = aa.Image(af.Icon, af.Icon, 0, ae.Window.Folder, "Button", not af.Color and true or nil, af.IconThemed);
                af.UIElements.ButtonIcon.Size = Dim2(0, 20, 0, 20);
                af.UIElements.ButtonIcon.Parent = af.Justify == "Between" and af.ButtonFrame.UIElements.Main or af.ButtonFrame.UIElements.Container.TitleFrame;
                af.UIElements.ButtonIcon.LayoutOrder = af.IconAlign == "Left" and -99999 or 99999;
                af.UIElements.ButtonIcon.AnchorPoint = Vec2(1, 0.5);
                af.UIElements.ButtonIcon.Position = Dim2(1, 0, 0.5, 0);
                af.ButtonFrame:Colorize(af.UIElements.ButtonIcon.ImageLabel, "ImageColor3");
                function af.Lock(ah)
                    af.Locked = true; ag = false;
                    return af.ButtonFrame:Lock();
                end; function af.Unlock(ah)
                    af.Locked = false; ag = true;
                    return af.ButtonFrame:Unlock();
                end; if af.Locked then
                    af:Lock();
                end; aa.AddSignal(af.ButtonFrame.UIElements.Main.MouseButton1Click, function()
                    if ag then
                        tspawn(function()
                            aa.SafeCallback(af.Callback);
                        end);
                    end;
                end); return af.__type, af;
            end; return ac;
        end;
        function a.C()
            local aa = {}; local ab = a.load "b"; local ac = ab.New;
            function aa.New(af, ag, ah, ai, aj, ak, al)
                local am, an, ao = {}, 12, nil;
                if ag and ag ~= "" then
                    ao = ac("ImageLabel", {
                        Size = Dim2(0, 13, 0, 13),
                        BackgroundTransparency = 1,
                        AnchorPoint = Vec2(0.5, 0.5),
                        Position = Dim2(0.5, 0, 0.5, 0),
                        Image = ab.Icon(ag)[1],
                        ImageRectOffset = ab.Icon(ag)[2].ImageRectPosition,
                        ImageRectSize = ab.Icon(ag)[2].ImageRectSize,
                        ImageTransparency = 1,
                        ImageColor3 = Col3new(0, 0, 0)
                    });
                end; local ap = ac("Frame", {
                    Size = Dim2(0, 2, 0, 26),
                    BackgroundTransparency = 1,
                    Parent = ai
                }); local aq = ab.NewRoundFrame(an, "Squircle", {
                    ImageTransparency = .85,
                    ThemeTag = {
                        ImageColor3 = "Text"
                    },
                    Parent = ap,
                    Size = Dim2(0, ak and (52) or (40.8), 0, 24),
                    AnchorPoint = Vec2(1, 0.5),
                    Position = Dim2(0, 0, 0.5, 0)
                }, {
                    ab.NewRoundFrame(an, "Squircle", {
                        Size = Dim2(1, 0, 1, 0),
                        Name = "Layer",
                        ThemeTag = {
                            ImageColor3 = "Toggle"
                        },
                        ImageTransparency = 1
                    }), ab.NewRoundFrame(an, "SquircleOutline", {
                        Size = Dim2(1, 0, 1, 0),
                        Name = "Stroke",
                        ImageColor3 = Col3new(1, 1, 1),
                        ImageTransparency = 1
                    }, {
                        ac("UIGradient", {
                            Rotation = 90,
                            Transparency = NSnew {
                                NSKnew(0, 0),
                                NSKnew(1, 1)
                            }
                        })
                    }), ab.NewRoundFrame(an, "Squircle", {
                        Size = Dim2(0, ak and 30 or 20, 0, 20),
                        Position = Dim2(0, 2, 0.5, 0),
                        AnchorPoint = Vec2(0, 0.5),
                        ImageTransparency = 1,
                        Name = "Frame"
                    }, {
                        ab.NewRoundFrame(an,"Squircle", {
                            Size = Dim2(1, 0, 1, 0),
                            ImageTransparency = 0,
                            ThemeTag = {
                                ImageColor3 = "ToggleBar"
                            },
                            AnchorPoint = Vec2(0.5, 0.5),
                            Position = Dim2(0.5, 0, 0.5, 0),
                            Name = "Bar"
                        }, {
                            ab.NewRoundFrame(an, "SquircleOutline2", {
                                Size = Dim2(1, 0, 1, 0),
                                ImageColor3 = Col3new(1, 1, 1),
                                Name = "Highlight",
                                ImageTransparency = .45
                            }, {
                                ac("UIGradient", {
                                    Rotation = 60, Color = CSnew {
                                        CSKnew(0.0, fromRGB(255, 255, 255)),
                                        CSKnew(0.5, fromRGB(255, 255, 255)),
                                        CSKnew(1.0, fromRGB(255, 255, 255))
                                    }, Transparency = NSnew {
                                        NSKnew(0.0, 0.1),
                                        NSKnew(0.5, 1),
                                        NSKnew(1.0, 0.1)
                                    }
                                })
                            }), ao, ac("UIScale", {
                                Scale = 1
                            });
                        });
                    });
                }); local ar, as = nil, nil;
                local at = ak and 30 or 20;
                local au = aq.Size.X.Offset;
                function am.Set(av, aw, ax, ay)
                    if not ay then
                        if aw then
                            TwCreate(TweenService, aq.Frame, TwInfo(0.15, Enum.EasingStyle.Quint, Enum.EasingDirection.Out), {Position = Dim2(0, au - at - 2, 0.5, 0)}):Play();
                        else
                            TwCreate(TweenService, aq.Frame, TwInfo(0.15, Enum.EasingStyle.Quint, Enum.EasingDirection.Out), {Position = Dim2(0, 2, 0.5, 0)}):Play();
                        end;
                    end; if aw then
                        TwCreate(TweenService, aq.Layer, TwInfo(0.1), {ImageTransparency = 0}):Play();
                        if ao then
                            TwCreate(TweenService, ao, TwInfo(0.1), {ImageTransparency = 0}):Play();
                        end;
                    else
                        TwCreate(TweenService, aq.Layer, TwInfo(0.1),{ImageTransparency = 1}):Play();
                        if ao then
                            TwCreate(TweenService, ao, TwInfo(0.1),{ImageTransparency = 1}):Play();
                        end;
                    end; ax = ax ~= false; tspawn(function()
                        if aj and ax then
                            ab.SafeCallback(aj, aw);
                        end;
                    end);
                end; function am.Animate(av, aw, ax)
                    if not al.Window.IsToggleDragging then
                        al.Window.IsToggleDragging = true;
                        local ay, az = aw.Position.X, aw.Position.Y;
                        local aA, aB = aq.Frame.Position.X.Offset, false;
                        TwCreate(TweenService, aq.Frame.Bar.UIScale, TwInfo(0.28), {Scale = 1.5}, Enum.EasingStyle.Quint, Enum.EasingDirection.Out):Play();
                        TwCreate(TweenService, aq.Frame.Bar, TwInfo(0.28), {ImageTransparency = 0.85}, Enum.EasingStyle.Quint, Enum.EasingDirection.Out):Play();
                        if ar then ar:Disconnect(); end;
                        ar = UserInputService.InputChanged:Connect(function(aC)
                            if al.Window.IsToggleDragging and (aC.UserInputType == Enum.UserInputType.MouseMovement or aC.UserInputType == Enum.UserInputType.Touch) then
                                if aB then return; end; local aD, aE = mabs(aC.Position.X - ay), mabs(aC.Position.Y - az);
                                if aE > aD and aE > 10 then
                                    aB = true; al.Window.IsToggleDragging = false;
                                    if ar then ar:Disconnect(); ar = nil; end;
                                    if as then as:Disconnect(); as = nil; end;
                                    TwCreate(TweenService, aq.Frame, TwInfo(0.15, Enum.EasingStyle.Quint, Enum.EasingDirection.Out),
                                        {Position = Dim2(0, aA, 0.5, 0)}
                                    ):Play(); TwCreate(TweenService, aq.Frame.Bar.UIScale, TwInfo(0.23, Enum.EasingStyle.Quint, Enum.EasingDirection.Out),
                                        {Scale = 1}
                                    ):Play(); TwCreate(TweenService, aq.Frame.Bar, TwInfo(0.23, Enum.EasingStyle.Quint, Enum.EasingDirection.Out),
                                        {ImageTransparency = 0}
                                    ):Play(); return;
                                end; local aF = aC.Position.X - ay;
                                local b = mmax(2, mmin(aA + aF, au - at - 2));
                                local d = (aq.Frame.Position.X.Offset - 2) / (au - at - 4);
                                TwCreate(TweenService, aq.Frame, TwInfo(0.05, Enum.EasingStyle.Linear, Enum.EasingDirection.Out),
                                    {Position = Dim2(0, b, 0.5, 0)}
                                ):Play();
                            end;
                        end); if as then
                            as:Disconnect();
                        end; as = UserInputService.InputEnded:Connect(function(aC)
                            if al.Window.IsToggleDragging and (aC.UserInputType == Enum.UserInputType.MouseButton1 or aC.UserInputType == Enum.UserInputType.Touch) then
                                al.Window.IsToggleDragging = false; if ar then
                                    ar:Disconnect(); ar = nil;
                                end; if as then
                                    as:Disconnect();
                                    as = nil;
                                end; if aB then return; end;
                                local aD, aE = aq.Frame.Position.X.Offset, mabs(aC.Position.X - ay);
                                if aE < 10 then local aF = not ax.Value; ax:Set(aF, true, false) else
                                    local aF = aD + at / 2; local b = au / 2; local d = aF > b;
                                    ax:Set(d, true, false);
                                end; TwCreate(TweenService, aq.Frame.Bar.UIScale, TwInfo(0.23, Enum.EasingStyle.Quint, Enum.EasingDirection.Out),
                                    {Scale = 1}
                                ):Play(); TwCreate(TweenService, aq.Frame.Bar, TwInfo(0.23, Enum.EasingStyle.Quint, Enum.EasingDirection.Out),
                                    {ImageTransparency = 0}
                                ):Play();
                            end;
                        end);
                    end;
                end; return ap, am;
            end; return aa;
        end;
        function a.D()
            local aa = {}

            local ab = a.load "b"
            local ac = ab.New
            local ad = ab.Tween

            function aa.New(ae, af, ag, ah, ai, aj)
                local ak = {}

                af = af or "sfsymbols:checkmark"

                local al = 9

                local am = ab.Image(af, af, 0, (aj and aj.Window.Folder or "Temp"), "Checkbox", true, false, "CheckboxIcon")
                am.Size = Dim2(1, -26 + ag, 1, -26 + ag)
                am.AnchorPoint = Vec2(0.5, 0.5)
                am.Position = Dim2(0.5, 0, 0.5, 0)

                local an =
                    ab.NewRoundFrame(
                    al,
                    "Squircle",
                    {
                        ImageTransparency = .85,
                        ThemeTag = {
                            ImageColor3 = "Text"
                        },
                        Parent = ah,
                        Size = Dim2(0, 26, 0, 26)
                    },
                    {
                        ab.NewRoundFrame(
                            al,
                            "Squircle",
                            {
                                Size = Dim2(1, 0, 1, 0),
                                Name = "Layer",
                                ThemeTag = {
                                    ImageColor3 = "Checkbox"
                                },
                                ImageTransparency = 1
                            }
                        ),
                        ab.NewRoundFrame(
                            al,
                            "SquircleOutline",
                            {
                                Size = Dim2(1, 0, 1, 0),
                                Name = "Stroke",
                                ImageColor3 = Col3new(1, 1, 1),
                                ImageTransparency = 1
                            },
                            {
                                ac(
                                    "UIGradient",
                                    {
                                        Rotation = 90,
                                        Transparency = NumberSequence.new {
                                            NumberSequenceKeypoint.new(0, 0),
                                            NumberSequenceKeypoint.new(1, 1)
                                        }
                                    }
                                )
                            }
                        ),
                        am
                    }
                )

                function ak.Set(ao, ap)
                    if ap then
                        TwCreate(TweenService, an.Layer, TwInfo(0.06),
                            {ImageTransparency = 0}
                        ):Play(); TwCreate(TweenService, am.ImageLabel, TwInfo(0.06),
                            {ImageTransparency = 0}
                        ):Play();
                    else
                        TwCreate(TweenService, an.Layer, TwInfo(0.05),
                                {ImageTransparency = 1}
                        ):Play();
                        TwCreate(TweenService, am.ImageLabel, TwInfo(0.06),
                            {ImageTransparency = 1}
                        ):Play();
                    end; tspawn(function()
                        if ai then
                            ab.SafeCallback(ai, ap);
                        end;
                    end);
                end; return an, ak;
            end; return aa;
        end;
        function a.E()
            local aa = a.load "b";
            local ab = aa.New;
            local ac = aa.Tween;

            local ad = a.load "C".New
            local ae = a.load "D".New

            local af = {}

            function af.New(ag, ah)
                local ai = {
                    __type = "Toggle",
                    Title = ah.Title or "Toggle",
                    Desc = ah.Desc or nil,
                    Locked = ah.Locked or false,
                    Value = ah.Value,
                    Icon = ah.Icon or nil,
                    IconSize = ah.IconSize or 23,
                    Type = ah.Type or "Toggle",
                    Callback = ah.Callback or function()
                        end,
                    UIElements = {}
                }
                ai.ToggleFrame =
                    a.load "z" {
                    Title = ai.Title,
                    Desc = ai.Desc,
                    Window = ah.Window,
                    Parent = ah.Parent,
                    TextOffset = (52),
                    Hover = false,
                    Tab = ah.Tab,
                    Index = ah.Index,
                    ElementTable = ai,
                    ParentConfig = ah
                }

                local aj = true

                if ai.Value == nil then
                    ai.Value = false
                end

                function ai.Lock(ak)
                    ai.Locked = true
                    aj = false
                    return ai.ToggleFrame:Lock()
                end
                function ai.Unlock(ak)
                    ai.Locked = false
                    aj = true
                    return ai.ToggleFrame:Unlock()
                end

                if ai.Locked then
                    ai:Lock()
                end

                local ak = ai.Value

                local al, am
                if ai.Type == "Toggle" then
                    al, am =
                        ad(ak, ai.Icon, ai.IconSize, ai.ToggleFrame.UIElements.Main, ai.Callback, ah.Window.NewElements, ah)
                elseif ai.Type == "Checkbox" then
                    al, am = ae(ak, ai.Icon, ai.IconSize, ai.ToggleFrame.UIElements.Main, ai.Callback, ah)
                else
                    error("Unknown Toggle Type: " .. tos(ai.Type))
                end

                al.AnchorPoint = Vec2(1, ah.Window.NewElements and 0 or 0.5)
                al.Position = Dim2(1, 0, ah.Window.NewElements and 0 or 0.5, 0)

                function ai.Set(an, ao, ap, aq)
                    if aj then
                        am:Set(ao, ap, aq or false)
                        ak = ao
                        ai.Value = ao
                    end
                end

                ai:Set(ak, false, ah.Window.NewElements)

                if ah.Window.NewElements and am.Animate then
                    aa.AddSignal(
                        ai.ToggleFrame.UIElements.Main.InputBegan,
                        function(an)
                            if
                                not ah.Window.IsToggleDragging and an.UserInputType == Enum.UserInputType.MouseButton1 or
                                    an.UserInputType == Enum.UserInputType.Touch
                            then
                                am:Animate(an, ai)
                            end
                        end
                    )
                else
                    aa.AddSignal(
                        ai.ToggleFrame.UIElements.Main.MouseButton1Click,
                        function()
                            ai:Set(not ai.Value, nil, ah.Window.NewElements)
                        end
                    )
                end

                return ai.__type, ai
            end

            return af
        end
        function a.F()
            local ag, ah = {}, false; local ad = a.load"b"; local ae = ad.New;
            function ag.New(ai, aj)
                local ak = {
                    __type = "Slider",
                    Title = aj.Title or nil,
                    Desc = aj.Desc or nil,
                    Locked = aj.Locked or nil,
                    Value = aj.Value or {},
                    Icons = aj.Icons or nil,
                    IsTooltip = aj.IsTooltip or false,
                    IsTextbox = aj.IsTextbox,
                    Step = aj.Step or 1,
                    Callback = aj.Callback or function() end,
                    UIElements = {},
                    IsFocusing = false,
                    Width = aj.Width or 130,
                    TextBoxWidth = aj.Window.NewElements and 40 or 30,
                    ThumbSize = 13,
                    IconSize = 26
                }; if ak.Icons == {} then
                    ak.Icons = {
                        From = "sfsymbols:sunMinFill",
                        To = "sfsymbols:sunMaxFill"
                    };
                end; if ak.IsTextbox == nil and ak.Title == nil then
                    ak.IsTextbox = false;
                else
                    ak.IsTextbox = ak.IsTextbox ~= false;
                end; local al, am, an = nil, nil, nil;
                local ao = ak.Value.Default or ak.Value.Min or 0;
                local ap, aq = ao, (ao - (ak.Value.Min or 0)) / ((ak.Value.Max or 100) - (ak.Value.Min or 0));
                local ar, as = true, ak.Step % 1 ~= 0;
                local function FormatValue(at)
                    if as then return strformat("%.2f", at) else
                        return ton(mfloor(at + 0.5));
                    end;
                end; local function CalculateValue(at)
                    if as then return mfloor(at / ak.Step + 0.5) * ak.Step else
                        return mfloor(at / ak.Step + 0.5) * ak.Step;
                    end;
                end; local at, au, av = nil, nil, 32;
                if ak.Icons then
                    if ak.Icons.From then
                        at = ad.Image(
                            ak.Icons.From,
                            ak.Icons.From,
                            0,
                            aj.Window.Folder,
                            "SliderIconFrom",
                            true,
                            true,
                            "SliderIconFrom"
                        ); at.Size = Dim2(0, ak.IconSize, 0, ak.IconSize);
                        av = av + ak.IconSize - 2;
                    end; if ak.Icons.To then
                        au = ad.Image(
                            ak.Icons.To,
                            ak.Icons.To,
                            0,
                            aj.Window.Folder,
                            "SliderIconTo",
                            true,
                            true,
                            "SliderIconTo"
                        ); au.Size = Dim2(0, ak.IconSize, 0, ak.IconSize);
                        av = av + ak.IconSize - 2;
                    end;
                end; ak.SliderFrame = a.load "z" {
                        Title = ak.Title,
                        Desc = ak.Desc,
                        Parent = aj.Parent,
                        TextOffset = ak.Width,
                        Hover = false,
                        Tab = aj.Tab,
                        Index = aj.Index,
                        Window = aj.Window,
                        ElementTable = ak,
                        ParentConfig = aj
                    }; ak.UIElements.SliderIcon = ad.NewRoundFrame(99, "Squircle", {
                    ImageTransparency = .95,
                    Size = Dim2(1, not ak.IsTextbox and -av or (-ak.TextBoxWidth - 8), 0, 4),
                    AnchorPoint = Vec2(0.5, 0.5),
                    Position = Dim2(0.5, 0, 0.5, 0),
                    Name = "Frame",
                    ThemeTag = {ImageColor3 = "Text"}
                }, {
                    ad.NewRoundFrame(99, "Squircle", {
                        Name = "Frame",
                        Size = Dim2(aq, 0, 1, 0),
                        ImageTransparency = .1,
                        ThemeTag = {ImageColor3 = "Slider"}
                    }, {
                        ad.NewRoundFrame(99, "Squircle", {
                            Size = Dim2(0, aj.Window.NewElements and (ak.ThumbSize * 2) or (ak.ThumbSize + 2), 0, aj.Window.NewElements and (ak.ThumbSize + 4) or (ak.ThumbSize + 2)),
                            Position = Dim2(1, 0, 0.5, 0),
                            AnchorPoint = Vec2(0.5, 0.5),
                            ThemeTag = {ImageColor3 = "SliderThumb"},
                            Name = "Thumb"
                        }, {
                            ad.NewRoundFrame(99, "SquircleOutline2", {
                                Size = Dim2(1, 0, 1, 0),
                                ImageColor3 = Col3new(1, 1, 1),
                                Name = "Highlight",
                                ImageTransparency = .45
                            }, {
                                ae("UIGradient", {
                                    Rotation = 60,
                                    Color = CSnew {
                                        CSKnew(0.0, fromRGB(255, 255, 255)),
                                        CSKnew(0.5, fromRGB(255, 255, 255)),
                                        CSKnew(1.0, fromRGB(255, 255, 255))
                                    },
                                    Transparency = NSnew {
                                        NSKnew(0.0, 0.1),
                                        NSKnew(0.5, 1),
                                        NSKnew(1.0, 0.1)
                                    };
                                });
                            });
                        });
                    });
                }); ak.UIElements.SliderContainer = ae("Frame", {
                    Size = Dim2(ak.Title == nil and 1 or 0, ak.Title == nil and 0 or ak.Width, 0, 0),
                    AutomaticSize = "Y",
                    Position = Dim2(1, ak.IsTextbox and (aj.Window.NewElements and -16 or 0) or 0, 0.5, 0),
                    AnchorPoint = Vec2(1, 0.5),
                    BackgroundTransparency = 1,
                    Parent = ak.SliderFrame.UIElements.Main
                }, {
                    ae("UIListLayout", {
                        Padding = Dim(0, ak.Title ~= nil and 8 or 12),
                        FillDirection = "Horizontal",
                        VerticalAlignment = "Center",
                        HorizontalAlignment = ak.Icons and (ak.Icons.From and (ak.Icons.To and "Center" or "Left") or ak.Icons.To and "Right") or "Center"
                    }), at, ak.UIElements.SliderIcon, au, ae("TextBox", {
                        Size = Dim2(0, ak.TextBoxWidth, 0, 0),
                        TextXAlignment = "Left",
                        Text = FormatValue(ao),
                        ThemeTag = {
                            TextColor3 = "Text"
                        },
                        TextTransparency = .4,
                        AutomaticSize = "Y",
                        TextSize = 15,
                        FontFace = Fnew(ad.Font, Enum.FontWeight.Medium),
                        BackgroundTransparency = 1,
                        LayoutOrder = -1,
                        Visible = ak.IsTextbox
                    });
                }); local aw=nil; if ak.IsTooltip then
                    aw = a.load("y").New(ao, ak.UIElements.SliderIcon.Frame.Thumb, true, "Secondary", "Small", false);
                    aw.Container.AnchorPoint = Vec2(0.5, 1); aw.Container.Position = Dim2(0.5, 0, 0, -8);
                end; function ak.Lock(ax)
                    ak.Locked = true; ar = false;
                    return ak.SliderFrame:Lock();
                end; function ak.Unlock(ax)
                    ak.Locked = false; ar = true;
                    return ak.SliderFrame:Unlock();
                end; if ak.Locked then
                    ak:Lock();
                end; local ax = aj.Tab.UIElements.ContainerFrame;
                function ak.Set(ay, az, aA)
                    if ar then
                        if not ak.IsFocusing and not ah and (not aA or (aA.UserInputType == Enum.UserInputType.MouseButton1 or aA.UserInputType == Enum.UserInputType.Touch)) then
                            if aA then
                                al = (aA.UserInputType == Enum.UserInputType.Touch);
                                ax.ScrollingEnabled = false; ah = true;
                                local aB = al and aA.Position.X or UserInputService:GetMouseLocation().X;
                                local aC = mclamp((aB - ak.UIElements.SliderIcon.AbsolutePosition.X) / ak.UIElements.SliderIcon.AbsoluteSize.X, 0, 1);
                                az = CalculateValue(ak.Value.Min + aC * (ak.Value.Max - ak.Value.Min))
                                az = mclamp(az, ak.Value.Min or 0, ak.Value.Max or 100);
                                if az ~= ap then
                                    TwCreate(TweenService, ak.UIElements.SliderIcon.Frame, TwInfo(0.05), {Size = Dim2(aC, 0, 1, 0)}):Play();
                                    ak.UIElements.SliderContainer.TextBox.Text = FormatValue(az); if aw then
                                        aw.TitleFrame.Text = FormatValue(az);
                                    end; ak.Value.Default = FormatValue(az)
                                    ap = az; ad.SafeCallback(ak.Callback, FormatValue(az));
                                end; am = H.RenderStepped:Connect(function()
                                    local aD = al and aA.Position.X or UserInputService:GetMouseLocation().X;
                                    local aE = mclamp((aD - ak.UIElements.SliderIcon.AbsolutePosition.X) / ak.UIElements.SliderIcon.AbsoluteSize.X, 0, 1);
                                    az = CalculateValue(ak.Value.Min + aE * (ak.Value.Max - ak.Value.Min)) if az ~= ap then
                                        TwCreate(TweenService, ak.UIElements.SliderIcon.Frame, TwInfo(0.05), {Size = Dim2(aE, 0, 1, 0)}):Play();
                                        ak.UIElements.SliderContainer.TextBox.Text = FormatValue(az); if aw then
                                            aw.TitleFrame.Text = FormatValue(az);
                                        end; ak.Value.Default = FormatValue(az)
                                        ap = az; ad.SafeCallback(ak.Callback, FormatValue(az));
                                    end;
                                end); an = UserInputService.InputEnded:Connect(function(aD)
                                    if (aD.UserInputType == Enum.UserInputType.MouseButton1 or aD.UserInputType == Enum.UserInputType.Touch) and aA == aD then
                                        am:Disconnect(); an:Disconnect(); ah = false; ax.ScrollingEnabled = true;
                                        if aj.Window.NewElements then
                                            TwCreate(TweenService, ak.UIElements.SliderIcon.Frame.Thumb, TwInfo(0.2, Enum.EasingStyle.Quint, Enum.EasingDirection.InOut),
                                                {ImageTransparency = 0, Size = Dim2(0, aj.Window.NewElements and (ak.ThumbSize * 2) or (ak.ThumbSize + 2), 0, aj.Window.NewElements and (ak.ThumbSize + 4) or (ak.ThumbSize + 2))}
                                            ):Play();
                                        end; if aw then
                                            aw:Close(false);
                                        end;
                                    end;
                                end);
                            else
                                az = mclamp(az, ak.Value.Min or 0, ak.Value.Max or 100);
                                local aB = mclamp((az - (ak.Value.Min or 0)) / ((ak.Value.Max or 100) - (ak.Value.Min or 0)), 0, 1);
                                az = CalculateValue(ak.Value.Min + aB * (ak.Value.Max - ak.Value.Min));
                                if az ~= ap then
                                    TwCreate(TweenService, ak.UIElements.SliderIcon.Frame, TwInfo(0.05), {Size = Dim2(aB, 0, 1, 0)}):Play();
                                    ak.UIElements.SliderContainer.TextBox.Text = FormatValue(az);
                                    if aw then aw.TitleFrame.Text = FormatValue(az); end;
                                    ak.Value.Default = FormatValue(az); ap = az;
                                    ad.SafeCallback(ak.Callback, FormatValue(az));
                                end;
                            end;
                        end;
                    end;
                end; ak.UIElements.SliderContainer.TextBox.TextXAlignment = Enum.TextXAlignment.Right;
                function ak.SetMax(ay, az)
                    ak.Value.Max = az; local aA = ton(ak.Value.Default) or ap;
                    if aA > az then ak:Set(az); else
                        local aB = mclamp((aA - (ak.Value.Min or 0)) / (az - (ak.Value.Min or 0)), 0, 1)
                        TwCreate(TweenService, ak.UIElements.SliderIcon.Frame, TwInfo(0.1), {Size = Dim2(aB, 0, 1, 0)}):Play();
                    end;
                end; function ak.SetMin(ay, az)
                    ak.Value.Min = az; local aA = ton(ak.Value.Default) or ap;
                    if aA < az then ak:Set(az); else
                        local aB = mclamp((aA - az) / ((ak.Value.Max or 100) - az), 0, 1);
                        TwCreate(TweenService, ak.UIElements.SliderIcon.Frame, TwInfo(0.1), {Size = Dim2(aB, 0, 1, 0)}):Play();
                    end;
                end; ad.AddSignal(ak.UIElements.SliderContainer.TextBox.FocusLost, function(ay)
                    if ay then
                        local az = ton(ak.UIElements.SliderContainer.TextBox.Text);
                        if az then ak:Set(az); else
                            ak.UIElements.SliderContainer.TextBox.Text = FormatValue(ap)
                            if aw then aw.TitleFrame.Text = FormatValue(ap); end;
                        end;
                    end;
                end); ad.AddSignal(ak.UIElements.SliderContainer.InputBegan, function(ay)
                    if ak.Locked or ah then return; end; ak:Set(ao, ay)
                    if ay.UserInputType == Enum.UserInputType.MouseButton1 or ay.UserInputType == Enum.UserInputType.Touch then
                        if aj.Window.NewElements then
                            TwCreate(TweenService, ak.UIElements.SliderIcon.Frame.Thumb, TwInfo(0.24, Enum.EasingStyle.Quint, Enum.EasingDirection.Out), {
                                ImageTransparency = 0.85,
                                Size = Dim2(0, (aj.Window.NewElements and (ak.ThumbSize * 2) or (ak.ThumbSize)) + 8, 0, ak.ThumbSize + 8)
                            }):Play();
                        end; if aw then aw:Open(); end;
                    end;
                end); return ak.__type, ak;
            end; return ag;
        end;
        function a.G()
            local ad = a.load"b"; local ae = ad.New;
            local ag = {UICorner = 6,UIPadding = 8};
            local ah = a.load "t".New;
            function ag.New(ai, aj)
                local ak, al = {
                    __type = "Keybind",
                    Title = aj.Title or "Keybind",
                    Desc = aj.Desc or nil,
                    Locked = aj.Locked or false,
                    Value = aj.Value or "F",
                    Callback = aj.Callback or function()
                        end,
                    CanChange = aj.CanChange or true,
                    Picking = false,
                    UIElements = {}
                }, true; ak.KeybindFrame = a.load "z" {
                    Title = ak.Title,
                    Desc = ak.Desc,
                    Parent = aj.Parent,
                    TextOffset = 85,
                    Hover = ak.CanChange,
                    Tab = aj.Tab,
                    Index = aj.Index,
                    Window = aj.Window,
                    ElementTable = ak,
                    ParentConfig = aj
                }; ak.UIElements.Keybind = ah(ak.Value, nil, ak.KeybindFrame.UIElements.Main);
                ak.UIElements.Keybind.Size = Dim2(0, 24 + ak.UIElements.Keybind.Frame.Frame.TextLabel.TextBounds.X, 0, 42);
                ak.UIElements.Keybind.AnchorPoint = Vec2(1, 0.5);
                ak.UIElements.Keybind.Position = Dim2(1, 0, 0.5, 0);
                ae("UIScale", {
                    Parent = ak.UIElements.Keybind,
                    Scale = 0.85
                }); ad.AddSignal(ak.UIElements.Keybind.Frame.Frame.TextLabel:GetPropertyChangedSignal "TextBounds", function()
                    ak.UIElements.Keybind.Size = Dim2(0, 24 + ak.UIElements.Keybind.Frame.Frame.TextLabel.TextBounds.X, 0, 42)
                end); function ak.Lock(am)
                    ak.Locked = true; al = false;
                    return ak.KeybindFrame:Lock();
                end; function ak.Unlock(am)
                    ak.Locked = false; al = true;
                    return ak.KeybindFrame:Unlock();
                end; function ak.Set(am, an)
                    ak.Value = an;
                    ak.UIElements.Keybind.Frame.Frame.TextLabel.Text = an;
                end; if ak.Locked then
                    ak:Lock();
                end; ad.AddSignal(ak.KeybindFrame.UIElements.Main.MouseButton1Click, function()
                    if al then
                        if ak.CanChange then
                            ak.Picking = true; ak.UIElements.Keybind.Frame.Frame.TextLabel.Text = "...";
                            twait(0.2) local am=nil; am = UserInputService.InputBegan:Connect(function(an)
                                local ao, ap=nil, nil; if an.UserInputType == Enum.UserInputType.Keyboard then
                                    ao = an.KeyCode.Name;
                                elseif an.UserInputType == Enum.UserInputType.MouseButton1 then
                                    ao = "MouseLeft";
                                elseif an.UserInputType == Enum.UserInputType.MouseButton2 then
                                    ao = "MouseRight";
                                end; ap = UserInputService.InputEnded:Connect(function(aq)
                                    if aq.KeyCode.Name == ao or ao == "MouseLeft" and aq.UserInputType == Enum.UserInputType.MouseButton1 or ao == "MouseRight" and aq.UserInputType == Enum.UserInputType.MouseButton2 then
                                        ak.Picking = false; ak.UIElements.Keybind.Frame.Frame.TextLabel.Text = ao;
                                        ak.Value = ao; am:Disconnect(); ap:Disconnect();
                                    end;
                                end);
                            end);
                        end;
                    end;
                end); ad.AddSignal(UserInputService.InputBegan, function(am, an)
                    if UserInputService:GetFocusedTextBox() then return; end;
                    if not al then return; end; if am.UserInputType == Enum.UserInputType.Keyboard then
                        if am.KeyCode.Name == ak.Value then
                            ad.SafeCallback(ak.Callback, am.KeyCode.Name);
                        end;
                    elseif am.UserInputType == Enum.UserInputType.MouseButton1 and ak.Value == "MouseLeft" then
                        ad.SafeCallback(ak.Callback, "MouseLeft");
                    elseif am.UserInputType == Enum.UserInputType.MouseButton2 and ak.Value == "MouseRight" then
                        ad.SafeCallback(ak.Callback, "MouseRight");
                    end;
                end); return ak.__type, ak;
            end; return ag;
        end;
        function a.H()
            local aa = a.load"b"; local ac = aa.New;
            local ae = {UICorner = 8,UIPadding = 8};
            local af = a.load"j".New;local ag = a.load"k".New;
            function ae.New(ah, ai)
                local aj, ak = {
                    __type = "Input",
                    Title = ai.Title or "Input",
                    Desc = ai.Desc or nil,
                    Type = ai.Type or "Input",
                    Locked = ai.Locked or false,
                    InputIcon = ai.InputIcon or false,
                    Placeholder = ai.Placeholder or "Enter Text...",
                    Value = ai.Value or "",
                    Callback = ai.Callback or function() end,
                    ClearTextOnFocus = ai.ClearTextOnFocus or false,
                    UIElements = {},
                    Width = 150
                }, true; aj.InputFrame = a.load "z" {
                    Title = aj.Title,
                    Desc = aj.Desc,
                    Parent = ai.Parent,
                    TextOffset = aj.Width,
                    Hover = false,
                    Tab = ai.Tab,
                    Index = ai.Index,
                    Window = ai.Window,
                    ElementTable = aj,
                    ParentConfig = ai
                }; local al = ag(aj.Placeholder, aj.InputIcon,
                    aj.Type == "Textarea" and aj.InputFrame.UIElements.Container or aj.InputFrame.UIElements.Main, aj.Type, function(al) aj:Set(al, true) end, nil,
                    ai.Window.NewElements and 12 or 10,
                    aj.ClearTextOnFocus
                ); if aj.Type == "Input" then
                    al.Size = Dim2(0, aj.Width, 0, 36);
                    al.Position = Dim2(1, 0, ai.Window.NewElements and 0 or 0.5, 0);
                    al.AnchorPoint = Vec2(1, ai.Window.NewElements and 0 or 0.5);
                else
                    al.Size = Dim2(1, 0, 0, 148);
                end; ac("UIScale", {
                    Parent = al,
                    Scale = 1
                }); function aj.Lock(am)
                    aj.Locked = true; ak = false;
                    return aj.InputFrame:Lock();
                end; function aj.Unlock(am)
                    aj.Locked = false; ak = true;
                    return aj.InputFrame:Unlock();
                end; function aj.Set(am, an, ao)
                    if ak then
                        aj.Value = an; aa.SafeCallback(aj.Callback, an);
                        if not ao then
                            al.Frame.Frame.TextBox.Text = an;
                        end;
                    end;
                end; function aj.SetPlaceholder(am, an)
                    al.Frame.Frame.TextBox.PlaceholderText = an;
                    aj.Placeholder = an;
                end; aj:Set(aj.Value); if aj.Locked then
                    aj:Lock();
                end; return aj.__type, aj;
            end; return ae;
        end;
        function a.I()
            local ae = {}; local aa = a.load"b"; local ac = aa.New;
            function ae.New(af, ag)
                local ah = ac("Frame", {
                    Size = ag.ParentType ~= "Group" and Dim2(1, 0, 0, 1) or Dim2(0, 1, 1, 0),
                    Position = Dim2(0.5, 0, 0.5, 0),
                    AnchorPoint = Vec2(0.5, 0.5),
                    BackgroundTransparency = .9,
                    ThemeTag = {
                        BackgroundColor3 = "Text"
                    }
                }); local ai = ac("Frame", {
                    Parent = ag.Parent,
                    Size = ag.ParentType ~= "Group" and Dim2(1, -7, 0, 7) or Dim2(0, 7, 1, -7),
                    BackgroundTransparency = 1
                },{ah});
                return "Divider", {__type = "Divider", ElementFrame = ai};
            end; return ae;
        end;
        function a.J()
            local aa = {}; local ai = a.load "k".New;
            local aj = a.load "b"; local ak = aj.New;
            function aa.New(am, an, ao, ap, aq)
                local ar = {}; if not an.Callback then
                    aq = "Menu";
                end; an.UIElements.UIListLayout = ak("UIListLayout", {
                    Padding = Dim(0, ao.MenuPadding / 1.5),
                    FillDirection = "Vertical",
                    HorizontalAlignment = "Center"
                }); an.UIElements.Menu = aj.NewRoundFrame(ao.MenuCorner, "Squircle", {
                    ThemeTag = {ImageColor3 = "Background"},
                    ImageTransparency = 1,
                    Size = Dim2(1, 0, 1, 0),
                    AnchorPoint = Vec2(1, 0),
                    Position = Dim2(1, 0, 0, 0)
                }, {
                    ak("UIPadding", {
                        PaddingTop = Dim(0, ao.MenuPadding),
                        PaddingLeft = Dim(0, ao.MenuPadding),
                        PaddingRight = Dim(0, ao.MenuPadding),
                        PaddingBottom = Dim(0, ao.MenuPadding)
                    }), ak("UIListLayout", {
                        FillDirection = "Vertical",
                        Padding = Dim(0, ao.MenuPadding)
                    }), ak("Frame", {
                        BackgroundTransparency = 1,
                        Size = Dim2(1, 0, 1, an.SearchBarEnabled and -ao.MenuPadding - ao.SearchBarHeight),
                        ClipsDescendants = true,
                        LayoutOrder = 999
                    }, {
                        ak("UICorner",{
                            CornerRadius = Dim(0, ao.MenuCorner - ao.MenuPadding)
                        }), ak("ScrollingFrame", {
                            Size = Dim2(1, 0, 1, 0),
                            ScrollBarThickness = 0,
                            ScrollingDirection = "Y",
                            AutomaticCanvasSize = "Y",
                            CanvasSize = Dim2(0, 0, 0, 0),
                            BackgroundTransparency = 1,
                            ScrollBarImageTransparency = 1
                        }, {
                            an.UIElements.UIListLayout
                        });
                    });
                }); an.UIElements.MenuCanvas = ak("Frame", {
                    Size = Dim2(0, an.MenuWidth, 0, 300),
                    BackgroundTransparency = 1,
                    Position = Dim2(-10, 0, -10, 0),
                    Visible = false,
                    Active = false,
                    Parent = am.WindUI.DropdownGui,
                    AnchorPoint = Vec2(1, 0)
                }, {
                    an.UIElements.Menu,
                    ak("UISizeConstraint", {
                        MinSize = Vec2(170, 0),
                        MaxSize = Vec2(300, 400)
                    });
                });
                local function RecalculateCanvasSize()
                    an.UIElements.Menu.Frame.ScrollingFrame.CanvasSize = Dim2Off(0, an.UIElements.UIListLayout.AbsoluteContentSize.Y);
                end local function RecalculateListSize()
                    local as = Cam.ViewportSize.Y * 0.6;
                    local at = an.UIElements.UIListLayout.AbsoluteContentSize.Y;
                    local au = an.SearchBarEnabled and (ao.SearchBarHeight + (ao.MenuPadding * 3)) or (ao.MenuPadding * 2);
                    local av = (at) + au; if av > as then
                        an.UIElements.MenuCanvas.Size = Dim2Off(an.UIElements.MenuCanvas.AbsoluteSize.X, as);
                    else
                        an.UIElements.MenuCanvas.Size = Dim2Off(an.UIElements.MenuCanvas.AbsoluteSize.X, av);
                    end;
                end; function UpdatePosition()
                    local as = an.UIElements.Dropdown or an.DropdownFrame.UIElements.Main;
                    local at = an.UIElements.MenuCanvas;
                    local au = Cam.ViewportSize.Y - (as.AbsolutePosition.Y + as.AbsoluteSize.Y) - ao.MenuPadding - 54;
                    local av = at.AbsoluteSize.Y + ao.MenuPadding;
                    local aw = -54; if au < av then
                        aw = av - au - 54;
                    end; at.Position = Dim2(0, as.AbsolutePosition.X + as.AbsoluteSize.X, 0, as.AbsolutePosition.Y + as.AbsoluteSize.Y - aw + (ao.MenuPadding * 2));
                end; local as = nil; function ar.Display(at)
                    local au,av = an.Values, "";
                    if an.Multi then
                        local aw = {}; if typeof(an.Value) == "table" then
                            for ax, ay in ipir(an.Value) do
                                local az = typeof(ay) == "table" and ay.Title or ay;
                                aw[az] = true;
                            end;
                        end; for ax, ay in ipir(au) do
                            local az = typeof(ay) == "table" and ay.Title or ay;
                            if aw[az] then
                                av = av .. az .. ", ";
                            end;
                        end; if #av > 0 then
                            av = av:sub(1, #av - 2);
                        end;
                    else
                        av = typeof(an.Value) == "table" and an.Value.Title or an.Value or "";
                    end; if an.UIElements.Dropdown then
                        an.UIElements.Dropdown.Frame.Frame.TextLabel.Text = (av == "" and "--" or av);
                    end;
                end; local function Callback(at)
                    ar:Display(); if an.Callback then
                        tspawn(function()
                            aj.SafeCallback(an.Callback, an.Value);
                        end);
                    else
                        tspawn(function()
                            aj.SafeCallback(at);
                        end);
                    end;
                end; function ar.LockValues(at, au)
                    if not au then return; end;
                    for av, aw in next, an.Tabs do
                        if aw and aw.UIElements and aw.UIElements.TabItem then
                            local ax,ay = aw.Name, false;
                            for az, aA in next, au do
                                if ax == aA then
                                    ay = true;
                                    break;
                                end;
                            end; if ay then
                                TwCreate(TweenService, aw.UIElements.TabItem, TwInfo(0.1), {ImageTransparency = 1}):Play();
                                TwCreate(TweenService, aw.UIElements.TabItem.Highlight, TwInfo(0.1), {ImageTransparency = 1}):Play();
                                TwCreate(TweenService, aw.UIElements.TabItem.Frame.Title.TextLabel, TwInfo(0.1), {TextTransparency = 0.6}):Play();
                                if aw.UIElements.TabIcon then TwCreate(TweenService, aw.UIElements.TabIcon.ImageLabel, TwInfo(0.1), {ImageTransparency = 0.6}):Play(); end; 
                                aw.UIElements.TabItem.Active = false; aw.Locked = true;
                            else
                                if aw.Selected then
                                    TwCreate(TweenService, aw.UIElements.TabItem, TwInfo(0.1), {ImageTransparency = 0.95}):Play();
                                    TwCreate(TweenService, aw.UIElements.TabItem.Highlight, TwInfo(0.1), {ImageTransparency = 0.75}):Play();
                                    TwCreate(TweenService, aw.UIElements.TabItem.Frame.Title.TextLabel, TwInfo(0.1), {TextTransparency = 0}):Play();
                                    if aw.UIElements.TabIcon then TwCreate(TweenService, aw.UIElements.TabIcon.ImageLabel, TwInfo(0.1), {ImageTransparency = 0}):Play(); end;
                                else
                                    TwCreate(TweenService, aw.UIElements.TabItem, TwInfo(0.1), {ImageTransparency = 1}):Play()
                                    TwCreate(TweenService, aw.UIElements.TabItem.Highlight, TwInfo(0.1), {ImageTransparency = 1}):Play()
                                    TwCreate(TweenService,  aw.UIElements.TabItem.Frame.Title.TextLabel, TwInfo(0.1), {TextTransparency = aq == "Dropdown" and 0.4 or 0.05}):Play();
                                    if aw.UIElements.TabIcon then TwCreate(TweenService, aw.UIElements.TabIcon.ImageLabel, TwInfo(0.1), {ImageTransparency = aq == "Dropdown" and 0.2 or 0}):Play(); end;
                                end; aw.UIElements.TabItem.Active = true; aw.Locked = false;
                            end;
                        end;
                    end;
                end; function ar.Refresh(at, au)
                    for av, aw in next, an.UIElements.Menu.Frame.ScrollingFrame:GetChildren() do
                        if not IsA(aw, "UIListLayout") then
                            Destroy(aw);
                        end;
                    end; an.Tabs = {};
                    if an.SearchBarEnabled then
                        if not as then
                            as = ai("Search...", "search", an.UIElements.Menu, nil, function(ax)
                                for ay, az in next, an.Tabs do
                                    if strfind(string.lower(az.Name), string.lower(ax), 1, true) then
                                        az.UIElements.TabItem.Visible = true;
                                    else
                                        az.UIElements.TabItem.Visible = false;
                                    end RecalculateListSize(); RecalculateCanvasSize();
                                end
                            end, true);
                            as.Size = Dim2(1, 0, 0, ao.SearchBarHeight);
                            as.Position = Dim2(0, 0, 0, 0);
                            as.Name = "SearchBar";
                        end;
                    end; for ax, ay in next, au do
                        if (ay.Type ~= "Divider") then
                            local az = {
                                Name = typeof(ay) == "table" and ay.Title or ay,
                                Desc = typeof(ay) == "table" and ay.Desc or nil,
                                Icon = typeof(ay) == "table" and ay.Icon or nil,
                                Original = ay, Selected = false,
                                Locked = typeof(ay) == "table" and ay.Locked or false,
                                UIElements = {}
                            }; local aA = nil;
                            if az.Icon then
                                aA = aj.Image(az.Icon, az.Icon, 0, am.Window.Folder, "Dropdown", true);
                                aA.Size = Dim2(0, ao.TabIcon, 0, ao.TabIcon);
                                aA.ImageLabel.ImageTransparency = aq == "Dropdown" and 0.2 or 0;
                                az.UIElements.TabIcon = aA;
                            end; az.UIElements.TabItem = aj.NewRoundFrame(ao.MenuCorner - ao.MenuPadding, "Squircle", {
                                Size = Dim2(1, 0, 0, 36),
                                AutomaticSize = az.Desc and "Y",
                                ImageTransparency = 1,
                                Parent = an.UIElements.Menu.Frame.ScrollingFrame,
                                ImageColor3 = Col3new(1, 1, 1),
                                Active = not az.Locked
                            }, {
                                aj.NewRoundFrame(ao.MenuCorner - ao.MenuPadding, "SquircleOutline", {
                                    Size = Dim2(1, 0, 1, 0),
                                    ImageColor3 = Col3new(1, 1, 1),
                                    ImageTransparency = 1,
                                    Name = "Highlight"
                                }, {
                                    ak("UIGradient", {
                                        Rotation = 80,
                                        Color = CSnew {
                                            CSKnew(0.0, fromRGB(255, 255, 255)),
                                            CSKnew(0.5, fromRGB(255, 255, 255)),
                                            CSKnew(1.0, fromRGB(255, 255, 255))
                                        },
                                        Transparency = NSnew {
                                            NSKnew(0.0, 0.1),
                                            NSKnew(0.5, 1),
                                            NSKnew(1.0, 0.1)
                                        }
                                    })
                                }), ak("Frame", {
                                    Size = Dim2(1, 0, 1, 0),
                                    BackgroundTransparency = 1
                                }, {
                                    ak("UIListLayout", {
                                        Padding = Dim(0, ao.TabPadding),
                                        FillDirection = "Horizontal",
                                        VerticalAlignment = "Center"
                                    }), ak("UIPadding", {
                                        PaddingTop = Dim(0, ao.TabPadding),
                                        PaddingLeft = Dim(0, ao.TabPadding),
                                        PaddingRight = Dim(0, ao.TabPadding),
                                        PaddingBottom = Dim(0, ao.TabPadding)
                                    }), ak("UICorner", {
                                        CornerRadius = Dim(0, ao.MenuCorner - ao.MenuPadding)
                                    }), aA, ak("Frame", {
                                        Size = Dim2(1, aA and -ao.TabPadding - ao.TabIcon or 0, 0, 0),
                                        BackgroundTransparency = 1,
                                        AutomaticSize = "Y",
                                        Name = "Title"
                                    }, {
                                        ak("TextLabel", {
                                            Text = az.Name,
                                            TextXAlignment = "Left",
                                            FontFace = Fnew(aj.Font, Enum.FontWeight.Medium),
                                            ThemeTag = {
                                                TextColor3 = "Text",
                                                BackgroundColor3 = "Text"
                                            },
                                            TextSize = 15,
                                            BackgroundTransparency = 1,
                                            TextTransparency = aq == "Dropdown" and .4 or .05,
                                            LayoutOrder = 999,
                                            AutomaticSize = "Y",
                                            Size = Dim2(1, 0, 0, 0)
                                        }), ak("TextLabel", {
                                            Text = az.Desc or "",
                                            TextXAlignment = "Left",
                                            FontFace = Fnew(aj.Font, Enum.FontWeight.Regular),
                                            ThemeTag = {
                                                TextColor3 = "Text",
                                                BackgroundColor3 = "Text"
                                            },
                                            TextSize = 15,
                                            BackgroundTransparency = 1,
                                            TextTransparency = aq == "Dropdown" and .6 or .35,
                                            LayoutOrder = 999,
                                            AutomaticSize = "Y",
                                            TextWrapped = true,
                                            Size = Dim2(1, 0, 0, 0),
                                            Visible = az.Desc and true or false,
                                            Name = "Desc"
                                        }), ak("UIListLayout", {
                                            Padding = Dim(0, ao.TabPadding / 3),
                                            FillDirection = "Vertical"
                                        });
                                    });
                                });
                            }, true); if az.Locked then
                                az.UIElements.TabItem.Frame.Title.TextLabel.TextTransparency = 0.9;
                                if az.UIElements.TabIcon then
                                    az.UIElements.TabIcon.ImageLabel.ImageTransparency = 0.9;
                                end;
                            end; if an.Multi and typeof(an.Value) == "string" then
                                for aB, aC in next, an.Values do
                                    if typeof(aC) == "table" then
                                        if aC.Title == an.Value then
                                            an.Value = {aC};
                                        end;
                                    else
                                        if aC == an.Value then
                                            an.Value = {an.Value};
                                        end;
                                    end;
                                end;
                            end; if an.Multi then
                                local aB = false; if typeof(an.Value) == "table" then
                                    for aC, aD in ipir(an.Value) do
                                        local aE = typeof(aD) == "table" and aD.Title or aD;
                                        if aE == az.Name then
                                            aB = true;
                                            break;
                                        end;
                                    end;
                                end;
                                az.Selected = aB;
                            else
                                local aB = typeof(an.Value) == "table" and an.Value.Title or an.Value;
                                az.Selected = aB == az.Name;
                            end; if az.Selected and not az.Locked then
                                az.UIElements.TabItem.ImageTransparency = 0.95;
                                az.UIElements.TabItem.Highlight.ImageTransparency = 0.75;
                                az.UIElements.TabItem.Frame.Title.TextLabel.TextTransparency = 0;
                                if az.UIElements.TabIcon then
                                    az.UIElements.TabIcon.ImageLabel.ImageTransparency = 0;
                                end;
                            end; an.Tabs[ax] = az; ar:Display();
                            if aq == "Dropdown" then
                                aj.AddSignal(az.UIElements.TabItem.MouseButton1Click, function()
                                    if az.Locked then return; end;
                                    if an.Multi then
                                        if not az.Selected then
                                            az.Selected = true
                                            TwCreate(TweenService, az.UIElements.TabItem, TwInfo(0.1), {ImageTransparency = .95}):Play();
                                            TwCreate(TweenService, az.UIElements.TabItem.Highlight, TwInfo(0.1), {ImageTransparency = .75}):Play();
                                            TwCreate(TweenService, az.UIElements.TabItem.Frame.Title.TextLabel, TwInfo(0.1), {TextTransparency = 0}):Play();
                                            if az.UIElements.TabIcon then TwCreate(TweenService, az.UIElements.TabIcon.ImageLabel, TwInfo(0.1), {ImageTransparency = 0}):Play(); end; tablein(an.Value, az.Original);
                                        else
                                            if not an.AllowNone and #an.Value == 1 then return;end;
                                            az.Selected = false; TwCreate(TweenService, az.UIElements.TabItem, TwInfo(0.1), {ImageTransparency = 1}):Play();
                                            TwCreate(TweenService, az.UIElements.TabItem.Highlight, TwInfo(0.1), {ImageTransparency = 1}):Play();
                                            TwCreate(TweenService, az.UIElements.TabItem.Frame.Title.TextLabel, TwInfo(0.1), {TextTransparency = 0.4}):Play();
                                            if az.UIElements.TabIcon then TwCreate(TweenService, az.UIElements.TabIcon.ImageLabel, TwInfo(0.1), {ImageTransparency = 0.2}):Play(); end
                                            for aB, aC in next, an.Value do
                                                if typeof(aC) == "table" and (aC.Title == az.Name) or (aC == az.Name) then
                                                    table.remove(an.Value, aB);
                                                    break;
                                                end;
                                            end;
                                        end;
                                    else
                                        for aB, aC in next, an.Tabs do
                                            TwCreate(TweenService, aC.UIElements.TabItem, TwInfo(0.1), {ImageTransparency = 1}):Play();
                                            TwCreate(TweenService, aC.UIElements.TabItem.Highlight, TwInfo(0.1), {ImageTransparency = 1}):Play();
                                            TwCreate(TweenService, aC.UIElements.TabItem.Frame.Title.TextLabel, TwInfo(0.1), {TextTransparency = 0.4}):Play();
                                            if aC.UIElements.TabIcon then TwCreate(TweenService, aC.UIElements.TabIcon.ImageLabel, TwInfo(0.1), {ImageTransparency = 0.2}):Play(); end; aC.Selected = false;
                                        end
                                        az.Selected = true
                                        TwCreate(TweenService, az.UIElements.TabItem, TwInfo(0.1), {ImageTransparency = 0.95}):Play();
                                        TwCreate(TweenService, az.UIElements.TabItem.Highlight, TwInfo(0.1), {ImageTransparency = 0.75}):Play();
                                        TwCreate(TweenService, az.UIElements.TabItem.Frame.Title.TextLabel, TwInfo(0.1), {TextTransparency = 0}):Play();
                                        if az.UIElements.TabIcon then TwCreate(TweenService, az.UIElements.TabIcon.ImageLabel, TwInfo(0.1), {ImageTransparency = 0}):Play(); end; an.Value = az.Original;
                                    end; Callback();
                                end);
                            elseif aq == "Menu" then
                                if not az.Locked then
                                    aj.AddSignal(az.UIElements.TabItem.MouseEnter, function()
                                        TwCreate(TweenService, az.UIElements.TabItem, TwInfo(0.08), {ImageTransparency = 0.95}):Play();
                                    end); aj.AddSignal(az.UIElements.TabItem.InputEnded, function()
                                        TwCreate(TweenService, az.UIElements.TabItem, TwInfo(0.08), {ImageTransparency = 1}):Play();
                                    end);
                                end; aj.AddSignal(az.UIElements.TabItem.MouseButton1Click, function()
                                    if az.Locked then return; end;
                                    Callback(ay.Callback or function() end);
                                end);
                            end; RecalculateCanvasSize(); RecalculateListSize();
                        else
                            a.load("I"):New {Parent = an.UIElements.Menu.Frame.ScrollingFrame};
                        end;
                    end; local az = an.MenuWidth or 0; if az == 0 then
                        for aA, aB in next, an.Tabs do
                            if aB.UIElements.TabItem.Frame.UIListLayout then
                                az = mmax(az, aB.UIElements.TabItem.Frame.UIListLayout.AbsoluteContentSize.X);
                            end;
                        end;
                    end; an.UIElements.MenuCanvas.Size = Dim2(0, az + 6 + 6 + 5 + 5 + 18 + 6 + 6, an.UIElements.MenuCanvas.Size.Y.Scale, an.UIElements.MenuCanvas.Size.Y.Offset)
                    Callback(); an.Values = au;
                end; ar:Refresh(an.Values);
                function ar.Select(at, au)
                    if au then
                        an.Value = au;
                    else
                        if an.Multi then
                            an.Value = {};
                        else
                            an.Value = nil;
                        end;
                    end; ar:Refresh(an.Values)
                end; RecalculateListSize(); RecalculateCanvasSize();
                function ar.Open(at)
                    if ap then
                        an.UIElements.Menu.Visible = true;
                        an.UIElements.MenuCanvas.Visible = true;
                        an.UIElements.MenuCanvas.Active = true;
                        an.UIElements.Menu.Size = Dim2(1, 0, 0, 0);
                        TwCreate(TweenService, an.UIElements.Menu, TwInfo(0.1, Enum.EasingStyle.Quart, Enum.EasingDirection.Out),
                            {Size = Dim2(1, 0, 1, 0), ImageTransparency = 0.05}
                        ):Play(); tspawn(function()
                            twait(0.1); an.Opened = true;
                        end); UpdatePosition();
                    end;
                end; function ar.Close(at)
                    an.Opened = false; TwCreate(TweenService, an.UIElements.Menu, TwInfo(0.25, Enum.EasingStyle.Quart, Enum.EasingDirection.Out),
                        {Size = Dim2(1, 0, 0, 0), ImageTransparency = 1}
                    ):Play(); tspawn(function()
                        twait(0.1); an.UIElements.Menu.Visible = false;
                    end); tspawn(function()
                        twait(0.25) an.UIElements.MenuCanvas.Visible = false;
                        an.UIElements.MenuCanvas.Active = false;
                    end);
                end; aj.AddSignal((an.UIElements.Dropdown and an.UIElements.Dropdown.MouseButton1Click or an.DropdownFrame.UIElements.Main.MouseButton1Click), function()
                    ar:Open();
                end); aj.AddSignal(UserInputService.InputBegan, function(at)
                    if at.UserInputType == Enum.UserInputType.MouseButton1 or at.UserInputType == Enum.UserInputType.Touch then
                        local au = an.UIElements.MenuCanvas;
                        local av, aw = au.AbsolutePosition, au.AbsoluteSize;
                        local ax = an.UIElements.Dropdown or an.DropdownFrame.UIElements.Main;
                        local ay = ax.AbsolutePosition;
                        local az = ax.AbsoluteSize;
                        local aA = cmdm.X >= ay.X and cmdm.X <= ay.X + az.X and cmdm.Y >= ay.Y and cmdm.Y <= ay.Y + az.Y;
                        local aB = cmdm.X >= av.X and cmdm.X <= av.X + aw.X and cmdm.Y >= av.Y and cmdm.Y <= av.Y + aw.Y;
                        if am.Window.CanDropdown and an.Opened and not aA and not aB then
                            ar:Close();
                        end;
                    end;
                end); aj.AddSignal(an.UIElements.Dropdown and PropChangeSignal(an.UIElements.Dropdown, "AbsolutePosition") or PropChangeSignal(an.DropdownFrame.UIElements.Main, "AbsolutePosition"),UpdatePosition);
                return ar;
            end; return aa;
        end;
        function a.K()
            local ae = a.load "b"; local af = ae.New; local ah = a.load "t".New;
            local ai = a.load "k".New; local aj = a.load "J".New; local al = {
                UICorner = 10,
                UIPadding = 12,
                MenuCorner = 15,
                MenuPadding = 5,
                TabPadding = 10,
                SearchBarHeight = 39,
                TabIcon = 18
            }; function al.New(am, an)
                local ao, ap = {
                    __type = "Dropdown",
                    Title = an.Title or "Dropdown",
                    Desc = an.Desc or nil,
                    Locked = an.Locked or false,
                    Values = an.Values or {},
                    MenuWidth = an.MenuWidth,
                    Value = an.Value,
                    AllowNone = an.AllowNone,
                    SearchBarEnabled = an.SearchBarEnabled or false,
                    Multi = an.Multi,
                    Callback = an.Callback or nil,
                    UIElements = {},
                    Opened = false,
                    Tabs = {},
                    Width = 150
                }, true; if ao.Multi and not ao.Value then
                    ao.Value = {};
                end; ao.DropdownFrame = a.load "z" {
                    Title = ao.Title,
                    Desc = ao.Desc,
                    Parent = an.Parent,
                    TextOffset = ao.Callback and ao.Width or 20,
                    Hover = not ao.Callback and true or false,
                    Tab = an.Tab,
                    Index = an.Index,
                    Window = an.Window,
                    ElementTable = ao,
                    ParentConfig = an
                }; if ao.Callback then
                    ao.UIElements.Dropdown = ah("", nil, ao.DropdownFrame.UIElements.Main, nil, an.Window.NewElements and 12 or 10);
                    ao.UIElements.Dropdown.Frame.Frame.TextLabel.TextTruncate = "AtEnd";
                    ao.UIElements.Dropdown.Frame.Frame.TextLabel.Size = Dim2(1, ao.UIElements.Dropdown.Frame.Frame.TextLabel.Size.X.Offset - 18 - 12 - 12, 0, 0);
                    ao.UIElements.Dropdown.Size = Dim2(0, ao.Width, 0, 36);
                    ao.UIElements.Dropdown.Position = Dim2(1, 0, an.Window.NewElements and 0 or 0.5, 0);
                    ao.UIElements.Dropdown.AnchorPoint = Vec2(1, an.Window.NewElements and 0 or 0.5);
                end; ao.DropdownMenu = aj(an, ao, al, ap, "Dropdown");
                ao.Display = ao.DropdownMenu.Display;
                ao.Refresh = ao.DropdownMenu.Refresh;
                ao.Select = ao.DropdownMenu.Select;
                ao.Open = ao.DropdownMenu.Open;
                ao.Close = ao.DropdownMenu.Close;
                af("ImageLabel", {
                    Image = ae.Icon "chevrons-up-down"[1],
                    ImageRectOffset = ae.Icon "chevrons-up-down"[2].ImageRectPosition,
                    ImageRectSize = ae.Icon "chevrons-up-down"[2].ImageRectSize,
                    Size = Dim2(0, 18, 0, 18),
                    Position = Dim2(1, ao.UIElements.Dropdown and -12 or 0, 0.5, 0),
                    ThemeTag = {ImageColor3 = "Icon"},
                    AnchorPoint = Vec2(1, 0.5),
                    Parent = ao.UIElements.Dropdown and ao.UIElements.Dropdown.Frame or ao.DropdownFrame.UIElements.Main
                }); function ao.Lock(aq)
                    ao.Locked = true; ap = false;
                    return ao.DropdownFrame:Lock();
                end; function ao.Unlock(aq)
                    ao.Locked = false; ap = true;
                    return ao.DropdownFrame:Unlock();
                end; if ao.Locked then
                    ao:Lock();
                end; return ao.__type, ao;
            end; return al;
        end;
        function a.L()
            local aa = {}; local ae = {
                lua = {
                    "and",
                    "break",
                    "or",
                    "else",
                    "elseif",
                    "if",
                    "then",
                    "until",
                    "repeat",
                    "while",
                    "do",
                    "for",
                    "in",
                    "end",
                    "local",
                    "return",
                    "function",
                    "export",
                },
                rbx = {
                    "game",
                    "workspace",
                    "script",
                    "math",
                    "string",
                    "table",
                    "task",
                    "wait",
                    "select",
                    "next",
                    "Enum",
                    "tick",
                    "assert",
                    "shared",
                    "loadstring",
                    "ton",
                    "tos",
                    "type",
                    "typeof",
                    "unpack",
                    "Instance",
                    "CFrame",
                    "Vector3",
                    "Vector2",
                    "Color3",
                    "UDim",
                    "UDim2",
                    "Ray",
                    "BrickColor",
                    "OverlapParams",
                    "RaycastParams",
                    "Axes",
                    "Random",
                    "Region3",
                    "Rect",
                    "TweenInfo",
                    "collectgarbage",
                    "not",
                    "utf8",
                    "pcal",
                    "xpcall",
                    "_G",
                    "setmetatable",
                    "getmetatable",
                    "os",
                    "pir",
                    "ipir"
                },
                operators = {
                    "#",
                    "+",
                    "-",
                    "*",
                    "%",
                    "/",
                    "^",
                    "=",
                    "~",
                    "=",
                    "<",
                    ">"
                }
            }; local af = {
                numbers = fromHex "#FAB387",
                boolean = fromHex "#FAB387",
                operator = fromHex "#94E2D5",
                lua = fromHex "#CBA6F7",
                rbx = fromHex "#F38BA8",
                str = fromHex "#A6E3A1",
                comment = fromHex "#9399B2",
                null = fromHex "#F38BA8",
                call = fromHex "#89B4FA",
                self_call = fromHex "#89B4FA",
                local_property = fromHex "#CBA6F7"
            }; local function createKeywordSet(ah)
                local aj = {}; for ak, al in ipir(ah) do
                    aj[al] = true;
                end; return aj;
            end; local ah = createKeywordSet(ae.lua);
            local aj = createKeywordSet(ae.rbx);
            local ak = createKeywordSet(ae.operators);
            local function getHighlight(al, am)
                local an = al[am]; if af[an .. "_color"] then
                    return af[an .. "_color"];
                end; if ton(an) then
                    return af.numbers;
                elseif an == "nil" then
                    return af.null;
                elseif an:sub(1, 2) == "--" then
                    return af.comment;
                elseif ak[an] then
                    return af.operator;
                elseif ah[an] then
                    return af.lua;
                elseif aj[an] then
                    return af.rbx;
                elseif an:sub(1, 1) == '"' or an:sub(1, 1) == "'" then
                    return af.str;
                elseif an == "true" or an == "false" then
                    return af.boolean;
                end; if al[am + 1] == "(" then
                    if al[am - 1] == ":" then
                        return af.self_call;
                    end; return af.call;
                end; if al[am - 1] == "." then
                    if al[am - 2] == "Enum" then
                        return af.rbx;
                    end; return af.local_property;
                end;
            end; function aa.run(al)
                local am = {}; local an = ""; local ao, ap, aq = false, false, false;
                for ar = 1, #al do
                    local as = al:sub(ar, ar); if ap then
                        if as == "\n" and not aq then
                            tablein(am, an); tablein(am, as); an = ""; ap = false;
                        elseif al:sub(ar - 1, ar) == "]]" and aq then
                            an = an .. "]"; tablein(am, an); an = "";
                            ap = false; aq = false;
                        else
                            an = an .. as;
                        end;
                    elseif ao then
                        if as == ao and al:sub(ar - 1, ar - 1) ~= "\\" or as == "\n" then
                            an = an .. as; ao = false;
                        else
                            an = an .. as;
                        end;
                    else
                        if al:sub(ar, ar + 1) == "--" then
                            tablein(am, an); an = "-";
                            ap = true; aq = al:sub(ar + 2, ar + 3) == "[[";
                        elseif as == '"' or as == "'" then
                            tablein(am, an); an = as; ao = as;
                        elseif ak[as] then
                            tablein(am, an); tablein(am, as); an = "";
                        elseif as:match "[%w_]" then
                            an = an .. as;
                        else
                            tablein(am, an); tablein(am, as); an = "";
                        end;
                    end;
                end; tablein(am, an); local ar = {};
                for as, at in ipir(am) do
                    local au = getHighlight(am, as); if au then
                        local av = strformat('<font color = "#%s">%s</font>', au:ToHex(), at:gsub("<", "&lt;"):gsub(">", "&gt;"));
                        tablein(ar, av);
                    else
                        tablein(ar, at);
                    end;
                end; return tconcat(ar);
            end; return aa;
        end;
        function a.M()
            local aa = {}; local ae = a.load"b"; local af = ae.New;
            local aj = a.load "L"; function aa.New(ak, al, am, an, ao)
                local ap = {Radius = 12,Padding = 10}; local aq = af("TextLabel", {
                    Text = "",
                    TextColor3 = fromHex "#CDD6F4",
                    TextTransparency = 0,
                    TextSize = 14,
                    TextWrapped = false,
                    LineHeight = 1.15,
                    RichText = true,
                    TextXAlignment = "Left",
                    Size = Dim2(0, 0, 0, 0),
                    BackgroundTransparency = 1,
                    AutomaticSize = "XY"
                }, {
                    af("UIPadding", {
                        PaddingTop = Dim(0, ap.Padding + 3),
                        PaddingLeft = Dim(0, ap.Padding + 3),
                        PaddingRight = Dim(0, ap.Padding + 3),
                        PaddingBottom = Dim(0, ap.Padding + 3)
                    });
                }); aq.Font = "Code"; local ar = af("ScrollingFrame", {
                    Size = Dim2(1, 0, 0, 0),
                    BackgroundTransparency = 1,
                    AutomaticCanvasSize = "X",
                    ScrollingDirection = "X",
                    ElasticBehavior = "Never",
                    CanvasSize = Dim2(0, 0, 0, 0),
                    ScrollBarThickness = 0
                }, {aq}); local as = af("TextButton", {
                    BackgroundTransparency = 1,
                    Size = Dim2(0, 30, 0, 30),
                    Position = Dim2(1, -ap.Padding / 2, 0, ap.Padding / 2),
                    AnchorPoint = Vec2(1, 0),
                    Visible = an and true or false
                }, {
                    ae.NewRoundFrame(ap.Radius - 4, "Squircle", {
                        ImageColor3 = fromHex "#ffffff",
                        ImageTransparency = 1,
                        Size = Dim2(1, 0, 1, 0),
                        AnchorPoint = Vec2(0.5, 0.5),
                        Position = Dim2(0.5, 0, 0.5, 0),
                        Name = "Button"
                    }, {
                        af("UIScale", {
                            Scale = 1
                        }), af("ImageLabel", {
                            Image = ae.Icon "copy"[1],
                            ImageRectSize = ae.Icon "copy"[2].ImageRectSize,
                            ImageRectOffset = ae.Icon "copy"[2].ImageRectPosition,
                            BackgroundTransparency = 1,
                            AnchorPoint = Vec2(0.5, 0.5),
                            Position = Dim2(0.5, 0, 0.5, 0),
                            Size = Dim2(0, 12, 0, 12),
                            ImageColor3 = fromHex "#ffffff",
                            ImageTransparency = .1
                        });
                    });
                }); ae.AddSignal(as.MouseEnter, function()
                    TwCreate(TweenService, as.Button, TwInfo(0.05), {ImageTransparency = 0.95}):Play();
                    TwCreate(TweenService, as.Button.UIScale, TwInfo(0.05), {Scale = 0.9}):Play();
                end); ae.AddSignal(as.InputEnded, function()
                    TwCreate(TweenService, as.Button, TwInfo(0.08), {ImageTransparency = 1}):Play();
                    TwCreate(TweenService, as.Button.UIScale, TwInfo(0.08), {Scale = 1}):Play()
                end); local at = ae.NewRoundFrame(ap.Radius, "Squircle", {
                    ImageColor3 = fromHex "#212121",
                    ImageTransparency = .035,
                    Size = Dim2(1, 0, 0, 20 + (ap.Padding * 2)),
                    AutomaticSize = "Y",
                    Parent = am
                }, {
                    ae.NewRoundFrame(ap.Radius, "SquircleOutline", {
                        Size = Dim2(1, 0, 1, 0),
                        ImageColor3 = fromHex "#ffffff",
                        ImageTransparency = .955
                    }), af("Frame", {
                        BackgroundTransparency = 1,
                        Size = Dim2(1, 0, 0, 0),
                        AutomaticSize = "Y"
                    }, {
                        ae.NewRoundFrame(ap.Radius, "Squircle-TL-TR", {
                            ImageColor3 = fromHex "#ffffff",
                            ImageTransparency = .96,
                            Size = Dim2(1, 0, 0, 20 + (ap.Padding * 2)),
                            Visible = al and true or false
                        }, {
                            af("ImageLabel", {
                                Size = Dim2(0, 18, 0, 18),
                                BackgroundTransparency = 1,
                                Image = "rbxassetid://132464694294269",
                                ImageColor3 = fromHex "#ffffff",
                                ImageTransparency = .2
                            }), af("TextLabel", {
                                Text = al,
                                TextColor3 = fromHex "#ffffff",
                                TextTransparency = .2,
                                TextSize = 16,
                                AutomaticSize = "Y",
                                FontFace = Fnew(ae.Font, Enum.FontWeight.Medium),
                                TextXAlignment = "Left",
                                BackgroundTransparency = 1,
                                TextTruncate = "AtEnd",
                                Size = Dim2(1, as and -20 - (ap.Padding * 2), 0, 0)
                            }), af("UIPadding", {
                                PaddingLeft = Dim(0, ap.Padding + 3),
                                PaddingRight = Dim(0, ap.Padding + 3)
                            }), af("UIListLayout", {
                                Padding = Dim(0, ap.Padding),
                                FillDirection = "Horizontal",
                                VerticalAlignment = "Center"
                            }),
                        }), ar, af("UIListLayout", {
                            Padding = Dim(0, 0),
                            FillDirection = "Vertical"
                        }),
                    }), as
                }); ap.CodeFrame = at; ae.AddSignal(PropChangeSignal(aq, "TextBounds"), function()
                    ar.Size = Dim2(1, 0, 0, (aq.TextBounds.Y / (ao or 1)) + ((ap.Padding + 3) * 2));
                end); function ap.Set(au)
                    aq.Text = aj.run(au);
                end; function ap.Destroy()
                    Destroy(at); ap = nil;
                end; ap.Set(ak); ae.AddSignal(as.MouseButton1Click, function()
                    if an then
                        an(); local au = ae.Icon "check"; as.Button.ImageLabel.Image = au[1];
                        as.Button.ImageLabel.ImageRectSize = au[2].ImageRectSize;
                        as.Button.ImageLabel.ImageRectOffset = au[2].ImageRectPosition;
                        twait(1); local av = ae.Icon "copy";
                        as.Button.ImageLabel.Image = av[1];
                        as.Button.ImageLabel.ImageRectSize = av[2].ImageRectSize;
                        as.Button.ImageLabel.ImageRectOffset = av[2].ImageRectPosition;
                    end;
                end); return ap;
            end; return aa;
        end;
        function a.N()
            local aa = a.load"b"; local ae = aa.New;local af = a.load"M";
            local ah = {}; function ah.New(aj, ak)
                local al = {
                    __type = "Code",
                    Title = ak.Title,
                    Code = ak.Code,
                    OnCopy = ak.OnCopy
                }; local am = not al.Locked;
                local an = af.New(al.Code, al.Title, ak.Parent, function()
                    if am then
                        local an = al.Title or "code"
                        local ao, ap = pcal(function()
                            setc(al.Code); if al.OnCopy then
                                al.OnCopy();
                            end;
                        end); if not ao then
                            ak.WindUI:Notify {
                                Title = "Error",
                                Content = "The " .. an .. " is not copied. Error: " .. ap,
                                Icon = "x",
                                Duration = 5
                            }
                        end;
                    end;
                end, ak.WindUI.UIScale, al);
                function al.SetCode(ao, ap)
                    an.Set(ap); al.Code = ap;
                end; function al.Destroy(ao)
                    an.Destroy(); al = nil;
                end; al.ElementFrame = an.CodeFrame;
                return al.__type, al;
            end; return ah;
        end;
        function a.O()
            local aa = a.load "b"; local ae = aa.New;
            local ap = a.load "j".New; local aq = a.load "k".New;
            local ar = {UICorner = 9}; function ar.Colorpicker(as, at, au, av)
                local aw = {
                    __type = "Colorpicker",
                    Title = at.Title,
                    Desc = at.Desc,
                    Default = at.Default,
                    Callback = at.Callback,
                    Transparency = at.Transparency,
                    UIElements = at.UIElements,
                    TextPadding = 10
                }; function aw.SetHSVFromRGB(ax, ay)
                    local az, aA, aB = toHSV(ay);
                    aw.Hue = az; aw.Sat = aA; aw.Vib = aB;
                end; aw:SetHSVFromRGB(aw.Default);
                local ax = a.load "l".Init(au);
                local ay = ax.Create();
                aw.ColorpickerFrame = ay;
                ay.UIElements.Main.Size = Dim2(1, 0, 0, 0);
                local az, aA, aB = aw.Hue, aw.Sat, aw.Vib;
                aw.UIElements.Title = ae("TextLabel", {
                    Text = aw.Title,
                    TextSize = 20,
                    FontFace = Fnew(aa.Font, Enum.FontWeight.SemiBold),
                    TextXAlignment = "Left",
                    Size = Dim2(1, 0, 0, 0),
                    AutomaticSize = "Y",
                    ThemeTag = {TextColor3 = "Text"},
                    BackgroundTransparency = 1,
                    Parent = ay.UIElements.Main
                }, {
                    ae("UIPadding", {
                        PaddingTop = Dim(0, aw.TextPadding / 2),
                        PaddingLeft = Dim(0, aw.TextPadding / 2),
                        PaddingRight = Dim(0, aw.TextPadding / 2),
                        PaddingBottom = Dim(0, aw.TextPadding / 2)
                    });
                }); local aC = ae("Frame", {
                    Size = Dim2(0, 14, 0, 14),
                    AnchorPoint = Vec2(0.5, 0.5),
                    Position = Dim2(0.5, 0, 0, 0),
                    Parent = HueDragHolder,
                    BackgroundColor3 = aw.Default
                }, {
                    ae("UIStroke", {
                        Thickness = 2,
                        Transparency = .1,
                        ThemeTag = {Color = "Text"}
                    }), ae("UICorner", {
                        CornerRadius = Dim(1, 0)
                    });
                }); aw.UIElements.SatVibMap = ae("ImageLabel", {
                    Size = Dim2Off(160, 158),
                    Position = Dim2Off(0, 40 + aw.TextPadding),
                    Image = "rbxassetid://4155801252",
                    BackgroundColor3 = fromHSV(az, 1, 1),
                    BackgroundTransparency = 0,
                    Parent = ay.UIElements.Main
                }, {
                    ae("UICorner", {
                        CornerRadius = Dim(0, 8)
                    }), aa.NewRoundFrame(8, "SquircleOutline", {
                        ThemeTag = {
                            ImageColor3 = "Outline"
                        },
                        Size = Dim2(1, 0, 1, 0),
                        ImageTransparency = .85,
                        ZIndex = 99999
                    }, {
                        ae("UIGradient", {
                            Rotation = 45, Color = CSnew {
                                CSKnew(0.0, fromRGB(255, 255, 255)),
                                CSKnew(0.5, fromRGB(255, 255, 255)),
                                CSKnew(1.0, fromRGB(255, 255, 255))
                            }, Transparency = NSnew {
                                NSKnew(0.0, 0.1),
                                NSKnew(0.5, 1),
                                NSKnew(1.0, 0.1)
                            }
                        })
                    }), aC
                }); aw.UIElements.Inputs = ae("Frame", {
                    AutomaticSize = "XY",
                    Size = Dim2(0, 0, 0, 0),
                    Position = Dim2Off(aw.Transparency and 240 or 210, 40 + aw.TextPadding),
                    BackgroundTransparency = 1,
                    Parent = ay.UIElements.Main
                }, {
                    ae("UIListLayout", {
                        Padding = Dim(0, 4),
                        FillDirection = "Vertical"
                    });
                }); local aD = ae("Frame", {
                    BackgroundColor3 = aw.Default,
                    Size = Dim2Scale(1, 1),
                    BackgroundTransparency = aw.Transparency
                }, {
                    ae("UICorner", {
                        CornerRadius = Dim(0, 8)
                    });
                }); ae("ImageLabel", {
                        Image = "http://www.roblox.com/asset/?id=14204231522",
                        ImageTransparency = 0.45,
                        ScaleType = Enum.ScaleType.Tile,
                        TileSize = Dim2Off(40, 40),
                        BackgroundTransparency = 1,
                        Position = Dim2Off(85, 208 + aw.TextPadding),
                        Size = Dim2Off(75, 24),
                        Parent = ay.UIElements.Main
                    },
                    {
                        ae(
                            "UICorner",
                            {
                                CornerRadius = Dim(0, 8)
                            }
                        ),
                        aa.NewRoundFrame(
                            8,
                            "SquircleOutline",
                            {
                                ThemeTag = {
                                    ImageColor3 = "Outline"
                                },
                                Size = Dim2(1, 0, 1, 0),
                                ImageTransparency = .85,
                                ZIndex = 99999
                            },
                            {
                                ae(
                                    "UIGradient",
                                    {
                                        Rotation = 60,
                                        Color = CSnew {
                                            CSKnew(0.0, fromRGB(255, 255, 255)),
                                            CSKnew(0.5, fromRGB(255, 255, 255)),
                                            CSKnew(1.0, fromRGB(255, 255, 255))
                                        },
                                        Transparency = NSnew {
                                            NSKnew(0.0, 0.1),
                                            NSKnew(0.5, 1),
                                            NSKnew(1.0, 0.1)
                                        }
                                    }
                                )
                            }
                        ),
                        aD
                    }
                )

                local aE =
                    ae(
                    "Frame",
                    {
                        BackgroundColor3 = aw.Default,
                        Size = Dim2Scale(1, 1),
                        BackgroundTransparency = 0,
                        ZIndex = 9
                    },
                    {
                        ae(
                            "UICorner",
                            {
                                CornerRadius = Dim(0, 8)
                            }
                        )
                    }
                )

                ae(
                    "ImageLabel",
                    {
                        Image = "http://www.roblox.com/asset/?id=14204231522",
                        ImageTransparency = 0.45,
                        ScaleType = Enum.ScaleType.Tile,
                        TileSize = Dim2Off(40, 40),
                        BackgroundTransparency = 1,
                        Position = Dim2Off(0, 208 + aw.TextPadding),
                        Size = Dim2Off(75, 24),
                        Parent = ay.UIElements.Main
                    },
                    {
                        ae(
                            "UICorner",
                            {
                                CornerRadius = Dim(0, 8)
                            }
                        ),
                        aa.NewRoundFrame(
                            8,
                            "SquircleOutline",
                            {
                                ThemeTag = {
                                    ImageColor3 = "Outline"
                                },
                                Size = Dim2(1, 0, 1, 0),
                                ImageTransparency = .85,
                                ZIndex = 99999
                            },
                            {
                                ae(
                                    "UIGradient",
                                    {
                                        Rotation = 60,
                                        Color = CSnew {
                                            CSKnew(0.0, fromRGB(255, 255, 255)),
                                            CSKnew(0.5, fromRGB(255, 255, 255)),
                                            CSKnew(1.0, fromRGB(255, 255, 255))
                                        },
                                        Transparency = NSnew {
                                            NSKnew(0.0, 0.1),
                                            NSKnew(0.5, 1),
                                            NSKnew(1.0, 0.1)
                                        }
                                    }
                                )
                            }
                        ),
                        aE
                    }
                )

                local aF = {}

                for b = 0, 1, 0.1 do
                    tablein(aF, CSKnew(b, fromHSV(b, 1, 1)))
                end

                local b =
                    ae(
                    "UIGradient",
                    {
                        Color = CSnew(aF),
                        Rotation = 90
                    }
                )

                local d =
                    ae(
                    "Frame",
                    {
                        Size = Dim2(1, 0, 1, 0),
                        Position = Dim2(0, 0, 0, 0),
                        BackgroundTransparency = 1
                    }
                )

                local f =
                    ae(
                    "Frame",
                    {
                        Size = Dim2(0, 14, 0, 14),
                        AnchorPoint = Vec2(0.5, 0.5),
                        Position = Dim2(0.5, 0, 0, 0),
                        Parent = d,
                        BackgroundColor3 = aw.Default
                    },
                    {
                        ae(
                            "UIStroke",
                            {
                                Thickness = 2,
                                Transparency = .1,
                                ThemeTag = {
                                    Color = "Text"
                                }
                            }
                        ),
                        ae(
                            "UICorner",
                            {
                                CornerRadius = Dim(1, 0)
                            }
                        )
                    }
                )

                local g =
                    ae(
                    "Frame",
                    {
                        Size = Dim2Off(6, 192),
                        Position = Dim2Off(180, 40 + aw.TextPadding),
                        Parent = ay.UIElements.Main
                    },
                    {
                        ae(
                            "UICorner",
                            {
                                CornerRadius = Dim(1, 0)
                            }
                        ),
                        b,
                        d
                    }
                )

                function CreateNewInput(h, j)
                    local l = aq(h, nil, aw.UIElements.Inputs)

                    ae(
                        "TextLabel",
                        {
                            BackgroundTransparency = 1,
                            TextTransparency = .4,
                            TextSize = 17,
                            FontFace = Fnew(aa.Font, Enum.FontWeight.Regular),
                            AutomaticSize = "XY",
                            ThemeTag = {
                                TextColor3 = "Placeholder"
                            },
                            AnchorPoint = Vec2(1, 0.5),
                            Position = Dim2(1, -12, 0.5, 0),
                            Parent = l.Frame,
                            Text = h
                        }
                    )

                    ae(
                        "UIScale",
                        {
                            Parent = l,
                            Scale = .85
                        }
                    )

                    l.Frame.Frame.TextBox.Text = j
                    l.Size = Dim2(0, 150, 0, 42)

                    return l
                end

                local function ToRGB(h)
                    return {
                        R = mfloor(h.R * 255),
                        G = mfloor(h.G * 255),
                        B = mfloor(h.B * 255)
                    }
                end

                local h = CreateNewInput("Hex", "#" .. aw.Default:ToHex())

                local j = CreateNewInput("Red", ToRGB(aw.Default).R)
                local l = CreateNewInput("Green", ToRGB(aw.Default).G)
                local m = CreateNewInput("Blue", ToRGB(aw.Default).B)
                local p
                if aw.Transparency then
                    p = CreateNewInput("Alpha", ((1 - aw.Transparency) * 100) .. "%")
                end

                local r =
                    ae(
                    "Frame",
                    {
                        Size = Dim2(1, 0, 0, 40),
                        AutomaticSize = "Y",
                        Position = Dim2(0, 0, 0, 254 + aw.TextPadding),
                        BackgroundTransparency = 1,
                        Parent = ay.UIElements.Main,
                        LayoutOrder = 4
                    },
                    {
                        ae(
                            "UIListLayout",
                            {
                                Padding = Dim(0, 6),
                                FillDirection = "Horizontal",
                                HorizontalAlignment = "Right"
                            }
                        )
                    }
                )

                local u = {
                    {
                        Title = "Cancel",
                        Variant = "Secondary",
                        Callback = function()
                        end
                    },
                    {
                        Title = "Apply",
                        Icon = "chevron-right",
                        Variant = "Primary",
                        Callback = function()
                            av(fromHSV(aw.Hue, aw.Sat, aw.Vib), aw.Transparency)
                        end
                    }
                }

                for v, x in next, u do
                    local B = ap(x.Title, x.Icon, x.Callback, x.Variant, r, ay, false)
                    B.Size = Dim2(0.5, -3, 0, 40)
                    B.AutomaticSize = "None"
                end

                local B, C, F
                if aw.Transparency then
                    local G =
                        ae(
                        "Frame",
                        {
                            Size = Dim2(1, 0, 1, 0),
                            Position = Dim2Off(0, 0),
                            BackgroundTransparency = 1
                        }
                    )

                    C =
                        ae(
                        "ImageLabel",
                        {
                            Size = Dim2(0, 14, 0, 14),
                            AnchorPoint = Vec2(0.5, 0.5),
                            Position = Dim2(0.5, 0, 0, 0),
                            ThemeTag = {
                                BackgroundColor3 = "Text"
                            },
                            Parent = G
                        },
                        {
                            ae(
                                "UIStroke",
                                {
                                    Thickness = 2,
                                    Transparency = .1,
                                    ThemeTag = {
                                        Color = "Text"
                                    }
                                }
                            ),
                            ae(
                                "UICorner",
                                {
                                    CornerRadius = Dim(1, 0)
                                }
                            )
                        }
                    )

                    F =
                        ae(
                        "Frame",
                        {
                            Size = Dim2Scale(1, 1)
                        },
                        {
                            ae(
                                "UIGradient",
                                {
                                    Transparency = NSnew {
                                        NSKnew(0, 0),
                                        NSKnew(1, 1)
                                    },
                                    Rotation = 270
                                }
                            ),
                            ae(
                                "UICorner",
                                {
                                    CornerRadius = Dim(0, 6)
                                }
                            )
                        }
                    )

                    B =
                        ae(
                        "Frame",
                        {
                            Size = Dim2Off(6, 192),
                            Position = Dim2Off(210, 40 + aw.TextPadding),
                            Parent = ay.UIElements.Main,
                            BackgroundTransparency = 1
                        },
                        {
                            ae(
                                "UICorner",
                                {
                                    CornerRadius = Dim(1, 0)
                                }
                            ),
                            ae(
                                "ImageLabel",
                                {
                                    Image = "rbxassetid://14204231522",
                                    ImageTransparency = 0.45,
                                    ScaleType = Enum.ScaleType.Tile,
                                    TileSize = Dim2Off(40, 40),
                                    BackgroundTransparency = 1,
                                    Size = Dim2Scale(1, 1)
                                },
                                {
                                    ae(
                                        "UICorner",
                                        {
                                            CornerRadius = Dim(1, 0)
                                        }
                                    )
                                }
                            ),
                            F,
                            G
                        }
                    )
                end

                function aw.Round(G, H, J)
                    if J == 0 then
                        return mfloor(H)
                    end
                    H = tos(H)
                    return H:find "%." and ton(H:sub(1, H:find "%." + J)) or H
                end

                function aw.Update(G, H, J)
                    if H then
                        az, aA, aB = toHSV(H)
                    else
                        az, aA, aB = aw.Hue, aw.Sat, aw.Vib
                    end

                    aw.UIElements.SatVibMap.BackgroundColor3 = fromHSV(az, 1, 1)
                    aC.Position = Dim2(aA, 0, 1 - aB, 0)
                    aC.BackgroundColor3 = fromHSV(az, aA, aB)
                    aE.BackgroundColor3 = fromHSV(az, aA, aB)
                    f.BackgroundColor3 = fromHSV(az, 1, 1)
                    f.Position = Dim2(0.5, 0, az, 0)

                    h.Frame.Frame.TextBox.Text = "#" .. fromHSV(az, aA, aB):ToHex()
                    j.Frame.Frame.TextBox.Text = ToRGB(fromHSV(az, aA, aB)).R
                    l.Frame.Frame.TextBox.Text = ToRGB(fromHSV(az, aA, aB)).G
                    m.Frame.Frame.TextBox.Text = ToRGB(fromHSV(az, aA, aB)).B

                    if J or aw.Transparency then
                        aE.BackgroundTransparency = aw.Transparency or J
                        F.BackgroundColor3 = fromHSV(az, aA, aB)
                        C.BackgroundColor3 = fromHSV(az, aA, aB)
                        C.BackgroundTransparency = aw.Transparency or J
                        C.Position = Dim2(0.5, 0, 1 - aw.Transparency or J, 0)
                        p.Frame.Frame.TextBox.Text = aw:Round((1 - aw.Transparency or J) * 100, 0) .. "%"
                    end
                end

                aw:Update(aw.Default, aw.Transparency)

                local function GetRGB()
                    local G = fromHSV(aw.Hue, aw.Sat, aw.Vib)
                    return {R = mfloor(G.r * 255), G = mfloor(G.g * 255), B = mfloor(G.b * 255)}
                end

                local function clamp(G, H, J)
                    return mclamp(ton(G) or 0, H, J)
                end

                aa.AddSignal(
                    h.Frame.Frame.TextBox.FocusLost,
                    function(G)
                        if G then
                            local H = h.Frame.Frame.TextBox.Text:gsub("#", "")
                            local J, L = pcal(fromHex, H)
                            if J and typeof(L) == "Color3" then
                                aw.Hue, aw.Sat, aw.Vib = toHSV(L)
                                aw:Update()
                                aw.Default = L
                            end
                        end
                    end
                )

                local function updateColorFromInput(G, H)
                    aa.AddSignal(
                        G.Frame.Frame.TextBox.FocusLost,
                        function(J)
                            if J then
                                local L = G.Frame.Frame.TextBox
                                local M = GetRGB()
                                local N = clamp(L.Text, 0, 255)
                                L.Text = tos(N)

                                M[H] = N
                                local O = fromRGB(M.R, M.G, M.B)
                                aw.Hue, aw.Sat, aw.Vib = toHSV(O)
                                aw:Update()
                            end
                        end
                    )
                end

                updateColorFromInput(j, "R")
                updateColorFromInput(l, "G")
                updateColorFromInput(m, "B")

                if aw.Transparency then
                    aa.AddSignal(
                        p.Frame.Frame.TextBox.FocusLost,
                        function(G)
                            if G then
                                local H = p.Frame.Frame.TextBox
                                local J = clamp(H.Text, 0, 100)
                                H.Text = tos(J)

                                aw.Transparency = 1 - J * 0.01
                                aw:Update(nil, aw.Transparency)
                            end
                        end
                    )
                end

                local G = aw.UIElements.SatVibMap
                aa.AddSignal(
                    G.InputBegan,
                    function(H)
                        if H.UserInputType == Enum.UserInputType.MouseButton1 or H.UserInputType == Enum.UserInputType.Touch then
                            while UserInputService:IsMouseButtonPressed(Enum.UserInputType.MouseButton1) do
                                local J = G.AbsolutePosition.X
                                local L = J + G.AbsoluteSize.X
                                local M = mclamp(cmdm.X, J, L)

                                local N = G.AbsolutePosition.Y
                                local O = N + G.AbsoluteSize.Y
                                local P = mclamp(cmdm.Y, N, O)

                                aw.Sat = (M - J) / (L - J)
                                aw.Vib = 1 - ((P - N) / (O - N))
                                aw:Update()

                                GG.H.RenderStepped:Wait()
                            end
                        end
                    end
                )

                aa.AddSignal(
                    g.InputBegan,
                    function(H)
                        if H.UserInputType == Enum.UserInputType.MouseButton1 or H.UserInputType == Enum.UserInputType.Touch then
                            while UserInputService:IsMouseButtonPressed(Enum.UserInputType.MouseButton1) do
                                local J = g.AbsolutePosition.Y
                                local L = J + g.AbsoluteSize.Y
                                local M = mclamp(cmdm.Y, J, L)

                                aw.Hue = ((M - J) / (L - J))
                                aw:Update()

                                GG.H.RenderStepped:Wait();
                            end
                        end
                    end
                )

                if aw.Transparency then
                    aa.AddSignal(
                        B.InputBegan,
                        function(H)
                            if
                                H.UserInputType == Enum.UserInputType.MouseButton1 or
                                    H.UserInputType == Enum.UserInputType.Touch
                            then
                                while aj:IsMouseButtonPressed(Enum.UserInputType.MouseButton1) do
                                    local J = B.AbsolutePosition.Y
                                    local L = J + B.AbsoluteSize.Y
                                    local M = mclamp(ao.Y, J, L)

                                    aw.Transparency = 1 - ((M - J) / (L - J))
                                    aw:Update()

                                    am:Wait()
                                end
                            end
                        end
                    )
                end

                return aw
            end

            function ar.New(as, at)
                local au = {
                    __type = "Colorpicker",
                    Title = at.Title or "Colorpicker",
                    Desc = at.Desc or nil,
                    Locked = at.Locked or false,
                    Default = at.Default or Col3new(1, 1, 1),
                    Callback = at.Callback or function()
                        end,
                    UIScale = at.UIScale,
                    Transparency = at.Transparency,
                    UIElements = {}
                }

                local av = true

                au.ColorpickerFrame =
                    a.load "z" {
                    Title = au.Title,
                    Desc = au.Desc,
                    Parent = at.Parent,
                    TextOffset = 40,
                    Hover = false,
                    Tab = at.Tab,
                    Index = at.Index,
                    Window = at.Window,
                    ElementTable = au,
                    ParentConfig = at
                }

                au.UIElements.Colorpicker =
                    aa.NewRoundFrame(
                    ar.UICorner,
                    "Squircle",
                    {
                        ImageTransparency = 0,
                        Active = true,
                        ImageColor3 = au.Default,
                        Parent = au.ColorpickerFrame.UIElements.Main,
                        Size = Dim2(0, 26, 0, 26),
                        AnchorPoint = Vec2(1, 0),
                        Position = Dim2(1, 0, 0, 0),
                        ZIndex = 2
                    },
                    nil,
                    true
                )

                function au.Lock(aw)
                    au.Locked = true
                    av = false
                    return au.ColorpickerFrame:Lock()
                end
                function au.Unlock(aw)
                    au.Locked = false
                    av = true
                    return au.ColorpickerFrame:Unlock()
                end

                if au.Locked then
                    au:Lock()
                end

                function au.Update(aw, ax, ay)
                    au.UIElements.Colorpicker.ImageTransparency = ay or 0
                    au.UIElements.Colorpicker.ImageColor3 = ax
                    au.Default = ax
                    if ay then
                        au.Transparency = ay
                    end
                end

                function au.Set(aw, ax, ay)
                    return au:Update(ax, ay)
                end

                aa.AddSignal(
                    au.UIElements.Colorpicker.MouseButton1Click,
                    function()
                        if av then
                            ar:Colorpicker(
                                au,
                                at.Window,
                                function(aw, ax)
                                    au:Update(aw, ax)
                                    au.Default = aw
                                    au.Transparency = ax
                                    aa.SafeCallback(au.Callback, aw, ax)
                                end
                            ).ColorpickerFrame:Open()
                        end
                    end
                )

                return au.__type, au
            end

            return ar
        end
        function a.P()
            local aa = a.load "b"
            local ae = aa.New
            local af = aa.Tween

            local ah = {}

            function ah.New(aj, ak)
                local al = {
                    __type = "Section",
                    Title = ak.Title or "Section",
                    Icon = ak.Icon,
                    TextXAlignment = ak.TextXAlignment or "Left",
                    TextSize = ak.TextSize or 19,
                    Box = ak.Box or false,
                    FontWeight = ak.FontWeight or Enum.FontWeight.SemiBold,
                    TextTransparency = ak.TextTransparency or 0.05,
                    Opened = ak.Opened or false,
                    UIElements = {},
                    HeaderSize = 42,
                    IconSize = 20,
                    Padding = 10,
                    Elements = {},
                    Expandable = false
                }

                local am

                function al.SetIcon(an, ao)
                    al.Icon = ao or nil
                    if am then
                        am:Destroy()
                    end
                    if ao then
                        am = aa.Image(ao, ao .. ":" .. al.Title, 0, ak.Window.Folder, al.__type, true)
                        am.Size = Dim2(0, al.IconSize, 0, al.IconSize)
                    end
                end

                local an =
                    ae(
                    "Frame",
                    {
                        Size = Dim2(0, al.IconSize, 0, al.IconSize),
                        BackgroundTransparency = 1,
                        Visible = false
                    },
                    {
                        ae(
                            "ImageLabel",
                            {
                                Size = Dim2(1, 0, 1, 0),
                                BackgroundTransparency = 1,
                                Image = aa.Icon "chevron-down"[1],
                                ImageRectSize = aa.Icon "chevron-down"[2].ImageRectSize,
                                ImageRectOffset = aa.Icon "chevron-down"[2].ImageRectPosition,
                                ThemeTag = {
                                    ImageColor3 = "Icon"
                                },
                                ImageTransparency = .7
                            }
                        )
                    }
                )

                if al.Icon then
                    al:SetIcon(al.Icon)
                end

                local ao =
                    ae(
                    "TextLabel",
                    {
                        BackgroundTransparency = 1,
                        TextXAlignment = al.TextXAlignment,
                        AutomaticSize = "Y",
                        TextSize = al.TextSize,
                        TextTransparency = al.TextTransparency,
                        ThemeTag = {
                            TextColor3 = "Text"
                        },
                        FontFace = Fnew(aa.Font, al.FontWeight),
                        Text = al.Title,
                        Size = Dim2(1, 0, 0, 0),
                        TextWrapped = true
                    }
                )

                local function UpdateTitleSize()
                    local ap = 0
                    if am then
                        ap = ap - (al.IconSize + 8)
                    end
                    if an.Visible then
                        ap = ap - (al.IconSize + 8)
                    end
                    ao.Size = Dim2(1, ap, 0, 0)
                end

                local ap =
                    aa.NewRoundFrame(
                    ak.Window.ElementConfig.UICorner,
                    "Squircle",
                    {
                        Size = Dim2(1, 0, 0, 0),
                        BackgroundTransparency = 1,
                        Parent = ak.Parent,
                        ClipsDescendants = true,
                        AutomaticSize = "Y",
                        ImageTransparency = al.Box and .93 or 1,
                        ThemeTag = {
                            ImageColor3 = "Text"
                        }
                    },
                    {
                        ae(
                            "TextButton",
                            {
                                Size = Dim2(1, 0, 0, Expandable and 0 or al.HeaderSize),
                                BackgroundTransparency = 1,
                                AutomaticSize = Expandable and nil or "Y",
                                Text = "",
                                Name = "Top"
                            },
                            {
                                al.Box and
                                    ae(
                                        "UIPadding",
                                        {
                                            PaddingLeft = Dim(
                                                0,
                                                ak.Window.ElementConfig.UIPadding + (ak.Window.NewElements and 4 or 0)
                                            ),
                                            PaddingRight = Dim(
                                                0,
                                                ak.Window.ElementConfig.UIPadding + (ak.Window.NewElements and 4 or 0)
                                            )
                                        }
                                    ) or
                                    nil,
                                am,
                                ao,
                                ae(
                                    "UIListLayout",
                                    {
                                        Padding = Dim(0, 8),
                                        FillDirection = "Horizontal",
                                        VerticalAlignment = "Center",
                                        HorizontalAlignment = "Left"
                                    }
                                ),
                                an
                            }
                        ),
                        ae(
                            "Frame",
                            {
                                BackgroundTransparency = 1,
                                Size = Dim2(1, 0, 0, 0),
                                AutomaticSize = "Y",
                                Name = "Content",
                                Visible = false,
                                Position = Dim2(0, 0, 0, al.HeaderSize)
                            },
                            {
                                al.Box and
                                    ae(
                                        "UIPadding",
                                        {
                                            PaddingLeft = Dim(0, ak.Window.ElementConfig.UIPadding),
                                            PaddingRight = Dim(0, ak.Window.ElementConfig.UIPadding),
                                            PaddingBottom = Dim(0, ak.Window.ElementConfig.UIPadding)
                                        }
                                    ) or
                                    nil,
                                ae(
                                    "UIListLayout",
                                    {
                                        FillDirection = "Vertical",
                                        Padding = Dim(0, ak.Tab.Gap),
                                        VerticalAlignment = "Top"
                                    }
                                )
                            }
                        )
                    }
                )

                al.ElementFrame = ap

                local aq = ak.ElementsModule; aq.Load(
                    al, ap.Content, aq.Elements, ak.Window,
                    ak.WindUI, function()
                        if not al.Expandable then
                            al.Expandable = true
                            an.Visible = true
                            UpdateTitleSize()
                        end
                    end, aq, ak.UIScale, ak.Tab
                ); UpdateTitleSize();
                function al.SetTitle(ar, as)
                    ao.Text = as;
                end; function al.Destroy(ar)
                    for as, at in next, al.Elements do
                        Destroy(at);
                    end; Destroy(ap);
                end; function al.Open(ar)
                    if al.Expandable then
                        al.Opened = true
                        TwCreate(TweenService, ap, TwInfo(0.33, Enum.EasingStyle.Quint, Enum.EasingDirection.Out),
                            { Size = Dim2( ap.Size.X.Scale, ap.Size.X.Offset, 0, al.HeaderSize + (ap.Content.AbsoluteSize.Y / ak.UIScale))}
                        ):Play(); TwCreate(TweenService, an.ImageLabel, TwInfo(0.1, Enum.EasingStyle.Quint, Enum.EasingDirection.Out), {Rotation = 180}):Play();
                        an.ImageLabel.Parent.Parent.Parent.Content.Visible = true;
                    end;
                end; function al.Close(ar)
                    if al.Expandable then
                        al.Opened = false; TwCreate(TweenService, ap, TwInfo(0.26, Enum.EasingStyle.Quint, Enum.EasingDirection.Out), {Size = Dim2(ap.Size.X.Scale, ap.Size.X.Offset, 0, al.HeaderSize)}):Play();
                        TwCreate(TweenService, an.ImageLabel, TwInfo(0.1, Enum.EasingStyle.Quint, Enum.EasingDirection.Out), {Rotation = 0}):Play();
                        an.ImageLabel.Parent.Parent.Parent.Content.Visible = false;
                    end;
                end; aa.AddSignal(ap.Top.MouseButton1Click,function()
                    if al.Expandable then
                        if al.Opened then
                            al:Close();
                        else
                            al:Open();
                        end;
                    end;
                end); aa.AddSignal(PropChangeSignal(ap.Content.UIListLayout, "AbsoluteContentSize"), function()
                    if al.Opened then
                        al:Open();
                    end;
                end); tspawn(function()
                    twait(0.02); if al.Expandable then
                        ap.Size = Dim2(ap.Size.X.Scale, ap.Size.X.Offset, 0, al.HeaderSize);
                        ap.AutomaticSize = "None";
                        ap.Top.Size = Dim2(1, 0, 0, al.HeaderSize);
                        ap.Top.AutomaticSize = "None";
                        ap.Content.Visible = true;
                        an.ImageLabel.Parent.Parent.Parent.Content.Visible = false;
                    end; if al.Opened then
                        al:Open();
                    end;
                end); return al.__type, al;
            end; return ah;
        end;
        function a.Q()
            local aa = a.load "b"
            local ae = aa.New

            local af = {}

            function af.New(ah, aj)
                local ak =
                    ae(
                    "Frame",
                    {
                        Parent = aj.Parent,
                        Size = aj.ParentType ~= "Group" and Dim2(1, -7, 0, 7 * (aj.Columns or 1)) or
                            Dim2(0, 7 * (aj.Columns or 1), 0, 0),
                        BackgroundTransparency = 1
                    }
                )

                return "Space", {__type = "Space", ElementFrame = ak}
            end

            return af
        end
        function a.R()
            local aa = a.load "b"
            local ae = aa.New

            local af = {}

            local function ParseAspectRatio(ah)
                if type(ah) == "string" then
                    local aj, ak = ah:match "(%d+):(%d+)"
                    if aj and ak then
                        return ton(aj) / ton(ak)
                    end
                elseif type(ah) == "number" then
                    return ah
                end
                return nil
            end

            function af.New(ah, aj)
                local ak = {
                    __type = "Image",
                    Image = aj.Image or "",
                    AspectRatio = aj.AspectRatio or "16:9",
                    Radius = aj.Radius or aj.Window.ElementConfig.UICorner
                }
                local al = aa.Image(ak.Image, ak.Image, ak.Radius, aj.Window.Folder, "Image", false)
                al.Parent = aj.Parent
                al.Size = Dim2(1, 0, 0, 0)
                al.BackgroundTransparency = 1

                local am = ParseAspectRatio(ak.AspectRatio)
                local an

                if am then
                    an =
                        ae(
                        "UIAspectRatioConstraint",
                        {
                            Parent = al,
                            AspectRatio = am,
                            AspectType = "ScaleWithParentSize",
                            DominantAxis = "Width"
                        }
                    )
                end

                function ak.Destroy(ao)
                    al:Destroy()
                end

                return ak.__type, ak
            end

            return af
        end
        function a.S()
            local aa = a.load "b"
            local ae = aa.New

            local af = {}

            function af.New(ah, aj)
                local ak = {
                    __type = "Group",
                    Elements = {}
                }

                local al =
                    ae(
                    "Frame",
                    {
                        Size = Dim2(1, 0, 0, 0),
                        BackgroundTransparency = 1,
                        AutomaticSize = "Y",
                        Parent = aj.Parent
                    },
                    {
                        ae(
                            "UIListLayout",
                            {
                                FillDirection = "Horizontal",
                                HorizontalAlignment = "Center",
                                Padding = Dim(0, aj.Tab and aj.Tab.Gap or (Window.NewElements and 1 or 6))
                            }
                        )
                    }
                )

                local am = aj.ElementsModule
                am.Load(
                    ak,
                    al,
                    am.Elements,
                    aj.Window,
                    aj.WindUI,
                    function(an, ao)
                        local ap = aj.Tab and aj.Tab.Gap or (aj.Window.NewElements and 1 or 6)

                        local aq = {}
                        local ar = 0

                        for as, at in next, ao do
                            if at.__type == "Space" then
                                ar = ar + (at.ElementFrame.Size.X.Offset or 6)
                            elseif at.__type == "Divider" then
                                ar = ar + (at.ElementFrame.Size.X.Offset or 1)
                            else
                                tablein(aq, at)
                            end
                        end

                        local au = #aq
                        if au == 0 then
                            return
                        end

                        local av = 1 / au

                        local aw = ap * (au - 1)

                        local ax = -(aw + ar)

                        local ay = mfloor(ax / au)
                        local az = ax - (ay * au)

                        for aA, aB in next, aq do
                            local aC = ay
                            if aA <= mabs(az) then
                                aC = aC - 1
                            end

                            if aB.ElementFrame then
                                aB.ElementFrame.Size = Dim2(av, aC, 1, 0)
                            end
                        end
                    end,
                    am,
                    aj.UIScale,
                    aj.Tab
                )

                return ak.__type, ak
            end

            return af
        end
        function a.T()
            return {
                Elements = {
                    Paragraph = a.load "A",
                    Button = a.load "B",
                    Toggle = a.load "E",
                    Slider = a.load "F",
                    Keybind = a.load "G",
                    Input = a.load "H",
                    Dropdown = a.load "K",
                    Code = a.load "N",
                    Colorpicker = a.load "O",
                    Section = a.load "P",
                    Divider = a.load "I",
                    Space = a.load "Q",
                    Image = a.load "R",
                    Group = a.load "S"
                },
                Load = function(aa, ae, af, ah, aj, ak, al, am, an)
                    for ao, ap in next, af do
                        aa[ao] = function(aq, ar)
                            ar = ar or {}
                            ar.Tab = an or aa
                            ar.ParentType = aa.__type
                            ar.ParentTable = aa
                            ar.Index = #aa.Elements + 1
                            ar.GlobalIndex = #ah.AllElements + 1
                            ar.Parent = ae
                            ar.Window = ah
                            ar.WindUI = aj
                            ar.UIScale = am
                            ar.ElementsModule = al
                            local as, au = ap:New(ar)

                            if ar.Flag and typeof(ar.Flag) == "string" then
                                if ah.CurrentConfig then
                                    ah.CurrentConfig:Register(ar.Flag, au)

                                    if ah.PendingConfigData and ah.PendingConfigData[ar.Flag] then
                                        local av = ah.PendingConfigData[ar.Flag]

                                        local aw = ah.ConfigManager
                                        if aw.Parser[av.__type] then
                                            task.defer(
                                                function()
                                                    local ax, ay =
                                                        pcal(
                                                        function()
                                                            aw.Parser[av.__type].Load(au, av)
                                                        end
                                                    )

                                                    if ax then
                                                        ah.PendingConfigData[ar.Flag] = nil
                                                    else
                                                        warn(
                                                            "[ WindUI ] Failed to apply pending config for '" ..
                                                                ar.Flag .. "': " .. tos(ay)
                                                        )
                                                    end
                                                end
                                            )
                                        end
                                    end
                                else
                                    ah.PendingFlags = ah.PendingFlags or {}
                                    ah.PendingFlags[ar.Flag] = au
                                end
                            end

                            local av
                            for aw, ax in next, au do
                                if typeof(ax) == "table" and aw ~= "ElementFrame" and aw:match "Frame$" then
                                    av = ax
                                    break
                                end
                            end

                            if av then
                                au.ElementFrame = av.UIElements.Main
                                function au.SetTitle(ay, az)
                                    av:SetTitle(az)
                                end
                                function au.SetDesc(ay, az)
                                    av:SetDesc(az)
                                end
                                function au.Highlight(ay)
                                    av:Highlight()
                                end
                                function au.Destroy(ay)
                                    av:Destroy()

                                    table.remove(ah.AllElements, ar.GlobalIndex)
                                    table.remove(aa.Elements, ar.Index)
                                    table.remove(an.Elements, ar.Index)
                                    aa:UpdateAllElementShapes(aa)
                                end
                            end

                            ah.AllElements[ar.Index] = au
                            aa.Elements[ar.Index] = au
                            if an then
                                an.Elements[ar.Index] = au
                            end

                            if ah.NewElements then
                                aa:UpdateAllElementShapes(aa)
                            end

                            if ak then
                                ak(au, aa.Elements)
                            end
                            return au
                        end
                    end
                    function aa.UpdateAllElementShapes(aq, ar)
                        for as, au in next, ar.Elements do
                            local av
                            for aw, ax in pir(au) do
                                if typeof(ax) == "table" and aw:match "Frame$" then
                                    av = ax
                                    break
                                end
                            end

                            if av then
                                av.Index = as
                                if av.UpdateShape then
                                    av.UpdateShape(ar)
                                end
                            end
                        end
                    end
                end
            }
        end
        function a.U()
            local aa = (cloneref or clonereference or function(aa)
                    return aa
                end)

            aa(game:GetService "UserInputService")
            local ae = game.Players.LocalPlayer:GetMouse()

            local af = a.load "b"
            local ah = af.New
            local aj = af.Tween

            local ak = a.load "y".New
            local al = a.load "u".New

            local am = {
                Tabs = {},
                Containers = {},
                SelectedTab = nil,
                TabCount = 0,
                ToolTipParent = nil,
                TabHighlight = nil,
                OnChangeFunc = function(am)
                end
            }

            function am.Init(an, ao, ap, aq)
                Window = an
                WindUI = ao
                am.ToolTipParent = ap
                am.TabHighlight = aq
                return am
            end

            function am.New(an, ao)
                local ap = {
                    __type = "Tab",
                    Title = an.Title or "Tab",
                    Desc = an.Desc,
                    Icon = an.Icon,
                    IconColor = an.IconColor,
                    IconShape = an.IconShape,
                    IconThemed = an.IconThemed,
                    Locked = an.Locked,
                    ShowTabTitle = an.ShowTabTitle,
                    Selected = false,
                    Index = nil,
                    Parent = an.Parent,
                    UIElements = {},
                    Elements = {},
                    ContainerFrame = nil,
                    UICorner = Window.UICorner - (Window.UIPadding / 2),
                    Gap = Window.NewElements and 1 or 6,
                    TabPaddingX = 4 + (Window.UIPadding / 2),
                    TabPaddingY = 3 + (Window.UIPadding / 2),
                    TitlePaddingY = 0
                }

                if ap.IconShape then
                    ap.TabPaddingX = 2 + (Window.UIPadding / 4)
                    ap.TabPaddingY = 2 + (Window.UIPadding / 4)
                    ap.TitlePaddingY = 2 + (Window.UIPadding / 4)
                end

                am.TabCount = am.TabCount + 1

                local aq = am.TabCount
                ap.Index = aq

                ap.UIElements.Main =
                    af.NewRoundFrame(
                    ap.UICorner,
                    "Squircle",
                    {
                        BackgroundTransparency = 1,
                        Size = Dim2(1, -7, 0, 0),
                        AutomaticSize = "Y",
                        Parent = an.Parent,
                        ThemeTag = {
                            ImageColor3 = "TabBackground"
                        },
                        ImageTransparency = 1
                    },
                    {
                        af.NewRoundFrame(
                            ap.UICorner,
                            "SquircleOutline",
                            {
                                Size = Dim2(1, 0, 1, 0),
                                ThemeTag = {
                                    ImageColor3 = "Text"
                                },
                                ImageTransparency = 1,
                                Name = "Outline"
                            },
                            {
                                ah(
                                    "UIGradient",
                                    {
                                        Rotation = 80,
                                        Color = CSnew {
                                            CSKnew(0.0, fromRGB(255, 255, 255)),
                                            CSKnew(0.5, fromRGB(255, 255, 255)),
                                            CSKnew(1.0, fromRGB(255, 255, 255))
                                        },
                                        Transparency = NSnew {
                                            NSKnew(0.0, 0.1),
                                            NSKnew(0.5, 1),
                                            NSKnew(1.0, 0.1)
                                        }
                                    }
                                )
                            }
                        ),
                        af.NewRoundFrame(
                            ap.UICorner,
                            "Squircle",
                            {
                                Size = Dim2(1, 0, 0, 0),
                                AutomaticSize = "Y",
                                ThemeTag = {
                                    ImageColor3 = "Text"
                                },
                                ImageTransparency = 1,
                                Name = "Frame"
                            },
                            {
                                ah(
                                    "UIListLayout",
                                    {
                                        SortOrder = "LayoutOrder",
                                        Padding = Dim(0, 2 + (Window.UIPadding / 2)),
                                        FillDirection = "Horizontal",
                                        VerticalAlignment = "Center"
                                    }
                                ),
                                ah(
                                    "TextLabel",
                                    {
                                        Text = ap.Title,
                                        ThemeTag = {
                                            TextColor3 = "TabTitle"
                                        },
                                        TextTransparency = not ap.Locked and 0.4 or .7,
                                        TextSize = 15,
                                        Size = Dim2(1, 0, 0, 0),
                                        FontFace = Fnew(af.Font, Enum.FontWeight.Medium),
                                        TextWrapped = true,
                                        RichText = true,
                                        AutomaticSize = "Y",
                                        LayoutOrder = 2,
                                        TextXAlignment = "Left",
                                        BackgroundTransparency = 1
                                    },
                                    {
                                        ah(
                                            "UIPadding",
                                            {
                                                PaddingTop = Dim(0, ap.TitlePaddingY),
                                                PaddingBottom = Dim(0, ap.TitlePaddingY)
                                            }
                                        )
                                    }
                                ),
                                ah(
                                    "UIPadding",
                                    {
                                        PaddingTop = Dim(0, ap.TabPaddingY),
                                        PaddingLeft = Dim(0, ap.TabPaddingX),
                                        PaddingRight = Dim(0, ap.TabPaddingX),
                                        PaddingBottom = Dim(0, ap.TabPaddingY)
                                    }
                                )
                            }
                        )
                    },
                    true
                )

                local ar = 0
                local as
                local au

                if ap.Icon then
                    as =
                        af.Image(
                        ap.Icon,
                        ap.Icon .. ":" .. ap.Title,
                        0,
                        Window.Folder,
                        ap.__type,
                        ap.IconColor and false or true,
                        ap.IconThemed,
                        "TabIcon"
                    )
                    as.Size = Dim2(0, 16, 0, 16)
                    if ap.IconColor then
                        as.ImageLabel.ImageColor3 = ap.IconColor
                    end
                    if not ap.IconShape then
                        as.Parent = ap.UIElements.Main.Frame
                        ap.UIElements.Icon = as
                        as.ImageLabel.ImageTransparency = not ap.Locked and 0 or .7
                        ar = -18 - (Window.UIPadding / 2)
                        ap.UIElements.Main.Frame.TextLabel.Size = Dim2(1, ar, 0, 0)
                    elseif ap.IconColor then
                        af.NewRoundFrame(
                            ap.IconShape ~= "Circle" and (ap.UICorner + 5 - (2 + (Window.UIPadding / 4))) or 9999,
                            "Squircle",
                            {
                                Size = Dim2(0, 26, 0, 26),
                                ImageColor3 = ap.IconColor,
                                Parent = ap.UIElements.Main.Frame
                            },
                            {
                                as,
                                af.NewRoundFrame(
                                    ap.IconShape ~= "Circle" and (ap.UICorner + 5 - (2 + (Window.UIPadding / 4))) or 9999,
                                    "SquircleOutline",
                                    {
                                        Size = Dim2(1, 0, 1, 0),
                                        ThemeTag = {
                                            ImageColor3 = "White"
                                        },
                                        ImageTransparency = .35,
                                        Name = "Outline"
                                    },
                                    {
                                        ah(
                                            "UIGradient",
                                            {
                                                Rotation = 45,
                                                Color = CSnew {
                                                    CSKnew(0.0, fromRGB(255, 255, 255)),
                                                    CSKnew(0.5, fromRGB(255, 255, 255)),
                                                    CSKnew(1.0, fromRGB(255, 255, 255))
                                                },
                                                Transparency = NSnew {
                                                    NSKnew(0.0, 0.1),
                                                    NSKnew(0.5, 1),
                                                    NSKnew(1.0, 0.1)
                                                }
                                            }
                                        )
                                    }
                                )
                            }
                        )
                        as.AnchorPoint = Vec2(0.5, 0.5)
                        as.Position = Dim2(0.5, 0, 0.5, 0)
                        as.ImageLabel.ImageTransparency = 0
                        as.ImageLabel.ImageColor3 = af.GetTextColorForHSB(ap.IconColor)
                        ar = -28 - (Window.UIPadding / 2)
                        ap.UIElements.Main.Frame.TextLabel.Size = Dim2(1, ar, 0, 0)
                    end

                    au = af.Image(ap.Icon, ap.Icon .. ":" .. ap.Title, 0, Window.Folder, ap.__type, true, ap.IconThemed)
                    au.Size = Dim2(0, 16, 0, 16)
                    au.ImageLabel.ImageTransparency = not ap.Locked and 0 or .7
                    ar = -30
                end

                ap.UIElements.ContainerFrame =
                    ah(
                    "ScrollingFrame",
                    {
                        Size = Dim2(1, 0, 1, ap.ShowTabTitle and -((Window.UIPadding * 2.4) + 12) or 0),
                        BackgroundTransparency = 1,
                        ScrollBarThickness = 0,
                        ElasticBehavior = "Never",
                        CanvasSize = Dim2(0, 0, 0, 0),
                        AnchorPoint = Vec2(0, 1),
                        Position = Dim2(0, 0, 1, 0),
                        AutomaticCanvasSize = "Y",
                        ScrollingDirection = "Y"
                    },
                    {
                        ah(
                            "UIPadding",
                            {
                                PaddingTop = Dim(0, not Window.HidePanelBackground and 20 or 10),
                                PaddingLeft = Dim(0, not Window.HidePanelBackground and 20 or 10),
                                PaddingRight = Dim(0, not Window.HidePanelBackground and 20 or 10),
                                PaddingBottom = Dim(0, not Window.HidePanelBackground and 20 or 10)
                            }
                        ),
                        ah(
                            "UIListLayout",
                            {
                                SortOrder = "LayoutOrder",
                                Padding = Dim(0, ap.Gap),
                                HorizontalAlignment = "Center"
                            }
                        )
                    }
                )

                ap.UIElements.ContainerFrameCanvas =
                    ah(
                    "Frame",
                    {
                        Size = Dim2(1, 0, 1, 0),
                        BackgroundTransparency = 1,
                        Visible = false,
                        Parent = Window.UIElements.MainBar,
                        ZIndex = 5
                    },
                    {
                        ap.UIElements.ContainerFrame,
                        ah(
                            "Frame",
                            {
                                Size = Dim2(1, 0, 0, ((Window.UIPadding * 2.4) + 12)),
                                BackgroundTransparency = 1,
                                Visible = ap.ShowTabTitle or false,
                                Name = "TabTitle"
                            },
                            {
                                au,
                                ah(
                                    "TextLabel",
                                    {
                                        Text = ap.Title,
                                        ThemeTag = {
                                            TextColor3 = "Text"
                                        },
                                        TextSize = 20,
                                        TextTransparency = .1,
                                        Size = Dim2(1, -ar, 1, 0),
                                        FontFace = Fnew(af.Font, Enum.FontWeight.SemiBold),
                                        TextTruncate = "AtEnd",
                                        RichText = true,
                                        LayoutOrder = 2,
                                        TextXAlignment = "Left",
                                        BackgroundTransparency = 1
                                    }
                                ),
                                ah(
                                    "UIPadding",
                                    {
                                        PaddingTop = Dim(0, 20),
                                        PaddingLeft = Dim(0, 20),
                                        PaddingRight = Dim(0, 20),
                                        PaddingBottom = Dim(0, 20)
                                    }
                                ),
                                ah(
                                    "UIListLayout",
                                    {
                                        SortOrder = "LayoutOrder",
                                        Padding = Dim(0, 10),
                                        FillDirection = "Horizontal",
                                        VerticalAlignment = "Center"
                                    }
                                )
                            }
                        ),
                        ah(
                            "Frame",
                            {
                                Size = Dim2(1, 0, 0, 1),
                                BackgroundTransparency = .9,
                                ThemeTag = {
                                    BackgroundColor3 = "Text"
                                },
                                Position = Dim2(0, 0, 0, ((Window.UIPadding * 2.4) + 12)),
                                Visible = ap.ShowTabTitle or false
                            }
                        )
                    }
                )

                am.Containers[aq] = ap.UIElements.ContainerFrameCanvas
                am.Tabs[aq] = ap

                ap.ContainerFrame = ContainerFrameCanvas

                af.AddSignal(
                    ap.UIElements.Main.MouseButton1Click,
                    function()
                        if not ap.Locked then
                            am:SelectTab(aq)
                        end
                    end
                )

                if Window.ScrollBarEnabled then
                    al(ap.UIElements.ContainerFrame, ap.UIElements.ContainerFrameCanvas, Window, 3)
                end

                local av
                local aw
                local ax
                local ay = false

                if ap.Desc then
                    af.AddSignal(
                        ap.UIElements.Main.InputBegan,
                        function()
                            ay = true
                            aw =
                                tspawn(
                                function()
                                    twait(0.35)
                                    if ay and not av then
                                        av = ak(ap.Desc, am.ToolTipParent, true)
                                        av.Container.AnchorPoint = Vec2(0.5, 0.5)

                                        local function updatePosition()
                                            if av then
                                                av.Container.Position = Dim2(0, ae.X, 0, ae.Y - 4)
                                            end
                                        end

                                        updatePosition()
                                        ax = ae.Move:Connect(updatePosition)
                                        av:Open()
                                    end
                                end
                            )
                        end
                    )
                end

                af.AddSignal(ap.UIElements.Main.MouseEnter, function()
                    if not ap.Locked then
                        TwCreate(TweenService, ap.UIElements.Main.Frame, TwInfo(0.08), {ImageTransparency = 0.97}):Play();
                    end;
                end);
                af.AddSignal(ap.UIElements.Main.InputEnded, function()
                    if ap.Desc then ay = false;
                        if aw then tcancel(aw) aw = nil; end;
                        if ax then ax:Disconnect(); ax = nil; end;
                        if av then av:Close(); av = nil; end;
                    end; if not ap.Locked then
                        TwCreate(TweenService, ap.UIElements.Main.Frame, TwInfo(0.08), {ImageTransparency = 1}):Play();
                    end;
                end); function ap.ScrollToTheElement(az, aA)
                    ap.UIElements.ContainerFrame.ScrollingEnabled = false;
                    TwCreate(ap.UIElements.ContainerFrame, TwInfo(0.45, Enum.EasingStyle.Quint, Enum.EasingDirection.Out),
                        {CanvasPosition = Vec2(0, ap.Elements[aA].ElementFrame.AbsolutePosition.Y - ap.UIElements.ContainerFrame.AbsolutePosition.Y - ap.UIElements.ContainerFrame.UIPadding.PaddingTop.Offset)}
                    ):Play(); tspawn(function()
                        twait(.48) if ap.Elements[aA].Highlight then
                            ap.Elements[aA]:Highlight();
                            ap.UIElements.ContainerFrame.ScrollingEnabled = true;
                        end;
                    end); return ap;
                end; local az = a.load"T";
                az.Load(ap, ap.UIElements.ContainerFrame, az.Elements, Window, WindUI, nil, az, ao);
                function ap.LockAll(aA)
                    for aB, aC in next, Window.AllElements do
                        if aC.Tab and aC.Tab.Index and aC.Tab.Index == ap.Index and aC.Lock then
                            aC:Lock()
                        end;
                    end;
                end; function ap.UnlockAll(aA)
                    for aB, aC in next, Window.AllElements do
                        if aC.Tab and aC.Tab.Index and aC.Tab.Index == ap.Index and aC.Unlock then
                            aC:Unlock();
                        end;
                    end;
                end; function ap.GetLocked(aA)
                    local aB = {}; for aC, aD in next, Window.AllElements do
                        if aD.Tab and aD.Tab.Index and aD.Tab.Index == ap.Index and aD.Locked == true then
                            tablein(aB, aD);
                        end;
                    end; return aB;
                end; function ap.GetUnlocked(aA)
                    local aB = {}; for aC, aD in next, Window.AllElements do
                        if aD.Tab and aD.Tab.Index and aD.Tab.Index == ap.Index and aD.Locked == false then
                            tablein(aB, aD);
                        end;
                    end; return aB;
                end; function ap.Select(aA)
                    return am:SelectTab(ap.Index);
                end; tspawn(function()
                    local aA,aB = ah("Frame", {
                        BackgroundTransparency = 1,
                        Size = Dim2(1, 0, 1, -Window.UIElements.Main.Main.Topbar.AbsoluteSize.Y),
                        Parent = ap.UIElements.ContainerFrame
                    }, {
                        ah("UIListLayout", {
                            Padding = Dim(0, 8),
                            SortOrder = "LayoutOrder",
                            VerticalAlignment = "Center",
                            HorizontalAlignment = "Center",
                            FillDirection = "Vertical"
                        }), ah("ImageLabel", {
                            Size = Dim2(0, 48, 0, 48),
                            Image = af.Icon "frown"[1],
                            ImageRectOffset = af.Icon "frown"[2].ImageRectPosition,
                            ImageRectSize = af.Icon "frown"[2].ImageRectSize,
                            ThemeTag = {
                                ImageColor3 = "Icon"
                            },
                            BackgroundTransparency = 1,
                            ImageTransparency = .6
                        }), ah("TextLabel", {
                            AutomaticSize = "XY",
                            Text = "This tab is empty",
                            ThemeTag = {
                                TextColor3 = "Text"
                            },
                            TextSize = 18,
                            TextTransparency = .5,
                            BackgroundTransparency = 1,
                            FontFace = Fnew(af.Font, Enum.FontWeight.Medium)
                        });
                    }), nil;
                    aB = af.AddSignal(ap.UIElements.ContainerFrame.ChildAdded, function()
                        aA.Visible = false;
                        aB:Disconnect();
                    end);
                end); return ap;
            end; function am.OnChange(an, ao)
                am.OnChangeFunc = ao;
            end; function am.SelectTab(an, ao)
                if not am.Tabs[ao].Locked then
                    am.SelectedTab = ao; for ap, aq in next, am.Tabs do
                        if not aq.Locked then
                            TwCreate(TweenService, aq.UIElements.Main, TwInfo(0.15), {ImageTransparency = 1}):Play();
                            TwCreate(TweenService, aq.UIElements.Main.Frame.TextLabel, TwInfo(0.15), {TextTransparency = 0.3}):Play();
                            if aq.UIElements.Icon and not aq.IconColor then
                                TwCreate(TweenService, aq.UIElements.Icon.ImageLabel, TwInfo(0.15), {ImageTransparency = 0.4}):Play();
                            end;
                            aq.Selected = false;
                        end;
                    end; TwCreate(TweenService, am.Tabs[ao].UIElements.Main, TwInfo(0.15), {ImageTransparency = 0.93}):Play();
                    TwCreate(TweenService, am.Tabs[ao].UIElements.Main.Frame.TextLabel, TwInfo(0.15), {TextTransparency = 0}):Play();
                    if am.Tabs[ao].UIElements.Icon and not am.Tabs[ao].IconColor then
                        TwCreate(TweenService, am.Tabs[ao].UIElements.Icon.ImageLabel, TwInfo(0.15), {ImageTransparency = 0.1}):Play();
                    end; am.Tabs[ao].Selected = true;
                    tspawn(function()
                        for ar, as in next, am.Containers do
                            as.AnchorPoint = Vec2(0, 0.05);
                            as.Visible = false;
                        end; am.Containers[ao].Visible = true
                        TwCreate(TweenService, am.Containers[ao], TwInfo(0.15, Enum.EasingStyle.Quart, Enum.EasingDirection.Out),
                            {AnchorPoint = Vec2(0, 0)}
                        ):Play();
                    end); am.OnChangeFunc(ao);
                end;
            end; return am;
        end;
        function a.V()
            local aa = {}

            local ae = a.load "b"
            local af = ae.New
            local ah = ae.Tween

            local aj = a.load "U"

            function aa.New(ak, al, am, an, ao)
                local ap = {
                    Title = ak.Title or "Section",
                    Icon = ak.Icon,
                    IconThemed = ak.IconThemed,
                    Opened = ak.Opened or false,
                    HeaderSize = 42,
                    IconSize = 18,
                    Expandable = false
                }

                local aq
                if ap.Icon then
                    aq = ae.Image(ap.Icon, ap.Icon, 0, am, "Section", true, ap.IconThemed)

                    aq.Size = Dim2(0, ap.IconSize, 0, ap.IconSize)
                    aq.ImageLabel.ImageTransparency = .25
                end

                local ar =
                    af(
                    "Frame",
                    {
                        Size = Dim2(0, ap.IconSize, 0, ap.IconSize),
                        BackgroundTransparency = 1,
                        Visible = false
                    },
                    {
                        af(
                            "ImageLabel",
                            {
                                Size = Dim2(1, 0, 1, 0),
                                BackgroundTransparency = 1,
                                Image = ae.Icon "chevron-down"[1],
                                ImageRectSize = ae.Icon "chevron-down"[2].ImageRectSize,
                                ImageRectOffset = ae.Icon "chevron-down"[2].ImageRectPosition,
                                ThemeTag = {
                                    ImageColor3 = "Icon"
                                },
                                ImageTransparency = .7
                            }
                        )
                    }
                )

                local as =
                    af(
                    "Frame",
                    {
                        Size = Dim2(1, 0, 0, ap.HeaderSize),
                        BackgroundTransparency = 1,
                        Parent = al,
                        ClipsDescendants = true
                    },
                    {
                        af(
                            "TextButton",
                            {
                                Size = Dim2(1, 0, 0, ap.HeaderSize),
                                BackgroundTransparency = 1,
                                Text = ""
                            },
                            {
                                aq,
                                af(
                                    "TextLabel",
                                    {
                                        Text = ap.Title,
                                        TextXAlignment = "Left",
                                        Size = Dim2(1, aq and (-ap.IconSize - 10) * 2 or (-ap.IconSize - 10), 1, 0),
                                        ThemeTag = {
                                            TextColor3 = "Text"
                                        },
                                        FontFace = Fnew(ae.Font, Enum.FontWeight.SemiBold),
                                        TextSize = 14,
                                        BackgroundTransparency = 1,
                                        TextTransparency = .7,
                                        TextWrapped = true
                                    }
                                ),
                                af(
                                    "UIListLayout",
                                    {
                                        FillDirection = "Horizontal",
                                        VerticalAlignment = "Center",
                                        Padding = Dim(0, 10)
                                    }
                                ),
                                ar,
                                af(
                                    "UIPadding",
                                    {
                                        PaddingLeft = Dim(0, 11),
                                        PaddingRight = Dim(0, 11)
                                    }
                                )
                            }
                        ),
                        af(
                            "Frame",
                            {
                                BackgroundTransparency = 1,
                                Size = Dim2(1, 0, 0, 0),
                                AutomaticSize = "Y",
                                Name = "Content",
                                Visible = true,
                                Position = Dim2(0, 0, 0, ap.HeaderSize)
                            },
                            {
                                af(
                                    "UIListLayout",
                                    {
                                        FillDirection = "Vertical",
                                        Padding = Dim(0, ao.Gap),
                                        VerticalAlignment = "Bottom"
                                    }
                                )
                            }
                        )
                    }
                )

                function ap.Tab(au, av)
                    if not ap.Expandable then
                        ap.Expandable = true;
                        ar.Visible = true;
                    end av.Parent = as.Content;
                    return aj.New(av, an);
                end; function ap.Open(au)
                    if ap.Expandable then
                        ap.Opened = true
                        TwCreate(TweenService, as, TwInfo(0.33, Enum.EasingStyle.Quint, Enum.EasingDirection.Out),
                            {Size = Dim2(1, 0, 0, ap.HeaderSize + (as.Content.AbsoluteSize.Y / an))}
                        ):Play(); TwCreate(TweenService, ar.ImageLabel, TwInfo(0.1, Enum.EasingStyle.Quint, Enum.EasingDirection.Out), {Rotation = 180}):Play();
                    end;
                end; function ap.Close(au)
                    if ap.Expandable then
                        ap.Opened = false
                        TwCreate(TweenService, as, TwInfo(0.26, Enum.EasingStyle.Quint, Enum.EasingDirection.Out),
                            {Size = Dim2(1, 0, 0, ap.HeaderSize)}
                        ):Play() TwCreate(TweenService, ar.ImageLabel, TwInfo(0.1, Enum.EasingStyle.Quint, Enum.EasingDirection.Out), {Rotation = 0}):Play();
                    end;
                end; ae.AddSignal(as.TextButton.MouseButton1Click, function()
                    if ap.Expandable then
                        if ap.Opened then
                            ap:Close();
                        else
                            ap:Open();
                        end;
                    end;
                end); ae.AddSignal(PropChangeSignal(as.Content.UIListLayout, "AbsoluteContentSize"), function()
                    if ap.Opened then
                        ap:Open();
                    end;
                end); if ap.Opened then
                    tspawn(function()
                        twait();
                        ap:Open();
                    end);
                end; return ap;
            end; return aa;
        end;
        function a.W()
            return {
                Tab = "table-of-contents",
                Paragraph = "type",
                Button = "square-mouse-pointer",
                Toggle = "toggle-right",
                Slider = "sliders-horizontal",
                Keybind = "command",
                Input = "text-cursor-input",
                Dropdown = "chevrons-up-down",
                Code = "terminal",
                Colorpicker = "palette"
            }
        end
        function a.X()
            local ae = {
                Margin = 8,
                Padding = 9
            }

            local af = a.load "b"
            local ah = af.New

            function ae.new(ak, al, am)
                local an = {
                    IconSize = 18,
                    Padding = 14,
                    Radius = 22,
                    Width = 400,
                    MaxHeight = 380,
                    Icons = a.load "W"
                }

                local ao =
                    ah(
                    "TextBox",
                    {
                        Text = "",
                        PlaceholderText = "Search...",
                        ThemeTag = {
                            PlaceholderColor3 = "Placeholder",
                            TextColor3 = "Text"
                        },
                        Size = Dim2(1, -((an.IconSize * 2) + (an.Padding * 2)), 0, 0),
                        AutomaticSize = "Y",
                        ClipsDescendants = true,
                        ClearTextOnFocus = false,
                        BackgroundTransparency = 1,
                        TextXAlignment = "Left",
                        FontFace = Fnew(af.Font, Enum.FontWeight.Regular),
                        TextSize = 18
                    }
                )

                local ap =
                    ah(
                    "ImageLabel",
                    {
                        Image = af.Icon "x"[1],
                        ImageRectSize = af.Icon "x"[2].ImageRectSize,
                        ImageRectOffset = af.Icon "x"[2].ImageRectPosition,
                        BackgroundTransparency = 1,
                        ThemeTag = {
                            ImageColor3 = "Icon"
                        },
                        ImageTransparency = .1,
                        Size = Dim2(0, an.IconSize, 0, an.IconSize)
                    },
                    {
                        ah(
                            "TextButton",
                            {
                                Size = Dim2(1, 8, 1, 8),
                                BackgroundTransparency = 1,
                                Active = true,
                                ZIndex = 999999999,
                                AnchorPoint = Vec2(0.5, 0.5),
                                Position = Dim2(0.5, 0, 0.5, 0),
                                Text = ""
                            }
                        )
                    }
                )

                local aq =
                    ah(
                    "ScrollingFrame",
                    {
                        Size = Dim2(1, 0, 0, 0),
                        AutomaticCanvasSize = "Y",
                        ScrollingDirection = "Y",
                        ElasticBehavior = "Never",
                        ScrollBarThickness = 0,
                        CanvasSize = Dim2(0, 0, 0, 0),
                        BackgroundTransparency = 1,
                        Visible = false
                    },
                    {
                        ah(
                            "UIListLayout",
                            {
                                Padding = Dim(0, 0),
                                FillDirection = "Vertical"
                            }
                        ),
                        ah(
                            "UIPadding",
                            {
                                PaddingTop = Dim(0, an.Padding),
                                PaddingLeft = Dim(0, an.Padding),
                                PaddingRight = Dim(0, an.Padding),
                                PaddingBottom = Dim(0, an.Padding)
                            }
                        )
                    }
                )

                local ar =
                    af.NewRoundFrame(
                    an.Radius,
                    "Squircle",
                    {
                        Size = Dim2(1, 0, 1, 0),
                        ThemeTag = {
                            ImageColor3 = "Background"
                        },
                        ImageTransparency = 0
                    },
                    {
                        af.NewRoundFrame(
                            an.Radius,
                            "Squircle",
                            {
                                Size = Dim2(1, 0, 1, 0),
                                BackgroundTransparency = 1,
                                Visible = false,
                                ImageColor3 = Col3new(1, 1, 1),
                                ImageTransparency = .98,
                                Name = "Frame"
                            },
                            {
                                ah(
                                    "Frame",
                                    {
                                        Size = Dim2(1, 0, 0, 46),
                                        BackgroundTransparency = 1
                                    },
                                    {
                                        ah(
                                            "Frame",
                                            {
                                                Size = Dim2(1, 0, 1, 0),
                                                BackgroundTransparency = 1
                                            },
                                            {
                                                ah(
                                                    "ImageLabel",
                                                    {
                                                        Image = af.Icon "search"[1],
                                                        ImageRectSize = af.Icon "search"[2].ImageRectSize,
                                                        ImageRectOffset = af.Icon "search"[2].ImageRectPosition,
                                                        BackgroundTransparency = 1,
                                                        ThemeTag = {
                                                            ImageColor3 = "Icon"
                                                        },
                                                        ImageTransparency = .1,
                                                        Size = Dim2(0, an.IconSize, 0, an.IconSize)
                                                    }
                                                ),
                                                ao,
                                                ap,
                                                ah(
                                                    "UIListLayout",
                                                    {
                                                        Padding = Dim(0, an.Padding),
                                                        FillDirection = "Horizontal",
                                                        VerticalAlignment = "Center"
                                                    }
                                                ),
                                                ah(
                                                    "UIPadding",
                                                    {
                                                        PaddingLeft = Dim(0, an.Padding),
                                                        PaddingRight = Dim(0, an.Padding)
                                                    }
                                                )
                                            }
                                        )
                                    }
                                ),
                                ah(
                                    "Frame",
                                    {
                                        BackgroundTransparency = 1,
                                        AutomaticSize = "Y",
                                        Size = Dim2(1, 0, 0, 0),
                                        Name = "Results"
                                    },
                                    {
                                        ah(
                                            "Frame",
                                            {
                                                Size = Dim2(1, 0, 0, 1),
                                                ThemeTag = {
                                                    BackgroundColor3 = "Outline"
                                                },
                                                BackgroundTransparency = .9,
                                                Visible = false
                                            }
                                        ),
                                        aq,
                                        ah(
                                            "UISizeConstraint",
                                            {
                                                MaxSize = Vec2(an.Width, an.MaxHeight)
                                            }
                                        )
                                    }
                                ),
                                ah(
                                    "UIListLayout",
                                    {
                                        Padding = Dim(0, 0),
                                        FillDirection = "Vertical"
                                    }
                                )
                            }
                        )
                    }
                )

                local as =
                    ah(
                    "Frame",
                    {
                        Size = Dim2(0, an.Width, 0, 0),
                        AutomaticSize = "Y",
                        Parent = al,
                        BackgroundTransparency = 1,
                        Position = Dim2(0.5, 0, 0.5, 0),
                        AnchorPoint = Vec2(0.5, 0.5),
                        Visible = false,
                        ZIndex = 99999999
                    },
                    {
                        ah(
                            "UIScale",
                            {
                                Scale = .9
                            }
                        ),
                        ar,
                        af.NewRoundFrame(
                            an.Radius,
                            "SquircleOutline2",
                            {
                                Size = Dim2(1, 0, 1, 0),
                                ThemeTag = {
                                    ImageColor3 = "Outline"
                                },
                                ImageTransparency = 1
                            },
                            {
                                ah(
                                    "UIGradient",
                                    {
                                        Rotation = 45,
                                        Transparency = NSnew {
                                            NSKnew(0, 0.55),
                                            NSKnew(0.5, 0.8),
                                            NSKnew(1, 0.6)
                                        }
                                    }
                                )
                            }
                        )
                    }
                )

                local function CreateSearchTab(au, av, aw, ax, ay, az)
                    local aA =
                        ah(
                        "TextButton",
                        {
                            Size = Dim2(1, 0, 0, 0),
                            AutomaticSize = "Y",
                            BackgroundTransparency = 1,
                            Parent = ax or nil
                        },
                        {
                            af.NewRoundFrame(
                                an.Radius - 11,
                                "Squircle",
                                {
                                    Size = Dim2(1, 0, 0, 0),
                                    Position = Dim2(0.5, 0, 0.5, 0),
                                    AnchorPoint = Vec2(0.5, 0.5),
                                    ThemeTag = {
                                        ImageColor3 = "Text"
                                    },
                                    ImageTransparency = 1,
                                    Name = "Main"
                                },
                                {
                                    af.NewRoundFrame(
                                        an.Radius - 11,
                                        "SquircleOutline2",
                                        {
                                            Size = Dim2(1, 0, 1, 0),
                                            Position = Dim2(0.5, 0, 0.5, 0),
                                            AnchorPoint = Vec2(0.5, 0.5),
                                            ThemeTag = {
                                                ImageColor3 = "Outline"
                                            },
                                            ImageTransparency = 1,
                                            Name = "Outline"
                                        },
                                        {
                                            ah(
                                                "UIGradient",
                                                {
                                                    Rotation = 65,
                                                    Transparency = NSnew {
                                                        NSKnew(0, 0.55),
                                                        NSKnew(0.5, 0.8),
                                                        NSKnew(1, 0.6)
                                                    }
                                                }
                                            ),
                                            ah(
                                                "UIPadding",
                                                {
                                                    PaddingTop = Dim(0, an.Padding - 2),
                                                    PaddingLeft = Dim(0, an.Padding),
                                                    PaddingRight = Dim(0, an.Padding),
                                                    PaddingBottom = Dim(0, an.Padding - 2)
                                                }
                                            ),
                                            ah(
                                                "ImageLabel",
                                                {
                                                    Image = af.Icon(aw)[1],
                                                    ImageRectSize = af.Icon(aw)[2].ImageRectSize,
                                                    ImageRectOffset = af.Icon(aw)[2].ImageRectPosition,
                                                    BackgroundTransparency = 1,
                                                    ThemeTag = {
                                                        ImageColor3 = "Icon"
                                                    },
                                                    ImageTransparency = .1,
                                                    Size = Dim2(0, an.IconSize, 0, an.IconSize)
                                                }
                                            ),
                                            ah(
                                                "Frame",
                                                {
                                                    Size = Dim2(1, -an.IconSize - an.Padding, 0, 0),
                                                    BackgroundTransparency = 1
                                                },
                                                {
                                                    ah(
                                                        "TextLabel",
                                                        {
                                                            Text = au,
                                                            ThemeTag = {
                                                                TextColor3 = "Text"
                                                            },
                                                            TextSize = 17,
                                                            BackgroundTransparency = 1,
                                                            TextXAlignment = "Left",
                                                            FontFace = Fnew(af.Font, Enum.FontWeight.Medium),
                                                            Size = Dim2(1, 0, 0, 0),
                                                            TextTruncate = "AtEnd",
                                                            AutomaticSize = "Y",
                                                            Name = "Title"
                                                        }
                                                    ),
                                                    ah(
                                                        "TextLabel",
                                                        {
                                                            Text = av or "",
                                                            Visible = av and true or false,
                                                            ThemeTag = {
                                                                TextColor3 = "Text"
                                                            },
                                                            TextSize = 15,
                                                            TextTransparency = .3,
                                                            BackgroundTransparency = 1,
                                                            TextXAlignment = "Left",
                                                            FontFace = Fnew(af.Font, Enum.FontWeight.Medium),
                                                            Size = Dim2(1, 0, 0, 0),
                                                            TextTruncate = "AtEnd",
                                                            AutomaticSize = "Y",
                                                            Name = "Desc"
                                                        }
                                                    ) or nil,
                                                    ah(
                                                        "UIListLayout",
                                                        {
                                                            Padding = Dim(0, 6),
                                                            FillDirection = "Vertical"
                                                        }
                                                    )
                                                }
                                            ),
                                            ah(
                                                "UIListLayout",
                                                {
                                                    Padding = Dim(0, an.Padding),
                                                    FillDirection = "Horizontal"
                                                }
                                            )
                                        }
                                    )
                                },
                                true
                            ),
                            ah(
                                "Frame",
                                {
                                    Name = "ParentContainer",
                                    Size = Dim2(1, -an.Padding, 0, 0),
                                    AutomaticSize = "Y",
                                    BackgroundTransparency = 1,
                                    Visible = ay
                                },
                                {
                                    af.NewRoundFrame(
                                        99,
                                        "Squircle",
                                        {
                                            Size = Dim2(0, 2, 1, 0),
                                            BackgroundTransparency = 1,
                                            ThemeTag = {
                                                ImageColor3 = "Text"
                                            },
                                            ImageTransparency = .9
                                        }
                                    ),
                                    ah(
                                        "Frame",
                                        {
                                            Size = Dim2(1, -an.Padding - 2, 0, 0),
                                            Position = Dim2(0, an.Padding + 2, 0, 0),
                                            BackgroundTransparency = 1
                                        },
                                        {
                                            ah(
                                                "UIListLayout",
                                                {
                                                    Padding = Dim(0, 0),
                                                    FillDirection = "Vertical"
                                                }
                                            )
                                        }
                                    )
                                }
                            ),
                            ah(
                                "UIListLayout",
                                {
                                    Padding = Dim(0, 0),
                                    FillDirection = "Vertical",
                                    HorizontalAlignment = "Right"
                                }
                            )
                        }
                    )

                    aA.Main.Size =
                        Dim2(
                        1,
                        0,
                        0,
                        aA.Main.Outline.Frame.Desc.Visible and
                            (((an.Padding - 2) * 2) + aA.Main.Outline.Frame.Title.TextBounds.Y + 6 +
                                aA.Main.Outline.Frame.Desc.TextBounds.Y) or
                            (((an.Padding - 2) * 2) + aA.Main.Outline.Frame.Title.TextBounds.Y)
                    )

                    af.AddSignal(
                        aA.Main.MouseEnter,
                        function()
                            aj(aA.Main, .04, {ImageTransparency = .95}):Play()
                            aj(aA.Main.Outline, .04, {ImageTransparency = .7}):Play()
                        end
                    )
                    af.AddSignal(
                        aA.Main.InputEnded,
                        function()
                            aj(aA.Main, .08, {ImageTransparency = 1}):Play()
                            aj(aA.Main.Outline, .08, {ImageTransparency = 1}):Play()
                        end
                    )
                    af.AddSignal(
                        aA.Main.MouseButton1Click,
                        function()
                            if az then
                                az()
                            end
                        end
                    )

                    return aA
                end

                local function ContainsText(au, av)
                    if not av or av == "" then
                        return false
                    end

                    if not au or au == "" then
                        return false
                    end

                    local aw = string.lower(au)
                    local ax = string.lower(av)

                    return strfind(aw, ax, 1, true) ~= nil
                end

                local function Search(au)
                    if not au or au == "" then
                        return {}
                    end

                    local av = {}
                    for aw, ax in next, ak.Tabs do
                        local ay = ContainsText(ax.Title or "", au)
                        local az = {}

                        for aA, aB in next, ax.Elements do
                            if aB.__type ~= "Section" then
                                local aC = ContainsText(aB.Title or "", au)
                                local aD = ContainsText(aB.Desc or "", au)

                                if aC or aD then
                                    az[aA] = {
                                        Title = aB.Title,
                                        Desc = aB.Desc,
                                        Original = aB,
                                        __type = aB.__type,
                                        Index = aA
                                    }
                                end
                            end
                        end

                        if ay or next(az) ~= nil then
                            av[aw] = {
                                Tab = ax,
                                Title = ax.Title,
                                Icon = ax.Icon,
                                Elements = az
                            }
                        end
                    end
                    return av
                end

                function an.Search(au, av)
                    av = av or ""

                    local aw = Search(av)

                    aq.Visible = true
                    ar.Frame.Results.Frame.Visible = true
                    for ax, ay in next, aq:GetChildren() do
                        if ay.ClassName ~= "UIListLayout" and ay.ClassName ~= "UIPadding" then
                            ay:Destroy()
                        end
                    end

                    if aw and next(aw) ~= nil then
                        for az, aA in next, aw do
                            local aB = an.Icons.Tab
                            local aC =
                                CreateSearchTab(
                                aA.Title,
                                nil,
                                aB,
                                aq,
                                true,
                                function()
                                    an:Close()
                                    ak:SelectTab(az)
                                end
                            )
                            if aA.Elements and next(aA.Elements) ~= nil then
                                for aD, aE in next, aA.Elements do
                                    local aF = an.Icons[aE.__type]
                                    CreateSearchTab(
                                        aE.Title,
                                        aE.Desc,
                                        aF,
                                        aC:FindFirstChild "ParentContainer" and aC.ParentContainer.Frame or nil,
                                        false,
                                        function()
                                            an:Close()
                                            ak:SelectTab(az)
                                            if aA.Tab.ScrollToTheElement then
                                                aA.Tab:ScrollToTheElement(aE.Index)
                                            end
                                        end
                                    )
                                end
                            end
                        end
                    elseif av ~= "" then
                        ah(
                            "TextLabel",
                            {
                                Size = Dim2(1, 0, 0, 70),
                                BackgroundTransparency = 1,
                                Text = "No results found",
                                TextSize = 16,
                                ThemeTag = {
                                    TextColor3 = "Text"
                                },
                                TextTransparency = .2,
                                BackgroundTransparency = 1,
                                FontFace = Fnew(af.Font, Enum.FontWeight.Medium),
                                Parent = aq,
                                Name = "NotFound"
                            }
                        )
                    else
                        aq.Visible = false
                        ar.Frame.Results.Frame.Visible = false
                    end
                end

                af.AddSignal(PropChangeSignal(ao, "Text"), function()
                    an:Search(ao.Text);
                end); af.AddSignal(PropChangeSignal(aq.UIListLayout, "AbsoluteContentSize"), function()
                    TwCreate(TweenService, aq, TwInfo(0.06, Enum.EasingStyle.Quint, Enum.EasingDirection.InOut), {
                        Size = Dim2(1, 0,  0, mclamp(aq.UIListLayout.AbsoluteContentSize.Y + (an.Padding * 2), 0, an.MaxHeight))
                    }):Play();
                end); function an.Open(au)
                    tspawn(function()
                        ar.Frame.Visible = true; as.Visible = true;
                        TwCreate(TweenService, as.UIScale, TwInfo(0.12, Enum.EasingStyle.Quint, Enum.EasingDirection.Out), {Scale = 1}):Play();
                    end);
                end; function an.Close(au)
                    tspawn(function()
                        am(); ar.Frame.Visible = false;
                        TwCreate(TweenService, as.UIScale, TwInfo(0.12, Enum.EasingStyle.Quint, Enum.EasingDirection.Out), {Scale = 1}):Play();
                        twait(0.12); as.Visible = false;
                    end);
                end; af.AddSignal(ap.TextButton.MouseButton1Click, function()
                    an:Close()
                end); an:Open(); return an;
            end; return ae;
        end
        function a.Y()
            local aa = (cloneref or clonereference or function(aa)
                    return aa
                end)

            local ae = aa(game:GetService "UserInputService")
            aa(game:GetService "RunService")

            local af = workspace.CurrentCamera

            local ah = a.load "q"

            local aj = a.load "b"
            local ak = aj.New
            local al = aj.Tween

            local am = a.load "t".New
            local an = a.load "j".New
            local ao = a.load "u".New
            local ap = a.load "v"

            local aq = a.load "w"

            return function(ar)
                local as = {
                    Title = ar.Title or "Vulnerability X",
                    Author = ar.Author,
                    Icon = ar.Icon,
                    IconSize = ar.IconSize or 22,
                    IconThemed = ar.IconThemed,
                    Folder = ar.Folder,
                    Resizable = ar.Resizable ~= false,
                    Background = ar.Background,
                    BackgroundImageTransparency = ar.BackgroundImageTransparency or 0,
                    ShadowTransparency = ar.ShadowTransparency or 0.7,
                    User = ar.User or {},
                    Footer = ar.Footer or {},
                    Topbar = ar.Topbar or {Height = 52, ButtonsType = "Default"},
                    Size = ar.Size,
                    MinSize = ar.MinSize or Vec2(560, 350),
                    MaxSize = ar.MaxSize or Vec2(850, 560),
                    TopBarButtonIconSize = ar.TopBarButtonIconSize or 16,
                    ToggleKey = ar.ToggleKey,
                    ElementsRadius = ar.ElementsRadius,
                    Radius = ar.Radius or 16,
                    Transparent = ar.Transparent or false,
                    HideSearchBar = ar.HideSearchBar ~= false,
                    ScrollBarEnabled = ar.ScrollBarEnabled or false,
                    SideBarWidth = ar.SideBarWidth or 200,
                    Acrylic = ar.Acrylic or false,
                    NewElements = ar.NewElements or false,
                    IgnoreAlerts = ar.IgnoreAlerts or false,
                    HidePanelBackground = ar.HidePanelBackground or false,
                    AutoScale = ar.AutoScale ~= false,
                    OpenButton = ar.OpenButton,
                    Position = Dim2(0.5, 0, 0.5, 0),
                    UICorner = nil,
                    UIPadding = 14,
                    UIElements = {},
                    CanDropdown = true,
                    Closed = false,
                    Parent = ar.Parent,
                    Destroyed = false,
                    IsFullscreen = false,
                    CanResize = ar.Resizable ~= false,
                    IsOpenButtonEnabled = true,
                    CurrentConfig = nil,
                    ConfigManager = nil,
                    AcrylicPaint = nil,
                    CurrentTab = nil,
                    TabModule = nil,
                    OnOpenCallback = nil,
                    OnCloseCallback = nil,
                    OnDestroyCallback = nil,
                    IsPC = false,
                    Gap = 5,
                    TopBarButtons = {},
                    AllElements = {},
                    ElementConfig = {},
                    PendingFlags = {},
                    IsToggleDragging = false
                }

                as.UICorner = as.Radius

                as.ElementConfig = {
                    UIPadding = (as.NewElements and 10 or 13),
                    UICorner = as.ElementsRadius or (as.NewElements and 23 or 12)
                }

                local au = as.Size or Dim2(0, 580, 0, 460)
                as.Size =
                    Dim2(
                    au.X.Scale,
                    mclamp(au.X.Offset, as.MinSize.X, as.MaxSize.X),
                    au.Y.Scale,
                    mclamp(au.Y.Offset, as.MinSize.Y, as.MaxSize.Y)
                )

                if as.Topbar == {} then
                    as.Topbar = {Height = 52, ButtonsType = "Default"}
                end

                if as.Folder then
                    if not isfolder("WindUI/" .. as.Folder) then
                        makefolder("WindUI/" .. as.Folder)
                    end
                    if not isfolder("WindUI/" .. as.Folder .. "/assets") then
                        makefolder("WindUI/" .. as.Folder .. "/assets")
                    end
                    if not isfolder(as.Folder) then
                        makefolder(as.Folder)
                    end
                    if not isfolder(as.Folder .. "/assets") then
                        makefolder(as.Folder .. "/assets")
                    end
                end

                local av =
                    ak(
                    "UICorner",
                    {
                        CornerRadius = Dim(0, as.UICorner)
                    }
                )

                if as.Folder then
                    as.ConfigManager = aq:Init(as)
                end

                if as.Acrylic then
                    local aw, ax = ah.AcrylicPaint {UseAcrylic = as.Acrylic}

                    as.AcrylicPaint = aw
                end

                local aw =
                    ak(
                    "Frame",
                    {
                        Size = Dim2(0, 32, 0, 32),
                        Position = Dim2(1, 0, 1, 0),
                        AnchorPoint = Vec2(.5, .5),
                        BackgroundTransparency = 1,
                        ZIndex = 99,
                        Active = true
                    },
                    {
                        ak(
                            "ImageLabel",
                            {
                                Size = Dim2(0, 96, 0, 96),
                                BackgroundTransparency = 1,
                                Image = "rbxassetid://120997033468887",
                                Position = Dim2(0.5, -16, 0.5, -16),
                                AnchorPoint = Vec2(0.5, 0.5),
                                ImageTransparency = 1
                            }
                        )
                    }
                )
                local ax =
                    aj.NewRoundFrame(
                    as.UICorner,
                    "Squircle",
                    {
                        Size = Dim2(1, 0, 1, 0),
                        ImageTransparency = 1,
                        ImageColor3 = Col3new(0, 0, 0),
                        ZIndex = 98,
                        Active = false
                    },
                    {
                        ak(
                            "ImageLabel",
                            {
                                Size = Dim2(0, 70, 0, 70),
                                Image = aj.Icon "expand"[1],
                                ImageRectOffset = aj.Icon "expand"[2].ImageRectPosition,
                                ImageRectSize = aj.Icon "expand"[2].ImageRectSize,
                                BackgroundTransparency = 1,
                                Position = Dim2(0.5, 0, 0.5, 0),
                                AnchorPoint = Vec2(0.5, 0.5),
                                ImageTransparency = 1
                            }
                        )
                    }
                )

                local ay =
                    aj.NewRoundFrame(
                    as.UICorner,
                    "Squircle",
                    {
                        Size = Dim2(1, 0, 1, 0),
                        ImageTransparency = 1,
                        ImageColor3 = Col3new(0, 0, 0),
                        ZIndex = 999,
                        Active = false
                    }
                )

                as.UIElements.SideBar =
                    ak(
                    "ScrollingFrame",
                    {
                        Size = Dim2(
                            1,
                            as.ScrollBarEnabled and -3 - (as.UIPadding / 2) or 0,
                            1,
                            not as.HideSearchBar and -45 or 0
                        ),
                        Position = Dim2(0, 0, 1, 0),
                        AnchorPoint = Vec2(0, 1),
                        BackgroundTransparency = 1,
                        ScrollBarThickness = 0,
                        ElasticBehavior = "Never",
                        CanvasSize = Dim2(0, 0, 0, 0),
                        AutomaticCanvasSize = "Y",
                        ScrollingDirection = "Y",
                        ClipsDescendants = true,
                        VerticalScrollBarPosition = "Left"
                    },
                    {
                        ak(
                            "Frame",
                            {
                                BackgroundTransparency = 1,
                                AutomaticSize = "Y",
                                Size = Dim2(1, 0, 0, 0),
                                Name = "Frame"
                            },
                            {
                                ak(
                                    "UIPadding",
                                    {
                                        PaddingBottom = Dim(0, as.UIPadding / 2)
                                    }
                                ),
                                ak(
                                    "UIListLayout",
                                    {
                                        SortOrder = "LayoutOrder",
                                        Padding = Dim(0, as.Gap)
                                    }
                                )
                            }
                        ),
                        ak(
                            "UIPadding",
                            {
                                PaddingLeft = Dim(0, as.UIPadding / 2),
                                PaddingRight = Dim(0, as.UIPadding / 2)
                            }
                        )
                    }
                )

                as.UIElements.SideBarContainer =
                    ak(
                    "Frame",
                    {
                        Size = Dim2(
                            0,
                            as.SideBarWidth,
                            1,
                            as.User.Enabled and -as.Topbar.Height - 42 - (as.UIPadding * 2) or -as.Topbar.Height
                        ),
                        Position = Dim2(0, 0, 0, as.Topbar.Height),
                        BackgroundTransparency = 1,
                        Visible = true
                    },
                    {
                        ak(
                            "Frame",
                            {
                                Name = "Content",
                                BackgroundTransparency = 1,
                                Size = Dim2(1, 0, 1, not as.HideSearchBar and -45 - as.UIPadding / 2 or 0),
                                Position = Dim2(0, 0, 1, 0),
                                AnchorPoint = Vec2(0, 1)
                            }
                        ),
                        as.UIElements.SideBar
                    }
                )

                if as.ScrollBarEnabled then
                    ao(as.UIElements.SideBar, as.UIElements.SideBarContainer.Content, as, 3)
                end

                as.UIElements.MainBar =
                    ak(
                    "Frame",
                    {
                        Size = Dim2(1, -as.UIElements.SideBarContainer.AbsoluteSize.X, 1, -as.Topbar.Height),
                        Position = Dim2(1, 0, 1, 0),
                        AnchorPoint = Vec2(1, 1),
                        BackgroundTransparency = 1
                    },
                    {
                        aj.NewRoundFrame(
                            as.UICorner - (as.UIPadding / 2),
                            "Squircle",
                            {
                                Size = Dim2(1, 0, 1, 0),
                                ImageColor3 = Col3new(1, 1, 1),
                                ZIndex = 3,
                                ImageTransparency = .95,
                                Name = "Background",
                                Visible = not as.HidePanelBackground
                            }
                        ),
                        ak(
                            "UIPadding",
                            {
                                PaddingLeft = Dim(0, as.UIPadding / 2),
                                PaddingRight = Dim(0, as.UIPadding / 2),
                                PaddingBottom = Dim(0, as.UIPadding / 2)
                            }
                        )
                    }
                )

                local az =
                    ak(
                    "ImageLabel",
                    {
                        Image = "rbxassetid://8992230677",
                        ThemeTag = {
                            ImageColor3 = "WindowShadow"
                        },
                        ImageTransparency = 1,
                        Size = Dim2(1, 120, 1, 116),
                        Position = Dim2(0, -60, 0, -58),
                        ScaleType = "Slice",
                        SliceCenter = Rect.new(99, 99, 99, 99),
                        BackgroundTransparency = 1,
                        ZIndex = -999999999999999,
                        Name = "Blur"
                    }
                )

                if ae.TouchEnabled and not ae.KeyboardEnabled then
                    as.IsPC = false
                elseif ae.KeyboardEnabled then
                    as.IsPC = true
                else
                    as.IsPC = nil
                end

                local aA
                if as.User then
                    local function GetUserThumb()
                        local aB, aC =
                            aa(game:GetService "Players"):GetUserThumbnailAsync(
                            as.User.Anonymous and 1 or game.Players.LocalPlayer.UserId,
                            Enum.ThumbnailType.HeadShot,
                            Enum.ThumbnailSize.Size420x420
                        )
                        return aB
                    end

                    aA =
                        ak(
                        "TextButton",
                        {
                            Size = Dim2(
                                0,
                                (as.UIElements.SideBarContainer.AbsoluteSize.X) - (as.UIPadding / 2),
                                0,
                                42 + (as.UIPadding)
                            ),
                            Position = Dim2(0, as.UIPadding / 2, 1, -(as.UIPadding / 2)),
                            AnchorPoint = Vec2(0, 1),
                            BackgroundTransparency = 1,
                            Visible = as.User.Enabled or false
                        },
                        {
                            aj.NewRoundFrame(
                                as.UICorner - (as.UIPadding / 2),
                                "SquircleOutline",
                                {
                                    Size = Dim2(1, 0, 1, 0),
                                    ThemeTag = {
                                        ImageColor3 = "Text"
                                    },
                                    ImageTransparency = 1,
                                    Name = "Outline"
                                },
                                {
                                    ak(
                                        "UIGradient",
                                        {
                                            Rotation = 78,
                                            Color = CSnew {
                                                CSKnew(0.0, fromRGB(255, 255, 255)),
                                                CSKnew(0.5, fromRGB(255, 255, 255)),
                                                CSKnew(1.0, fromRGB(255, 255, 255))
                                            },
                                            Transparency = NSnew {
                                                NSKnew(0.0, 0.1),
                                                NSKnew(0.5, 1),
                                                NSKnew(1.0, 0.1)
                                            }
                                        }
                                    )
                                }
                            ),
                            aj.NewRoundFrame(
                                as.UICorner - (as.UIPadding / 2),
                                "Squircle",
                                {
                                    Size = Dim2(1, 0, 1, 0),
                                    ThemeTag = {
                                        ImageColor3 = "Text"
                                    },
                                    ImageTransparency = 1,
                                    Name = "UserIcon"
                                },
                                {
                                    ak(
                                        "ImageLabel",
                                        {
                                            Image = GetUserThumb(),
                                            BackgroundTransparency = 1,
                                            Size = Dim2(0, 42, 0, 42),
                                            ThemeTag = {
                                                BackgroundColor3 = "Text"
                                            },
                                            BackgroundTransparency = .93
                                        },
                                        {
                                            ak(
                                                "UICorner",
                                                {
                                                    CornerRadius = Dim(1, 0)
                                                }
                                            )
                                        }
                                    ),
                                    ak(
                                        "Frame",
                                        {
                                            AutomaticSize = "XY",
                                            BackgroundTransparency = 1
                                        },
                                        {
                                            ak(
                                                "TextLabel",
                                                {
                                                    Text = as.User.Anonymous and "Anonymous" or
                                                        game.Players.LocalPlayer.DisplayName,
                                                    TextSize = 17,
                                                    ThemeTag = {
                                                        TextColor3 = "Text"
                                                    },
                                                    FontFace = Fnew(aj.Font, Enum.FontWeight.SemiBold),
                                                    AutomaticSize = "Y",
                                                    BackgroundTransparency = 1,
                                                    Size = Dim2(1, -27, 0, 0),
                                                    TextTruncate = "AtEnd",
                                                    TextXAlignment = "Left",
                                                    Name = "DisplayName"
                                                }
                                            ),
                                            ak(
                                                "TextLabel",
                                                {
                                                    Text = as.User.Anonymous and "anonymous" or
                                                        game.Players.LocalPlayer.Name,
                                                    TextSize = 15,
                                                    TextTransparency = .6,
                                                    ThemeTag = {
                                                        TextColor3 = "Text"
                                                    },
                                                    FontFace = Fnew(aj.Font, Enum.FontWeight.Medium),
                                                    AutomaticSize = "Y",
                                                    BackgroundTransparency = 1,
                                                    Size = Dim2(1, -27, 0, 0),
                                                    TextTruncate = "AtEnd",
                                                    TextXAlignment = "Left",
                                                    Name = "UserName"
                                                }
                                            ),
                                            ak(
                                                "UIListLayout",
                                                {
                                                    Padding = Dim(0, 4),
                                                    HorizontalAlignment = "Left"
                                                }
                                            )
                                        }
                                    ),
                                    ak(
                                        "UIListLayout",
                                        {
                                            Padding = Dim(0, as.UIPadding),
                                            FillDirection = "Horizontal",
                                            VerticalAlignment = "Center"
                                        }
                                    ),
                                    ak(
                                        "UIPadding",
                                        {
                                            PaddingLeft = Dim(0, as.UIPadding / 2),
                                            PaddingRight = Dim(0, as.UIPadding / 2)
                                        }
                                    )
                                }
                            )
                        }
                    )

                    function as.User.Enable(aB)
                        as.User.Enabled = true
                        al(
                            as.UIElements.SideBarContainer,
                            .25,
                            {Size = Dim2(0, as.SideBarWidth, 1, -as.Topbar.Height - 42 - (as.UIPadding * 2))},
                            Enum.EasingStyle.Quint,
                            Enum.EasingDirection.Out
                        ):Play()
                        aA.Visible = true
                    end
                    function as.User.Disable(aB)
                        as.User.Enabled = false
                        TwCreate(TweenService, as.UIElements.SideBarContainer, TwInfo(0.25,Enum.EasingStyle.Quint,Enum.EasingDirection.Out),
                            {Size = Dim2(0, as.SideBarWidth, 1, -as.Topbar.Height)}
                        ):Play();
                        aA.Visible = false;
                    end;
                    function as.User.SetAnonymous(aB, aC)
                        if aC ~= false then
                            aC = true
                        end
                        as.User.Anonymous = aC
                        aA.UserIcon.ImageLabel.Image = GetUserThumb()
                        aA.UserIcon.Frame.DisplayName.Text = aC and "Anonymous" or game.Players.LocalPlayer.DisplayName
                        aA.UserIcon.Frame.UserName.Text = aC and "anonymous" or game.Players.LocalPlayer.Name
                    end

                    if as.User.Enabled then
                        as.User:Enable()
                    else
                        as.User:Disable()
                    end

                    if as.User.Callback then
                        aj.AddSignal(
                            aA.MouseButton1Click,
                            function()
                                as.User.Callback()
                            end
                        )
                        aj.AddSignal(
                            aA.MouseEnter,
                            function()
                                al(aA.UserIcon, 0.04, {ImageTransparency = .95}):Play()
                                al(aA.Outline, 0.04, {ImageTransparency = .85}):Play()
                            end
                        )
                        aj.AddSignal(
                            aA.InputEnded,
                            function()
                                al(aA.UserIcon, 0.04, {ImageTransparency = 1}):Play()
                                al(aA.Outline, 0.04, {ImageTransparency = 1}):Play()
                            end
                        )
                    end
                end

                local aB
                local aC

                local aD = false
                local aE

                local aF = typeof(as.Background) == "string" and strmatch(as.Background, "^video:(.+)") or nil
                local b =
                    typeof(as.Background) == "string" and not aF and strmatch(as.Background, "^https?://.+") or nil

                local function GetImageExtension(d)
                    local f = d:match "%.(%w+)$" or d:match "%.(%w+)%?"
                    if f then
                        f = f:lower()
                        if f == "jpg" or f == "jpeg" or f == "png" or f == "webp" then
                            return "." .. f
                        end
                    end
                    return ".png"
                end

                if typeof(as.Background) == "string" and aF then
                    aD = true

                    if strfind(aF, "http") then
                        local d = as.Folder .. "/assets/." .. aj.SanitizeFilename(aF) .. ".webm"
                        if not isfile(d) then
                            local f, g =
                                pcal(
                                function()
                                    local f = Request {Url = aF, Method = "GET", Headers = {["User-Agent"] = "Roblox/Exploit"}}
                                    writefile(d, f.Body)
                                end
                            )
                            if not f then
                                warn("[ WindUI.Window.Background ] Failed to download video: " .. tos(g))
                                return
                            end
                        end

                        local f, g =
                            pcal(
                            function()
                                return getcustomasset(d)
                            end
                        )
                        if not f then
                            warn("[ WindUI.Window.Background ] Failed to load custom asset: " .. tos(g))
                            return
                        end
                        warn "[ WindUI.Window.Background ] VideoFrame may not work with custom video"
                        aF = g
                    end

                    aE =
                        ak(
                        "VideoFrame",
                        {
                            BackgroundTransparency = 1,
                            Size = Dim2(1, 0, 1, 0),
                            Video = aF,
                            Looped = true,
                            Volume = 0
                        },
                        {
                            ak(
                                "UICorner",
                                {
                                    CornerRadius = Dim(0, as.UICorner)
                                }
                            )
                        }
                    )
                    aE:Play()
                elseif b then
                    local d = as.Folder .. "/assets/." .. aj.SanitizeFilename(b) .. GetImageExtension(b)
                    if not isfile(d) then
                        local f, g =
                            pcal(
                            function()
                                local f = Request {Url = b, Method = "GET", Headers = {["User-Agent"] = "Roblox/Exploit"}}
                                writefile(d, f.Body)
                            end
                        )
                        if not f then
                            warn("[ Window.Background ] Failed to download image: " .. tos(g))
                            return
                        end
                    end

                    local f, g =
                        pcal(
                        function()
                            return getcustomasset(d)
                        end
                    )
                    if not f then
                        warn("[ Window.Background ] Failed to load custom asset: " .. tos(g))
                        return
                    end

                    aE =
                        ak(
                        "ImageLabel",
                        {
                            BackgroundTransparency = 1,
                            Size = Dim2(1, 0, 1, 0),
                            Image = g,
                            ImageTransparency = 0,
                            ScaleType = "Crop"
                        },
                        {
                            ak(
                                "UICorner",
                                {
                                    CornerRadius = Dim(0, as.UICorner)
                                }
                            )
                        }
                    )
                elseif as.Background then
                    aE =
                        ak(
                        "ImageLabel",
                        {
                            BackgroundTransparency = 1,
                            Size = Dim2(1, 0, 1, 0),
                            Image = typeof(as.Background) == "string" and as.Background or "",
                            ImageTransparency = 1,
                            ScaleType = "Crop"
                        },
                        {
                            ak(
                                "UICorner",
                                {
                                    CornerRadius = Dim(0, as.UICorner)
                                }
                            )
                        }
                    )
                end

                local d =
                    aj.NewRoundFrame(
                    99,
                    "Squircle",
                    {
                        ImageTransparency = .8,
                        ImageColor3 = Col3new(1, 1, 1),
                        Size = Dim2(0, 0, 0, 4),
                        Position = Dim2(0.5, 0, 1, 4),
                        AnchorPoint = Vec2(0.5, 0)
                    },
                    {
                        ak(
                            "TextButton",
                            {
                                Size = Dim2(1, 12, 1, 12),
                                BackgroundTransparency = 1,
                                Position = Dim2(0.5, 0, 0.5, 0),
                                AnchorPoint = Vec2(0.5, 0.5),
                                Active = true,
                                ZIndex = 99,
                                Name = "Frame"
                            }
                        )
                    }
                )

                function createAuthor(f)
                    return ak(
                        "TextLabel",
                        {
                            Text = f,
                            FontFace = Fnew(aj.Font, Enum.FontWeight.Medium),
                            BackgroundTransparency = 1,
                            TextTransparency = 0.35,
                            AutomaticSize = "XY",
                            Parent = as.UIElements.Main and as.UIElements.Main.Main.Topbar.Left.Title,
                            TextXAlignment = "Left",
                            TextSize = 13,
                            LayoutOrder = 2,
                            ThemeTag = {
                                TextColor3 = "WindowTopbarAuthor"
                            },
                            Name = "Author"
                        }
                    )
                end

                local f
                local g

                if as.Author then
                    f = createAuthor(as.Author)
                end

                local h =
                    ak(
                    "TextLabel",
                    {
                        Text = as.Title,
                        FontFace = Fnew(aj.Font, Enum.FontWeight.SemiBold),
                        BackgroundTransparency = 1,
                        AutomaticSize = "X",
                        Name = "Title",
                        TextXAlignment = "Center",
                        Size = Dim2(1,0,1,0),
                        TextSize = 20,
                        ThemeTag = {
                            TextColor3 = "WindowTopbarTitle"
                        }
                    }
                )

                as.UIElements.Main =
                    ak(
                    "Frame",
                    {
                        Size = as.Size,
                        Position = as.Position,
                        BackgroundTransparency = 1,
                        Parent = ar.Parent,
                        AnchorPoint = Vec2(0.5, 0.5),
                        Active = true
                    },
                    {
                        ar.WindUI.UIScaleObj,
                        as.AcrylicPaint and as.AcrylicPaint.Frame or nil,
                        az,
                        aj.NewRoundFrame(
                            as.UICorner,
                            "Squircle",
                            {
                                ImageTransparency = 1,
                                Size = Dim2(1, 0, 1, -240),
                                AnchorPoint = Vec2(0.5, 0.5),
                                Position = Dim2(0.5, 0, 0.5, 0),
                                Name = "Background",
                                ThemeTag = {
                                    ImageColor3 = "WindowBackground"
                                }
                            },
                            {
                                aE,
                                d,
                                aw
                            }
                        ),
                        UIStroke,
                        av,
                        ax,
                        ay,
                        ak(
                            "Frame",
                            {
                                Size = Dim2(1, 0, 1, 0),
                                BackgroundTransparency = 1,
                                Name = "Main",
                                Visible = false,
                                ZIndex = 97
                            },
                            {
                                ak(
                                    "UICorner",
                                    {
                                        CornerRadius = Dim(0, as.UICorner)
                                    }
                                ),
                                as.UIElements.SideBarContainer,
                                as.UIElements.MainBar,
                                aA,
                                aC,
                                ak(
                                    "Frame",
                                    {
                                        Size = Dim2(1, 0, 0, as.Topbar.Height),
                                        BackgroundTransparency = 1,
                                        BackgroundColor3 = fromRGB(50, 50, 50),
                                        Name = "Topbar"
                                    },
                                    {
                                        aB,
                                        ak(
                                            "Frame",
                                            {
                                                AutomaticSize = "X",
                                                Size = Dim2(0, 0, 1, 0),
                                                BackgroundTransparency = 1,
                                                Name = "Left"
                                            },
                                            {
                                                ak(
                                                    "UIListLayout",
                                                    {
                                                        Padding = Dim(0, as.UIPadding + 4),
                                                        SortOrder = "LayoutOrder",
                                                        FillDirection = "Horizontal",
                                                        VerticalAlignment = "Center"
                                                    }
                                                ),
                                                ak(
                                                    "Frame",
                                                    {
                                                        AutomaticSize = "XY",
                                                        BackgroundTransparency = 1,
                                                        Name = "Title",
                                                        Size = Dim2(0, 0, 1, 0),
                                                        LayoutOrder = 2
                                                    },
                                                    {
                                                        ak(
                                                            "UIListLayout",
                                                            {
                                                                Padding = Dim(0, 0),
                                                                SortOrder = "LayoutOrder",
                                                                FillDirection = "Vertical",
                                                                VerticalAlignment = "Center"
                                                            }
                                                        ),
                                                        h,
                                                        f
                                                    }
                                                ),
                                                ak(
                                                    "UIPadding",
                                                    {
                                                        PaddingLeft = Dim(0, 4)
                                                    }
                                                )
                                            }
                                        ),
                                        ak(
                                            "ScrollingFrame",
                                            {
                                                Name = "Center",
                                                BackgroundTransparency = 1,
                                                AutomaticSize = "Y",
                                                ScrollBarThickness = 0,
                                                ScrollingDirection = "X",
                                                AutomaticCanvasSize = "X",
                                                CanvasSize = Dim2(0, 0, 0, 0),
                                                Size = Dim2(0, 0, 1, 0),
                                                AnchorPoint = Vec2(0, 0.5),
                                                Position = Dim2(0, 0, 0.5, 0),
                                                Visible = false
                                            },
                                            {
                                                ak(
                                                    "UIListLayout",
                                                    {
                                                        FillDirection = "Horizontal",
                                                        VerticalAlignment = "Center",
                                                        HorizontalAlignment = "Left",
                                                        Padding = Dim(0, as.UIPadding / 2)
                                                    }
                                                )
                                            }
                                        ),
                                        ak(
                                            "Frame",
                                            {
                                                AutomaticSize = "XY",
                                                BackgroundTransparency = 1,
                                                Position = Dim2(
                                                    as.Topbar.ButtonsType == "Default" and 1 or 0,
                                                    0,
                                                    0.5,
                                                    0
                                                ),
                                                AnchorPoint = Vec2(
                                                    as.Topbar.ButtonsType == "Default" and 1 or 0,
                                                    0.5
                                                ),
                                                Name = "Right"
                                            },
                                            {
                                                ak(
                                                    "UIListLayout",
                                                    {
                                                        Padding = Dim(0, as.Topbar.ButtonsType == "Default" and 9 or 0),
                                                        FillDirection = "Horizontal",
                                                        SortOrder = "LayoutOrder"
                                                    }
                                                )
                                            }
                                        ),
                                        ak(
                                            "UIPadding",
                                            {
                                                PaddingTop = Dim(0, as.UIPadding),
                                                PaddingLeft = Dim(
                                                    0,
                                                    as.Topbar.ButtonsType == "Default" and as.UIPadding or as.UIPadding - 2
                                                ),
                                                PaddingRight = Dim(0, 8),
                                                PaddingBottom = Dim(0, as.UIPadding)
                                            }
                                        )
                                    }
                                )
                            }
                        )
                    }
                )
                
                as.UIElements.Main.Main.Topbar.UIPadding:Destroy()
                as.UIElements.Main.Main.Topbar.Left.Size = Dim2(1,0,1,0);
                as.UIElements.Main.Main.Topbar.Left.AnchorPoint = Vec2(0.5,0.5);
                as.UIElements.Main.Main.Topbar.Left.Position = Dim2(0.5,0,0.5,0);
                as.UIElements.Main.Main.Topbar.Left.UIListLayout:Destroy();
                as.UIElements.Main.Main.Topbar.Left.Title.Position = Dim2(0.5,0,0,0);
                as.UIElements.Main.Main.Topbar.Left.Title.AnchorPoint = Vec2(0.5,0);
                as.UIElements.Main.Main.Topbar.Right.Position = Dim2(1, -90, 0.5, 0);

                aj.AddSignal(
                    as.UIElements.Main.Main.Topbar.Left:GetPropertyChangedSignal "AbsoluteSize",
                    function()
                        local j = 0
                        local l =
                            as.UIElements.Main.Main.Topbar.Right.UIListLayout.AbsoluteContentSize.X / ar.WindUI.UIScale

                        j = as.UIElements.Main.Main.Topbar.Left.AbsoluteSize.X / ar.WindUI.UIScale
                        if as.Topbar.ButtonsType ~= "Default" then
                            j = j + l + as.UIPadding - 4
                        end

                        as.UIElements.Main.Main.Topbar.Center.Position =
                            Dim2(0, j + (as.UIPadding / ar.WindUI.UIScale), 0.5, 0)
                        as.UIElements.Main.Main.Topbar.Center.Size =
                            Dim2(1, -j - l - ((as.UIPadding * 2) / ar.WindUI.UIScale), 1, 0)
                    end
                )

                --[[
                if as.Topbar.ButtonsType ~= "Default" then
                    aj.AddSignal(
                        as.UIElements.Main.Main.Topbar.Right:GetPropertyChangedSignal "AbsoluteSize",
                        function()
                            as.UIElements.Main.Main.Topbar.Left.Position =
                                Dim2(
                                0,
                                (as.UIElements.Main.Main.Topbar.Right.AbsoluteSize.X / ar.WindUI.UIScale) + as.UIPadding - 4,
                                0,
                                0
                            )
                        end
                    )
                end
                --]]

                function as.CreateTopbarButton(j, l, m, p, r, u, v)
                    local x =
                        aj.Image(
                        m,
                        m,
                        0,
                        as.Folder,
                        "WindowTopbarIcon",
                        as.Topbar.ButtonsType == "Default" and true or false,
                        u,
                        "WindowTopbarButtonIcon"
                    )
                    x.Size =
                        as.Topbar.ButtonsType == "Default" and
                        Dim2(0, as.TopBarButtonIconSize, 0, as.TopBarButtonIconSize) or
                        Dim2(0, 0, 0, 0)
                    x.AnchorPoint = Vec2(0.5, 0.5)
                    x.Position = Dim2(0.5, 0, 0.5, 0)
                    x.ImageLabel.ImageTransparency = as.Topbar.ButtonsType == "Default" and 0 or 1
                    if as.Topbar.ButtonsType ~= "Default" then
                        x.ImageLabel.ImageColor3 = aj.GetTextColorForHSB(v)
                    end

                    local B =
                        aj.NewRoundFrame(
                        as.Topbar.ButtonsType == "Default" and as.UICorner - (as.UIPadding / 2) or 999,
                        "Squircle",
                        {
                            Size = as.Topbar.ButtonsType == "Default" and
                                Dim2(0, as.Topbar.Height - 16, 0, as.Topbar.Height - 16) or
                                Dim2(0, 14, 0, 14),
                            LayoutOrder = r or 999,
                            Parent = as.Topbar.ButtonsType == "Default" and as.UIElements.Main.Main.Topbar.Right or nil,
                            ZIndex = 9999,
                            AnchorPoint = Vec2(0.5, 0.5),
                            Position = Dim2(0.5, 0, 0.5, 0),
                            ImageColor3 = as.Topbar.ButtonsType ~= "Default" and (v or fromHex "#ff3030") or nil,
                            ThemeTag = as.Topbar.ButtonsType == "Default" and
                                {
                                    ImageColor3 = "Text"
                                } or
                                nil,
                            ImageTransparency = as.Topbar.ButtonsType == "Default" and 1 or 0
                        },
                        {
                            aj.NewRoundFrame(
                                as.Topbar.ButtonsType == "Default" and as.UICorner - (as.UIPadding / 2) or 999,
                                "SquircleOutline",
                                {
                                    Size = Dim2(1, 0, 1, 0),
                                    ThemeTag = {
                                        ImageColor3 = "Black"
                                    },
                                    ImageTransparency = as.Topbar.ButtonsType == "Default" and 1 or .8,
                                    Name = "Outline"
                                },
                                {
                                    as.Topbar.ButtonsType == "Default" and
                                        ak(
                                            "UIGradient",
                                            {
                                                Rotation = 45,
                                                Color = CSnew {
                                                    CSKnew(0.0, fromRGB(255, 255, 255)),
                                                    CSKnew(0.5, fromRGB(255, 255, 255)),
                                                    CSKnew(1.0, fromRGB(255, 255, 255))
                                                },
                                                Transparency = NSnew {
                                                    NSKnew(0.0, 0.1),
                                                    NSKnew(0.5, 1),
                                                    NSKnew(1.0, 0.1)
                                                }
                                            }
                                        ) or
                                        nil
                                }
                            ),
                            x
                        },
                        true
                    )

                    ak(
                        "Frame",
                        {
                            Size = Dim2(0, 24, 0, 24),
                            BackgroundTransparency = 1,
                            Parent = as.Topbar.ButtonsType ~= "Default" and as.UIElements.Main.Main.Topbar.Right or nil,
                            LayoutOrder = r or 999
                        },
                        {
                            as.Topbar.ButtonsType ~= "Default" and B or nil
                        }
                    )

                    as.TopBarButtons[100 - r] = {
                        Name = l,
                        Object = B
                    }

                    aj.AddSignal(
                        B.MouseButton1Click,
                        function()
                            p()
                        end
                    )
                    aj.AddSignal(B.MouseEnter, function()
                        if as.Topbar.ButtonsType == "Default" then
                            TwCreate(TweenService, B, TwInfo(0.15), {ImageTransparency = 0.93}):Play();
                            TwCreate(TweenService, B.Outline, TwInfo(0.15), {ImageTransparency = 0.75}):Play();
                        else
                            TwCreate(TweenService, x.ImageLabel, TwInfo(0.1, Enum.EasingStyle.Quint, Enum.EasingDirection.Out),
                                {ImageTransparency = 0}
                            ):Play(); TwCreate(TweenService, x, TwInfo(0.1, Enum.EasingStyle.Quint, Enum.EasingDirection.Out),
                                {Size = Dim2(0, 11, 0, 11)}
                            ):Play();
                        end;
                    end); aj.AddSignal(B.MouseLeave, function()
                        if as.Topbar.ButtonsType == "Default" then
                            TwCreate(TweenService, B, TwInfo(0.1), {ImageTransparency = 1}):Play();
                            TwCreate(TweenService, B.Outline, TwInfo(0.1), {ImageTransparency = 1}):Play();
                        else
                            TwCreate(TweenService,  x.ImageLabel, TwInfo(0.1, Enum.EasingStyle.Quint, Enum.EasingDirection.Out),
                                {ImageTransparency = 1}
                            ):Play(); TwCreate(TweenService, x, TwInfo(0.1, Enum.EasingStyle.Quint, Enum.EasingDirection.Out), {Size = Dim2(0, 0, 0, 0)}):Play();
                        end;
                    end); return B;
                end; local j = aj.Drag( as.UIElements.Main, {as.UIElements.Main.Main.Topbar, d.Frame}, function(j, l)
                    if not as.Closed then
                        if j and l == d.Frame then
                            TwCreate(TweenService, d, TwInfo(0.1), {ImageTransparency = 0.35}):Play();
                        else
                            TwCreate(TweenService, d, TwInfo(0.2), {ImageTransparency = 0.8}):Play();
                        end; as.Position = as.UIElements.Main.Position; as.Dragging = j;
                    end;
                end); if not aD and as.Background and typeof(as.Background) == "table" then
                    local l = ak("UIGradient"); for m, p in next, as.Background do l[m] = p; end;
                    as.UIElements.BackgroundGradient = aj.NewRoundFrame(as.UICorner, "Squircle", {Size = Dim2(1, 0, 1, 0), Parent = as.UIElements.Main.Background, ImageTransparency = as.Transparent and ar.WindUI.TransparencyValue or 0 }, {l})
                end; as.OpenButtonMain = a.load("x").New(as);
                tspawn(function()
                    if as.Icon then
                        local l = ak("Frame", {Size = Dim2(0, 22, 0, 22),BackgroundTransparency = 1, Parent = as.UIElements.Main.Main.Topbar.Left});
                        g = aj.Image(as.Icon, as.Title, 0, as.Folder, "Window", true, as.IconThemed, "WindowTopbarIcon")
                        g.Parent = l g.Size = Dim2(0, as.IconSize, 0, as.IconSize)
                        g.Position = Dim2(0.5, 0, 0.5, 0) g.AnchorPoint = Vec2(0.5, 0.5)
                        as.OpenButtonMain:SetIcon(as.Icon);
                    else
                        as.OpenButtonMain:SetIcon(as.Icon);
                    end;
                end); function as.SetToggleKey(l, m) as.ToggleKey = m; end;
                function as.SetTitle(l, m) as.Title = m; h.Text = m; end;
                function as.SetAuthor(l, m)
                    as.Author = m; if not f then
                        f = createAuthor(as.Author);
                    end; f.Text = m;
                end; function as.SetBackgroundImage(l, m)
                    as.UIElements.Main.Background.ImageLabel.Image = m;
                end; function as.SetBackgroundImageTransparency(l, m)
                    if aE and IsA(aE, "ImageLabel") then
                        aE.ImageTransparency = mfloor(m * 10 + 0.5) / 10;
                    end; as.BackgroundImageTransparency = mfloor(m * 10 + 0.5) / 10;
                end; function as.SetBackgroundTransparency(l, m)
                    local p = mfloor(ton(m) * 10 + 0.5) / 10;
                    ar.WindUI.TransparencyValue = p;
                    as:ToggleTransparency(p > 0);
                end; local l, m = nil, nil;
                aj.Icon "minimize"; aj.Icon "maximize";
                as:CreateTopbarButton( "Fullscreen", "maximize", function()
                        as:ToggleFullscreen()
                    end, (as.Topbar.ButtonsType == "Default" and 998 or 999),
                    nil, fromHex"#60C762"
                ); function as.ToggleFullscreen(p)
                    local r = as.IsFullscreen; j:Set(r);
                    if not r then
                        l = as.UIElements.Main.Position;
                        m = as.UIElements.Main.Size;
                        as.CanResize = false;
                    else
                        if as.Resizable then
                            as.CanResize = true;
                        end;
                    end; TwCreate(TweenService, as.UIElements.Main, TwInfo(0.45, Enum.EasingStyle.Quint, Enum.EasingDirection.Out),
                        {Size = r and m or Dim2(1, -20, 1, -72)}
                    ):Play(); TwCreate(TweenService, as.UIElements.Main, TwInfo(0.45, Enum.EasingStyle.Quint, Enum.EasingDirection.Out),
                        {Position = r and l or Dim2(0.5, 0, 0.5, 26)}
                    ):Play(); as.IsFullscreen = not r;
                end; as:CreateTopbarButton("Minimize", "minus", function()
                        as:Close()
                    end, (as.Topbar.ButtonsType == "Default" and 997 or 998),
                    nil, fromHex "#F4C948"
                ); local clo = as.UIElements.Main.Main.Topbar.Right:Clone();
                Destroy(clo.Frame); clo.Position = Dim2(0,10,0.5,0)
                clo.Parent = as.UIElements.Main.Main.Topbar;
                clo.Frame.ImageButton.Image = getcustomasset("FlowXS/vulnx.png");
                clo.Frame.ImageButton.ImageColor3 = fromRGB(255,255,255);
                clo.Frame.ImageButton.Size = Dim2(1.5,0,1.5,0);
                as.UIElements.SideBar.Parent.Name = "Sidebar";
                clo.Frame.ImageButton.Outline.ImageColor3 = fromRGB(255,255,255);
                local targetobj, info = clo.Frame.ImageButton.Outline, TwInfo(0.6, Enum.EasingStyle.Quint, Enum.EasingDirection.Out)
                local t1 = TwCreate(TweenService, targetobj, info, { ImageTransparency = 1 });
                local t0 = TwCreate(TweenService, targetobj, info, { ImageTransparency = 0 });
                tspawn(function()
                    while true do
                        t1:Play(); t1.Completed:Wait();
                        t0:Play(); t0.Completed:Wait();
                    end
                end);
                clo.Frame.ImageButton.MouseButton1Click:Connect(function()
                    if as.UIElements.SideBar.Parent.Visible then
                        as.UIElements.SideBar.Parent.Visible = false;
                        as.UIElements.Main.Main.Frame.Size = Dim2(1,0,1,-44);
                    else
                        as.UIElements.SideBar.Parent.Visible = true;
                        as.UIElements.Main.Main.Frame.Size = Dim2(1, -200, 1, -44);
                    end;
                end);

                function as.OnOpen(p, r)
                    as.OnOpenCallback = r
                end
                function as.OnClose(p, r)
                    as.OnCloseCallback = r
                end
                function as.OnDestroy(p, r)
                    as.OnDestroyCallback = r
                end

                if ar.WindUI.UseAcrylic then
                    as.AcrylicPaint.AddParent(as.UIElements.Main)
                end

                function as.SetIconSize(p, r)
                    local u
                    if typeof(r) == "number" then
                        u = Dim2(0, r, 0, r)
                        as.IconSize = r
                    elseif typeof(r) == "UDim2" then
                        u = r
                        as.IconSize = r.X.Offset
                    end

                    if g then
                        g.Size = u
                    end
                end

                function as.Open(p)
                    tspawn(
                        function()
                            if as.OnOpenCallback then
                                tspawn(
                                    function()
                                        aj.SafeCallback(as.OnOpenCallback)
                                    end
                                )
                            end

                            twait(.06)
                            as.Closed = false

                            if not FindFirstChild(as.UIElements.Main, "Background") then
                                return aj.DisconnectAll();
                            end;

                            TwCreate(TweenService, as.UIElements.Main.Background, TwInfo(0.2, Enum.EasingStyle.Quint, Enum.EasingDirection.Out),
                                {ImageTransparency = as.Transparent and ar.WindUI.TransparencyValue or 0}
                            ):Play();

                            if as.UIElements.BackgroundGradient then
                                TwCreate(TweenService, as.UIElements.BackgroundGradient, TwInfo(0.2, Enum.EasingStyle.Quint, Enum.EasingDirection.Out),
                                    {ImageTransparency = 0
                                }):Play()
                            end;

                            TwCreate(TweenService, as.UIElements.Main.Background, TwInfo(0.4, Enum.EasingStyle.Exponential, Enum.EasingDirection.Out),
                                {Size = Dim2(1, 0, 1, 0)
                            }):Play()

                            if aE then
                                if IsA(aE, "VideoFrame") then
                                    aE.Visible = true;
                                else
                                    TwCreate(TweenService, aE, TwInfo(0.2, Enum.EasingStyle.Quint, Enum.EasingDirection.Out),
                                        {ImageTransparency = as.BackgroundImageTransparency}
                                    ):Play();
                                end;
                            end;

                            if as.OpenButtonMain and as.IsOpenButtonEnabled then as.OpenButtonMain:Visible(false); end;
                            TwCreate(TweenService, az, TwInfo(0.25, Enum.EasingStyle.Quint, Enum.EasingDirection.Out),
                                {ImageTransparency = as.ShadowTransparency}
                            ):Play(); if UIStroke then
                                TwCreate(TweenService, UIStroke, TwInfo(0.25, Enum.EasingStyle.Quint, Enum.EasingDirection.Out),
                                    {Transparency = 0.8}
                                ):Play();
                            end; tspawn(function()
                                twait(0.3)
                                TwCreate(TweenService, d, TwInfo(0.45, Enum.EasingStyle.Exponential, Enum.EasingDirection.Out),
                                    {Size = Dim2(0, 200, 0, 4), ImageTransparency = 0.8}
                                ):Play(); j:Set(true); twait(.45);
                                if as.Resizable then
                                    TwCreate(TweenService, aw.ImageLabel, TwInfo(0.45, Enum.EasingStyle.Exponential, Enum.EasingDirection.Out),
                                        {ImageTransparency = 0.8}
                                    ):Play(); as.CanResize = true;
                                end;
                            end);

                            as.CanDropdown = true

                            as.UIElements.Main.Visible = true
                            tspawn(
                                function()
                                    twait(.05)
                                    as.UIElements.Main:WaitForChild "Main".Visible = true

                                    ar.WindUI:ToggleAcrylic(true)
                                end
                            )
                        end
                    )
                end
                function as.Close(p)
                    local r = {}

                    if as.OnCloseCallback then
                        tspawn(
                            function()
                                aj.SafeCallback(as.OnCloseCallback)
                            end
                        )
                    end

                    ar.WindUI:ToggleAcrylic(false)

                    as.UIElements.Main:WaitForChild "Main".Visible = false

                    as.CanDropdown = false; as.Closed = true;
                    TwCreate(TweenService, as.UIElements.Main.Background, TwInfo(0.32, Enum.EasingStyle.Quint,Enum.EasingDirection.InOut),
                        {ImageTransparency = 1}
                    ):Play(); if as.UIElements.BackgroundGradient then
                        TwCreate(TweenService, as.UIElements.BackgroundGradient, TwInfo(0.32, Enum.EasingStyle.Quint, Enum.EasingDirection.InOut),
                            {ImageTransparency = 1}
                        ):Play();
                    end; TwCreate(TweenService, as.UIElements.Main.Background, TwInfo(0.4, Enum.EasingStyle.Exponential, Enum.EasingDirection.InOut),
                        {Size = Dim2(1, 0, 1, -240)}
                    ):Play(); if aE then
                        if IsA(aE, "VideoFrame") then
                            aE.Visible = false;
                        else
                            TwCreate(TweenService, aE, TwInfo(0.3, Enum.EasingStyle.Quint, Enum.EasingDirection.Out),
                                {ImageTransparency = 1}
                            ):Play();
                        end;
                    end; TwCreate(TweenService, az, TwInfo(0.25, Enum.EasingStyle.Quint, Enum.EasingDirection.Out), {ImageTransparency = 1}):Play();
                    if UIStroke then al(UIStroke, TwInfo(0.25, Enum.EasingStyle.Quint, Enum.EasingDirection.Out), {Transparency = 1}):Play(); end;
                    TwCreate(TweenService, d, TwInfo(0.3, Enum.EasingStyle.Exponential, Enum.EasingDirection.InOut),
                        {Size = Dim2(0, 0, 0, 4), ImageTransparency = 1}
                    ):Play(); TwCreate(TweenService, aw.ImageLabel, TwInfo(0.3, Enum.EasingStyle.Exponential, Enum.EasingDirection.Out), {ImageTransparency = 1}):Play();
                    j:Set(false); as.CanResize = false;
                    tspawn(function()
                        twait(0.4); as.UIElements.Main.Visible = false;
                        if as.OpenButtonMain and not as.Destroyed and not as.IsPC and as.IsOpenButtonEnabled then
                            as.OpenButtonMain:Visible(true);
                        end;
                    end); function r.Destroy(u)
                        tspawn(function()
                            if as.OnDestroyCallback then
                                tspawn(function()
                                    aj.SafeCallback(as.OnDestroyCallback);
                                end);
                            end; if as.AcrylicPaint and as.AcrylicPaint.Model then
                                Destroy(as.AcrylicPaint.Model);
                            end; as.Destroyed = true; twait(0.4);
                            Destroy(ar.WindUI.ScreenGui);
                            Destroy(ar.WindUI.NotificationGui);
                            Destroy(ar.WindUI.DropdownGui)
                            Destroy(ar.WindUI.TooltipGui);
                            aj.DisconnectAll();
                            return;
                        end);
                    end; return r;
                end; function as.Destroy(p)
                    return as:Close():Destroy();
                end; function as.Toggle(p)
                    if as.Closed then
                        as:Open();
                    else
                        as:Close();
                    end;
                end; function as.ToggleTransparency(p, r)
                    as.Transparent = r; ar.WindUI.Transparent = r;
                    as.UIElements.Main.Background.ImageTransparency = r and ar.WindUI.TransparencyValue or 0;
                    as.UIElements.MainBar.Background.ImageTransparency = r and 0.97 or 0.95;
                end; function as.LockAll(p)
                    for r, u in next, as.AllElements do
                        if u.Lock then
                            u:Lock();
                        end;
                    end;
                end; function as.UnlockAll(p)
                    for r, u in next, as.AllElements do
                        if u.Unlock then
                            u:Unlock();
                        end;
                    end;
                end; function as.GetLocked(p)
                    local r = {}; for u, v in next, as.AllElements do
                        if v.Locked then
                            tablein(r, v);
                        end;
                    end; return r
                end; function as.GetUnlocked(p)
                    local r = {}; for u, v in next, as.AllElements do
                        if v.Locked == false then
                            tablein(r, v);
                        end;
                    end; return r;
                end; function as.GetUIScale(p, r)
                    return ar.WindUI.UIScale;
                end; function as.SetUIScale(p, r)
                    ar.WindUI.UIScale = r;
                    TwCreate(TweenService, ar.WindUI.UIScaleObj, TwInfo(0.2, Enum.EasingStyle.Quint, Enum.EasingDirection.Out), {Scale = r}):Play();
                    return as;
                end; function as.SetToTheCenter(p)
                    TwCreate(TweenService, as.UIElements.Main, TwInfo(0.45, Enum.EasingStyle.Quint, Enum.EasingDirection.Out),
                        {Position = Dim2(0.5, 0, 0.5, 0)}
                    ):Play(); return as;
                end; function as.SetCurrentConfig(p, r)
                    as.CurrentConfig = r;
                end; do
                    local p, r, u = 40, af.ViewportSize, as.UIElements.Main.AbsoluteSize;
                    if not as.IsFullscreen and as.AutoScale then
                        local v,x = r.X - (p * 2), r.Y - (p * 2);
                        local B,C = v / u.X, x / u.Y;
                        local F, G, H = mmin(B, C), 0.3, 1.0;
                        local J = mclamp(F, G, H);
                        local L, M = as:GetUIScale() or 1, 0.05;
                        if mabs(J - L) > M then
                            as:SetUIScale(J);
                        end;
                    end;
                end; if as.OpenButtonMain and as.OpenButtonMain.Button then
                    aj.AddSignal(as.OpenButtonMain.Button.TextButton.MouseButton1Click,	function()
                        as:Open();
                    end);
                end; aj.AddSignal(ae.InputBegan, function(p, r)
                    if r or as.Destroyed then return; end; if as.ToggleKey then
                        if p.KeyCode == as.ToggleKey then
                            as:Toggle();
                        end;
                    end;
                end); tspawn(function()
                    as:Open();
                end); function as.EditOpenButton(p, r)
                    return as.OpenButtonMain:Edit(r);
                end; if as.OpenButton and typeof(as.OpenButton) == "table" then
                    as:EditOpenButton(as.OpenButton);
                end; local p = a.load "U"; local r = a.load "V";
                local u = p.Init(as, ar.WindUI, ar.WindUI.TooltipGui);
                u:OnChange(function(v)
                    as.CurrentTab = v;
                end); as.TabModule = p
                function as.Tab(v, x)
                    x.Parent = as.UIElements.SideBar.Frame
                    return u.New(x, ar.WindUI.UIScale);
                end; function as.SelectTab(v, x)
                    u:SelectTab(x);
                end; function as.Section(v, x)
                    return r.New(x, as.UIElements.SideBar.Frame, as.Folder, ar.WindUI.UIScale, as);
                end; function as.IsResizable(v, x)
                    as.Resizable = x;
                    as.CanResize = x;
                end; function as.Divider(v)
                    local x = ak("Frame",{
                        Size = Dim2(1, 0, 0, 1),
                        Position = Dim2(0.5, 0, 0, 0),
                        AnchorPoint = Vec2(0.5, 0),
                        BackgroundTransparency = .9,
                        ThemeTag = {
                            BackgroundColor3 = "Text"
                        }
                    }); local B = ak("Frame", {
                        Parent = as.UIElements.SideBar.Frame,
                        Size = Dim2(1, -7, 0, 5),
                        BackgroundTransparency = 1
                    }, {x}); return B
                end; local v = a.load "l".Init(as, nil);
                function as.Dialog(x, B)
                    local C, F = {
                        Title = B.Title or "Dialog",
                        Width = B.Width or 320,
                        Content = B.Content,
                        Buttons = B.Buttons or {},
                        TextPadding = 10
                    }, v.Create(false);
                    F.UIElements.Main.Size = Dim2(0, C.Width, 0, 0)
                    local G = ak( "Frame", {
                        Size = Dim2(1, 0, 0, 0),
                        AutomaticSize = "Y",
                        BackgroundTransparency = 1,
                        Parent = F.UIElements.Main
                    },{
                        ak("UIListLayout", {
                            FillDirection = "Horizontal",
                            Padding = Dim(0, F.UIPadding),
                            VerticalAlignment = "Center"
                        }), ak("UIPadding", {
                            PaddingTop = Dim(0, C.TextPadding / 2),
                            PaddingLeft = Dim(0, C.TextPadding / 2),
                            PaddingRight = Dim(0, C.TextPadding / 2)
                        });
                    }); local H = nil; if B.Icon then
                        H = aj.Image(B.Icon, C.Title .. ":" .. B.Icon, 0, as, "Dialog", true, B.IconThemed);
                        H.Size = Dim2(0, 22, 0, 22);
                        H.Parent = G;
                    end; F.UIElements.UIListLayout = ak("UIListLayout", {
                        Padding = Dim(0, 12),
                        FillDirection = "Vertical",
                        HorizontalAlignment = "Left",
                        Parent = F.UIElements.Main
                    }); ak("UISizeConstraint", {
                        MinSize = Vec2(180, 20),
                        MaxSize = Vec2(400, mmaths.huge),
                        Parent = F.UIElements.Main
                    }); F.UIElements.Title = ak("TextLabel", {
                        Text = C.Title, TextSize = 20,
                        FontFace = Fnew(aj.Font, Enum.FontWeight.SemiBold),
                        TextXAlignment = "Left", TextWrapped = true, RichText = true,
                        Size = Dim2(1, H and -26 - F.UIPadding or 0, 0, 0),
                        AutomaticSize = "Y",
                        ThemeTag = {TextColor3 = "Text"},
                        BackgroundTransparency = 1,
                        Parent = G
                    }); if C.Content then
                        ak("TextLabel", {
                            Text = C.Content,
                            TextSize = 18,
                            TextTransparency = .4,
                            TextWrapped = true,
                            RichText = true,
                            FontFace = Fnew(aj.Font, Enum.FontWeight.Medium),
                            TextXAlignment = "Left",
                            Size = Dim2(1, 0, 0, 0),
                            AutomaticSize = "Y",
                            LayoutOrder = 2,
                            ThemeTag = {
                                TextColor3 = "Text"
                            },
                            BackgroundTransparency = 1,
                            Parent = F.UIElements.Main
                        }, {
                            ak("UIPadding", {
                                PaddingLeft = Dim(0, C.TextPadding / 2),
                                PaddingRight = Dim(0, C.TextPadding / 2),
                                PaddingBottom = Dim(0, C.TextPadding / 2)
                            });
                        });
                    end; local J = ak("UIListLayout", {
                        Padding = Dim(0, 6),
                        FillDirection = "Horizontal",
                        HorizontalAlignment = "Right"
                    }) local L = ak("Frame", {
                        Size = Dim2(1, 0, 0, 40),
                        AutomaticSize = "None",
                        BackgroundTransparency = 1,
                        Parent = F.UIElements.Main,
                        LayoutOrder = 4
                    }, {J}); local M = {} for N, O in next, C.Buttons do
                        local P = an(O.Title, O.Icon, O.Callback, O.Variant, L, F, false);
                        tablein(M, P);
                    end; local function CheckButtonsOverflow()
                        J.FillDirection = Enum.FillDirection.Horizontal;
                        J.HorizontalAlignment = Enum.HorizontalAlignment.Right;
                        J.VerticalAlignment = Enum.VerticalAlignment.Center;
                        L.AutomaticSize = Enum.AutomaticSize.None;
                        for P, Q in ipir(M) do
                            Q.Size = Dim2(0, 0, 1, 0);
                            Q.AutomaticSize = Enum.AutomaticSize.X;
                        end; wait();
                        local R,S = J.AbsoluteContentSize.X / ar.WindUI.UIScale, L.AbsoluteSize.X / ar.WindUI.UIScale;
                        if R > S then
                            J.FillDirection = Enum.FillDirection.Vertical;
                            J.HorizontalAlignment = Enum.HorizontalAlignment.Right;
                            J.VerticalAlignment = Enum.VerticalAlignment.Bottom;
                            L.AutomaticSize = Enum.AutomaticSize.Y;
                            for T, U in ipir(M) do
                                U.Size = Dim2(1, 0, 0, 40);
                                U.AutomaticSize = Enum.AutomaticSize.None;
                            end;
                        else
                            local T = S - R; if T > 0 then
                                local U,V = nil, mmaths.huge;
                                for W, X in ipir(M) do
                                    local Y = X.AbsoluteSize.X / ar.WindUI.UIScale;
                                    if Y < V then V = Y; U = X; end;
                                end; if U then
                                    U.Size = Dim2(0, V + T, 1, 0);
                                    U.AutomaticSize = Enum.AutomaticSize.None;
                                end;
                            end;
                        end;
                    end; aj.AddSignal(PropChangeSignal(F.UIElements.Main, "AbsoluteSize"), CheckButtonsOverflow);
                    CheckButtonsOverflow(); wait(); F:Open();
                    return F;
                end; as:CreateTopbarButton("Close", "x", function()
                    if not as.IgnoreAlerts then
                        as:SetToTheCenter(); as:Dialog {
                            Title = "Close Window",
                            Content = "Do you want to close this window? You will not be able to open it again.",
                            Buttons = {
                                {
                                    Title = "Cancel",
                                    Callback = function()
                                    end,
                                    Variant = "Secondary"
                                },
                                {
                                    Title = "Close Window",
                                    Callback = function()
                                        as:Destroy()
                                    end,
                                    Variant = "Primary"
                                }
                            }
                        }
                    else
                        as:Destroy();
                    end;
                end, (as.Topbar.ButtonsType == "Default" and 999 or 997), nil, fromHex "#F4695F");
                function as.Tag(x, B)
                    if as.UIElements.Main.Main.Topbar.Center.Visible == false then
                        as.UIElements.Main.Main.Topbar.Center.Visible = true;
                    end;
                    return ap:New(B, as.UIElements.Main.Main.Topbar.Center);
                end; local function startResizing(x)
                    if as.CanResize then
                        isResizing = true; ax.Active = true; initialSize = as.UIElements.Main.Size; initialInputPosition = x.Position;
                        TwCreate(TweenService, aw.ImageLabel, TwInfo(0.1), {ImageTransparency = .35}):Play();
                        aj.AddSignal(x.Changed, function()
                            if x.UserInputState == Enum.UserInputState.End then
                                isResizing = false; ax.Active = false;
                                TwCreate(TweenService, aw.ImageLabel, TwInfo(0.17), {ImageTransparency = .8}):Play();
                            end;
                        end);
                    end;
                end; aj.AddSignal(aw.InputBegan, function(x)
                    if x.UserInputType == Enum.UserInputType.MouseButton1 or x.UserInputType == Enum.UserInputType.Touch then
                        if as.CanResize then startResizing(x); end;
                    end;
                end); aj.AddSignal(ae.InputChanged, function(x)
                    if x.UserInputType == Enum.UserInputType.MouseMovement or x.UserInputType == Enum.UserInputType.Touch then
                        if isResizing and as.CanResize then
                            local B = x.Position - initialInputPosition;
                            local C = Dim2(0, initialSize.X.Offset + B.X * 2, 0, initialSize.Y.Offset + B.Y * 2);
                            C = Dim2(C.X.Scale, mclamp(C.X.Offset, as.MinSize.X, as.MaxSize.X), C.Y.Scale, mclamp(C.Y.Offset, as.MinSize.Y, as.MaxSize.Y));
                            TwCreate(TweenService, as.UIElements.Main, TwInfo(0), {Size = C}):Play(); as.Size = C;
                        end;
                    end;
                end); local x, B, C, F = 0, 0.4, nil, 0;
                function onDoubleClick() as:SetToTheCenter(); end;
                d.Frame.MouseButton1Up:Connect(function()
                    local G, H = tick(), as.Position;
                    F = F + 1; if F == 1 then
                        x = G; C = H; tspawn(function()
                            twait(B); if F == 1 then
                                F = 0; C = nil;
                            end;
                        end);
                    elseif F == 2 then
                        if G - x <= B and H == C then
                            onDoubleClick();
                        end; F = 0; C = nil; x = 0;
                    else
                        F = 1; x = G; C = H;
                    end;
                end); if not as.HideSearchBar then
                    local G, H = a.load"X", nil;
                    local J = am("Search", "search", as.UIElements.SideBarContainer, true);
                    J.Size = Dim2(1, -as.UIPadding / 2, 0, 39); J.Position = Dim2(0, as.UIPadding / 2, 0, 0);
                    aj.AddSignal(J.MouseButton1Click, function()
                        if H then return; end;
                        G.new(as.TabModule, as.UIElements.Main, function()
                            H = false; if as.Resizable then as.CanResize = true; end;
                            TwCreate(TweenService, ay, TwInfo(0.1), {ImageTransparency = 1}):Play();
                            ay.Active = false;
                        end) TwCreate(TweenService, ay, TwInfo(0.1), {ImageTransparency = 0.65}):Play();
                        ay.Active = true; H = true; as.CanResize = false;
                    end);
                end; function as.DisableTopbarButtons(G, H)
                    for J, L in next, H do
                        for M, N in next, as.TopBarButtons do
                            if N.Name == L then
                                N.Object.Visible = false;
                            end;
                        end;
                    end;
                end; return as;
            end;
        end;
    end; local aa = {
        Window = nil,
        Theme = nil,
        Creator = a.load "b",
        LocalizationModule = a.load "c",
        NotificationModule = a.load "d",
        Themes = nil,
        Transparent = false,
        TransparencyValue = .15,
        UIScale = 1,
        ConfigManager = nil,
        Version = "0.0.0",
        OnThemeChangeFunction = nil,
        cloneref = nil,
        UIScaleObj = nil
    }; local al = DeCodeJ(HttpService, a.load "i");
    if al then aa.Version = al.version; end;
    local an = aa.Services; local ar = a.load "q";
    local as = protectgui or (syn and syn.protect_gui) or function() end;
    local ao = aa.Creator; local ap = ao.New;
    local au = gethui and gethui() or (aj or PSG);
    local av = ap("UIScale", {Scale = aa.Scale});
    aa.UIScaleObj = av; aa.ScreenGui = ap("ScreenGui", {
        Name = "WindUI",
        Parent = au,
        IgnoreGuiInset = true,
        ScreenInsets = "None"
    },{ap("Folder",{
        Name = "Window"
    }),
        ap("Folder", {
            Name = "KeySystem"
        }), ap("Folder", {
            Name = "Popups"
        }), ap("Folder", {
            Name = "ToolTips"
        });
    }); aa.NotificationGui = ap("ScreenGui", {
        Name = "WindUI/Notifications",
        Parent = au,
        IgnoreGuiInset = true
    }); aa.DropdownGui = ap("ScreenGui", {
        Name = "WindUI/Dropdowns",
        Parent = au,
        IgnoreGuiInset = true
    }); aa.TooltipGui = ap("ScreenGui", {
        Name = "WindUI/Tooltips",
        Parent = au,
        IgnoreGuiInset = true
    }); as(aa.ScreenGui); as(aa.NotificationGui);
    as(aa.DropdownGui); as(aa.TooltipGui); ao.Init(aa);
    function aa.SetParent(aw, ax)
        aa.ScreenGui.Parent = ax;
        aa.NotificationGui.Parent = ax;
        aa.DropdownGui.Parent = ax;
    end; mclamp(aa.TransparencyValue, 0, 1);
    local aw = aa.NotificationModule.Init(aa.NotificationGui);
    function aa.Notify(ax, ay)
        ay.Holder = aw.Frame; ay.Window = aa.Window;
        return aa.NotificationModule.New(ay);
    end; function aa.SetNotificationLower(ax, ay)
        aw.SetLower(ay);
    end; function aa.SetFont(ax, ay)
        ao.UpdateFont(ay);
    end; function aa.OnThemeChange(ax, ay)
        aa.OnThemeChangeFunction = ay;
    end; function aa.AddTheme(ax, ay)
        aa.Themes[ay.Name] = ay;
        return ay;
    end; function aa.SetTheme(ax, ay)
        if aa.Themes[ay] then
            aa.Theme = aa.Themes[ay]; ao.SetTheme(aa.Themes[ay]);
            if aa.OnThemeChangeFunction then aa.OnThemeChangeFunction(ay); end; 
            return aa.Themes[ay];
        end; return nil;
    end; function aa.GetThemes(ax)
        return aa.Themes;
    end; function aa.GetCurrentTheme(ax)
        return aa.Theme.Name;
    end; function aa.GetTransparency(ax)
        return aa.Transparent or false;
    end; function aa.GetWindowSize(ax)
        return Window.UIElements.Main.Size;
    end; function aa.Localization(ax, ay)
        return aa.LocalizationModule:New(ay, ao);
    end; function aa.SetLanguage(ax, ay)
        if ao.Localization then
            return ao.SetLanguage(ay);
        end;
        return false;
    end; function aa.ToggleAcrylic(ax, ay)
        if aa.Window and aa.Window.AcrylicPaint and aa.Window.AcrylicPaint.Model then
            aa.Window.Acrylic = ay; aa.Window.AcrylicPaint.Model.Transparency = ay and 0.98 or 1;
            if ay then ar.Enable(); else ar.Disable(); end;
        end;
    end; function aa.Gradient(ax, ay, az)
        local aA, aB = {}, {}; for aC, aD in next, ay do
            local aE = ton(aC); if aE then
                aE = mclamp(aE / 100, 0, 1);
                tablein(aA, CSKnew(aE, aD.Color));
                tablein(aB, NSKnew(aE, aD.Transparency or 0));
            end;
        end; tsort(aA, function(aE, aF)
            return aE.Time < aF.Time;
        end); tsort(aB, function(aE, aF)
            return aE.Time < aF.Time;
        end); if #aA < 2 then
            error"ColorSequence requires at least 2 keypoints";
        end; local aE = {Color = CSnew(aA), Transparency = NSnew(aB)};
        if az then
            for aF, b in pir(az) do
                aE[aF] = b;
            end;
        end; return aE;
    end; function aa.Popup(ax, ay)
        ay.WindUI = aa; return a.load("r").new(ay);
    end; aa.Themes = a.load "s"(aa);
    ao.Themes = aa.Themes; aa:SetTheme"Dark"; aa:SetLanguage(ao.Language);
    function aa.CreateWindow(ax, ay)
        local az = a.load "Y"

        if not isfolder "WindUI" then
            makefolder "WindUI"
        end
        if ay.Folder then
            makefolder(ay.Folder)
        else
            makefolder(ay.Title)
        end

        ay.WindUI = aa
        ay.Parent = aa.ScreenGui.Window

        if aa.Window then
            warn "You cannot create more than one window"
            return
        end

        local aA = true

        local aB = aa.Themes[ay.Theme or "Dark"]

        ao.SetTheme(aB)

        local aC = gethwid or function()
            return ah.LocalPlayer.UserId
        end

        local aD = aC()
        local aE = az(ay)

        aa.Transparent = ay.Transparent
        aa.Window = aE

        print(aE.Parent)

        if ay.Acrylic then
            ar.init()
        end

        return aE
    end

    return aa
end;

------------- FlowXS -------------

if LoaderSettings.AllowCache then
    if not isfolder("FlowXS") then
        makefolder("FlowXS");
    end;
end;

if not GG.ALLVersion then
    if isfile("FlowXSVersion.json") then
        local FlowXSVersion = readfile("FlowXSVersion.json");
        if FlowXSVersion then
            GG.ALLVersion = DeCodeJ(HttpService, FlowXSVersion);
        else
            GG.ALLVersion = {["MagicCity"] = true};
        end;
    else
        GG.ALLVersion = {["MagicCity"] = true};
    end;
end;
if GG.ALLVersion["MainLoader"] == nil then
    GG.ALLVersion["MainLoader"] = tos(tick());
end;

local AC_Call, AC_Error = pcal(function(): boolean
    if AlreadyLoadACI then return true; end;
    local ACI:(any)->({}),ACI_Source:nil = loadScriptFromCache("https://raw.githubusercontent.com/Yumiara/SSL-VulnX/refs/heads/main/APIs/MultiAC.cpp", "MultiAC.lua", false, 1000000, false), nil;
    if not ACI then return Kick(selff, "BYPASSING Failed, Contact Script Devs. [1]"); end;
    if ACI.Version ~= "2023_ACI_2025_2" then
        ACI_Source = HttpGet(game, "https://raw.githubusercontent.com/Yumiara/SSL-VulnX/refs/heads/main/APIs/MultiAC.cpp")(); ACI = loadstring(ACI_Source);
        if ACI.Version ~= "2023_ACI_2025_2" then return Kick(selff, "BYPASSING Failed, Contact Script Devs. [2]"); end;
    end; if LoaderSettings.AllowCache and ACI_Source then writefile("FlowXS/MultiAC.lua", ACI_Source); end;
    return ACI.Function();
end); if not AC_Call then return Kick(selff, "BYPASSING Failed, Contact Script Devs. [3]"), setc(AC_Error); end;

if not LoaderSettings.BadNetwork then
    if not isfile("FlowXS/vulnx.png") then
        local pngfile = Request({
            Url = "https://github.com/Yumiara/SSL-VulnX/raw/refs/heads/main/Assets/vul.png";
            Method = "GET";
        }); if pngfile.Success then
            writefile("FlowXS/vulnx.png", pngfile.Body);
        end;
    end;
end;

GG.ScriptStatus = "Finish Intializing API_M";
warn("[VULNX] : Loaded Main.lua via execution");

------------- Source Loader -------------

GG.SystemStackDestroy = false;
--GG.API_Only = false;
if GG.API_Only then return; end;

local PrivateLoad = isPrivate and {
    [-1] = "-1";
} or {};
local FreeCLoad = {
    [-2] = "";
	[7597195391] = "7597195391";
    [6331902150] = "6331902150";
    [7671049560] = "7671049560";
};
local FreeLoad = {
    [-3] = "";
	[7597195391] = "7597195391";
};
local srcName : string = "";

if PrivateLoad[GameId] then
    GG.GetLuaID = PrivateLoad[GameId];
    srcName = "https://raw.githubusercontent.com/Yumiara/SSL-VulnX/refs/heads/main/PV/" .. GetLuaID .. ".lua";
    return loadScriptFromCache(srcName, GetLuaID, false, 600, false);
elseif FreeCLoad[GameId] then
    GG.GetLuaID = FreeCLoad[GameId];
    if isPrivate then
        srcName = "https://raw.githubusercontent.com/Yumiara/SSL-VulnX/refs/heads/main/ListFile/" .. GetLuaID .. ".lua";
		return loadScriptFromCache(srcName, GetLuaID, false, 600, false)();
    else
        srcName = "https://raw.githubusercontent.com/Yumiara/SSL-VulnX/refs/heads/main/APIs/K.oluac";
		return loadScriptFromCache(srcName, "K.oluac", false, 600, false)();
    end;
elseif FreeLoad[GameId] then
    GG.GetLuaID = FreeLoad[GameId];
    srcName = "https://raw.githubusercontent.com/Yumiara/SSL-VulnX/refs/heads/main/ListFile/" .. GetLuaID .. ".lua";
    return loadScriptFromCache(srcName, GetLuaID, false, 600, false);
else
    srcName = "https://raw.githubusercontent.com/Yumiara/SSL-VulnX/refs/heads/main/ListFile/Universal.luac";
    return loadScriptFromCache(srcName, tos(GameId), false, 600, false);
end;
