rule Trojan_Win32_ObfusCrypt_SK_2147755737_0
{
    meta:
        author = "defender2yara"
        detection_name = "Trojan:Win32/ObfusCrypt.SK!MTB"
        threat_id = "2147755737"
        type = "Trojan"
        platform = "Win32: Windows 32-bit platform"
        family = "ObfusCrypt"
        severity = "Critical"
        info = "MTB: Microsoft Threat Behavior"
        signature_type = "SIGNATURE_TYPE_PEHSTR_EXT"
        threshold = "2"
        strings_accuracy = "Low"
    strings:
        $x_1_1 = {83 fe 01 0f 8d [0-224] c7 84 24 ?? ?? ?? ?? ?? ?? ?? ?? c7 84 24 ?? ?? ?? ?? ?? ?? ?? ?? c7 84 24 ?? ?? ?? ?? ?? ?? ?? ?? c7 84 24 ?? ?? ?? ?? ?? ?? ?? ?? c7 84 24 ?? ?? ?? ?? ?? ?? ?? ?? c7 84 24 ?? ?? ?? ?? ?? ?? ?? ?? c7 84 24 ?? ?? ?? ?? ?? ?? ?? ?? c7 84 24 ?? ?? ?? ?? ?? ?? ?? ?? c7 84 24 ?? ?? ?? ?? ?? ?? ?? ?? c7 84 24 ?? ?? ?? ?? ?? ?? ?? ?? c7 84 24 ?? ?? ?? ?? ?? ?? ?? ?? c7 84 24 ?? ?? ?? ?? ?? ?? ?? ?? c7 84 24 ?? ?? ?? ?? ?? ?? ?? ?? c7 84 24}  //weight: 1, accuracy: Low
        $x_1_2 = {83 fe 01 0f 8d 00 09 81 84 24 ?? ?? ?? ?? ?? ?? ?? ?? 81 ac 24 ?? ?? ?? ?? ?? ?? ?? ?? 81 ac 24 ?? ?? ?? ?? ?? ?? ?? ?? 81 84 24 ?? ?? ?? ?? ?? ?? ?? ?? 81 84 24 ?? ?? ?? ?? ?? ?? ?? ?? 81 ac 24 ?? ?? ?? ?? ?? ?? ?? ?? 81 84 24 ?? ?? ?? ?? ?? ?? ?? ?? 81 ac 24 ?? ?? ?? ?? ?? ?? ?? ?? 81 ac 24 ?? ?? ?? ?? ?? ?? ?? ?? 81 84 24 ?? ?? ?? ?? ?? ?? ?? ?? 81 84 24 ?? ?? ?? ?? ?? ?? ?? ?? 81 ac 24 ?? ?? ?? ?? ?? ?? ?? ?? 81 84 24 ?? ?? ?? ?? ?? ?? ?? ?? 81 ac 24 ?? ?? ?? ?? ?? ?? ?? ?? 81 ac 24}  //weight: 1, accuracy: Low
    condition:
        (filesize < 20MB) and
        (all of ($x*))
}

