rule Trojan_Win32_Tepfer_RJ_2147775937_0
{
    meta:
        author = "defender2yara"
        detection_name = "Trojan:Win32/Tepfer.RJ!MTB"
        threat_id = "2147775937"
        type = "Trojan"
        platform = "Win32: Windows 32-bit platform"
        family = "Tepfer"
        severity = "Critical"
        info = "MTB: Microsoft Threat Behavior"
        signature_type = "SIGNATURE_TYPE_PEHSTR_EXT"
        threshold = "2"
        strings_accuracy = "Low"
    strings:
        $x_2_1 = {c1 e8 05 c7 05 ?? ?? ?? ?? 84 10 d6 cb c7 05 ?? ?? ?? ?? ff ff ff ff 89 44 24 ?? 8b 84 24 ?? ?? ?? ?? 01 44 24 ?? 8b 4c 24 ?? 33 cb 33 ce}  //weight: 2, accuracy: Low
    condition:
        (filesize < 20MB) and
        (all of ($x*))
}

rule Trojan_Win32_Tepfer_RB_2147836465_0
{
    meta:
        author = "defender2yara"
        detection_name = "Trojan:Win32/Tepfer.RB!MTB"
        threat_id = "2147836465"
        type = "Trojan"
        platform = "Win32: Windows 32-bit platform"
        family = "Tepfer"
        severity = "Critical"
        info = "MTB: Microsoft Threat Behavior"
        signature_type = "SIGNATURE_TYPE_PEHSTR_EXT"
        threshold = "2"
        strings_accuracy = "High"
    strings:
        $x_1_1 = {64 a1 2c 00 00 00 c7 45 dc 7b 7d 6b 7c c7 45 e0 7e 7c 61 68 c7 45 e4 67 62 6b 2e 8b 38}  //weight: 1, accuracy: High
        $x_1_2 = {c7 45 e0 6d 6d 42 4b c7 45 e4 4f 40 4b 5c c6 45 bf 2e}  //weight: 1, accuracy: High
    condition:
        (filesize < 20MB) and
        (all of ($x*))
}

rule Trojan_Win32_Tepfer_PAB_2147845160_0
{
    meta:
        author = "defender2yara"
        detection_name = "Trojan:Win32/Tepfer.PAB!MTB"
        threat_id = "2147845160"
        type = "Trojan"
        platform = "Win32: Windows 32-bit platform"
        family = "Tepfer"
        severity = "Critical"
        info = "MTB: Microsoft Threat Behavior"
        signature_type = "SIGNATURE_TYPE_PEHSTR_EXT"
        threshold = "1"
        strings_accuracy = "Low"
    strings:
        $x_1_1 = {03 4c 24 20 89 4c 24 10 8d 0c 07 c1 e8 05 89 44 24 14 8b 44 24 24 01 44 24 14 8b 44 24 10 33 c1 31 44 24 14 81 3d ?? ?? ?? ?? ?? ?? ?? ?? 89 44 24 10 89 1d cc 22 7f 00 75}  //weight: 1, accuracy: Low
    condition:
        (filesize < 20MB) and
        (all of ($x*))
}

rule Trojan_Win32_Tepfer_NT_2147901181_0
{
    meta:
        author = "defender2yara"
        detection_name = "Trojan:Win32/Tepfer.NT!MTB"
        threat_id = "2147901181"
        type = "Trojan"
        platform = "Win32: Windows 32-bit platform"
        family = "Tepfer"
        severity = "Critical"
        info = "MTB: Microsoft Threat Behavior"
        signature_type = "SIGNATURE_TYPE_PEHSTR_EXT"
        threshold = "6"
        strings_accuracy = "Low"
    strings:
        $x_5_1 = {88 5d e7 ff 75 ?? e8 1d fe ff ff 59 e8 0d 07 00 00 8b f0 33 ff 39 3e 74 1b 56 e8 75 fd ff ff 59 84 c0}  //weight: 5, accuracy: Low
        $x_1_2 = "AppPolicyGetProcessTerminationMethod" ascii //weight: 1
    condition:
        (filesize < 20MB) and
        (all of ($x*))
}

rule Trojan_Win32_Tepfer_SPDB_2147907967_0
{
    meta:
        author = "defender2yara"
        detection_name = "Trojan:Win32/Tepfer.SPDB!MTB"
        threat_id = "2147907967"
        type = "Trojan"
        platform = "Win32: Windows 32-bit platform"
        family = "Tepfer"
        severity = "Critical"
        info = "MTB: Microsoft Threat Behavior"
        signature_type = "SIGNATURE_TYPE_PEHSTR_EXT"
        threshold = "5"
        strings_accuracy = "Low"
    strings:
        $x_5_1 = {69 c9 fd 43 03 00 81 c1 c3 9e 26 00 89 0d ?? ?? ?? ?? 8a 15 ?? ?? ?? ?? 30 14 33 83 ff 0f 75}  //weight: 5, accuracy: Low
    condition:
        (filesize < 20MB) and
        (all of ($x*))
}

rule Trojan_Win32_Tepfer_FK_2147911072_0
{
    meta:
        author = "defender2yara"
        detection_name = "Trojan:Win32/Tepfer.FK!MTB"
        threat_id = "2147911072"
        type = "Trojan"
        platform = "Win32: Windows 32-bit platform"
        family = "Tepfer"
        severity = "Critical"
        info = "MTB: Microsoft Threat Behavior"
        signature_type = "SIGNATURE_TYPE_PEHSTR_EXT"
        threshold = "5"
        strings_accuracy = "Low"
    strings:
        $x_5_1 = {83 c4 04 8b 85 ?? ?? ff ff 83 c0 64 89 85 ?? ?? ff ff 83 ad ?? ?? ff ff 64 8a 95 ?? ?? ff ff 8b 85 ?? ?? ff ff 30 14 30 83 7d ?? 0f 75}  //weight: 5, accuracy: Low
    condition:
        (filesize < 20MB) and
        (all of ($x*))
}

rule Trojan_Win32_Tepfer_SPPB_2147913143_0
{
    meta:
        author = "defender2yara"
        detection_name = "Trojan:Win32/Tepfer.SPPB!MTB"
        threat_id = "2147913143"
        type = "Trojan"
        platform = "Win32: Windows 32-bit platform"
        family = "Tepfer"
        severity = "Critical"
        info = "MTB: Microsoft Threat Behavior"
        signature_type = "SIGNATURE_TYPE_PEHSTR_EXT"
        threshold = "1"
        strings_accuracy = "Low"
    strings:
        $x_1_1 = {03 c7 33 c2 33 45 74 c7 05 ?? ?? ?? ?? ee 3d ea f4 2b c8 89 45 70 8b c1 c1 e0 04 89 45 74 8b 85 ?? ?? ?? ?? 01 45 74 8b c1 c1 e8 05 89 45 70 8b 85 ?? ?? ?? ?? 01 45 70 8d 04 0e 33 45 70 31 45 74 8b 45 74 29 45 6c}  //weight: 1, accuracy: Low
    condition:
        (filesize < 20MB) and
        (all of ($x*))
}

rule Trojan_Win32_Tepfer_GNN_2147919098_0
{
    meta:
        author = "defender2yara"
        detection_name = "Trojan:Win32/Tepfer.GNN!MTB"
        threat_id = "2147919098"
        type = "Trojan"
        platform = "Win32: Windows 32-bit platform"
        family = "Tepfer"
        severity = "Critical"
        info = "MTB: Microsoft Threat Behavior"
        signature_type = "SIGNATURE_TYPE_PEHSTR_EXT"
        threshold = "10"
        strings_accuracy = "High"
    strings:
        $x_10_1 = {8b 45 08 8a 4d fc 03 c7 30 08 47 3b 7d 0c}  //weight: 10, accuracy: High
    condition:
        (filesize < 20MB) and
        (all of ($x*))
}

