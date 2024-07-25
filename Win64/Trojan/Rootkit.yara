rule Trojan_Win64_Rootkit_ARA_2147910200_0
{
    meta:
        author = "defender2yara"
        detection_name = "Trojan:Win64/Rootkit.ARA!MTB"
        threat_id = "2147910200"
        type = "Trojan"
        platform = "Win64: Windows 64-bit platform"
        family = "Rootkit"
        severity = "Critical"
        info = "MTB: Microsoft Threat Behavior"
        signature_type = "SIGNATURE_TYPE_PEHSTR_EXT"
        threshold = "2"
        strings_accuracy = "High"
    strings:
        $x_2_1 = ":\\Users\\Baat\\Desktop\\GPT 1.6\\x64\\Release\\RWSafe.pdb" ascii //weight: 2
    condition:
        (filesize < 20MB) and
        (all of ($x*))
}

rule Trojan_Win64_Rootkit_OJAA_2147915225_0
{
    meta:
        author = "defender2yara"
        detection_name = "Trojan:Win64/Rootkit.OJAA!MTB"
        threat_id = "2147915225"
        type = "Trojan"
        platform = "Win64: Windows 64-bit platform"
        family = "Rootkit"
        severity = "Critical"
        info = "MTB: Microsoft Threat Behavior"
        signature_type = "SIGNATURE_TYPE_PEHSTR_EXT"
        threshold = "5"
        strings_accuracy = "High"
    strings:
        $x_4_1 = {41 0f b7 c2 48 8d 0c 80 41 8b 54 c9 2c 45 8b 44 c9 28 48 03 d3 41 8b 4c c9 24 48 03 ce e8 70 e3 ff ff 66 45 03 d4 66 44 3b 57 06 72}  //weight: 4, accuracy: High
        $x_1_2 = "ReflectiveDllMain" ascii //weight: 1
    condition:
        (filesize < 20MB) and
        (all of ($x*))
}

rule Trojan_Win64_Rootkit_MBXH_2147915634_0
{
    meta:
        author = "defender2yara"
        detection_name = "Trojan:Win64/Rootkit.MBXH!MTB"
        threat_id = "2147915634"
        type = "Trojan"
        platform = "Win64: Windows 64-bit platform"
        family = "Rootkit"
        severity = "Critical"
        info = "MTB: Microsoft Threat Behavior"
        signature_type = "SIGNATURE_TYPE_PEHSTR_EXT"
        threshold = "1"
        strings_accuracy = "High"
    strings:
        $x_1_1 = {0f 85 94 4a 02 00 41 89 49 08 49 f7 c1 06 61 e3 46 45 89 51 04 44 3a dc 41 80 f8 09 e9 23 34 17 00 c1 63 6b 6f 1d 89 b1 df 27 c5 4b}  //weight: 1, accuracy: High
    condition:
        (filesize < 20MB) and
        (all of ($x*))
}

