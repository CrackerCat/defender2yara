rule TrojanDownloader_Win64_DCRat_A_2147845487_0
{
    meta:
        author = "defender2yara"
        detection_name = "TrojanDownloader:Win64/DCRat.A!MTB"
        threat_id = "2147845487"
        type = "TrojanDownloader"
        platform = "Win64: Windows 64-bit platform"
        family = "DCRat"
        severity = "Critical"
        info = "MTB: Microsoft Threat Behavior"
        signature_type = "SIGNATURE_TYPE_PEHSTR_EXT"
        threshold = "8"
        strings_accuracy = "High"
    strings:
        $x_2_1 = "C:\\Users\\%s\\AppData\\Roaming\\Microsoft\\Windows\\Start Menu\\Programs\\Startup\\Windows_Defender_Advanced_Threat_Protection" wide //weight: 2
        $x_2_2 = "C:\\Program Files\\Windows NT\\TableTextService" wide //weight: 2
        $x_2_3 = "SOFTWARE\\Microsoft\\Windows\\CurrentVersion\\Run" wide //weight: 2
        $x_2_4 = "://free1459.host.od.ua/" wide //weight: 2
    condition:
        (filesize < 20MB) and
        (all of ($x*))
}

rule TrojanDownloader_Win64_DCRat_C_2147847844_0
{
    meta:
        author = "defender2yara"
        detection_name = "TrojanDownloader:Win64/DCRat.C!MTB"
        threat_id = "2147847844"
        type = "TrojanDownloader"
        platform = "Win64: Windows 64-bit platform"
        family = "DCRat"
        severity = "Critical"
        info = "MTB: Microsoft Threat Behavior"
        signature_type = "SIGNATURE_TYPE_PEHSTR_EXT"
        threshold = "2"
        strings_accuracy = "Low"
    strings:
        $x_2_1 = {48 33 c4 48 89 45 f0 48 8d 15 ?? ?? 00 00 33 c9 ff 15 ?? 1f 00 00 48 8d 0d ?? 21 00 00 ff 15 ?? ?? 00 00 4c 8b f0}  //weight: 2, accuracy: Low
    condition:
        (filesize < 20MB) and
        (all of ($x*))
}

rule TrojanDownloader_Win64_DCRat_D_2147896976_0
{
    meta:
        author = "defender2yara"
        detection_name = "TrojanDownloader:Win64/DCRat.D!MTB"
        threat_id = "2147896976"
        type = "TrojanDownloader"
        platform = "Win64: Windows 64-bit platform"
        family = "DCRat"
        severity = "Critical"
        info = "MTB: Microsoft Threat Behavior"
        signature_type = "SIGNATURE_TYPE_PEHSTR_EXT"
        threshold = "6"
        strings_accuracy = "High"
    strings:
        $x_2_1 = "://yaysem.ru.swtest.ru/fa.exe" wide //weight: 2
        $x_2_2 = "test.exe" wide //weight: 2
        $x_2_3 = "open" wide //weight: 2
    condition:
        (filesize < 20MB) and
        (all of ($x*))
}

