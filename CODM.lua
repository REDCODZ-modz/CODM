function getDateTime()
    local t = os.date("*t")
    local hari = {"Minggu", "Senin", "Selasa", "Rabu", "Kamis", "Jumat", "Sabtu"}
    return string.format("Hari: %s\nTanggal: %02d-%02d-%04d\nJam: %02d:%02d:%02d",
        hari[t.wday], t.day, t.month, t.year, t.hour, t.min, t.sec)
end

function showIntro()
    gg.setVisible(false)
    gg.alert("╔════════════════╗\n   REDCODE PROJECT\n╚════════════════╝")
    gg.toast("Loading Script...")
    gg.sleep(1000)
    gg.toast("Please Wait...")
    gg.sleep(1000)
    gg.alert("Script by REDCODE\nVersion: 1.0\nSupport MP & BR Mode\nEnjoy!")
    gg.toast("Silahkan Tap Icon GG Untuk Membuka menu")
end

status = {
    WALLHACK = false, 
    NO_RECOIL = false, 
    TRUE_AIM = false, 
    NO_SHAKE_GUN = false,
    MAGIC_BULLET = false, 
    FIRE_RATE = false, 
    FAST_SCOPE = false, 
    LOCK_UAV = false,
    AIMBOT_DIKIT = false, 
    AIMBOT_SEDANG = false, 
    AIMBOT_BRUTAL = false,
    AIMbot_ADJUST = false,
    BR_NOPARASUT = false, 
    BR_ESP = false,
    SKIN_SOPHIA = false,
    SKIN_REAPER = false,
    SKIN_DAVID_MASON = false,
    SKIN_BLOOD_IN_THE_WATER = false,
}


function writeMemory(address, flags, value)
    gg.setValues({{address = address, flags = flags, value = value}})
end

function LibOffHexFlag(lib, offset, hex, flag)
    local address = gg.getRangesList(lib)[1].start + offset
    gg.setValues({{address = address, flags = flag, value = hex}})
end

function MPwallhack()
    writeMemory(gg.getRangesList("libunity.so")[1].start + 0x6622BD0, 32, "h1F2003D5E00313AA")
    status.WALLHACK = true
    gg.toast("Wallhack Activated ✓")
end

function MPnorecoil()
    writeMemory(gg.getRangesList("libunity.so")[1].start + 0x85BB9F0, 32, "h204C40BCC0035FD6")
    status.NO_RECOIL = true
    gg.toast("No Recoil Activated ✓")
end

function MPtrueaim()
    LibOffHexFlag("libunity.so", 0x85BA160, "h00 00 80 D2 C0 03 5F D6", 32)
    status.TRUE_AIM = true
    gg.toast("True Aim Activated ✓")
end

function MPnoshakegun()
    writeMemory(gg.getRangesList("libunity.so")[1].start + 0x83B5234, 32, "h010080D2C0035FD6")
    status.NO_SHAKE_GUN = true
    gg.toast("No Shake Gun Activated ✓")
end

function MPmagicbullet()
    LibOffHexFlag("libunity.so", 0x85831F4, "h20 00 80 52 C0 03 5F D6", 32)
    status.MAGIC_BULLET = true
    gg.toast("Magic Bullet Activated ✓")
end

function MPfirerate()
    LibOffHexFlag("libunity.so", 0x72BE95C, "h20 00 80 D2 C0 03 5F D6", 32)
    status.FIRE_RATE = true
    gg.toast("Fire Rate Activated ✓")
end

function MPfastscope()
    LibOffHexFlag("libunity.so", 0x9862290, "h00 2C 40 BC C0 03 5F D6", 32)
    status.FAST_SCOPE = true
    gg.toast("Fast Scope Activated ✓")
end

function MPlockuav()
    LibOffHexFlag("libunity.so", 0x544E174, "h200080D2C0035FD6", 32)
    status.LOCK_UAV = true
    gg.toast("Lock UAV Activated ✓")
end

function AIMBOTDIKIT()
    local base = gg.getRangesList("libunity.so")[1].start
    local o1, o2 = 0x98887FC, 0x83D45A0
    writeMemory(base + o1, 32, "h4000001CC0035FD6")
    writeMemory(base + o1 + 4, 32, "hC0035FD600007A44")
    writeMemory(base + o2, 32, "h4000001CC0035FD6")
    writeMemory(base + o2 + 4, 32, "hC0035FD600007A44")
    writeMemory(base + o1 + 8, 16, 15)
    writeMemory(base + o2 + 8, 16, 15)
    status.AIMBOT_DIKIT = true
    gg.toast("Aimbot Dikit Activated ✓")
end

function AIMBOTSEDANG()
    local base = gg.getRangesList("libunity.so")[1].start
    local o1, o2 = 0x98887FC, 0x83D45A0
    writeMemory(base + o1, 32, "h4000001CC0035FD6")
    writeMemory(base + o1 + 4, 32, "hC0035FD600007A44")
    writeMemory(base + o2, 32, "h4000001CC0035FD6")
    writeMemory(base + o2 + 4, 32, "hC0035FD600007A44")
    writeMemory(base + o1 + 8, 16, 50)
    writeMemory(base + o2 + 8, 16, 50)
    status.AIMBOT_SEDANG = true
    gg.toast("Aimbot Sedang Activated ✓")
end

function AIMBOTBRUTAL()
    local base = gg.getRangesList("libunity.so")[1].start
    local o1, o2 = 0x98887FC, 0x83D45A0
    writeMemory(base + o1, 32, "h4000001CC0035FD6")
    writeMemory(base + o1 + 4, 32, "hC0035FD600007A44")
    writeMemory(base + o2, 32, "h4000001CC0035FD6")
    writeMemory(base + o2 + 4, 32, "hC0035FD600007A44")
    writeMemory(base + o1 + 8, 16, 100)
    writeMemory(base + o2 + 8, 16, 100)
    status.AIMBOT_BRUTAL = true
    gg.toast("Aimbot Brutal Activated ✓")
end

function AIMBOTADJUST()
    aimbot = gg.prompt({
    "ᴀɪᴍ ʟᴏᴄᴋ ᴀᴅᴊᴜsᴛ sᴇᴛᴛɪɴɢs [1; 1000]"
  }, nil, {"number"})
  unity = gg.getRangesList("libunity.so")[1].start
  setValues(unity + 159942652, 4, "~A8 LDR S0, [PC,#0x8]")
  setValues(unity + 159942652 + 4, 4, "~A8 RET")
  setValues(unity + 159942652 + 8, 16, aimbot[1])
  unity = gg.getRangesList("libunity.so")[1].start
  setValues(unity + 138233248, 4, "~A8 LDR S0, [PC,#0x8]")
  setValues(unity + 138233248 + 4, 4, "~A8 RET")
  setValues(unity + 138233248 + 8, 16, aimbot[1])
  gg.toast("AIMBOT ALL GUNS ACTIVATED")
end


function BRnoparasut()
    LibOffHexFlag("libunity.so", 0x8FB9A90, "h00 00 80 D2 C0 03 5F D6", 32)
    LibOffHexFlag("libunity.so", 0x8FB9A94, "h00 00 80 D2 C0 03 5F D6", 32)
    status.BR_NOPARASUT = true
    gg.toast("No Parachute Activated ✓")
end

function BResp()
    LibOffHexFlag("libunity.so", 0x5771040, "h20 00 80 D2 C0 03 5F D6", 32)
    LibOffHexFlag("libunity.so", 0x57710DC, "h20 00 80 D2 C0 03 5F D6", 32)
    LibOffHexFlag("libunity.so", 0x5844444, "h20 00 80 D2 C0 03 5F D6", 32)
    status.BR_ESP = true
    gg.toast("ESP BR Activated ✓")
end

function skinSophia()
    gg.setRanges(gg.REGION_ANONYMOUS)
    gg.clearResults()
    gg.searchNumber("710001101;710001102;710001103", gg.TYPE_DWORD)
    local results = gg.getResults(1000)
    if #results == 0 then gg.toast("Skin SOPHIA tidak ditemukan.") return end
    for i, v in ipairs(results) do
        results[i].value = v.value + 3798
        results[i].flags = gg.TYPE_DWORD
    end
    gg.setValues(results)
    status.SKIN_SOPHIA = true
    gg.toast("Skin SOPHIA Activated ✓")
end

function skinREAPER()
gg.setRanges(gg.REGION_ANONYMOUS)
gg.searchNumber("710001101", gg.TYPE_DWORD)
gg.getResults(10000)
gg.editAll("710000705", gg.TYPE_DWORD)
gg.clearResults()
gg.searchNumber("710001102", gg.TYPE_DWORD)
gg.getResults(10000)
gg.editAll("710000706", gg.TYPE_DWORD)
gg.clearResults()
gg.searchNumber("710001103", gg.TYPE_DWORD)
gg.getResults(10000)
gg.editAll("710000707", gg.TYPE_DWORD)
gg.clearResults()
status.SKIN_REAPER = true
gg.toast("Skin REAPER Activated ✓")
end  

function skinDAVIDMASON()
gg.setRanges(gg.REGION_ANONYMOUS)
gg.searchNumber("710001101", gg.TYPE_DWORD)
gg.getResults(10000)
gg.editAll("710001095", gg.TYPE_DWORD)
gg.clearResults()
gg.searchNumber("710001102", gg.TYPE_DWORD)
gg.getResults(10000)
gg.editAll("710001096", gg.TYPE_DWORD)
gg.clearResults()
gg.searchNumber("710001103", gg.TYPE_DWORD)
gg.getResults(10000)
gg.editAll("710001097", gg.TYPE_DWORD)
gg.clearResults()
status.SKIN_DAVID_MASON = true
gg.toast("Skin DAVID MASON Activated ✓")
end  

function skinBLOODINTHEWATER()
gg.setRanges(gg.REGION_ANONYMOUS)
gg.searchNumber("710001101", gg.TYPE_DWORD)
gg.getResults(10000)
gg.editAll("710000563", gg.TYPE_DWORD)
gg.clearResults()
gg.searchNumber("710001102", gg.TYPE_DWORD)
gg.getResults(10000)
gg.editAll("710000564", gg.TYPE_DWORD)
gg.clearResults()
gg.searchNumber("710001103", gg.TYPE_DWORD)
gg.getResults(10000)
gg.editAll("710000565", gg.TYPE_DWORD)
gg.clearResults()
status.SKIN_BLOOD_IN_THE_WATER = true
gg.toast("skin BLOOD IN THE WATER Activated  ✓")
end

function MPmenu()
    local pilihan = gg.multiChoice({
        "1. Wallhack " .. (status.WALLHACK and "✓" or "✗"),
        "2. No Recoil " .. (status.NO_RECOIL and "✓" or "✗"),
        "3. True Aim " .. (status.TRUE_AIM and "✓" or "✗"),
        "4. No Shake Gun " .. (status.NO_SHAKE_GUN and "✓" or "✗"),
        "5. Magic Bullet " .. (status.MAGIC_BULLET and "✓" or "✗"),
        "6. Fire Rate " .. (status.FIRE_RATE and "✓" or "✗"),
        "7. Fast Scope " .. (status.FAST_SCOPE and "✓" or "✗"),
        "8. Lock UAV " .. (status.LOCK_UAV and "✓" or "✗"),
        "9. Aimbot Dikit " .. (status.AIMBOT_DIKIT and "✓" or "✗"),
        "10. Aimbot Sedang " .. (status.AIMBOT_SEDANG and "✓" or "✗"),
        "11. Aimbot Brutal " .. (status.AIMBOT_BRUTAL and "✓" or "✗"),
        "12. Aimbot Adjust " .. (status.AIMBOT_ADJUST and "✓" or "✗"),
        "❌ Kembali"
    }, nil, "MP MENU - Multiplayer Mode")
    if not pilihan then return end
    if pilihan[1] then MPwallhack() end
    if pilihan[2] then MPnorecoil() end
    if pilihan[3] then MPtrueaim() end
    if pilihan[4] then MPnoshakegun() end
    if pilihan[5] then MPmagicbullet() end
    if pilihan[6] then MPfirerate() end
    if pilihan[7] then MPfastscope() end
    if pilihan[8] then MPlockuav() end
    if pilihan[9] then AIMBOTDIKIT() end
    if pilihan[10] then AIMBOTSEDANG() end
    if pilihan[11] then AIMBOTBRUTAL() end
    if pilihan[12] then AIMBOTADJUST() end
end

function BRmenu()
    local pilihan = gg.multiChoice({
        "1. No Parachute " .. (status.BR_NOPARASUT and "✓" or "✗"),
        "2. ESP " .. (status.BR_ESP and "✓" or "✗"),
        "❌ Kembali"
    }, nil, "BR MENU - Battle Royale Mode")
    if not pilihan then return end
    if pilihan[1] then BRnoparasut() end
    if pilihan[2] then BResp() end
end

function SkinMenu()
    local skin = gg.choice({
        "1. SOPHIA Skin " .. (status.SKIN_SOPHIA and "✓" or "✗"),
        "2. REAPER Skin " .. (status.SKIN_REAPER and "✓" or "✗"),
        "3.DAVD MASON skin" .. (status.SKIN_DAVID_MASON and "✓" or "✗"),
        "4.BLOOD IN THE WATER" .. (status.SKIN_BLOOD_IN_THE_WATER and  "✓" or "✗"),
        "❌ Kembali"
    }, nil, "Skin Character Menu")
    if not skin then return end
    if skin == 1 then skinSophia() end
    if skin == 2 then skinREAPER() end
    if skin == 3 then skinDAVIDMASON () end
    if skin == 4 then skinBLOODINTHEWATER() end
    
end

function mainMenu()
    local info = getDateTime()
    local menu = gg.choice({
        "【➤】 MP Menu (Multiplayer)",
        "【➤】 BR Menu (Battle Royale)",
        "【➤】 Skin Character",
        "❌ Exit"
    }, nil, "╔════════════════╗\n    REDCODE MAIN MENU\n╚════════════════╝\n\n" .. info)
    if menu == 1 then MPmenu()
    elseif menu == 2 then BRmenu()
    elseif menu == 3 then SkinMenu()
    elseif menu == 4 then
        gg.clearResults()
        gg.clearList()
        gg.setVisible(true)
        os.exit()
    end
end

function Main()
    showIntro()
    while true do
        if gg.isVisible(true) then
            gg.setVisible(false)
            mainMenu()
        end
        gg.sleep(500)
    end
end

Main()
