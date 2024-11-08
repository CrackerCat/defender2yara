rule Trojan_Win64_MeduzaStealer_CCAF_2147889344_0
{
    meta:
        author = "defender2yara"
        detection_name = "Trojan:Win64/MeduzaStealer.CCAF!MTB"
        threat_id = "2147889344"
        type = "Trojan"
        platform = "Win64: Windows 64-bit platform"
        family = "MeduzaStealer"
        severity = "Critical"
        info = "MTB: Microsoft Threat Behavior"
        signature_type = "SIGNATURE_TYPE_PEHSTR_EXT"
        threshold = "2"
        strings_accuracy = "Low"
    strings:
        $x_1_1 = {f7 e3 d1 ea 8d 0c 52 3b d9 48 8d 15 ?? ?? ?? ?? 48 8b cf 74}  //weight: 1, accuracy: Low
        $x_1_2 = "MeduZZZa" ascii //weight: 1
    condition:
        (filesize < 20MB) and
        (all of ($x*))
}

rule Trojan_Win64_MeduzaStealer_MKV_2147923335_0
{
    meta:
        author = "defender2yara"
        detection_name = "Trojan:Win64/MeduzaStealer.MKV!MTB"
        threat_id = "2147923335"
        type = "Trojan"
        platform = "Win64: Windows 64-bit platform"
        family = "MeduzaStealer"
        severity = "Critical"
        info = "MTB: Microsoft Threat Behavior"
        signature_type = "SIGNATURE_TYPE_PEHSTR_EXT"
        threshold = "5"
        strings_accuracy = "Low"
    strings:
        $x_5_1 = {49 8b c7 48 89 45 f0 0f b6 44 05 b0 41 30 04 1e 48 8b 45 f0 48 ff c0 48 89 45 ?? 48 8b c8 48 ff c3 48 3b df 72}  //weight: 5, accuracy: Low
    condition:
        (filesize < 20MB) and
        (all of ($x*))
}

rule Trojan_Win64_MeduzaStealer_MRJ_2147923399_0
{
    meta:
        author = "defender2yara"
        detection_name = "Trojan:Win64/MeduzaStealer.MRJ!MTB"
        threat_id = "2147923399"
        type = "Trojan"
        platform = "Win64: Windows 64-bit platform"
        family = "MeduzaStealer"
        severity = "Critical"
        info = "MTB: Microsoft Threat Behavior"
        signature_type = "SIGNATURE_TYPE_PEHSTR_EXT"
        threshold = "5"
        strings_accuracy = "Low"
    strings:
        $x_5_1 = {48 89 c8 31 d2 49 f7 f0 48 8b 44 24 ?? 0f b6 04 10 30 04 0b 48 83 c1 01 48 8b 1e 48 8b 46 ?? 48 29 d8 48 39 c1 72}  //weight: 5, accuracy: Low
    condition:
        (filesize < 20MB) and
        (all of ($x*))
}

rule Trojan_Win64_MeduzaStealer_MRY_2147923432_0
{
    meta:
        author = "defender2yara"
        detection_name = "Trojan:Win64/MeduzaStealer.MRY!MTB"
        threat_id = "2147923432"
        type = "Trojan"
        platform = "Win64: Windows 64-bit platform"
        family = "MeduzaStealer"
        severity = "Critical"
        info = "MTB: Microsoft Threat Behavior"
        signature_type = "SIGNATURE_TYPE_PEHSTR_EXT"
        threshold = "5"
        strings_accuracy = "Low"
    strings:
        $x_5_1 = {33 d2 48 89 55 50 0f b6 44 15 ?? 30 03 48 8b 55 50 48 ff c2 48 89 55 ?? 48 8b c2 48 ff c3 48 83 ef 01 75}  //weight: 5, accuracy: Low
    condition:
        (filesize < 20MB) and
        (all of ($x*))
}

rule Trojan_Win64_MeduzaStealer_SIN_2147923613_0
{
    meta:
        author = "defender2yara"
        detection_name = "Trojan:Win64/MeduzaStealer.SIN!MTB"
        threat_id = "2147923613"
        type = "Trojan"
        platform = "Win64: Windows 64-bit platform"
        family = "MeduzaStealer"
        severity = "Critical"
        info = "MTB: Microsoft Threat Behavior"
        signature_type = "SIGNATURE_TYPE_PEHSTR_EXT"
        threshold = "5"
        strings_accuracy = "Low"
    strings:
        $x_5_1 = {48 89 c8 49 f7 e0 48 c1 ea 03 48 8d 04 92 48 89 ca 48 01 c0 48 29 c2 0f b6 84 14 ?? ?? ?? ?? 30 04 0b 48 83 c1 01 48 81 f9 00 1a 13 00 75}  //weight: 5, accuracy: Low
    condition:
        (filesize < 20MB) and
        (all of ($x*))
}

rule Trojan_Win64_MeduzaStealer_AIN_2147923696_0
{
    meta:
        author = "defender2yara"
        detection_name = "Trojan:Win64/MeduzaStealer.AIN!MTB"
        threat_id = "2147923696"
        type = "Trojan"
        platform = "Win64: Windows 64-bit platform"
        family = "MeduzaStealer"
        severity = "Critical"
        info = "MTB: Microsoft Threat Behavior"
        signature_type = "SIGNATURE_TYPE_PEHSTR_EXT"
        threshold = "5"
        strings_accuracy = "Low"
    strings:
        $x_5_1 = {4c 89 c0 31 d2 49 f7 f2 49 8b 03 0f b6 04 10 43 30 04 01 49 83 c0 01 4c 8b 09 48 8b 41 ?? 4c 29 c8 49 39 c0 72}  //weight: 5, accuracy: Low
    condition:
        (filesize < 20MB) and
        (all of ($x*))
}

rule Trojan_Win64_MeduzaStealer_AAZ_2147924028_0
{
    meta:
        author = "defender2yara"
        detection_name = "Trojan:Win64/MeduzaStealer.AAZ!MTB"
        threat_id = "2147924028"
        type = "Trojan"
        platform = "Win64: Windows 64-bit platform"
        family = "MeduzaStealer"
        severity = "Critical"
        info = "MTB: Microsoft Threat Behavior"
        signature_type = "SIGNATURE_TYPE_PEHSTR_EXT"
        threshold = "5"
        strings_accuracy = "Low"
    strings:
        $x_5_1 = {f7 eb c1 fa 04 8b c2 c1 e8 ?? 03 d0 0f be c2 6b c8 32 0f b6 c3 ff c3 2a c1 04 33 41 30 40 ff 83 fb 0d 7c}  //weight: 5, accuracy: Low
    condition:
        (filesize < 20MB) and
        (all of ($x*))
}

rule Trojan_Win64_MeduzaStealer_ZGT_2147924131_0
{
    meta:
        author = "defender2yara"
        detection_name = "Trojan:Win64/MeduzaStealer.ZGT!MTB"
        threat_id = "2147924131"
        type = "Trojan"
        platform = "Win64: Windows 64-bit platform"
        family = "MeduzaStealer"
        severity = "Critical"
        info = "MTB: Microsoft Threat Behavior"
        signature_type = "SIGNATURE_TYPE_PEHSTR_EXT"
        threshold = "5"
        strings_accuracy = "Low"
    strings:
        $x_5_1 = {49 8b c7 48 89 45 f0 0f b6 44 05 ?? 42 30 04 33 48 8b 45 ?? 48 ff c0 48 89 45 f0 48 8b c8 48 ff c3 48 3b df 72}  //weight: 5, accuracy: Low
    condition:
        (filesize < 20MB) and
        (all of ($x*))
}

rule Trojan_Win64_MeduzaStealer_IKV_2147924759_0
{
    meta:
        author = "defender2yara"
        detection_name = "Trojan:Win64/MeduzaStealer.IKV!MTB"
        threat_id = "2147924759"
        type = "Trojan"
        platform = "Win64: Windows 64-bit platform"
        family = "MeduzaStealer"
        severity = "Critical"
        info = "MTB: Microsoft Threat Behavior"
        signature_type = "SIGNATURE_TYPE_PEHSTR_EXT"
        threshold = "5"
        strings_accuracy = "High"
    strings:
        $x_5_1 = {8b c2 c1 e8 1f 03 d0 0f be c2 6b c8 35 0f b6 c3 ff c3 2a c1 04 31 41 30 40 ff 83 fb 1a 7c d3}  //weight: 5, accuracy: High
    condition:
        (filesize < 20MB) and
        (all of ($x*))
}

rule Trojan_Win64_MeduzaStealer_MJL_2147925064_0
{
    meta:
        author = "defender2yara"
        detection_name = "Trojan:Win64/MeduzaStealer.MJL!MTB"
        threat_id = "2147925064"
        type = "Trojan"
        platform = "Win64: Windows 64-bit platform"
        family = "MeduzaStealer"
        severity = "Critical"
        info = "MTB: Microsoft Threat Behavior"
        signature_type = "SIGNATURE_TYPE_PEHSTR_EXT"
        threshold = "5"
        strings_accuracy = "Low"
    strings:
        $x_5_1 = {8b c6 41 f7 e0 c1 ea ?? 0f be c2 6b c8 32 41 8a c0 44 03 c7 2a c1 04 34 41 30 01 4c 03 cf 41 83 f8 08 7c}  //weight: 5, accuracy: Low
    condition:
        (filesize < 20MB) and
        (all of ($x*))
}

rule Trojan_Win64_MeduzaStealer_WND_2147925294_0
{
    meta:
        author = "defender2yara"
        detection_name = "Trojan:Win64/MeduzaStealer.WND!MTB"
        threat_id = "2147925294"
        type = "Trojan"
        platform = "Win64: Windows 64-bit platform"
        family = "MeduzaStealer"
        severity = "Critical"
        info = "MTB: Microsoft Threat Behavior"
        signature_type = "SIGNATURE_TYPE_PEHSTR_EXT"
        threshold = "5"
        strings_accuracy = "High"
    strings:
        $x_5_1 = {41 f7 e0 c1 ea 04 0f be c2 6b c8 31 41 8a c0 2a c1 41 02 c7 41 30 01 41 ff c0 49 ff c1 41 83 f8 04 7c da}  //weight: 5, accuracy: High
    condition:
        (filesize < 20MB) and
        (all of ($x*))
}

rule Trojan_Win64_MeduzaStealer_ASCA_2147925745_0
{
    meta:
        author = "defender2yara"
        detection_name = "Trojan:Win64/MeduzaStealer.ASCA!MTB"
        threat_id = "2147925745"
        type = "Trojan"
        platform = "Win64: Windows 64-bit platform"
        family = "MeduzaStealer"
        severity = "Critical"
        info = "MTB: Microsoft Threat Behavior"
        signature_type = "SIGNATURE_TYPE_PEHSTR_EXT"
        threshold = "5"
        strings_accuracy = "Low"
    strings:
        $x_5_1 = {0f b6 84 05 ?? 00 00 00 43 30 04 26 48 8b 85 ?? 00 00 00 48 ff c0 48 89 85 ?? 00 00 00 49 ff c4 4d 39 fc 74}  //weight: 5, accuracy: Low
    condition:
        (filesize < 20MB) and
        (all of ($x*))
}

