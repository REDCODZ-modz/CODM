-- Fungsi utama
function A2f()
  local xCy26, xVgF62 = tonumber, string.char
    local FVca6, Sn62V = table.unpack, table.concat
    local function GfGv9KpLzQ(a) return xVgF62(FVca6(a)) end 
    local function Maslent(b) return xCy26(xVgF62(FVca6(b))) end 
    
    function czk(Search, Write, Type)
        gg.clearResults()
        gg.setVisible(false)
        gg.searchNumber(Search[1][1], Type)
        
        local count = gg.getResultCount()
        local result = gg.getResults(count)
        gg.clearResults()
        
        local data = {}
        local base = Search[1][2]
        
        if count > 0 then
            for _, v in ipairs(result) do v.isUseful = true end
            
            for k = 2, #Search do
                local tmp = {}
                local offset = Search[k][2] - base
                local num = Search[k][1]
                
                for _, v in ipairs(result) do
                    tmp[#tmp + 1] = { address = v.address + offset, flags = v.flags }
                end
                
                tmp = gg.getValues(tmp)
                
                for i, v in ipairs(tmp) do
                    if tostring(v.value) ~= tostring(num) then
                        result[i].isUseful = false
                    end
                end
            end
            
            for _, v in ipairs(result) do
                if v.isUseful then
                    data[#data + 1] = v.address
                end
            end
            
            if #data > 0 then
                gg.toast('Results ' .. #data .. ' Edited')
                local t = {}
                
                for _, address in ipairs(data) do
                    for _, w in ipairs(Write) do
                        t[#t + 1] = {
                            address = address + (w[2] - base),
                            flags = Type,
                            value = w[1]
                        }
                        
                        if w[3] then
                            local item = { t[#t] }
                            item[#item].freeze = true
                            gg.addListItems(item)
                        end
                    end
                end
                
                gg.setValues(t)
            else
                return false
            end
        else
            return false
        end
    end
end
function LibOffHexFlag(library, offset, hex, flag)
    local address = gg.getRangesList(library)[1].start + offset
    local t = {}
    t[1] = { address = address, flags = flag, value = hex }
    gg.setValues(t)
end
-- Fungsi utama menu
function exit()
    gg.alert("Ｃｌｏｓｉｎｇ Ｃｈｅａｔ", "Ｃｌｏｓｅ")
    gg.sleep(100)
    gg.toast("👋 Ｇｏｏｄｂｙｅ...")
    os.exit()
end

function home()
    a = gg.choice({
        "【﻿ＢＹＰＡＳＳ】",
        "【﻿ＭＰ　ＭＥＮＵ】",
        "【﻿ＢＲ　ＭＥＮＵ】",
        "【﻿ＶＩＳＵＡＬ　ＭＥＮＵ】",
        "✧<---- 𝔼𝕏𝕀𝕋"
    }, nil, "SCRIPT CALL OF DUTY MOBILE\n BY REDCODE MODZ")

    if a == 1 then Bypass() end
    if a == 2 then MPmenu() end
    if a == 3 then BRmenu() end
    if a == 4 then VSLmenu() end
    if a == 5 then exit() end
end

function MPmenu()
    b = gg.choice({
        "•ＡＩＭＢＯＴ•",
        "•Ｗａｌｌｈａｃｋ•",
        "•ＮｏＲｅｃｏｉｌ•",
        "•Ｔｒｕｅ Ａｉｍ•",
        "•Ｎｏ Ｓｈａｋｅ Ｇｕｎ•",
        "•Ｍａｇｉｃ Ｂｕｌｌｅｔ•",
        "•Ｆｉｒｅ Ｒａｔｅ•",
        "•Ｆａｓｔ Ｓｃｏｐｅ•",
        "•ＬＯＣＫ ＵＡＶ•",
        "✧<---- 𝔼𝕏𝕀𝕋"
    }, nil, "【ＭＰ MENU】 BY REDCODE MODZ]")

    if b == 1 then AimbotMenu() end
    if b == 2 then MPwallhack() end
    if b == 3 then MPnorecoil() end
    if b == 4 then MPtrueaim() end
    if b == 5 then MPnoshakegun() end
    if b == 6 then MPmagicbullet() end
    if b == 7 then MPfirerate() end
    if b == 8 then MPfastscope() end
    if b == 9 then MPlockuav() end
    if b == 10 then exit() end
end

---------[ AIMBOT ]
function AimbotMenu()
    c = gg.choice({
        "•Ａｉｍｂｏｔ Ａｄｊｕｓｔ•",
        "•Ａｉｍｂｏｔ Ｌｏｗ•",
        "•Ａｉｍｂｏｔ Ｍｅｄｉｕｍ•",
        "•Ａｉｍｂｏｔ Ｈａｒｄ•",
        "✧<---- 𝔼𝕏𝕀𝕋"
    }, nil, "✧ 𝑨𝒊𝒎𝒃𝒐𝒕 𝑴𝒆𝒏𝒖 𝑯𝒂𝒄𝒌 𝒇𝒐𝒓 𝑪𝑶𝑫𝑴 ✧")

    if c == 1 then AIMBOTAdjust() end
    if c == 2 then AIMBOTDIKIT() end
    if c == 3 then AIMBOTSedengan() end
    if c == 4 then AIMBOTBrutal() end
    if c == 5 then exit() end
end

function BRmenu()
    d = gg.choice({
        "•Ｎｏ Ｐａｒａｃｕｔｅ•",
        "•ＥＳＰ ＢＲ Ｍｏｄｅ•",
        "✧<---- 𝔼𝕏𝕀𝕋"
    }, nil, "【ＢＲ MENU】 BY REDCODE MODZ")

    if d == 1 then BRnoparasut() end
    if d == 2 then BResp() end
    if d == 3 then exit() end
end

function CRmenu()
    d = gg.choice({
        "•Ｒｏｚｅｌｉｎ•",
        "•Ｓｉｒｅｎ•",
        "✧<---- 𝔼𝕏𝕀𝕋"
    }, nil, "【ＶＳＬ MENU】\n🇮🇩 Sebelum menggunakan tools ini pastikan skin sudah terdownload secara sempurna agar tidak terjadi error ataupun bug \n\n🇺🇸Before using this tool, make sure the skin has been downloaded perfectly to avoid errors or bugs.")

    if d == 1 then Rose() end
    if d == 2 then Siren() end
    if d == 3 then exit() end
end

function GNmenu()
    d = gg.choice({
        "•ＦＥＮＮＥＣ ( Ａｓｃｅｎｄｅｄ )•",
        "•𝖫𝗈𝖼𝗎𝗌 ( 𝖭𝖾𝗉𝗍𝗎𝗇𝖾 )•",
        "•ａｓｖａｌ ( Ｄｏｂｌｅ Ｅｄｇｅ )•",
        "•ｍｘ９ ( Ｌｅｇｅｎｄａｒｙ)",
        "✧<---- 𝔼𝕏𝕀𝕋"
    }, nil, "【ＶＳＬ MENU】\n🇮🇩 Sebelum menggunakan tools ini pastikan skin sudah terdownload secara sempurna agar tidak terjadi error ataupun bug \n\n🇺🇸 Before using this tool, make sure the skin has been downloaded perfectly to avoid errors or bugs.")

    if d == 1 then Fenec() end
    if d == 2 then LCS() end
    if d == 3 then ASV() end
    if d == 4 then SIC() end
    if d == 5 then exit() end
end


function VSLmenu()
    d = gg.choice({
        "•Ｃｈａｒａｃｔｅｒ Ｓｋｉｎ •",
        "•Ｇｕｎ Ｓｋｉｎ•",
        "✧<---- 𝔼𝕏𝕀𝕋"
    }, nil, "【ＶＳＬ MENU】\n🇮🇩 𝚂𝚎𝚋𝚎𝚕𝚞𝚖 𝙼𝚎𝚗𝚐𝚐𝚞𝚗𝚊𝚔𝚊𝚗 𝚃𝚘𝚘𝚕𝚜 𝚂𝚔𝚒𝚗 𝙷𝚊𝚌𝚔 𝚂𝚒𝚕𝚊𝚑𝚔𝚊𝚗 𝙳𝚘𝚠𝚗𝚕𝚘𝚊𝚍 𝚝𝚎𝚛𝚕𝚎𝚋𝚒𝚑 𝙳𝚊𝚑𝚞𝚕𝚞 𝚂𝚔𝚒𝚗 𝚈𝚊𝚗𝚐 𝚒𝚗𝚐𝚒𝚗 𝚍𝚒 𝚒𝚗𝚓𝚎𝚌𝚝\n\n🇺🇸 𝙱𝚎𝚏𝚘𝚛𝚎 𝚞𝚜𝚒𝚗𝚐 𝚝𝚑𝚎 𝚂𝚔𝚒𝚗 𝙷𝚊𝚌𝚔 𝚃𝚘𝚘𝚕, 𝚙𝚕𝚎𝚊𝚜𝚎 𝚍𝚘𝚠𝚗𝚕𝚘𝚊𝚍 𝚝𝚑𝚎 𝚜𝚔𝚒𝚗 𝚢𝚘𝚞 𝚠𝚊𝚗𝚝 𝚝𝚘 𝚒𝚗𝚓𝚎𝚌𝚝 𝚏𝚒𝚛𝚜𝚝.")

    if d == 1 then CRmenu() end
    if d == 2 then GNmenu() end
    if d == 3 then exit() end
end

--Character Skin

function Siren()
gg.setRanges(gg.REGION_ANONYMOUS)
gg.searchNumber("710001101", gg.TYPE_DWORD)
gg.getResults(10000)
gg.editAll("710000702", gg.TYPE_DWORD)
gg.clearResults()
gg.searchNumber("710001102", gg.TYPE_DWORD)
gg.getResults(10000)
gg.editAll("710000703", gg.TYPE_DWORD)
gg.clearResults()
gg.searchNumber("710001103", gg.TYPE_DWORD)
gg.getResults(10000)
gg.editAll("710000704", gg.TYPE_DWORD)
gg.clearResults()
gg.toast("sɪʀᴇɴ")
end 
---Rozelin
function Rose()
gg.setRanges(gg.REGION_ANONYMOUS)
gg.searchNumber("710001101", gg.TYPE_DWORD)
gg.getResults(10000)
gg.editAll("710001327", gg.TYPE_DWORD)
gg.clearResults()
gg.searchNumber("710001102", gg.TYPE_DWORD)
gg.getResults(10000)
gg.editAll("710001326", gg.TYPE_DWORD)
gg.clearResults()
gg.searchNumber("710001103", gg.TYPE_DWORD)
gg.getResults(10000)
gg.editAll("710001325", gg.TYPE_DWORD)
gg.clearResults()
gg.toast("Rozelin")
end 

--Gun Skinn
function SIC()
gg.setRanges(gg.REGION_ANONYMOUS) 
gg.searchNumber("602000736", gg.TYPE_DWORD)
gg.getResults(10000)
gg.editAll("602000732", gg.TYPE_DWORD)
gg.clearResults()
gg.searchNumber("602000737", gg.TYPE_DWORD)
gg.getResults(10000)
gg.editAll("602000733", gg.TYPE_DWORD)
gg.clearResults()
gg.toast("MX9 LEGENDARY ")
end
function Fenec()
gg.clearResults()
gg.setRanges(gg.REGION_ANONYMOUS)
gg.searchNumber("200000118", gg.TYPE_DWORD)
gg.getResults(10000)
gg.editAll("602000012", gg.TYPE_DWORD)
gg.clearResults()
gg.searchNumber("200000119", gg.TYPE_DWORD)
gg.getResults(10000)
gg.editAll("602000013", gg.TYPE_DWORD)
gg.clearResults()
gg.toast("FENNEC  ASCENDED")
end

function LCS()
gg.clearResults()
gg.setRanges(gg.REGION_ANONYMOUS)
gg.searchNumber("200000435", gg.TYPE_DWORD)
gg.getResults(10000)
gg.editAll("602000627", gg.TYPE_DWORD)
gg.clearResults()
gg.searchNumber("200000436", gg.TYPE_DWORD)
gg.getResults(10000)
gg.editAll("602000628", gg.TYPE_DWORD)
gg.clearResults()
gg.toast("LOCUS NEPTUNE")
end

function ASV()
gg.setRanges(gg.REGION_ANONYMOUS)
gg.searchNumber("602000351", gg.TYPE_DWORD)
gg.getResults(10000)
gg.editAll("602000353", gg.TYPE_DWORD)
gg.clearResults()
gg.searchNumber("602000352", gg.TYPE_DWORD)
gg.getResults(10000)
gg.editAll("602000354", gg.TYPE_DWORD)
gg.clearResults()
gg.toast("ASVAL DOUBLE EDGE")
end



-- WriteMemory
function writeMemory(address, flags, value)
    local t = {}
    t[1] = { address = address, flags = flags, value = value }
    gg.setValues(t)
end

function AIMBOTDIKIT()
    local ranges = gg.getRangesList("libunity.so")
    if #ranges == 0 then
        gg.alert("libunity.so tidak ditemukan!")
        return
    end
    local il2cpp = ranges[1].start
    local AIMBOT1 = 0x98887FC
    local AIMBOT2 = 0x83D45A0

    writeMemory(il2cpp + AIMBOT1, 32, "h4000001CC0035FD6")
    writeMemory(il2cpp + AIMBOT1 + 0x4, 32, "hC0035FD600007A44")
    writeMemory(il2cpp + AIMBOT2, 32, "h4000001CC0035FD6")
    writeMemory(il2cpp + AIMBOT2 + 0x4, 32, "hC0035FD600007A44")

    -- Set to 15 for AIMBOT DIKIT
    writeMemory(il2cpp + AIMBOT1 + 0x8, 16, 15)
    writeMemory(il2cpp + AIMBOT2 + 0x8, 16, 15)

    gg.toast("AIMBOT Low Aktif ✓")
end

function AIMBOTSedengan()
    local ranges = gg.getRangesList("libunity.so")
    if #ranges == 0 then
        gg.alert("libunity.so tidak ditemukan!")
        return
    end
    local il2cpp = ranges[1].start
    local AIMBOT1 = 0x98887FC
    local AIMBOT2 = 0x83D45A0

    writeMemory(il2cpp + AIMBOT1, 32, "h4000001CC0035FD6")
    writeMemory(il2cpp + AIMBOT1 + 0x4, 32, "hC0035FD600007A44")
    writeMemory(il2cpp + AIMBOT2, 32, "h4000001CC0035FD6")
    writeMemory(il2cpp + AIMBOT2 + 0x4, 32, "hC0035FD600007A44")

    -- Set to 50 for AIMBOT SEDENGAN
    writeMemory(il2cpp + AIMBOT1 + 0x8, 16, 50)
    writeMemory(il2cpp + AIMBOT2 + 0x8, 16, 50)

    gg.toast("AIMBOT Medium Aktif ✓")
end

function AIMBOTBrutal()
    local ranges = gg.getRangesList("libunity.so")
    if #ranges == 0 then
        gg.alert("libunity.so tidak ditemukan!")
        return
    end
    local il2cpp = ranges[1].start
    local AIMBOT1 = 0x98887FC
    local AIMBOT2 = 0x83D45A0

    writeMemory(il2cpp + AIMBOT1, 32, "h4000001CC0035FD6")
    writeMemory(il2cpp + AIMBOT1 + 0x4, 32, "hC0035FD600007A44")
    writeMemory(il2cpp + AIMBOT2, 32, "h4000001CC0035FD6")
    writeMemory(il2cpp + AIMBOT2 + 0x4, 32, "hC0035FD600007A44")

    -- Set to 100 for AIMBOT BRUTAL
    writeMemory(il2cpp + AIMBOT1 + 0x8, 16, 100)
    writeMemory(il2cpp + AIMBOT2 + 0x8, 16, 100)

    gg.toast("AIMBOT Hard Aktif ✓")
end

function AIMBOTAdjust()
    local ranges = gg.getRangesList("libunity.so")
    if #ranges == 0 then
        gg.alert("libunity.so tidak ditemukan!")
        return
    end
    local il2cpp = ranges[1].start
    local AIMBOT1 = 0x98887FC
    local AIMBOT2 = 0x83D45A0

    writeMemory(il2cpp + AIMBOT1, 32, "h4000001CC0035FD6")
    writeMemory(il2cpp + AIMBOT1 + 0x4, 32, "hC0035FD600007A44")
    writeMemory(il2cpp + AIMBOT2, 32, "h4000001CC0035FD6")
    writeMemory(il2cpp + AIMBOT2 + 0x4, 32, "hC0035FD600007A44")

    local AIMBOT = gg.prompt({"Aimbot Adjust (Recommended: 50)"}, nil, {"number"})
    if AIMBOT and AIMBOT[1] then
        writeMemory(il2cpp + AIMBOT1 + 0x8, 16, AIMBOT[1])
        writeMemory(il2cpp + AIMBOT2 + 0x8, 16, AIMBOT[1])
    end 

    gg.toast("Aimbot Activated ✓")
end 

-- WALLHACK
function MPwallhack()
    local ranges = gg.getRangesList("libunity.so")
    if #ranges == 0 then
        gg.alert("libunity.so tidak ditemukan!")
        return
    end
    local base = ranges[1].start
    local offset = 0x6622BD0

    writeMemory(base + offset, 32, "h1F2003D5E00313AA")
    gg.toast("Wallhack Activated ✓")
end 

-- NO RECOIL
function MPnorecoil()
    local ranges = gg.getRangesList("libunity.so")
    if #ranges == 0 then
        gg.alert("libunity.so tidak ditemukan!")
        return
    end
    local base = ranges[1].start
    local offset = 0x85BB9F0

    writeMemory(base + offset, 32, "h204C40BCC0035FD6")
    gg.toast("No Recoil Activated ✓")
end

function MPtrueaim()
LibOffHexFlag("libunity.so", 0x85BA160, "h00 00 80 D2 C0 03 5F D6", 32);
LibOffHexFlag("libunity.so", 0x85BA160 + 4, "h00 00 80 D2 C0 03 5F D6", 32);
gg.toast("True Aim Activated ✓")
end 

function MPnoshakegun()
    local so = gg.getRangesList('libunity.so')[1].start
    local py = 0x83B5234
    -- Menulis nilai ke alamat yang benar
    writeMemory(so + py, 32, "h010080D2C0035FD6")
    gg.toast("No Shake Activated ✓")
end

function MPmagicbullet()
LibOffHexFlag("libunity.so", 0x85831F4, "h20 00 80 52 C0 03 5F D6", 32)
LibOffHexFlag("libunity.so", 0x85B4CCC, "h20 00 80 52 C0 03 5F D6", 32)
LibOffHexFlag("libunity.so", 0x85B55AC, "h20 00 80 52 C0 03 5F D6", 32)
gg.toast("Magic Bullet Activated ✓")
end 

function MPfirerate()
LibOffHexFlag("libunity.so",0x72BE95C, "h 20 00 80 D2 C0 03 5F D6", 32);
gg.toast("Fire Rate Activated ✓")
end 

function MPfastscope()
LibOffHexFlag("libunity.so", 0x9862290, "h00 2C 40 BC C0 03 5F D6", 32)
gg.toast("Fast Scope Activated ✓")
end 
function MPlockuav()
LibOffHexFlag("libunity.so", 0x544E174, "h200080D2C0035FD6", 32)
gg.toast("Lock UAV Activated ✓")
end 
-- [ BR MENU ]
function BRnoparasut()
LibOffHexFlag("libunity.so", 0x8FB9A90, "h00 00 80 D2 C0 03 5F D6", 32);
LibOffHexFlag("libunity.so", 0x8FB9A94, "h00 00 80 D2 C0 03 5F D6", 32);
gg.toast("No Paracute Activated ✓")
end 

function BResp()
LibOffHexFlag("libunity.so", 0x5771040, "h20 00 80 D2 C0 03 5F D6", 32);
LibOffHexFlag("libunity.so", 0x57710DC, "h20 00 80 D2 C0 03 5F D6", 32);
LibOffHexFlag("libunity.so", 0x5844444, "h20 00 80 D2 C0 03 5F D6", 32);
gg.toast("Esp Battle Royal Activated ✓")
end 




-- Fungsi bypass
function Bypass()
    local offsets = {
        0xE0254, 0x118A28, 0x11A228, 0x134774, 0x134EF8, 0x170880,
        0x217F60, 0x21B4A8, 0x21BB64, 0x23F7EC, 0x23FB08, 0x24017C,
        0x24042C, 0x240BA4, 0x242DF4, 0x242F2C, 0x2442C8, 0x24450C,
        0x2448FC, 0x2471D8, 0x247378, 0x24CE2C, 0x25F9BC, 0x26DB10,
        0x2B58C0, 0x2F5930
    }
    
    for _, offset in ipairs(offsets) do
        LibOffHexFlag("libanogs.so", offset, "h00 00 80 D2 C0 03 5F D6", 32)
    end
    
    gg.alert("• Bypass Logo, Bypass Loby Active ( Script Create BY REDCODE")
end

-- Loop utama
while true do
    if gg.isVisible(true) then
        gg.setVisible(false)
        home()
    end
end

-- Fungsi keluar
