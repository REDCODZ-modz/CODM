function setValues(address,flags,value)gg.setValues({{address=address,flags=flags,value=value}})end
function setValues(address, flags, value) gg.setValues({[1] = {address = address, flags = flags, value = value}}) end
il2cpp=gg.getRangesList("libunity.so")[1].start
local HexPatches = {}
function RedCode(Lib,Offset,Edit,Type)
local Ranges = gg.getRangesList(Lib)
local v = {}
v[1] = {}
v[1].address = Ranges[1].start + Offset
v[1].flags = Type
v[1].value = Edit.."r"
v[1].freeze = true
gg.setValues(v)
end


RedCode("libunity.so", 0x84a32a0, "h20008052C0035FD6", 32); 
RedCode("libunity.so", 0x84a3954, "h20008052C0035FD6", 32); 
RedCode("libunity.so", 0x84a4138, "h002C8052C0035FD6", 32); 
RedCode("libunity.so", 0x84a2dfc, "h002C8052C0035FD6", 32); 
RedCode("libunity.so", 0x84a3f34, "h002C8052C0035FD6", 32); 
RedCode("libunity.so", 0x84a2df4, "h20008052C0035FD6", 32); 
RedCode("libunity.so", 0x84b1e6c, "h20008052C0035FD6", 32); 
RedCode("libunity.so", 0x84a33b8, "h002C8052C0035FD6", 32); 
RedCode("libunity.so", 0x84a33b0, "h002C8052C0035FD6", 32); 
RedCode("libunity.so", 0x84a45ac, "h002C8052C0035FD6", 32); 
RedCode("libunity.so", 0x84b4190, "h20008052C0035FD6", 32); 
RedCode("libunity.so", 0x84ac898, "h20008052C0035FD6", 32); 
RedCode("libunity.so", 0x83b9cdc, "h00008052C0035FD6", 32); 
RedCode("libunity.so", 0x7a74c7c, "h20008052C0035FD6", 32); 
RedCode("libunity.so", 0x543f820, "h00008052C0035FD6", 32); 
RedCode("libunity.so", 0x543f828, "hC0035FD6C0035FD6", 32);

RED = 1

redline_status = false

bypass_status = false
function toggleBypass()
    if bypass_status then
        bypass_status = false
        gg.toast("BYPASS DEACTIVATED")
    else
        bypass_status = true
        gg.toast("BYPASS ACTIVATED")
        bypass()
    end
    main()
end
function main()
    local bypassText = bypass_status and "    ⃢🟢🔸  𝗕𝗬𝗣𝗔𝗦𝗦 𝙇𝙊𝙂𝙊" or "🔴⃢    🔸  𝗕𝗬𝗣𝗔𝗦𝗦 𝙇𝙊𝙂𝙊"
    local redlineText = redline_status and "    ⃢🟢🔸 𝗥𝗘𝗗 𝗟𝗜𝗡𝗘 {INGAME}" or "🔴⃢    🔸 𝗥𝗘𝗗 𝗟𝗜𝗡𝗘 {INGAME}"
    RED = gg.choice({
        bypassText,
        redlineText,
        "ᯓ➤ 𝗖𝗟𝗘𝗔𝗥 𝗟𝗢𝗚𝗦",
        "ᯓ➤ 𝙎𝙆𝙄𝙋 𝙏𝙐𝙏𝙊𝙍𝙄𝘼𝙇",
        "ᯓ➤ 𝗔𝗜𝗠𝗕𝗢𝗧 𝗠𝗘𝗡𝗨",
        "ᯓ➤ 𝗛𝗔𝗖𝗞𝗦 𝗠𝗘𝗡𝗨",
        "ᯓ➤ 𝙃𝘼𝘾𝙆𝙎 𝙎𝙆𝙄𝙉 𝘾𝙃𝘼𝙍",
        "ᯓ➤ 𝗘𝗫𝗜𝗧 𝗠𝗘𝗡𝗨",
    }, nil, [[

===========[ 👑 𝙍𝙀𝘿 𝘾𝙊𝘿𝙀 𝙈𝙊𝘿𝙕 𝘾𝙊𝘿𝙈 👑 ]===========
🎮 v1.6.50 | 📅 ]] .. os.date("%A, %d %B %Y") .. 
[[ | ⏰ ]] .. os.date("%H:%M:%S") .. [[

=================[ 🌟 𝙋𝙍𝙀𝙈𝙄𝙐𝙈 🌟 ]===================

]])
    
    if RED == nil then return end
    if RED == 1 then toggleBypass() end
    if RED == 2 then redline() end
    if RED == 3 then logs() end
    if RED == 4 then skip() end
    if RED == 5 then aim() end
    if RED == 6 then cheat() end
    if RED == 7 then skin() end
    if RED == 8 then os.exit() end
end
    RED = -1

function bypass()

RedCode("libunity.so", 0x502F9E4, "h 20 00 80 52 C0 03 5F D6", 32);
RedCode("libanogs.so", 0x118A28, "h 00 00 80 D2 C0 03 5F D6", 32);
RedCode("libanogs.so", 0x119AB0, "h 00 00 80 D2 C0 03 5F D6", 32);
RedCode("libanogs.so", 0x11A228, "h 00 00 80 D2 C0 03 5F D6", 32);
RedCode("libanogs.so", 0x13481C, "h 00 00 80 D2 C0 03 5F D6", 32);
RedCode("libanogs.so", 0x134868, "h 00 00 80 D2 C0 03 5F D6", 32);
RedCode("libanogs.so", 0x134AF8, "h 00 00 80 D2 C0 03 5F D6", 32);
RedCode("libanogs.so", 0x134EF8, "h 00 00 80 D2 C0 03 5F D6", 32);
RedCode("libanogs.so", 0x242F28, "h 00 00 80 D2 C0 03 5F D6", 32);
RedCode("libanogs.so", 0x244508, "h 00 00 80 D2 C0 03 5F D6", 32);
RedCode("libanogs.so", 0x2448F8, "h 00 00 80 D2 C0 03 5F D6", 32);
RedCode("libanogs.so", 0x2471D8, "h 00 00 80 D2 C0 03 5F D6", 32);
RedCode("libanogs.so", 0x247378, "h 00 00 80 D2 C0 03 5F D6", 32);
RedCode("libanogs.so", 0x3DA1C8, "h 00 00 80 D2 C0 03 5F D6", 32);
RedCode("libanogs.so", 0x3DA47C, "h 00 00 80 D2 C0 03 5F D6", 32);
RedCode("libanogs.so", 0x3DA548, "h 00 00 80 D2 C0 03 5F D6", 32);
RedCode("libanogs.so", 0x3F9964, "h 00 00 80 D2 C0 03 5F D6", 32);
gg.toast("BYPASS ACTIVATED")
end

function logs()
os.remove("/storage/emulated/0/MidasOversea")
os.remove("/storage/emulated/0/tencent")
os.remove("src/main/java/com/google/errorprone/annotations")
os.remove("src/main/java/com/google/errorprone/annotations")
os.remove("src/main/java/com/google/errorprone/annotations/concurrent")
os.remove("third_party.java_src.error_prone.project.annotations.Google_internal")
os.remove("src/main/java/com/google/errorprone/annotations")
os.remove("src/main/java/com/google/errorprone/annotations")
os.remove("src/main/java/com/google/errorprone/annotations/concurrent")
os.remove("third_party.java_src.error_prone.project.annotations.Google_internal")
os.remove("src/main/java/com/google/errorprone/annotations")
os.remove("src/main/java/com/google/errorprone/annotations")
os.remove("src/main/java/com/google/errorprone/annotations/concurrent")
os.remove("third_party.java_src.error_prone.project.annotations.Google_internal")
os.remove("src/main/java/com/google/errorprone/annotations")
os.remove("src/main/java/com/google/errorprone/annotations")
os.remove("src/main/java/com/google/errorprone/annotations/concurrent")
os.remove("third_party.java_src.error_prone.project.annotations.Google_internal")
os.remove("/data/data/com.garena.game.codm/app_crashrecord/")
os.remove("/data/data/com.garena.game.codm/files/tss_tmp/")
os.remove("/data/data/com.garena.game.codm/app_crashrecord/1004")
os.remove("/data/data/com.garena.game.codm/files/tss_tmp/codm_4_2_39.dat")
os.remove("/data/data/com.garena.game.codm/files/tss_tmp/comm.dat")
os.remove("/data/data/com.garena.game.codm/files/tss_tmp/config2.xml.aac30393")
os.remove("/data/data/com.garena.game.codm/files/tss_tmp/config3.xml")
os.remove("/data/data/com.garena.game.codm/files/tss_tmp/mn_cache.dat")
os.remove("/data/data/com.garena.game.codm/files/tss_tmp/mrpcs_a.data")
os.remove("/data/data/com.garena.game.codm/files/tss_tmp/shellcode_1021")
os.remove("/data/data/com.garena.game.codm/files/tss_tmp/tdm_cache.dat")
os.remove("/data/data/com.garena.game.codm/files/tss_tmp/tss_cef.dat")
os.remove("/data/data/com.garena.game.codm/files/tss_tmp/tss_emu_c2.dat")
os.remove("/data/data/com.garena.game.codm/files/tss_tmp/tss_lcp.dat")
os.remove("/data/data/com.garena.game.codm/files/tss_tmp/tss_r_record.dat")
os.remove("/data/data/com.garena.game.codm/files/tss_tmp/tss.ano2.dat")
os.remove("/data/data/com.garena.game.codm/files/tss_tmp/tssmua.zip")
os.remove("/data/data/com.garena.game.codm/files/tss_tmp/tssmua.zip/data")
os.remove("/data/data/com.garena.game.codm/files/tss_tmp/tssmua.zip/data2")
gg.toast("Clear Log Success")
end

function skip()
RedCode("libunity.so", 0x820B6A8, "h 00 00 80 D2 C0 03 5F D6", 32);
gg.toast("Skip Tutorial Activated")
end

function redline()
    if redline_status then
        gg.setRanges(gg.REGION_C_ALLOC | gg.REGION_OTHER)
        gg.setVisible(false)
        gg.searchNumber("h 00 00 48 42 00 00 80 3F 00 00 96 43 00 00 00 00 00 00 00 00 00 00 40 40", gg.TYPE_BYTE, false, gg.SIGN_EQUAL, 0, -1)
        results = gg.getResults(99999)
        gg.editAll("h 00 00 80 40 00 00 80 3F 00 00 80 3F 00 00 00 00 00 00 00 00 00 00 40 40", gg.TYPE_BYTE)
        gg.toast("RED LINE DEACTIVATED")
        gg.alert("╔════════════════════╗\n║   RED LINE DINONAKTIFKAN   ║\n╚════════════════════╝\n\n• Harap menonaktifkan fitur ini setelah match berakhir untuk stabilitas maksimal.",
        
        "OK"
        )
        redline_status = false
    else
        gg.setRanges(gg.REGION_C_ALLOC | gg.REGION_OTHER)
        gg.setVisible(false)
        gg.searchNumber("h 00 00 80 40 00 00 80 3F 00 00 80 3F 00 00 00 00 00 00 00 00 00 00 40 40", gg.TYPE_BYTE, false, gg.SIGN_EQUAL, 0, -1)
        results = gg.getResults(99999)
        gg.editAll("h 00 00 48 42 00 00 80 3F 00 00 96 43 00 00 00 00 00 00 00 00 00 00 40 40", gg.TYPE_BYTE)
        gg.toast("RED LINE ACTIVATED")
        gg.alert("╔══════════════════════════╗\n║    RED LINE TELAH AKTIF    ║\n╚══════════════════════════╝\n\n• Gunakan saat pertandingan.\n• Nonaktifkan setelah match untuk stabilitas.",
       
        
          "OK"
        )
        redline_status = true
    end
    main()
end


function aim()
    local menu = gg.multiChoice({
        "ᯓ➤ 𝗔𝗜𝗠𝗕𝗢𝗧 𝗔𝗟𝗟 𝗚𝗨𝗡𝗦",  
        "ᯓ➤ 𝗔𝗜𝗠𝗕𝗢𝗧 𝗟𝗢𝗖𝗞",  
    })

    if menu then
        if menu[1] then
            D1()
        end
        if menu[2] then
            D2()
        end
    end
end

function D1()

  local AIMBOT1 = 0x98887fc
  local AIMBOT2 = 0x83d45a0

  setValues(il2cpp + AIMBOT1, 32, "h4000001CC0035FD6")
  setValues(il2cpp + AIMBOT1 + 0x4, 32, "hC0035FD600007A44")
  setValues(il2cpp + AIMBOT2, 32, "h4000001CC0035FD6")
  setValues(il2cpp + AIMBOT2 + 0x4, 32, "hC0035FD600007A44")

  local AIMBOT = gg.prompt(
    {"Aimbot Adjust Settings Max 200"},
    {[1] = 200},
    {[1] = "number"}
  )

  if AIMBOT and AIMBOT[1] then
    if tonumber(AIMBOT[1]) > 200 then
      gg.alert("Fatal Error: [0xC0000005]\nAccess Violation at address 0x0000001A.\nPlease restart the script system.")
      os.exit()
    end
    setValues(il2cpp + AIMBOT1 + 0x8, 16, AIMBOT[1])
    setValues(il2cpp + AIMBOT2 + 0x8, 16, AIMBOT[1])
    gg.toast("AIM ALL GUNS ACTIVATED " .. AIMBOT[1])
  else
    gg.toast("Aimbot dibatalkan")
  end
end

function D2()
gg.setRanges(gg.REGION_ANONYMOUS)
gg.searchNumber("7.00649232e-45F;0.69999998808F;0.69999998808F;0.69999998808F;0.69999998808F;7.00649232e-45F;0.5F;0.5F;0.5F;0.60000002384F;0.60000002384F", gg.TYPE_FLOAT)
gg.refineNumber("0.5;0.69999998808", gg. TYPE_FLOAT)
revert = gg.getResults(9999, nil, nil, nil, nil, nil, nil, nil, nil)
gg.editAll("360", gg.TYPE_FLOAT)
gg.clearResults()
gg.toast("AIM LOCK ACTIVATED")
end

function cheat()
RED = gg.multiChoice({
"𝗡𝗢𝗥𝗠𝗔𝗟 𝗪𝗔𝗟𝗟 𝗛𝗔𝗖𝗞 {SAFE LOBBY}", 
"𝗥𝗘𝗗 𝗪𝗔𝗟𝗟 𝗛𝗔𝗖𝗞 {SAFE LOBBY}",
"𝗟𝗘𝗦𝗦 𝗥𝗘𝗖𝗢𝗜𝗟 {SAFE LOBBY}",  
"𝙉𝘼𝙈𝙀 𝙏𝘼𝙂 𝘽𝙍 {SAFE LOBBY}",
"𝗡𝗢 𝗦𝗢𝗠𝗞𝗘 {SAFE INGAME}"
})
if RED == nil then main()else
if RED[1] == true then h1()end
if RED[2] == true then h2()end
if RED[3] == true then h3()end
if RED[4] == true then h4()end
if RED[5] == true then h5()end
end
RED = -1
end

function h1()
RedCode("libunity.so", 0x6622bd0, "h1F 20 03 D5 E0 03 13 AA", 4);
gg.toast("NORMAL WALLHACK ACTIVATED")
end

function h2()
WH= 0x415a34c
setValues(il2cpp + WH , 32, "h4000001CC0035FD6")
setValues(il2cpp + WH+ 0x4, 32, "hC0035FD600007A44")
setValues(il2cpp + WH+ 0x8, 16, 100)
RedCode("libunity.so", 0x83ffdd0, "h20008052C0035FD6", 32)
gg.toast("RED WALLHACK ACTIVATED")
end

function h3()
RECOIL1 = 0x85baa44
setValues(il2cpp + RECOIL1, 32, "h4000001CC0035FD6")
setValues(il2cpp + RECOIL1 + 0x4, 32, "hC0035FD600007A44")
setValues(il2cpp + RECOIL1+ 0x8, 16, 0.0001)
RECOIL2 = 0x85bb9f0
setValues(il2cpp + RECOIL2, 32, "h4000001CC0035FD6")
setValues(il2cpp + RECOIL2 + 0x4, 32, "hC0035FD600007A44")
setValues(il2cpp + RECOIL2 + 0x8, 16, 0.0001)
RedCode("libunity.so",0x83b5234,"hC0035FD6C0035FD6",32)
gg.toast("NO RECOIL ACTIVATED")
end

function h4()
RedCode("libunity.so", 0x5771040, "h20 00 80 D2 C0 03 5F D6", 32);
RedCode("libunity.so", 0x57710DC, "h20 00 80 D2 C0 03 5F D6", 32);
RedCode("libunity.so", 0x5844444, "h20 00 80 D2 C0 03 5F D6", 32);
gg.toast(" NAME TAG BR ACTIVATED")
end


function h5()
gg.setRanges(gg.REGION_ANONYMOUS)
gg.searchNumber("300000045", gg.TYPE_DWORD)
gg.refineNumber("300000045", 4)
var = gg.getResults(9999)
gg.editAll("0", gg.TYPE_DWORD)
gg.clearResults()
gg.setRanges(gg.REGION_ANONYMOUS)
gg.searchNumber("300000065", gg.TYPE_DWORD)
gg.refineNumber("300000065", 4)
var = gg.getResults(9999)
gg.editAll("0", gg.TYPE_DWORD)
gg.clearResults()
gg.setRanges(gg.REGION_ANONYMOUS)
gg.searchNumber("300000090", gg.TYPE_DWORD)
gg.refineNumber("300000090", 4)
var = gg.getResults(9999)
gg.editAll("0", gg.TYPE_DWORD)
gg.clearResults()
gg.toast("NO SMOKE ACTIVATED")
end

function skin()
  local b = gg.multiChoice({
    "➢ TEMPLAR MYTHIC",
    "➢ SPECTRE MYTHIC",
    "➢ NYX LEGEND",
    "➢ DAME LEGEND",
    "➢ DARK FIONA",
    "➢ REAPER ASHURA",
    "➢ HOLY FATHER",
  }, nil, "CHARACTER SKINS")

  if b == nil then return end
  if b[1] then c19() end
  if b[2] then c20() end
  if b[3] then c21() end
  if b[4] then c22() end
  if b[5] then c23() end
  if b[6] then c24() end
  if b[7] then c25() end
end

function c19()
  gg.setRanges(gg.REGION_ANONYMOUS)
  gg.searchNumber("710001101", gg.TYPE_DWORD)
  gg.getResults(10000)
  gg.editAll("710003205", gg.TYPE_DWORD)
  gg.clearResults()
  gg.searchNumber("710001102", gg.TYPE_DWORD)
  gg.getResults(10000)
  gg.editAll("710003206", gg.TYPE_DWORD)
  gg.clearResults()
  gg.searchNumber("710001103", gg.TYPE_DWORD)
  gg.getResults(10000)
  gg.editAll("710003204", gg.TYPE_DWORD)
  gg.clearResults()
  gg.toast("𝗧𝗘𝗠𝗣𝗟𝗔𝗥 𝗠𝗜𝗧𝗛𝗜𝗖 𝗔𝗖𝗧𝗜𝗩𝗔𝗧𝗘")
end

function c20()
  gg.setRanges(gg.REGION_ANONYMOUS)
  gg.searchNumber("710001101", gg.TYPE_DWORD)
  gg.getResults(10000)
  gg.editAll("710002568", gg.TYPE_DWORD)
  gg.clearResults()
  gg.searchNumber("710001102", gg.TYPE_DWORD)
  gg.getResults(10000)
  gg.editAll("710002569", gg.TYPE_DWORD)
  gg.clearResults()
  gg.searchNumber("710001103", gg.TYPE_DWORD)
  gg.getResults(10000)
  gg.editAll("710002570", gg.TYPE_DWORD)
  gg.clearResults()
  gg.toast("𝗦𝗣𝗘𝗖𝗧𝗥𝗘 𝗔𝗖𝗧𝗜𝗩𝗔𝗧𝗘")
end

function c21()
  gg.setRanges(gg.REGION_ANONYMOUS)
  gg.searchNumber("710001101", gg.TYPE_DWORD)
  gg.getResults(10000)
  gg.editAll("710003067", gg.TYPE_DWORD)
  gg.clearResults()
  gg.searchNumber("710001102", gg.TYPE_DWORD)
  gg.getResults(10000)
  gg.editAll("710003068", gg.TYPE_DWORD)
  gg.clearResults()
  gg.searchNumber("710001103", gg.TYPE_DWORD)
  gg.getResults(10000)
  gg.editAll("710003069", gg.TYPE_DWORD)
  gg.clearResults()
  gg.toast("𝗡𝗬𝗫 𝗟𝗘𝗚𝗘𝗡𝗗 𝗖𝗛𝗔𝗥𝗔𝗖𝗧𝗘𝗥 𝗗𝗢𝗡𝗘")
end

function c22()
  gg.setRanges(gg.REGION_ANONYMOUS)
  gg.searchNumber("710001101", gg.TYPE_DWORD)
  gg.getResults(10000)
  gg.editAll("710004111", gg.TYPE_DWORD)
  gg.clearResults()
  gg.searchNumber("710001102", gg.TYPE_DWORD)
  gg.getResults(10000)
  gg.editAll("710004112", gg.TYPE_DWORD)
  gg.clearResults()
  gg.searchNumber("710001103", gg.TYPE_DWORD)
  gg.getResults(10000)
  gg.editAll("710004113", gg.TYPE_DWORD)
  gg.clearResults()
  gg.toast("𝗗𝗔𝗠𝗘 𝗟𝗘𝗚𝗘𝗡𝗗 𝗖𝗛𝗔𝗥𝗔𝗖𝗧𝗘𝗥 𝗗𝗢𝗡𝗘")
end

function c23()
  gg.setRanges(gg.REGION_ANONYMOUS)
  gg.searchNumber("710001101", gg.TYPE_DWORD)
  gg.getResults(10000)
  gg.editAll("710004858", gg.TYPE_DWORD)
  gg.clearResults()
  gg.searchNumber("710001102", gg.TYPE_DWORD)
  gg.getResults(10000)
  gg.editAll("710004859", gg.TYPE_DWORD)
  gg.clearResults()
  gg.searchNumber("710001103", gg.TYPE_DWORD)
  gg.getResults(10000)
  gg.editAll("710004860", gg.TYPE_DWORD)
  gg.clearResults()
  gg.alert("Skin Activated ✅")
  gg.toast("DARK FIONA ACTIVATED")
end

function c24()
  gg.setRanges(gg.REGION_ANONYMOUS)
  gg.searchNumber("710001101", gg.TYPE_DWORD)
  gg.getResults(10000)
  gg.editAll("710001602", gg.TYPE_DWORD)
  gg.clearResults()
  gg.searchNumber("710001102", gg.TYPE_DWORD)
  gg.getResults(10000)
  gg.editAll("710001591", gg.TYPE_DWORD)
  gg.clearResults()
  gg.searchNumber("710001103", gg.TYPE_DWORD)
  gg.getResults(10000)
  gg.editAll("710001591", gg.TYPE_DWORD)
  gg.clearResults()
  gg.toast("REAPER ACTIVATED")
  gg.alert("REAPER ACTIVATED")
end

function c25()
  gg.setRanges(gg.REGION_ANONYMOUS)
  gg.searchNumber("710001101", gg.TYPE_DWORD)
  gg.getResults(10000)
  gg.editAll("710001280", gg.TYPE_DWORD)
  gg.clearResults()
  gg.searchNumber("710001102", gg.TYPE_DWORD)
  gg.getResults(10000)
  gg.editAll("710001281", gg.TYPE_DWORD)
  gg.clearResults()
  gg.searchNumber("710001103", gg.TYPE_DWORD)
  gg.getResults(10000)
  gg.editAll("710001282", gg.TYPE_DWORD)
  gg.clearResults()
  gg.toast("HOLY FATHER DONE")
end

function exit()
os.exit()
end

while true do
if gg.isVisible(true) then
RED = 1
gg.setVisible(false)
end
if RED == 1 then
main()
end
end
