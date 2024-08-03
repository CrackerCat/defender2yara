rule TrojanDownloader_MSIL_Heracles_SIBA_2147794727_0
{
    meta:
        author = "defender2yara"
        detection_name = "TrojanDownloader:MSIL/Heracles.SIBA!MTB"
        threat_id = "2147794727"
        type = "TrojanDownloader"
        platform = "MSIL: .NET intermediate language scripts"
        family = "Heracles"
        severity = "Critical"
        info = "MTB: Microsoft Threat Behavior"
        signature_type = "SIGNATURE_TYPE_PEHSTR_EXT"
        threshold = "1"
        strings_accuracy = "Low"
    strings:
        $x_1_1 = {fe 0e 01 00 72 ?? ?? ?? ?? fe 0e 02 00 73 ?? ?? ?? ?? fe 0e 03 00 fe 0c 01 00 28 ?? ?? ?? ?? 6f ?? ?? ?? ?? fe 0e 04 00 38 ?? ?? ?? ?? fe 0d 04 00 28 ?? ?? ?? ?? fe 0e 05 00 fe 0c 05 00 28 ?? ?? ?? ?? fe 0c 02 00 28 ?? ?? ?? ?? da fe 0e 06 00 fe 0c 03 00 fe 0c 06 00 28 ?? ?? ?? ?? 6f ?? ?? ?? ?? 26 [0-16] fe 0d 04 00 28 ?? ?? ?? ?? fe 0e 07 00 fe 0c 07 00 3a}  //weight: 1, accuracy: Low
    condition:
        (filesize < 20MB) and
        (all of ($x*))
}

rule TrojanDownloader_MSIL_Heracles_ARA_2147837798_0
{
    meta:
        author = "defender2yara"
        detection_name = "TrojanDownloader:MSIL/Heracles.ARA!MTB"
        threat_id = "2147837798"
        type = "TrojanDownloader"
        platform = "MSIL: .NET intermediate language scripts"
        family = "Heracles"
        severity = "Critical"
        info = "MTB: Microsoft Threat Behavior"
        signature_type = "SIGNATURE_TYPE_PEHSTR_EXT"
        threshold = "2"
        strings_accuracy = "Low"
    strings:
        $x_2_1 = {11 04 11 05 09 11 05 09 8e 69 5d 91 08 11 05 91 61 d2 6f ?? ?? ?? 0a 11 05 17 58 13 05 11 05 08 8e 69 32 dc}  //weight: 2, accuracy: Low
    condition:
        (filesize < 20MB) and
        (all of ($x*))
}

rule TrojanDownloader_MSIL_Heracles_ARAC_2147840697_0
{
    meta:
        author = "defender2yara"
        detection_name = "TrojanDownloader:MSIL/Heracles.ARAC!MTB"
        threat_id = "2147840697"
        type = "TrojanDownloader"
        platform = "MSIL: .NET intermediate language scripts"
        family = "Heracles"
        severity = "Critical"
        info = "MTB: Microsoft Threat Behavior"
        signature_type = "SIGNATURE_TYPE_PEHSTR_EXT"
        threshold = "5"
        strings_accuracy = "Low"
    strings:
        $x_5_1 = {11 04 09 06 09 8e 69 5d 91 08 06 91 61 d2 6f ?? ?? ?? 0a 06 1a 2c 04 17 58 0a 06 08 8e 69 32 e0}  //weight: 5, accuracy: Low
    condition:
        (filesize < 20MB) and
        (all of ($x*))
}

rule TrojanDownloader_MSIL_Heracles_SR_2147841041_0
{
    meta:
        author = "defender2yara"
        detection_name = "TrojanDownloader:MSIL/Heracles.SR!MTB"
        threat_id = "2147841041"
        type = "TrojanDownloader"
        platform = "MSIL: .NET intermediate language scripts"
        family = "Heracles"
        severity = "Critical"
        info = "MTB: Microsoft Threat Behavior"
        signature_type = "SIGNATURE_TYPE_PEHSTR"
        threshold = "1"
        strings_accuracy = "High"
    strings:
        $x_1_1 = {09 08 11 04 08 8e 69 5d 91 07 11 04 91 61 d2 6f 15 00 00 0a 11 04 17 58 13 04 11 04 07 8e 69 32 df}  //weight: 1, accuracy: High
    condition:
        (filesize < 20MB) and
        (all of ($x*))
}

rule TrojanDownloader_MSIL_Heracles_SS_2147841042_0
{
    meta:
        author = "defender2yara"
        detection_name = "TrojanDownloader:MSIL/Heracles.SS!MTB"
        threat_id = "2147841042"
        type = "TrojanDownloader"
        platform = "MSIL: .NET intermediate language scripts"
        family = "Heracles"
        severity = "Critical"
        info = "MTB: Microsoft Threat Behavior"
        signature_type = "SIGNATURE_TYPE_PEHSTR"
        threshold = "1"
        strings_accuracy = "High"
    strings:
        $x_1_1 = {09 11 04 18 5b 07 11 04 18 6f 05 00 00 0a 1f 10 28 06 00 00 0a 9c 11 04 18 58 13 04 11 04 08 32 df}  //weight: 1, accuracy: High
    condition:
        (filesize < 20MB) and
        (all of ($x*))
}

rule TrojanDownloader_MSIL_Heracles_SU_2147844064_0
{
    meta:
        author = "defender2yara"
        detection_name = "TrojanDownloader:MSIL/Heracles.SU!MTB"
        threat_id = "2147844064"
        type = "TrojanDownloader"
        platform = "MSIL: .NET intermediate language scripts"
        family = "Heracles"
        severity = "Critical"
        info = "MTB: Microsoft Threat Behavior"
        signature_type = "SIGNATURE_TYPE_PEHSTR"
        threshold = "1"
        strings_accuracy = "High"
    strings:
        $x_1_1 = {0d 16 13 04 2b 1a 09 08 11 04 08 8e 69 5d 91 07 11 04 91 61 d2 6f 13 00 00 0a 11 04 17 58 13 04 11 04 07 8e 69 32 df}  //weight: 1, accuracy: High
    condition:
        (filesize < 20MB) and
        (all of ($x*))
}

rule TrojanDownloader_MSIL_Heracles_ARBE_2147846653_0
{
    meta:
        author = "defender2yara"
        detection_name = "TrojanDownloader:MSIL/Heracles.ARBE!MTB"
        threat_id = "2147846653"
        type = "TrojanDownloader"
        platform = "MSIL: .NET intermediate language scripts"
        family = "Heracles"
        severity = "Critical"
        info = "MTB: Microsoft Threat Behavior"
        signature_type = "SIGNATURE_TYPE_PEHSTR_EXT"
        threshold = "5"
        strings_accuracy = "Low"
    strings:
        $x_5_1 = {06 07 02 07 6f ?? ?? ?? 0a 7e ?? ?? ?? 04 07 1f 10 5d 91 61 07 20 ff 00 00 00 5d 28 ?? ?? ?? 06 61 28 ?? ?? ?? 06 9d 07 17 58 0b 07 02 6f ?? ?? ?? 0a 32 cc}  //weight: 5, accuracy: Low
    condition:
        (filesize < 20MB) and
        (all of ($x*))
}

rule TrojanDownloader_MSIL_Heracles_CXJK_2147849617_0
{
    meta:
        author = "defender2yara"
        detection_name = "TrojanDownloader:MSIL/Heracles.CXJK!MTB"
        threat_id = "2147849617"
        type = "TrojanDownloader"
        platform = "MSIL: .NET intermediate language scripts"
        family = "Heracles"
        severity = "Critical"
        info = "MTB: Microsoft Threat Behavior"
        signature_type = "SIGNATURE_TYPE_PEHSTR_EXT"
        threshold = "1"
        strings_accuracy = "High"
    strings:
        $x_1_1 = {68 00 74 00 74 00 70 00 73 00 3a 00 2f 00 2f 00 63 00 72 00 79 00 70 00 74 00 31 00 2e 00 70 00 77}  //weight: 1, accuracy: High
    condition:
        (filesize < 20MB) and
        (all of ($x*))
}

rule TrojanDownloader_MSIL_Heracles_CXF_2147851251_0
{
    meta:
        author = "defender2yara"
        detection_name = "TrojanDownloader:MSIL/Heracles.CXF!MTB"
        threat_id = "2147851251"
        type = "TrojanDownloader"
        platform = "MSIL: .NET intermediate language scripts"
        family = "Heracles"
        severity = "Critical"
        info = "MTB: Microsoft Threat Behavior"
        signature_type = "SIGNATURE_TYPE_PEHSTR_EXT"
        threshold = "1"
        strings_accuracy = "High"
    strings:
        $x_1_1 = {28 0b 00 00 0a 25 18 6f 0c 00 00 0a 25 18 6f 0d 00 00 0a 25 02 6f 0e 00 00 0a 2a}  //weight: 1, accuracy: High
    condition:
        (filesize < 20MB) and
        (all of ($x*))
}

rule TrojanDownloader_MSIL_Heracles_VK_2147852422_0
{
    meta:
        author = "defender2yara"
        detection_name = "TrojanDownloader:MSIL/Heracles.VK!MTB"
        threat_id = "2147852422"
        type = "TrojanDownloader"
        platform = "MSIL: .NET intermediate language scripts"
        family = "Heracles"
        severity = "Critical"
        info = "MTB: Microsoft Threat Behavior"
        signature_type = "SIGNATURE_TYPE_PEHSTR_EXT"
        threshold = "2"
        strings_accuracy = "High"
    strings:
        $x_2_1 = {08 8d 17 00 00 01 13 04 09 11 04 16 08 6f 13 00 00 0a 26 11 04 28 01 00 00 2b 28 02 00 00 2b 13 05 de 14}  //weight: 2, accuracy: High
    condition:
        (filesize < 20MB) and
        (all of ($x*))
}

rule TrojanDownloader_MSIL_Heracles_VM_2147891703_0
{
    meta:
        author = "defender2yara"
        detection_name = "TrojanDownloader:MSIL/Heracles.VM!MTB"
        threat_id = "2147891703"
        type = "TrojanDownloader"
        platform = "MSIL: .NET intermediate language scripts"
        family = "Heracles"
        severity = "Critical"
        info = "MTB: Microsoft Threat Behavior"
        signature_type = "SIGNATURE_TYPE_PEHSTR_EXT"
        threshold = "2"
        strings_accuracy = "Low"
    strings:
        $x_2_1 = {11 09 11 04 5d 13 0a 11 09 11 05 5d 13 0b 08 11 0a 91 13 0c 09 11 0b 6f ?? ?? ?? 0a 13 0d 08 11 09 17 58 11 04 5d 91 13 0e 11 0c 11 0d 61 11 0e 59 20 00 01 00 00 58 13 0f 08 11 0a 11 0f 20 00 01 00 00 5d d2 9c 11 09 17 59 13 09 11 09 16 2f af}  //weight: 2, accuracy: Low
    condition:
        (filesize < 20MB) and
        (all of ($x*))
}

rule TrojanDownloader_MSIL_Heracles_VL_2147892532_0
{
    meta:
        author = "defender2yara"
        detection_name = "TrojanDownloader:MSIL/Heracles.VL!MTB"
        threat_id = "2147892532"
        type = "TrojanDownloader"
        platform = "MSIL: .NET intermediate language scripts"
        family = "Heracles"
        severity = "Critical"
        info = "MTB: Microsoft Threat Behavior"
        signature_type = "SIGNATURE_TYPE_PEHSTR_EXT"
        threshold = "2"
        strings_accuracy = "Low"
    strings:
        $x_2_1 = {07 09 07 8e 69 5d 91 08 09 08 6f ?? ?? ?? 0a 5d 6f ?? ?? ?? 0a 61 07 09 17 58 07 8e 69 5d 91 59 20 00 01 00 00 58 13 07 07 09 07 8e 69 5d 11 07 20 00 01 00 00 5d d2 9c 09 15 58 0d 09 16 fe 04 16 fe 01 13 08 11 08 2d b7}  //weight: 2, accuracy: Low
    condition:
        (filesize < 20MB) and
        (all of ($x*))
}

rule TrojanDownloader_MSIL_Heracles_CCEB_2147896586_0
{
    meta:
        author = "defender2yara"
        detection_name = "TrojanDownloader:MSIL/Heracles.CCEB!MTB"
        threat_id = "2147896586"
        type = "TrojanDownloader"
        platform = "MSIL: .NET intermediate language scripts"
        family = "Heracles"
        severity = "Critical"
        info = "MTB: Microsoft Threat Behavior"
        signature_type = "SIGNATURE_TYPE_PEHSTR_EXT"
        threshold = "13"
        strings_accuracy = "High"
    strings:
        $x_1_1 = "SELECT * FROM Win32_VideoController" wide //weight: 1
        $x_1_2 = "VMware" wide //weight: 1
        $x_1_3 = "/C taskkill /IM svchost.exe /F" wide //weight: 1
        $x_1_4 = "c:\\Users\\John\\Downloads" wide //weight: 1
        $x_1_5 = "Password" wide //weight: 1
        $x_1_6 = "ida64" wide //weight: 1
        $x_1_7 = "x64dbg" wide //weight: 1
        $x_1_8 = "x32dbg" wide //weight: 1
        $x_1_9 = "OLLYDBG" wide //weight: 1
        $x_1_10 = "WinDbg" wide //weight: 1
        $x_1_11 = "dnSpy\\dnSpy.xml" wide //weight: 1
        $x_1_12 = "Possible malicious activity detected! MalChk3 R1" wide //weight: 1
        $x_1_13 = "Windows\\System32\\drivers\\etc\\hosts" wide //weight: 1
    condition:
        (filesize < 20MB) and
        (all of ($x*))
}

rule TrojanDownloader_MSIL_Heracles_VO_2147897433_0
{
    meta:
        author = "defender2yara"
        detection_name = "TrojanDownloader:MSIL/Heracles.VO!MTB"
        threat_id = "2147897433"
        type = "TrojanDownloader"
        platform = "MSIL: .NET intermediate language scripts"
        family = "Heracles"
        severity = "Critical"
        info = "MTB: Microsoft Threat Behavior"
        signature_type = "SIGNATURE_TYPE_PEHSTR_EXT"
        threshold = "4"
        strings_accuracy = "Low"
    strings:
        $x_2_1 = {16 0c 07 6f ?? ?? ?? 0a 69 0d 09 8d 2a 00 00 01 0a 38 15 00 00 00 07 06 08 09 6f ?? ?? ?? 0a 13 04 08 11 04 58 0c 09 11 04 59 0d 09 16 3d e4 ff ff ff dd 0d 00 00 00}  //weight: 2, accuracy: Low
        $x_2_2 = "NEXUS.exe" ascii //weight: 2
    condition:
        (filesize < 20MB) and
        (all of ($x*))
}

rule TrojanDownloader_MSIL_Heracles_VP_2147901223_0
{
    meta:
        author = "defender2yara"
        detection_name = "TrojanDownloader:MSIL/Heracles.VP!MTB"
        threat_id = "2147901223"
        type = "TrojanDownloader"
        platform = "MSIL: .NET intermediate language scripts"
        family = "Heracles"
        severity = "Critical"
        info = "MTB: Microsoft Threat Behavior"
        signature_type = "SIGNATURE_TYPE_PEHSTR_EXT"
        threshold = "4"
        strings_accuracy = "High"
    strings:
        $x_2_1 = "Trademark - Lime" ascii //weight: 2
        $x_2_2 = "$LimeUSB\\LimeUSB.exe" ascii //weight: 2
    condition:
        (filesize < 20MB) and
        (all of ($x*))
}

rule TrojanDownloader_MSIL_Heracles_VQ_2147902567_0
{
    meta:
        author = "defender2yara"
        detection_name = "TrojanDownloader:MSIL/Heracles.VQ!MTB"
        threat_id = "2147902567"
        type = "TrojanDownloader"
        platform = "MSIL: .NET intermediate language scripts"
        family = "Heracles"
        severity = "Critical"
        info = "MTB: Microsoft Threat Behavior"
        signature_type = "SIGNATURE_TYPE_PEHSTR_EXT"
        threshold = "2"
        strings_accuracy = "High"
    strings:
        $x_2_1 = {06 08 5d 0d 07 09 91 11 05 06 1f 16 5d 91 61 13 09 11 09 07 06 17 58 08 5d 91 59 20 00 01 00 00 58 20 00 01 00 00 5d 13 0a 07 09 11 0a d2 9c 06 17 58 0a 06 08 11 06 17 58 5a fe 04 13 0b 11 0b 2d be}  //weight: 2, accuracy: High
    condition:
        (filesize < 20MB) and
        (all of ($x*))
}

rule TrojanDownloader_MSIL_Heracles_VS_2147915518_0
{
    meta:
        author = "defender2yara"
        detection_name = "TrojanDownloader:MSIL/Heracles.VS!MTB"
        threat_id = "2147915518"
        type = "TrojanDownloader"
        platform = "MSIL: .NET intermediate language scripts"
        family = "Heracles"
        severity = "Critical"
        info = "MTB: Microsoft Threat Behavior"
        signature_type = "SIGNATURE_TYPE_PEHSTR_EXT"
        threshold = "4"
        strings_accuracy = "High"
    strings:
        $x_2_1 = {07 91 02 07 02 8e 69 5d 91 61 d2 9c 00 07 17 58 0b}  //weight: 2, accuracy: High
        $x_2_2 = "$aad35a1c-f41e-4829-af28-9388073c34f6" ascii //weight: 2
    condition:
        (filesize < 20MB) and
        (all of ($x*))
}

rule TrojanDownloader_MSIL_Heracles_VT_2147917677_0
{
    meta:
        author = "defender2yara"
        detection_name = "TrojanDownloader:MSIL/Heracles.VT!MTB"
        threat_id = "2147917677"
        type = "TrojanDownloader"
        platform = "MSIL: .NET intermediate language scripts"
        family = "Heracles"
        severity = "Critical"
        info = "MTB: Microsoft Threat Behavior"
        signature_type = "SIGNATURE_TYPE_PEHSTR_EXT"
        threshold = "5"
        strings_accuracy = "High"
    strings:
        $x_2_1 = "KutuphaneOtomasyonu.Properties" ascii //weight: 2
        $x_2_2 = "$09c26a9f-2d05-4a65-8ac1-a01ebdd7d012" ascii //weight: 2
        $x_1_3 = "tempuri.org/DataSetAAAAAAAAA.xsd" ascii //weight: 1
    condition:
        (filesize < 20MB) and
        (all of ($x*))
}

rule TrojanDownloader_MSIL_Heracles_VU_2147917685_0
{
    meta:
        author = "defender2yara"
        detection_name = "TrojanDownloader:MSIL/Heracles.VU!MTB"
        threat_id = "2147917685"
        type = "TrojanDownloader"
        platform = "MSIL: .NET intermediate language scripts"
        family = "Heracles"
        severity = "Critical"
        info = "MTB: Microsoft Threat Behavior"
        signature_type = "SIGNATURE_TYPE_PEHSTR_EXT"
        threshold = "2"
        strings_accuracy = "High"
    strings:
        $x_2_1 = {07 06 06 9e 06 17 58 0a 06 20 ff 00 00 00 fe 03 16 fe 01 13 0d 11 0d 2d e7}  //weight: 2, accuracy: High
    condition:
        (filesize < 20MB) and
        (all of ($x*))
}

rule TrojanDownloader_MSIL_Heracles_SI_2147917731_0
{
    meta:
        author = "defender2yara"
        detection_name = "TrojanDownloader:MSIL/Heracles.SI!MTB"
        threat_id = "2147917731"
        type = "TrojanDownloader"
        platform = "MSIL: .NET intermediate language scripts"
        family = "Heracles"
        severity = "Critical"
        info = "MTB: Microsoft Threat Behavior"
        signature_type = "SIGNATURE_TYPE_PEHSTR_EXT"
        threshold = "5"
        strings_accuracy = "Low"
    strings:
        $x_5_1 = {72 b8 02 00 70 11 0a 6f ?? ?? ?? 0a 72 c4 02 00 70 11 05 6f ca 00 00 0a 72 d6 02 00 70 11 06 6f ?? ?? ?? 0a 13 0c 11 0c 72 ea 02 00 70 28 ?? ?? ?? 0a 11 07 6f 19 00 00 0a 28 c9 00 00 0a}  //weight: 5, accuracy: Low
    condition:
        (filesize < 20MB) and
        (all of ($x*))
}

