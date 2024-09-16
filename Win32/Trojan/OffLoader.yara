rule Trojan_Win32_OffLoader_RPY_2147846047_0
{
    meta:
        author = "defender2yara"
        detection_name = "Trojan:Win32/OffLoader.RPY!MTB"
        threat_id = "2147846047"
        type = "Trojan"
        platform = "Win32: Windows 32-bit platform"
        family = "OffLoader"
        severity = "Critical"
        info = "MTB: Microsoft Threat Behavior"
        signature_type = "SIGNATURE_TYPE_PEHSTR_EXT"
        threshold = "7"
        strings_accuracy = "High"
    strings:
        $x_1_1 = "\\\\server\\share" wide //weight: 1
        $x_1_2 = {65 00 73 00 73 00 2e 00 66 00 6f 00 6f 00 64 00 63 00 72 00 69 00 62 00 2e 00 73 00 69 00 74 00 65}  //weight: 1, accuracy: High
        $x_1_3 = {77 00 77 00 2e 00 70 00 68 00 70}  //weight: 1, accuracy: High
        $x_1_4 = "TUNINSTALLPROGRESSFORM" ascii //weight: 1
        $x_1_5 = "TDOWNLOADWIZARDPAGE" ascii //weight: 1
        $x_1_6 = "DOWNLOADTEMPORARYFILE" ascii //weight: 1
        $x_1_7 = "TONDOWNLOADPROGRESS" ascii //weight: 1
    condition:
        (filesize < 20MB) and
        (all of ($x*))
}

rule Trojan_Win32_OffLoader_EM_2147848213_0
{
    meta:
        author = "defender2yara"
        detection_name = "Trojan:Win32/OffLoader.EM!MTB"
        threat_id = "2147848213"
        type = "Trojan"
        platform = "Win32: Windows 32-bit platform"
        family = "OffLoader"
        severity = "Critical"
        info = "MTB: Microsoft Threat Behavior"
        signature_type = "SIGNATURE_TYPE_PEHSTR_EXT"
        threshold = "2"
        strings_accuracy = "High"
    strings:
        $x_1_1 = {68 00 61 00 6d 00 6d 00 65 00 72 00 63 00 61 00 6b 00 65 00 73 00 2e 00 78 00 79 00 7a 00 2f 00 69 00 6c 00 6c 00 2e 00 70 00 68 00 70}  //weight: 1, accuracy: High
        $x_1_2 = "server\\share" wide //weight: 1
    condition:
        (filesize < 20MB) and
        (all of ($x*))
}

rule Trojan_Win32_OffLoader_EM_2147848213_1
{
    meta:
        author = "defender2yara"
        detection_name = "Trojan:Win32/OffLoader.EM!MTB"
        threat_id = "2147848213"
        type = "Trojan"
        platform = "Win32: Windows 32-bit platform"
        family = "OffLoader"
        severity = "Critical"
        info = "MTB: Microsoft Threat Behavior"
        signature_type = "SIGNATURE_TYPE_PEHSTR_EXT"
        threshold = "10"
        strings_accuracy = "High"
    strings:
        $x_9_1 = {61 00 61 00 2e 00 6c 00 6f 00 63 00 6b 00 73 00 74 00 61 00 72 00 74 00 2e 00 68 00 6f 00 73 00 74 00 2f 00 77 00 77 00 2e 00 70 00 68 00 70 00 3f 00 70 00 3d 00 33 00 37}  //weight: 9, accuracy: High
        $x_1_2 = "server\\share" wide //weight: 1
    condition:
        (filesize < 20MB) and
        (all of ($x*))
}

rule Trojan_Win32_OffLoader_EM_2147848213_2
{
    meta:
        author = "defender2yara"
        detection_name = "Trojan:Win32/OffLoader.EM!MTB"
        threat_id = "2147848213"
        type = "Trojan"
        platform = "Win32: Windows 32-bit platform"
        family = "OffLoader"
        severity = "Critical"
        info = "MTB: Microsoft Threat Behavior"
        signature_type = "SIGNATURE_TYPE_PEHSTR_EXT"
        threshold = "12"
        strings_accuracy = "High"
    strings:
        $x_10_1 = {68 00 74 00 74 00 70 00 3a 00 2f 00 2f 00 66 00 72 00 75 00 69 00 74 00 62 00 75 00 6c 00 62 00 2e 00 78 00 79 00 7a 00 2f 00 77 00 77 00 2e 00 70 00 68 00 70}  //weight: 10, accuracy: High
        $x_1_2 = "\\\\server\\share" wide //weight: 1
        $x_1_3 = "restart the computer now" wide //weight: 1
    condition:
        (filesize < 20MB) and
        (all of ($x*))
}

rule Trojan_Win32_OffLoader_EM_2147848213_3
{
    meta:
        author = "defender2yara"
        detection_name = "Trojan:Win32/OffLoader.EM!MTB"
        threat_id = "2147848213"
        type = "Trojan"
        platform = "Win32: Windows 32-bit platform"
        family = "OffLoader"
        severity = "Critical"
        info = "MTB: Microsoft Threat Behavior"
        signature_type = "SIGNATURE_TYPE_PEHSTR_EXT"
        threshold = "10"
        strings_accuracy = "High"
    strings:
        $x_9_1 = {68 00 74 00 74 00 70 00 3a 00 2f 00 2f 00 61 00 61 00 2e 00 6c 00 6f 00 63 00 6b 00 73 00 74 00 61 00 72 00 74 00 2e 00 68 00 6f 00 73 00 74 00 2f 00 77 00 77 00 2e 00 70 00 68 00 70 00 3f 00 70 00 3d 00 32 00 32 00 36 00 38 00 26 00 74 00 3d 00 34 00 36 00 31 00 35 00 34 00 33 00 33 00 34 00 26 00 74 00 69 00 74 00 6c 00 65 00 3d 00 51 00 57 00 4e 00 30 00 61 00 58 00 5a 00 68 00 64 00 47 00 39 00 79 00 49 00 43 00 73 00 67 00 51 00 33 00 4a 00 68 00 59 00 32 00 73 00 67 00 4b 00 79 00 42 00 54 00 5a 00 58 00 4a 00 70 00 59 00 57 00 77 00 67 00 4b 00 79 00 42 00 4c 00 5a 00 58 00 6b 00 3d}  //weight: 9, accuracy: High
        $x_1_2 = "server\\share" wide //weight: 1
    condition:
        (filesize < 20MB) and
        (all of ($x*))
}

rule Trojan_Win32_OffLoader_EM_2147848213_4
{
    meta:
        author = "defender2yara"
        detection_name = "Trojan:Win32/OffLoader.EM!MTB"
        threat_id = "2147848213"
        type = "Trojan"
        platform = "Win32: Windows 32-bit platform"
        family = "OffLoader"
        severity = "Critical"
        info = "MTB: Microsoft Threat Behavior"
        signature_type = "SIGNATURE_TYPE_PEHSTR_EXT"
        threshold = "13"
        strings_accuracy = "High"
    strings:
        $x_10_1 = {68 00 74 00 74 00 70 00 3a 00 2f 00 2f 00 70 00 72 00 69 00 63 00 65 00 6d 00 61 00 72 00 6b 00 65 00 74 00 2e 00 6f 00 6e 00 6c 00 69 00 6e 00 65 00 2f 00 72 00 65 00 71 00 2e 00 70 00 68 00 70}  //weight: 10, accuracy: High
        $x_10_2 = {68 00 74 00 74 00 70 00 3a 00 2f 00 2f 00 66 00 72 00 75 00 69 00 74 00 62 00 75 00 6c 00 62 00 2e 00 78 00 79 00 7a 00 2f 00 72 00 65 00 71 00 73 00 2e 00 70 00 68 00 70}  //weight: 10, accuracy: High
        $x_10_3 = {68 00 74 00 74 00 70 00 3a 00 2f 00 2f 00 34 00 35 00 2e 00 31 00 32 00 2e 00 32 00 35 00 33 00 2e 00 37 00 34 00 2f 00 70 00 69 00 6e 00 65 00 61 00 70 00 70 00 6c 00 65 00 2e 00 70 00 68 00 70}  //weight: 10, accuracy: High
        $x_1_4 = "sysuserinfoname" wide //weight: 1
        $x_1_5 = "sysuserinfoorg" wide //weight: 1
        $x_1_6 = "*.exe,*.dll,*.chm" wide //weight: 1
    condition:
        (filesize < 20MB) and
        (
            ((1 of ($x_10_*) and 3 of ($x_1_*))) or
            ((2 of ($x_10_*))) or
            (all of ($x*))
        )
}

rule Trojan_Win32_OffLoader_EN_2147850145_0
{
    meta:
        author = "defender2yara"
        detection_name = "Trojan:Win32/OffLoader.EN!MTB"
        threat_id = "2147850145"
        type = "Trojan"
        platform = "Win32: Windows 32-bit platform"
        family = "OffLoader"
        severity = "Critical"
        info = "MTB: Microsoft Threat Behavior"
        signature_type = "SIGNATURE_TYPE_PEHSTR_EXT"
        threshold = "12"
        strings_accuracy = "High"
    strings:
        $x_10_1 = {68 00 74 00 74 00 70 00 3a 00 2f 00 2f 00 67 00 68 00 6f 00 73 00 74 00 77 00 61 00 78 00 2e 00 78 00 79 00 7a 00 2f 00 72 00 69 00 74 00 2e 00 70 00 68 00 70}  //weight: 10, accuracy: High
        $x_1_2 = "\\\\server\\share" wide //weight: 1
        $x_1_3 = "restart the computer now" wide //weight: 1
    condition:
        (filesize < 20MB) and
        (all of ($x*))
}

rule Trojan_Win32_OffLoader_EN_2147850145_1
{
    meta:
        author = "defender2yara"
        detection_name = "Trojan:Win32/OffLoader.EN!MTB"
        threat_id = "2147850145"
        type = "Trojan"
        platform = "Win32: Windows 32-bit platform"
        family = "OffLoader"
        severity = "Critical"
        info = "MTB: Microsoft Threat Behavior"
        signature_type = "SIGNATURE_TYPE_PEHSTR_EXT"
        threshold = "10"
        strings_accuracy = "High"
    strings:
        $x_9_1 = {67 00 68 00 6f 00 73 00 74 00 77 00 61 00 78 00 2e 00 78 00 79 00 7a 00 2f 00 72 00 69 00 74 00 2e 00 70 00 68 00 70 00 3f 00 70 00 3d 00 33 00 38 00 34 00 39 00 26 00 74 00 3d 00 34 00 36 00 33 00 36 00 39 00 39 00 39 00 35 00 26 00 74 00 69 00 74 00 6c 00 65 00 3d 00 52 00 6d 00 6c 00 32 00 5a 00 55 00 30 00 67 00 49 00 45 00 64 00 55 00 51 00 53 00 42 00 57 00 49 00 43 00 42 00 56 00 62 00 48 00 52 00 79 00 59 00 53 00 42 00 4d 00 62 00 33 00 63 00 67 00 52 00 57 00 35 00 6b 00 49 00 46 00 42 00 44 00 49 00 45 00 5a 00 51 00 55 00 79 00 42 00 43 00 54 00 30 00 39 00 54 00 56 00 43 00 42 00 51 00 59 00 57 00 4e 00 72 00 49 00 45 00 5a 00 76 00 63 00 69 00 41 00 30 00 52 00 30 00 49 00 67 00 4c 00 6d 00 56 00 34 00 5a 00 51 00 3d 00 3d}  //weight: 9, accuracy: High
        $x_9_2 = {67 00 68 00 6f 00 73 00 74 00 77 00 61 00 78 00 2e 00 78 00 79 00 7a 00 2f 00 72 00 69 00 74 00 2e 00 70 00 68 00 70 00 3f 00 70 00 3d 00 33}  //weight: 9, accuracy: High
        $x_1_3 = "server\\share" wide //weight: 1
    condition:
        (filesize < 20MB) and
        (
            ((1 of ($x_9_*) and 1 of ($x_1_*))) or
            ((2 of ($x_9_*))) or
            (all of ($x*))
        )
}

rule Trojan_Win32_OffLoader_EN_2147850145_2
{
    meta:
        author = "defender2yara"
        detection_name = "Trojan:Win32/OffLoader.EN!MTB"
        threat_id = "2147850145"
        type = "Trojan"
        platform = "Win32: Windows 32-bit platform"
        family = "OffLoader"
        severity = "Critical"
        info = "MTB: Microsoft Threat Behavior"
        signature_type = "SIGNATURE_TYPE_PEHSTR_EXT"
        threshold = "20"
        strings_accuracy = "High"
    strings:
        $x_9_1 = {68 00 74 00 74 00 70 00 3a 00 2f 00 2f 00 63 00 72 00 6f 00 77 00 61 00 64 00 76 00 65 00 72 00 74 00 69 00 73 00 65 00 6d 00 65 00 6e 00 74 00 2e 00 77 00 65 00 62 00 73 00 69 00 74 00 65 00 2f 00 72 00 61 00 74 00 2e 00 70 00 68 00 70}  //weight: 9, accuracy: High
        $x_9_2 = {68 00 74 00 74 00 70 00 3a 00 2f 00 2f 00 67 00 68 00 6f 00 73 00 74 00 77 00 61 00 78 00 2e 00 78 00 79 00 7a 00 2f 00 72 00 69 00 74 00 2e 00 70 00 68 00 70 00 3f 00 70 00 3d 00 33 00 37 00 39 00 32 00 26 00 74 00 3d 00 34 00 36 00 34 00 37 00 37 00 37 00 36 00 33 00 26 00 74 00 69 00 74 00 6c 00 65 00 3d 00 52 00 47 00 39 00 33 00 62 00 6d 00 78 00 76 00 59 00 57 00 51 00 67 00 51 00 6d 00 78 00 68 00 63 00 33 00 52 00 33 00 59 00 58 00 5a 00 6c 00 52 00 6c 00 67 00 67 00 51 00 6d 00 6c 00 79 00 5a 00 48 00 4d 00 67 00 51 00 6d 00 6c 00 69 00 62 00 47 00 55 00 67 00 65 00 6d 00 6c 00 77 00 4c 00 6d 00 56 00 34 00 5a 00 51 00 3d 00 3d 00 26 00 73 00 75 00 62 00 3d}  //weight: 9, accuracy: High
        $x_1_3 = "server\\share" ascii //weight: 1
        $x_1_4 = "install [name] on your computer" ascii //weight: 1
    condition:
        (filesize < 20MB) and
        (all of ($x*))
}

rule Trojan_Win32_OffLoader_EK_2147851026_0
{
    meta:
        author = "defender2yara"
        detection_name = "Trojan:Win32/OffLoader.EK!MTB"
        threat_id = "2147851026"
        type = "Trojan"
        platform = "Win32: Windows 32-bit platform"
        family = "OffLoader"
        severity = "Critical"
        info = "MTB: Microsoft Threat Behavior"
        signature_type = "SIGNATURE_TYPE_PEHSTR_EXT"
        threshold = "10"
        strings_accuracy = "High"
    strings:
        $x_9_1 = {77 00 61 00 73 00 68 00 64 00 69 00 6e 00 6e 00 65 00 72 00 2e 00 78 00 79 00 7a 00 2f 00 67 00 74 00 2e 00 70 00 68 00 70 00 3f 00 70 00 3d}  //weight: 9, accuracy: High
        $x_1_2 = "server\\share" wide //weight: 1
    condition:
        (filesize < 20MB) and
        (all of ($x*))
}

rule Trojan_Win32_OffLoader_EH_2147851159_0
{
    meta:
        author = "defender2yara"
        detection_name = "Trojan:Win32/OffLoader.EH!MTB"
        threat_id = "2147851159"
        type = "Trojan"
        platform = "Win32: Windows 32-bit platform"
        family = "OffLoader"
        severity = "Critical"
        info = "MTB: Microsoft Threat Behavior"
        signature_type = "SIGNATURE_TYPE_PEHSTR_EXT"
        threshold = "10"
        strings_accuracy = "High"
    strings:
        $x_9_1 = {66 00 6c 00 6f 00 63 00 6b 00 73 00 63 00 68 00 6f 00 6f 00 6c 00 2e 00 73 00 69 00 74 00 65 00 2f 00 65 00 6e 00 2e 00 70 00 68 00 70 00 3f 00 70 00 3d 00 33 00 38 00 34 00 38 00 26 00 74 00 3d 00 34 00 36 00 33 00 37 00 33 00 30 00 33 00 31 00 26 00 74 00 69 00 74 00 6c 00 65 00 3d 00 51 00 58 00 52 00 6f 00 5a}  //weight: 9, accuracy: High
        $x_1_2 = "server\\share" wide //weight: 1
    condition:
        (filesize < 20MB) and
        (all of ($x*))
}

rule Trojan_Win32_OffLoader_DAT_2147851226_0
{
    meta:
        author = "defender2yara"
        detection_name = "Trojan:Win32/OffLoader.DAT!MTB"
        threat_id = "2147851226"
        type = "Trojan"
        platform = "Win32: Windows 32-bit platform"
        family = "OffLoader"
        severity = "Critical"
        info = "MTB: Microsoft Threat Behavior"
        signature_type = "SIGNATURE_TYPE_PEHSTR_EXT"
        threshold = "2"
        strings_accuracy = "High"
    strings:
        $x_1_1 = {68 00 74 00 74 00 70 00 3a 00 2f 00 2f 00 77 00 65 00 62 00 63 00 6f 00 6d 00 70 00 61 00 6e 00 69 00 6f 00 6e 00 2e 00 63 00 6f 00 6d 00 2f 00 6e 00 61 00 6e 00 6f 00 5f 00 64 00 6f 00 77 00 6e 00 6c 00 6f 00 61 00 64 00 2e 00 70 00 68 00 70 00 3f 00 70 00 61 00 72 00 74 00 6e 00 65 00 72 00 3d 00 49 00 54 00 32 00 31 00 30 00 38 00 30 00 31}  //weight: 1, accuracy: High
        $x_1_2 = {73 00 65 00 72 00 76 00 65 00 72 00 5c 00 73 00 68 00 61 00 72 00 65}  //weight: 1, accuracy: High
    condition:
        (filesize < 20MB) and
        (all of ($x*))
}

rule Trojan_Win32_OffLoader_ASA_2147852850_0
{
    meta:
        author = "defender2yara"
        detection_name = "Trojan:Win32/OffLoader.ASA!MTB"
        threat_id = "2147852850"
        type = "Trojan"
        platform = "Win32: Windows 32-bit platform"
        family = "OffLoader"
        severity = "Critical"
        info = "MTB: Microsoft Threat Behavior"
        signature_type = "SIGNATURE_TYPE_PEHSTR_EXT"
        threshold = "3"
        strings_accuracy = "High"
    strings:
        $x_1_1 = {68 00 74 00 74 00 70 00 3a 00 2f 00 2f 00 64 00 6f 00 67 00 71 00 75 00 61 00 72 00 74 00 65 00 72 00 2e 00 77 00 65 00 62 00 73 00 69 00 74 00 65 00 2f 00 67 00 6f 00 2e 00 70 00 68 00 70 00 3f 00 70 00 3d 00 33 00 38 00 31 00 31 00 26 00 74 00 3d 00 34 00 36 00 36 00 32 00 33 00 31 00 38 00 37 00 26 00 74 00 69 00 74 00 6c 00 65 00 3d 00 63 00 47 00 68 00 77 00 49 00 48 00 52 00 6f 00 5a 00 58 00 52 00 70 00 64 00 47 00 78 00 6c 00 49 00 43 00 35 00 6c 00 65 00 47 00 55}  //weight: 1, accuracy: High
        $x_1_2 = {73 00 65 00 72 00 76 00 65 00 72 00 5c 00 73 00 68 00 61 00 72 00 65}  //weight: 1, accuracy: High
        $x_1_3 = "restart the computer now" wide //weight: 1
    condition:
        (filesize < 20MB) and
        (all of ($x*))
}

rule Trojan_Win32_OffLoader_ASB_2147887398_0
{
    meta:
        author = "defender2yara"
        detection_name = "Trojan:Win32/OffLoader.ASB!MTB"
        threat_id = "2147887398"
        type = "Trojan"
        platform = "Win32: Windows 32-bit platform"
        family = "OffLoader"
        severity = "Critical"
        info = "MTB: Microsoft Threat Behavior"
        signature_type = "SIGNATURE_TYPE_PEHSTR_EXT"
        threshold = "3"
        strings_accuracy = "High"
    strings:
        $x_1_1 = {68 00 74 00 74 00 70 00 3a 00 2f 00 2f 00 61 00 62 00 74 00 2e 00 70 00 6f 00 73 00 69 00 74 00 69 00 6f 00 6e 00 62 00 65 00 64 00 2e 00 77 00 65 00 62 00 73 00 69 00 74 00 65 00 2f 00 65 00 78 00 2e 00 70 00 68 00 70 00 3f 00 64 00 3d 00 69 00 6e 00 6e 00 6f 00 26 00 72 00 3d 00 6f 00 66 00 66 00 65 00 72 00 5f 00 65 00 78 00 65 00 63 00 75 00 74 00 69 00 6f 00 6e 00 26 00 72 00 6b 00 3d 00 79 00 65 00 73 00 26 00 6f 00 3d 00 31 00 36 00 35 00 30 00 26 00 61}  //weight: 1, accuracy: High
        $x_1_2 = {73 00 65 00 72 00 76 00 65 00 72 00 5c 00 73 00 68 00 61 00 72 00 65}  //weight: 1, accuracy: High
        $x_1_3 = "restart the computer now" wide //weight: 1
    condition:
        (filesize < 20MB) and
        (all of ($x*))
}

rule Trojan_Win32_OffLoader_ASC_2147888300_0
{
    meta:
        author = "defender2yara"
        detection_name = "Trojan:Win32/OffLoader.ASC!MTB"
        threat_id = "2147888300"
        type = "Trojan"
        platform = "Win32: Windows 32-bit platform"
        family = "OffLoader"
        severity = "Critical"
        info = "MTB: Microsoft Threat Behavior"
        signature_type = "SIGNATURE_TYPE_PEHSTR_EXT"
        threshold = "3"
        strings_accuracy = "High"
    strings:
        $x_1_1 = {68 00 74 00 74 00 70 00 3a 00 2f 00 2f 00 64 00 6f 00 67 00 71 00 75 00 61 00 72 00 74 00 65 00 72 00 2e 00 77 00 65 00 62 00 73 00 69 00 74 00 65 00 2f 00 67 00 6f 00 2e 00 70 00 68 00 70 00 3f 00 70 00 3d 00 33 00 38 00 31 00 31 00 26 00 74 00 3d 00 34 00 36 00 37 00 32 00 39 00 35 00 34 00 39 00 26 00 74 00 69 00 74 00 6c 00 65 00 3d 00 63 00 47 00 68 00 77 00 49 00 48 00 52 00 6f 00 5a 00 58 00 52 00 70 00 64 00 47 00 78 00 6c 00 49 00 43 00 35 00 6c 00 65 00 47 00 55 00 3d 00 26 00 73 00 75 00 62}  //weight: 1, accuracy: High
        $x_1_2 = {73 00 65 00 72 00 76 00 65 00 72 00 5c 00 73 00 68 00 61 00 72 00 65}  //weight: 1, accuracy: High
        $x_1_3 = "restart the computer now" wide //weight: 1
    condition:
        (filesize < 20MB) and
        (all of ($x*))
}

rule Trojan_Win32_OffLoader_EB_2147888903_0
{
    meta:
        author = "defender2yara"
        detection_name = "Trojan:Win32/OffLoader.EB!MTB"
        threat_id = "2147888903"
        type = "Trojan"
        platform = "Win32: Windows 32-bit platform"
        family = "OffLoader"
        severity = "Critical"
        info = "MTB: Microsoft Threat Behavior"
        signature_type = "SIGNATURE_TYPE_PEHSTR_EXT"
        threshold = "3"
        strings_accuracy = "High"
    strings:
        $x_1_1 = {68 00 74 00 74 00 70 00 3a 00 2f 00 2f 00 64 00 6f 00 67 00 71 00 75 00 61 00 72 00 74 00 65 00 72 00 2e 00 77 00 65 00 62 00 73 00 69 00 74 00 65 00 2f 00 67 00 6f 00 2e 00 70 00 68 00 70 00 3f 00 70 00 3d 00 33 00 38 00 31 00 31 00 26 00 74 00 3d 00 34 00 36 00 36 00 38 00 39 00 30 00 38 00 32 00 26 00 74 00 69 00 74 00 6c 00 65 00 3d 00 63 00 47 00 68 00 77 00 49 00 48 00 52 00 6f 00 5a 00 58 00 52 00 70 00 64 00 47 00 78 00 6c 00 49 00 43 00 35 00 6c 00 65 00 47 00 55 00 3d 00 26 00 73 00 75 00 62 00 3d 00 32 00 34 00 37 00 37 00 0b 21}  //weight: 1, accuracy: High
        $x_1_2 = {68 00 74 00 74 00 70 00 3a 00 2f 00 2f 00 73 00 69 00 7a 00 65 00 73 00 68 00 6f 00 63 00 6b 00 2e 00 77 00 65 00 62 00 73 00 69 00 74 00 65 00 2f 00 67 00 6f 00 2e 00 70 00 68 00 70 00 3f 00 70 00 3d 00 33 00 38 00 31 00 31 00 26 00 74 00 3d 00 34 00 36 00 36 00 38 00 39 00 30 00 38 00 32 00 26 00 74 00 69 00 74 00 6c 00 65 00 3d 00 63 00 47 00 68 00 77 00 49 00 48 00 52 00 6f 00 5a 00 58 00 52 00 70 00 64 00 47 00 78 00 6c 00 49 00 43 00 35 00 6c 00 65 00 47 00 55 00 3d 00 26 00 73 00 75 00 62 00 3d 00 32 00 34 00 37 00 37 00 0b 21}  //weight: 1, accuracy: High
        $x_1_3 = "server\\share" wide //weight: 1
    condition:
        (filesize < 20MB) and
        (all of ($x*))
}

rule Trojan_Win32_OffLoader_ASD_2147889046_0
{
    meta:
        author = "defender2yara"
        detection_name = "Trojan:Win32/OffLoader.ASD!MTB"
        threat_id = "2147889046"
        type = "Trojan"
        platform = "Win32: Windows 32-bit platform"
        family = "OffLoader"
        severity = "Critical"
        info = "MTB: Microsoft Threat Behavior"
        signature_type = "SIGNATURE_TYPE_PEHSTR_EXT"
        threshold = "4"
        strings_accuracy = "High"
    strings:
        $x_1_1 = "http://angerdistribution.site/gampa.php?p=38" wide //weight: 1
        $x_1_2 = {73 00 65 00 72 00 76 00 65 00 72 00 5c 00 73 00 68 00 61 00 72 00 65}  //weight: 1, accuracy: High
        $x_1_3 = "restart the computer now" wide //weight: 1
        $x_1_4 = "Yes, I would like to view the README file" wide //weight: 1
    condition:
        (filesize < 20MB) and
        (all of ($x*))
}

rule Trojan_Win32_OffLoader_ASE_2147889299_0
{
    meta:
        author = "defender2yara"
        detection_name = "Trojan:Win32/OffLoader.ASE!MTB"
        threat_id = "2147889299"
        type = "Trojan"
        platform = "Win32: Windows 32-bit platform"
        family = "OffLoader"
        severity = "Critical"
        info = "MTB: Microsoft Threat Behavior"
        signature_type = "SIGNATURE_TYPE_PEHSTR_EXT"
        threshold = "4"
        strings_accuracy = "High"
    strings:
        $x_1_1 = {68 00 74 00 74 00 70 00 73 00 3a 00 2f 00 2f 00 61 00 64 00 64 00 2e 00 63 00 6f 00 6d 00 70 00 61 00 72 00 69 00 73 00 6f 00 6e 00 73 00 6f 00 6e 00 67 00 2e 00 6f 00 6e 00 6c 00 69 00 6e 00 65 00 2f 00 61 00 70 00 69 00 5f 00 70 00 65 00 73 00 74 00 61 00 72 00 74 00 2e 00 70 00 68 00 70 00 3f 00 61 00 3d 00 33}  //weight: 1, accuracy: High
        $x_1_2 = {73 00 65 00 72 00 76 00 65 00 72 00 5c 00 73 00 68 00 61 00 72 00 65}  //weight: 1, accuracy: High
        $x_1_3 = "restart the computer now" wide //weight: 1
        $x_1_4 = "Yes, I would like to view the README file" wide //weight: 1
    condition:
        (filesize < 20MB) and
        (all of ($x*))
}

rule Trojan_Win32_OffLoader_ASF_2147889300_0
{
    meta:
        author = "defender2yara"
        detection_name = "Trojan:Win32/OffLoader.ASF!MTB"
        threat_id = "2147889300"
        type = "Trojan"
        platform = "Win32: Windows 32-bit platform"
        family = "OffLoader"
        severity = "Critical"
        info = "MTB: Microsoft Threat Behavior"
        signature_type = "SIGNATURE_TYPE_PEHSTR_EXT"
        threshold = "4"
        strings_accuracy = "High"
    strings:
        $x_1_1 = {68 00 74 00 74 00 70 00 3a 00 2f 00 2f 00 61 00 6e 00 67 00 65 00 72 00 64 00 69 00 73 00 74 00 72 00 69 00 62 00 75 00 74 00 69 00 6f 00 6e 00 2e 00 73 00 69 00 74 00 65 00 2f 00 67 00 61 00 6d 00 70 00 61 00 2e 00 70 00 68 00 70 00 3f 00 70 00 3d}  //weight: 1, accuracy: High
        $x_1_2 = {73 00 65 00 72 00 76 00 65 00 72 00 5c 00 73 00 68 00 61 00 72 00 65}  //weight: 1, accuracy: High
        $x_1_3 = "restart the computer now" wide //weight: 1
        $x_1_4 = "Yes, I would like to view the README file" wide //weight: 1
    condition:
        (filesize < 20MB) and
        (all of ($x*))
}

rule Trojan_Win32_OffLoader_ASG_2147889407_0
{
    meta:
        author = "defender2yara"
        detection_name = "Trojan:Win32/OffLoader.ASG!MTB"
        threat_id = "2147889407"
        type = "Trojan"
        platform = "Win32: Windows 32-bit platform"
        family = "OffLoader"
        severity = "Critical"
        info = "MTB: Microsoft Threat Behavior"
        signature_type = "SIGNATURE_TYPE_PEHSTR_EXT"
        threshold = "4"
        strings_accuracy = "High"
    strings:
        $x_1_1 = {68 00 74 00 74 00 70 00 73 00 3a 00 2f 00 2f 00 61 00 64 00 64 00 2e 00 63 00 6f 00 6d 00 70 00 61 00 72 00 69 00 73 00 6f 00 6e 00 73 00 6f 00 6e 00 67 00 2e 00 6f 00 6e 00 6c 00 69 00 6e 00 65 00 2f 00 61 00 70 00 69 00 5f 00 70 00 65 00 73 00 74 00 61 00 72 00 74 00 2e 00 70 00 68 00 70 00 3f 00 61 00 3d}  //weight: 1, accuracy: High
        $x_1_2 = {73 00 65 00 72 00 76 00 65 00 72 00 5c 00 73 00 68 00 61 00 72 00 65}  //weight: 1, accuracy: High
        $x_1_3 = "restart the computer now" wide //weight: 1
        $x_1_4 = "Yes, I would like to view the README file" wide //weight: 1
    condition:
        (filesize < 20MB) and
        (all of ($x*))
}

rule Trojan_Win32_OffLoader_ASH_2147889481_0
{
    meta:
        author = "defender2yara"
        detection_name = "Trojan:Win32/OffLoader.ASH!MTB"
        threat_id = "2147889481"
        type = "Trojan"
        platform = "Win32: Windows 32-bit platform"
        family = "OffLoader"
        severity = "Critical"
        info = "MTB: Microsoft Threat Behavior"
        signature_type = "SIGNATURE_TYPE_PEHSTR_EXT"
        threshold = "4"
        strings_accuracy = "High"
    strings:
        $x_1_1 = {68 00 74 00 74 00 70 00 3a 00 2f 00 2f 00 64 00 6f 00 67 00 71 00 75 00 61 00 72 00 74 00 65 00 72 00 2e 00 77 00 65 00 62 00 73 00 69 00 74 00 65 00 2f 00 67 00 6f 00 2e 00 70 00 68 00 70 00 3f 00 70 00 3d}  //weight: 1, accuracy: High
        $x_1_2 = {68 00 74 00 74 00 70 00 73 00 3a 00 2f 00 2f 00 61 00 64 00 64 00 2e 00 63 00 6f 00 6d 00 70 00 61 00 72 00 69 00 73 00 6f 00 6e 00 73 00 6f 00 6e 00 67 00 2e 00 6f 00 6e 00 6c 00 69 00 6e 00 65 00 2f 00 61 00 70 00 69 00 5f 00 70 00 65 00 73 00 74 00 61 00 72 00 74 00 2e 00 70 00 68 00 70 00 3f 00 63 00 63 00 3d}  //weight: 1, accuracy: High
        $x_1_3 = {73 00 65 00 72 00 76 00 65 00 72 00 5c 00 73 00 68 00 61 00 72 00 65}  //weight: 1, accuracy: High
        $x_1_4 = "restart the computer now" wide //weight: 1
        $x_1_5 = "Yes, I would like to view the README file" wide //weight: 1
    condition:
        (filesize < 20MB) and
        (4 of ($x*))
}

rule Trojan_Win32_OffLoader_ASI_2147890044_0
{
    meta:
        author = "defender2yara"
        detection_name = "Trojan:Win32/OffLoader.ASI!MTB"
        threat_id = "2147890044"
        type = "Trojan"
        platform = "Win32: Windows 32-bit platform"
        family = "OffLoader"
        severity = "Critical"
        info = "MTB: Microsoft Threat Behavior"
        signature_type = "SIGNATURE_TYPE_PEHSTR_EXT"
        threshold = "4"
        strings_accuracy = "High"
    strings:
        $x_1_1 = {68 00 74 00 74 00 70 00 3a 00 2f 00 2f 00 70 00 6c 00 61 00 6e 00 65 00 73 00 76 00 61 00 63 00 61 00 74 00 69 00 6f 00 6e 00 2e 00 6f 00 6e 00 6c 00 69 00 6e 00 65 00 2f 00 72 00 74 00 2e 00 70 00 68 00 70 00 3f 00 70 00 3d}  //weight: 1, accuracy: High
        $x_1_2 = {68 00 74 00 74 00 70 00 73 00 3a 00 2f 00 2f 00 73 00 61 00 76 00 65 00 2e 00 65 00 61 00 72 00 74 00 68 00 71 00 75 00 61 00 6b 00 65 00 73 00 68 00 61 00 70 00 65 00 2e 00 78 00 79 00 7a 00 2f 00 61 00 70 00 69 00 5f 00 70 00 65 00 73 00 74 00 61 00 72 00 74 00 2e 00 70 00 68 00 70 00 3f 00 61 00 3d}  //weight: 1, accuracy: High
        $x_1_3 = {73 00 65 00 72 00 76 00 65 00 72 00 5c 00 73 00 68 00 61 00 72 00 65}  //weight: 1, accuracy: High
        $x_1_4 = "restart the computer now" wide //weight: 1
        $x_1_5 = "Yes, I would like to view the README file" wide //weight: 1
    condition:
        (filesize < 20MB) and
        (4 of ($x*))
}

rule Trojan_Win32_OffLoader_ASJ_2147890493_0
{
    meta:
        author = "defender2yara"
        detection_name = "Trojan:Win32/OffLoader.ASJ!MTB"
        threat_id = "2147890493"
        type = "Trojan"
        platform = "Win32: Windows 32-bit platform"
        family = "OffLoader"
        severity = "Critical"
        info = "MTB: Microsoft Threat Behavior"
        signature_type = "SIGNATURE_TYPE_PEHSTR_EXT"
        threshold = "4"
        strings_accuracy = "High"
    strings:
        $x_1_1 = {68 00 74 00 74 00 70 00 3a 00 2f 00 2f 00 61 00 61 00 2e 00 6c 00 6f 00 63 00 6b 00 73 00 74 00 61 00 72 00 74 00 2e 00 68 00 6f 00 73 00 74 00 2f 00 77 00 77 00 2e 00 70 00 68 00 70 00 3f 00 70 00 3d 00 32 00 32 00 36 00 38 00 26 00 74 00 3d}  //weight: 1, accuracy: High
        $x_1_2 = {68 00 74 00 74 00 70 00 3a 00 2f 00 2f 00 77 00 6f 00 6f 00 6c 00 63 00 61 00 6c 00 65 00 6e 00 64 00 61 00 72 00 2e 00 6f 00 6e 00 6c 00 69 00 6e 00 65 00 2f 00 78 00 31 00 2e 00 70 00 68 00 70 00 3f 00 70 00 3d 00 33 00 35 00 35 00 38 00 26 00 74 00 3d}  //weight: 1, accuracy: High
        $x_1_3 = {68 00 74 00 74 00 70 00 3a 00 2f 00 2f 00 77 00 6f 00 6f 00 6c 00 63 00 61 00 6c 00 65 00 6e 00 64 00 61 00 72 00 2e 00 6f 00 6e 00 6c 00 69 00 6e 00 65 00 2f 00 78 00 31 00 2e 00 70 00 68 00 70 00 3f 00 70 00 3d 00 33 00 38 00 32 00 30 00 26 00 74 00 3d}  //weight: 1, accuracy: High
        $x_1_4 = {68 00 74 00 74 00 70 00 3a 00 2f 00 2f 00 77 00 6f 00 6f 00 6c 00 63 00 61 00 6c 00 65 00 6e 00 64 00 61 00 72 00 2e 00 6f 00 6e 00 6c 00 69 00 6e 00 65 00 2f 00 78 00 31 00 2e 00 70 00 68 00 70 00 3f 00 70 00 3d 00 33 00 38 00 39 00 31 00 26 00 74 00 3d}  //weight: 1, accuracy: High
        $x_1_5 = {73 00 65 00 72 00 76 00 65 00 72 00 5c 00 73 00 68 00 61 00 72 00 65}  //weight: 1, accuracy: High
        $x_1_6 = "restart the computer now" wide //weight: 1
        $x_1_7 = "Yes, I would like to view the README file" wide //weight: 1
    condition:
        (filesize < 20MB) and
        (4 of ($x*))
}

rule Trojan_Win32_OffLoader_ASK_2147890499_0
{
    meta:
        author = "defender2yara"
        detection_name = "Trojan:Win32/OffLoader.ASK!MTB"
        threat_id = "2147890499"
        type = "Trojan"
        platform = "Win32: Windows 32-bit platform"
        family = "OffLoader"
        severity = "Critical"
        info = "MTB: Microsoft Threat Behavior"
        signature_type = "SIGNATURE_TYPE_PEHSTR_EXT"
        threshold = "4"
        strings_accuracy = "High"
    strings:
        $x_1_1 = {68 00 74 00 74 00 70 00 3a 00 2f 00 2f 00 70 00 69 00 65 00 70 00 75 00 6d 00 70 00 2e 00 6f 00 6e 00 6c 00 69 00 6e 00 65 00 2f 00 75 00 6d 00 2e 00 70 00 68 00 70 00 3f 00 70 00 3d}  //weight: 1, accuracy: High
        $x_1_2 = {73 00 65 00 72 00 76 00 65 00 72 00 5c 00 73 00 68 00 61 00 72 00 65}  //weight: 1, accuracy: High
        $x_1_3 = "restart the computer now" wide //weight: 1
        $x_1_4 = "Yes, I would like to view the README file" wide //weight: 1
    condition:
        (filesize < 20MB) and
        (all of ($x*))
}

rule Trojan_Win32_OffLoader_ASL_2147891174_0
{
    meta:
        author = "defender2yara"
        detection_name = "Trojan:Win32/OffLoader.ASL!MTB"
        threat_id = "2147891174"
        type = "Trojan"
        platform = "Win32: Windows 32-bit platform"
        family = "OffLoader"
        severity = "Critical"
        info = "MTB: Microsoft Threat Behavior"
        signature_type = "SIGNATURE_TYPE_PEHSTR_EXT"
        threshold = "4"
        strings_accuracy = "Low"
    strings:
        $x_1_1 = {68 00 74 00 74 00 70 00 3a 00 2f 00 2f 00 77 00 6f 00 6f 00 6c 00 63 00 61 00 6c 00 65 00 6e 00 64 00 61 00 72 00 2e 00 6f 00 6e 00 6c 00 69 00 6e 00 65 00 2f 00 78 00 31 00 2e 00 70 00 68 00 70 00 3f 00 70 00 3d 00 33 00 ?? 00 ?? 00 ?? 00 26 00 74 00 3d}  //weight: 1, accuracy: Low
        $x_1_2 = {73 00 65 00 72 00 76 00 65 00 72 00 5c 00 73 00 68 00 61 00 72 00 65}  //weight: 1, accuracy: High
        $x_1_3 = "restart the computer now" wide //weight: 1
        $x_1_4 = "Yes, I would like to view the README file" wide //weight: 1
    condition:
        (filesize < 20MB) and
        (all of ($x*))
}

rule Trojan_Win32_OffLoader_EC_2147891514_0
{
    meta:
        author = "defender2yara"
        detection_name = "Trojan:Win32/OffLoader.EC!MTB"
        threat_id = "2147891514"
        type = "Trojan"
        platform = "Win32: Windows 32-bit platform"
        family = "OffLoader"
        severity = "Critical"
        info = "MTB: Microsoft Threat Behavior"
        signature_type = "SIGNATURE_TYPE_PEHSTR_EXT"
        threshold = "2"
        strings_accuracy = "High"
    strings:
        $x_1_1 = {26 00 6f 00 6e 00 3d 00 33 00 38 00 36 00 26 00 73 00 70 00 6f 00 74 00 3d}  //weight: 1, accuracy: High
        $x_1_2 = {67 00 61 00 6d 00 65 00 2e 00 65 00 67 00 67 00 73 00 6c 00 61 00 6e 00 67 00 75 00 61 00 67 00 65 00 2e 00 77 00 65 00 62 00 73 00 69 00 74 00 65 00 2f 00 65 00 78 00 2e 00 70 00 68 00 70 00 3f 00 64 00 3d 00 69 00 6e 00 6e 00 6f 00 26 00 72 00 3d 00 6f 00 66 00 66 00 65 00 72 00 5f 00 65 00 78 00 65 00 63 00 75 00 74 00 69 00 6f 00 6e 00 26 00 72 00 6b}  //weight: 1, accuracy: High
        $x_1_3 = "server\\share" wide //weight: 1
    condition:
        (filesize < 20MB) and
        (2 of ($x*))
}

rule Trojan_Win32_OffLoader_ASM_2147893003_0
{
    meta:
        author = "defender2yara"
        detection_name = "Trojan:Win32/OffLoader.ASM!MTB"
        threat_id = "2147893003"
        type = "Trojan"
        platform = "Win32: Windows 32-bit platform"
        family = "OffLoader"
        severity = "Critical"
        info = "MTB: Microsoft Threat Behavior"
        signature_type = "SIGNATURE_TYPE_PEHSTR_EXT"
        threshold = "4"
        strings_accuracy = "High"
    strings:
        $x_1_1 = {68 00 74 00 74 00 70 00 73 00 3a 00 2f 00 2f 00 6d 00 6f 00 69 00 73 00 74 00 2e 00 73 00 74 00 61 00 74 00 65 00 6d 00 65 00 6e 00 74 00 73 00 75 00 70 00 70 00 6f 00 72 00 74 00 2e 00 77 00 65 00 62 00 73 00 69 00 74 00 65 00 2f 00 73 00 73 00 2e 00 70 00 68 00 70 00 3f 00 61 00 3d}  //weight: 1, accuracy: High
        $x_1_2 = {73 00 65 00 72 00 76 00 65 00 72 00 5c 00 73 00 68 00 61 00 72 00 65}  //weight: 1, accuracy: High
        $x_1_3 = "restart the computer now" wide //weight: 1
        $x_1_4 = "Yes, I would like to view the README file" wide //weight: 1
    condition:
        (filesize < 20MB) and
        (all of ($x*))
}

rule Trojan_Win32_OffLoader_ASN_2147893100_0
{
    meta:
        author = "defender2yara"
        detection_name = "Trojan:Win32/OffLoader.ASN!MTB"
        threat_id = "2147893100"
        type = "Trojan"
        platform = "Win32: Windows 32-bit platform"
        family = "OffLoader"
        severity = "Critical"
        info = "MTB: Microsoft Threat Behavior"
        signature_type = "SIGNATURE_TYPE_PEHSTR_EXT"
        threshold = "4"
        strings_accuracy = "High"
    strings:
        $x_1_1 = "http://e.spadesheep.xyz/x.php?p=3492&t=" wide //weight: 1
        $x_1_2 = {73 00 65 00 72 00 76 00 65 00 72 00 5c 00 73 00 68 00 61 00 72 00 65}  //weight: 1, accuracy: High
        $x_1_3 = "restart the computer now" wide //weight: 1
        $x_1_4 = "Yes, I would like to view the README file" wide //weight: 1
    condition:
        (filesize < 20MB) and
        (all of ($x*))
}

rule Trojan_Win32_OffLoader_ASO_2147895629_0
{
    meta:
        author = "defender2yara"
        detection_name = "Trojan:Win32/OffLoader.ASO!MTB"
        threat_id = "2147895629"
        type = "Trojan"
        platform = "Win32: Windows 32-bit platform"
        family = "OffLoader"
        severity = "Critical"
        info = "MTB: Microsoft Threat Behavior"
        signature_type = "SIGNATURE_TYPE_PEHSTR_EXT"
        threshold = "4"
        strings_accuracy = "High"
    strings:
        $x_1_1 = "http://cookchildren.online/ki.php?p=" wide //weight: 1
        $x_1_2 = {73 00 65 00 72 00 76 00 65 00 72 00 5c 00 73 00 68 00 61 00 72 00 65}  //weight: 1, accuracy: High
        $x_1_3 = "restart the computer now" wide //weight: 1
        $x_1_4 = "Yes, I would like to view the README file" wide //weight: 1
    condition:
        (filesize < 20MB) and
        (all of ($x*))
}

rule Trojan_Win32_OffLoader_ASP_2147895856_0
{
    meta:
        author = "defender2yara"
        detection_name = "Trojan:Win32/OffLoader.ASP!MTB"
        threat_id = "2147895856"
        type = "Trojan"
        platform = "Win32: Windows 32-bit platform"
        family = "OffLoader"
        severity = "Critical"
        info = "MTB: Microsoft Threat Behavior"
        signature_type = "SIGNATURE_TYPE_PEHSTR_EXT"
        threshold = "4"
        strings_accuracy = "High"
    strings:
        $x_1_1 = {68 00 74 00 74 00 70 00 73 00 3a 00 2f 00 2f 00 78 00 2e 00 70 00 72 00 6f 00 73 00 65 00 66 00 72 00 69 00 65 00 6e 00 64 00 2e 00 6f 00 6e 00 6c 00 69 00 6e 00 65 00 2f 00 73 00 73 00 2e 00 70 00 68 00 70 00 3f 00 61 00 3d}  //weight: 1, accuracy: High
        $x_1_2 = {73 00 65 00 72 00 76 00 65 00 72 00 5c 00 73 00 68 00 61 00 72 00 65}  //weight: 1, accuracy: High
        $x_1_3 = "restart the computer now" wide //weight: 1
        $x_1_4 = "Yes, I would like to view the README file" wide //weight: 1
    condition:
        (filesize < 20MB) and
        (all of ($x*))
}

rule Trojan_Win32_OffLoader_ASQ_2147896262_0
{
    meta:
        author = "defender2yara"
        detection_name = "Trojan:Win32/OffLoader.ASQ!MTB"
        threat_id = "2147896262"
        type = "Trojan"
        platform = "Win32: Windows 32-bit platform"
        family = "OffLoader"
        severity = "Critical"
        info = "MTB: Microsoft Threat Behavior"
        signature_type = "SIGNATURE_TYPE_PEHSTR_EXT"
        threshold = "4"
        strings_accuracy = "High"
    strings:
        $x_1_1 = {68 00 74 00 74 00 70 00 3a 00 2f 00 2f 00 76 00 69 00 65 00 77 00 77 00 65 00 69 00 67 00 68 00 74 00 2e 00 78 00 79 00 7a 00 2f 00 74 00 72 00 79 00 2e 00 70 00 68 00 70 00 3f 00 70 00 3d}  //weight: 1, accuracy: High
        $x_1_2 = {73 00 65 00 72 00 76 00 65 00 72 00 5c 00 73 00 68 00 61 00 72 00 65}  //weight: 1, accuracy: High
        $x_1_3 = "restart the computer now" wide //weight: 1
        $x_1_4 = "Yes, I would like to view the README file" wide //weight: 1
    condition:
        (filesize < 20MB) and
        (all of ($x*))
}

rule Trojan_Win32_OffLoader_ASQ_2147896262_1
{
    meta:
        author = "defender2yara"
        detection_name = "Trojan:Win32/OffLoader.ASQ!MTB"
        threat_id = "2147896262"
        type = "Trojan"
        platform = "Win32: Windows 32-bit platform"
        family = "OffLoader"
        severity = "Critical"
        info = "MTB: Microsoft Threat Behavior"
        signature_type = "SIGNATURE_TYPE_PEHSTR_EXT"
        threshold = "4"
        strings_accuracy = "High"
    strings:
        $x_1_1 = {68 00 74 00 74 00 70 00 3a 00 2f 00 2f 00 67 00 72 00 6f 00 75 00 70 00 63 00 6f 00 62 00 77 00 65 00 62 00 2e 00 6f 00 6e 00 6c 00 69 00 6e 00 65 00 2f 00 65 00 6c 00 64 00 2e 00 70 00 68 00 70 00 3f 00 70 00 3d 00 33 00 39 00 33 00 34 00 26 00 74 00 3d}  //weight: 1, accuracy: High
        $x_1_2 = {73 00 65 00 72 00 76 00 65 00 72 00 5c 00 73 00 68 00 61 00 72 00 65}  //weight: 1, accuracy: High
        $x_1_3 = "restart the computer now" wide //weight: 1
        $x_1_4 = "Yes, I would like to view the README file" wide //weight: 1
    condition:
        (filesize < 20MB) and
        (all of ($x*))
}

rule Trojan_Win32_OffLoader_RDA_2147897275_0
{
    meta:
        author = "defender2yara"
        detection_name = "Trojan:Win32/OffLoader.RDA!MTB"
        threat_id = "2147897275"
        type = "Trojan"
        platform = "Win32: Windows 32-bit platform"
        family = "OffLoader"
        severity = "Critical"
        info = "MTB: Microsoft Threat Behavior"
        signature_type = "SIGNATURE_TYPE_PEHSTR_EXT"
        threshold = "3"
        strings_accuracy = "High"
    strings:
        $x_2_1 = "//groupcobweb.online/eld.php?" wide //weight: 2
        $x_1_2 = "server\\share" wide //weight: 1
    condition:
        (filesize < 20MB) and
        (all of ($x*))
}

rule Trojan_Win32_OffLoader_RDB_2147897284_0
{
    meta:
        author = "defender2yara"
        detection_name = "Trojan:Win32/OffLoader.RDB!MTB"
        threat_id = "2147897284"
        type = "Trojan"
        platform = "Win32: Windows 32-bit platform"
        family = "OffLoader"
        severity = "Critical"
        info = "MTB: Microsoft Threat Behavior"
        signature_type = "SIGNATURE_TYPE_PEHSTR_EXT"
        threshold = "3"
        strings_accuracy = "High"
    strings:
        $x_2_1 = "//guideslave.online/he.php?" wide //weight: 2
        $x_1_2 = "server\\share" wide //weight: 1
    condition:
        (filesize < 20MB) and
        (all of ($x*))
}

rule Trojan_Win32_OffLoader_ASR_2147897432_0
{
    meta:
        author = "defender2yara"
        detection_name = "Trojan:Win32/OffLoader.ASR!MTB"
        threat_id = "2147897432"
        type = "Trojan"
        platform = "Win32: Windows 32-bit platform"
        family = "OffLoader"
        severity = "Critical"
        info = "MTB: Microsoft Threat Behavior"
        signature_type = "SIGNATURE_TYPE_PEHSTR_EXT"
        threshold = "5"
        strings_accuracy = "High"
    strings:
        $x_2_1 = {68 00 74 00 74 00 70 00 73 00 3a 00 2f 00 2f 00 67 00 6f 00 6f 00 64 00 2e 00 63 00 65 00 6c 00 6c 00 61 00 72 00 73 00 6d 00 61 00 73 00 68 00 2e 00 77 00 65 00 62 00 73 00 69 00 74 00 65 00 2f 00 73 00 73 00 2e 00 70 00 68 00 70 00 3f 00 61 00 3d}  //weight: 2, accuracy: High
        $x_2_2 = {68 00 74 00 74 00 70 00 73 00 3a 00 2f 00 2f 00 6f 00 75 00 2e 00 64 00 69 00 6d 00 65 00 66 00 6c 00 6f 00 77 00 65 00 72 00 73 00 2e 00 77 00 65 00 62 00 73 00 69 00 74 00 65 00 2f 00 73 00 73 00 2e 00 70 00 68 00 70 00 3f 00 61 00 3d}  //weight: 2, accuracy: High
        $x_1_3 = {73 00 65 00 72 00 76 00 65 00 72 00 5c 00 73 00 68 00 61 00 72 00 65}  //weight: 1, accuracy: High
        $x_1_4 = "restart the computer now" wide //weight: 1
        $x_1_5 = "Yes, I would like to view the README file" wide //weight: 1
    condition:
        (filesize < 20MB) and
        (
            ((1 of ($x_2_*) and 3 of ($x_1_*))) or
            ((2 of ($x_2_*) and 1 of ($x_1_*))) or
            (all of ($x*))
        )
}

rule Trojan_Win32_OffLoader_AST_2147897825_0
{
    meta:
        author = "defender2yara"
        detection_name = "Trojan:Win32/OffLoader.AST!MTB"
        threat_id = "2147897825"
        type = "Trojan"
        platform = "Win32: Windows 32-bit platform"
        family = "OffLoader"
        severity = "Critical"
        info = "MTB: Microsoft Threat Behavior"
        signature_type = "SIGNATURE_TYPE_PEHSTR_EXT"
        threshold = "5"
        strings_accuracy = "High"
    strings:
        $x_2_1 = {68 00 74 00 74 00 70 00 3a 00 2f 00 2f 00 72 00 65 00 73 00 74 00 66 00 6f 00 72 00 6b 00 2e 00 77 00 65 00 62 00 73 00 69 00 74 00 65 00 2f 00 77 00 69 00 2e 00 70 00 68 00 70 00 3f 00 70 00 3d}  //weight: 2, accuracy: High
        $x_1_2 = {73 00 65 00 72 00 76 00 65 00 72 00 5c 00 73 00 68 00 61 00 72 00 65}  //weight: 1, accuracy: High
        $x_1_3 = "restart the computer now" wide //weight: 1
        $x_1_4 = "Yes, I would like to view the README file" wide //weight: 1
    condition:
        (filesize < 20MB) and
        (all of ($x*))
}

rule Trojan_Win32_OffLoader_RDC_2147897833_0
{
    meta:
        author = "defender2yara"
        detection_name = "Trojan:Win32/OffLoader.RDC!MTB"
        threat_id = "2147897833"
        type = "Trojan"
        platform = "Win32: Windows 32-bit platform"
        family = "OffLoader"
        severity = "Critical"
        info = "MTB: Microsoft Threat Behavior"
        signature_type = "SIGNATURE_TYPE_PEHSTR_EXT"
        threshold = "3"
        strings_accuracy = "High"
    strings:
        $x_2_1 = "//restfork.website/win.php" wide //weight: 2
        $x_1_2 = "server\\share" wide //weight: 1
    condition:
        (filesize < 20MB) and
        (all of ($x*))
}

rule Trojan_Win32_OffLoader_RDD_2147898334_0
{
    meta:
        author = "defender2yara"
        detection_name = "Trojan:Win32/OffLoader.RDD!MTB"
        threat_id = "2147898334"
        type = "Trojan"
        platform = "Win32: Windows 32-bit platform"
        family = "OffLoader"
        severity = "Critical"
        info = "MTB: Microsoft Threat Behavior"
        signature_type = "SIGNATURE_TYPE_PEHSTR_EXT"
        threshold = "3"
        strings_accuracy = "High"
    strings:
        $x_2_1 = "//celerypie.online/asts.php" wide //weight: 2
        $x_1_2 = "server\\share" wide //weight: 1
    condition:
        (filesize < 20MB) and
        (all of ($x*))
}

rule Trojan_Win32_OffLoader_ASU_2147898607_0
{
    meta:
        author = "defender2yara"
        detection_name = "Trojan:Win32/OffLoader.ASU!MTB"
        threat_id = "2147898607"
        type = "Trojan"
        platform = "Win32: Windows 32-bit platform"
        family = "OffLoader"
        severity = "Critical"
        info = "MTB: Microsoft Threat Behavior"
        signature_type = "SIGNATURE_TYPE_PEHSTR_EXT"
        threshold = "5"
        strings_accuracy = "High"
    strings:
        $x_1_1 = {68 00 74 00 74 00 70 00 3a 00 2f 00 2f 00 62 00 61 00 67 00 70 00 6c 00 61 00 79 00 2e 00 77 00 65 00 62 00 73 00 69 00 74 00 65 00 2f 00 62 00 61 00 6e 00 2e 00 70 00 68 00 70 00 3f 00 70 00 3d}  //weight: 1, accuracy: High
        $x_1_2 = {68 00 74 00 74 00 70 00 3a 00 2f 00 2f 00 66 00 69 00 72 00 65 00 62 00 69 00 72 00 74 00 68 00 64 00 61 00 79 00 2e 00 73 00 69 00 74 00 65 00 2f 00 62 00 61 00 6e 00 2e 00 70 00 68 00 70 00 3f 00 70 00 3d}  //weight: 1, accuracy: High
        $x_1_3 = {68 00 74 00 74 00 70 00 3a 00 2f 00 2f 00 70 00 72 00 6f 00 64 00 75 00 63 00 65 00 66 00 72 00 69 00 65 00 6e 00 64 00 73 00 2e 00 78 00 79 00 7a 00 2f 00 6f 00 63 00 2e 00 70 00 68 00 70 00 3f 00 70 00 3d}  //weight: 1, accuracy: High
        $x_1_4 = {68 00 74 00 74 00 70 00 3a 00 2f 00 2f 00 62 00 6f 00 6f 00 6b 00 73 00 61 00 6d 00 75 00 73 00 65 00 6d 00 65 00 6e 00 74 00 2e 00 77 00 65 00 62 00 73 00 69 00 74 00 65 00 2f 00 6f 00 63 00 2e 00 70 00 68 00 70 00 3f 00 70 00 3d}  //weight: 1, accuracy: High
        $x_1_5 = {73 00 65 00 72 00 76 00 65 00 72 00 5c 00 73 00 68 00 61 00 72 00 65}  //weight: 1, accuracy: High
        $x_1_6 = "restart the computer now" wide //weight: 1
        $x_1_7 = "Yes, I would like to view the README file" wide //weight: 1
    condition:
        (filesize < 20MB) and
        (5 of ($x*))
}

rule Trojan_Win32_OffLoader_RDE_2147898785_0
{
    meta:
        author = "defender2yara"
        detection_name = "Trojan:Win32/OffLoader.RDE!MTB"
        threat_id = "2147898785"
        type = "Trojan"
        platform = "Win32: Windows 32-bit platform"
        family = "OffLoader"
        severity = "Critical"
        info = "MTB: Microsoft Threat Behavior"
        signature_type = "SIGNATURE_TYPE_PEHSTR_EXT"
        threshold = "3"
        strings_accuracy = "High"
    strings:
        $x_2_1 = "//d.minutepin.website/x.php?" wide //weight: 2
        $x_1_2 = "server\\share" wide //weight: 1
    condition:
        (filesize < 20MB) and
        (all of ($x*))
}

rule Trojan_Win32_OffLoader_ASW_2147898815_0
{
    meta:
        author = "defender2yara"
        detection_name = "Trojan:Win32/OffLoader.ASW!MTB"
        threat_id = "2147898815"
        type = "Trojan"
        platform = "Win32: Windows 32-bit platform"
        family = "OffLoader"
        severity = "Critical"
        info = "MTB: Microsoft Threat Behavior"
        signature_type = "SIGNATURE_TYPE_PEHSTR_EXT"
        threshold = "5"
        strings_accuracy = "High"
    strings:
        $x_2_1 = {68 00 74 00 74 00 70 00 3a 00 2f 00 2f 00 72 00 65 00 73 00 74 00 66 00 6f 00 72 00 6b 00 2e 00 77 00 65 00 62 00 73 00 69 00 74 00 65 00 2f 00 62 00 6f 00 2e 00 70 00 68 00 70 00 3f 00 70 00 3d}  //weight: 2, accuracy: High
        $x_1_2 = {73 00 65 00 72 00 76 00 65 00 72 00 5c 00 73 00 68 00 61 00 72 00 65}  //weight: 1, accuracy: High
        $x_1_3 = "restart the computer now" wide //weight: 1
        $x_1_4 = "Yes, I would like to view the README file" wide //weight: 1
    condition:
        (filesize < 20MB) and
        (all of ($x*))
}

rule Trojan_Win32_OffLoader_ASX_2147899270_0
{
    meta:
        author = "defender2yara"
        detection_name = "Trojan:Win32/OffLoader.ASX!MTB"
        threat_id = "2147899270"
        type = "Trojan"
        platform = "Win32: Windows 32-bit platform"
        family = "OffLoader"
        severity = "Critical"
        info = "MTB: Microsoft Threat Behavior"
        signature_type = "SIGNATURE_TYPE_PEHSTR_EXT"
        threshold = "5"
        strings_accuracy = "High"
    strings:
        $x_2_1 = {68 00 74 00 74 00 70 00 73 00 3a 00 2f 00 2f 00 66 00 61 00 6c 00 73 00 65 00 2e 00 61 00 70 00 70 00 61 00 72 00 65 00 6c 00 73 00 69 00 6c 00 76 00 65 00 72 00 2e 00 78 00 79 00 7a 00 2f 00 73 00 73 00 2e 00 70 00 68 00 70 00 3f 00 61 00 3d}  //weight: 2, accuracy: High
        $x_2_2 = {68 00 74 00 74 00 70 00 73 00 3a 00 2f 00 2f 00 6a 00 75 00 6d 00 70 00 77 00 65 00 69 00 67 00 68 00 74 00 2e 00 77 00 65 00 62 00 73 00 69 00 74 00 65 00 2f 00 73 00 73 00 2e 00 70 00 68 00 70 00 3f 00 61 00 3d}  //weight: 2, accuracy: High
        $x_1_3 = {73 00 65 00 72 00 76 00 65 00 72 00 5c 00 73 00 68 00 61 00 72 00 65}  //weight: 1, accuracy: High
        $x_1_4 = "restart the computer now" wide //weight: 1
        $x_1_5 = "Yes, I would like to view the README file" wide //weight: 1
    condition:
        (filesize < 20MB) and
        (
            ((1 of ($x_2_*) and 3 of ($x_1_*))) or
            ((2 of ($x_2_*) and 1 of ($x_1_*))) or
            (all of ($x*))
        )
}

rule Trojan_Win32_OffLoader_ASY_2147899834_0
{
    meta:
        author = "defender2yara"
        detection_name = "Trojan:Win32/OffLoader.ASY!MTB"
        threat_id = "2147899834"
        type = "Trojan"
        platform = "Win32: Windows 32-bit platform"
        family = "OffLoader"
        severity = "Critical"
        info = "MTB: Microsoft Threat Behavior"
        signature_type = "SIGNATURE_TYPE_PEHSTR_EXT"
        threshold = "5"
        strings_accuracy = "High"
    strings:
        $x_2_1 = "http://birthdayrhythm.online/ra.php?pe=n&p" wide //weight: 2
        $x_1_2 = {73 00 65 00 72 00 76 00 65 00 72 00 5c 00 73 00 68 00 61 00 72 00 65}  //weight: 1, accuracy: High
        $x_1_3 = "restart the computer now" wide //weight: 1
        $x_1_4 = "Yes, I would like to view the README file" wide //weight: 1
    condition:
        (filesize < 20MB) and
        (all of ($x*))
}

rule Trojan_Win32_OffLoader_AAAT_2147899898_0
{
    meta:
        author = "defender2yara"
        detection_name = "Trojan:Win32/OffLoader.AAAT!MTB"
        threat_id = "2147899898"
        type = "Trojan"
        platform = "Win32: Windows 32-bit platform"
        family = "OffLoader"
        severity = "Critical"
        info = "MTB: Microsoft Threat Behavior"
        signature_type = "SIGNATURE_TYPE_PEHSTR_EXT"
        threshold = "5"
        strings_accuracy = "High"
    strings:
        $x_2_1 = {68 00 74 00 74 00 70 00 73 00 3a 00 2f 00 2f 00 6b 00 6e 00 6f 00 74 00 74 00 68 00 72 00 69 00 6c 00 6c 00 2e 00 73 00 69 00 74 00 65 00 2f 00 73 00 73 00 2e 00 70 00 68 00 70}  //weight: 2, accuracy: High
        $x_1_2 = {73 00 65 00 72 00 76 00 65 00 72 00 5c 00 73 00 68 00 61 00 72 00 65}  //weight: 1, accuracy: High
        $x_1_3 = "restart the computer now" wide //weight: 1
        $x_1_4 = "Yes, I would like to view the README file" wide //weight: 1
    condition:
        (filesize < 20MB) and
        (all of ($x*))
}

rule Trojan_Win32_OffLoader_AAAW_2147900019_0
{
    meta:
        author = "defender2yara"
        detection_name = "Trojan:Win32/OffLoader.AAAW!MTB"
        threat_id = "2147900019"
        type = "Trojan"
        platform = "Win32: Windows 32-bit platform"
        family = "OffLoader"
        severity = "Critical"
        info = "MTB: Microsoft Threat Behavior"
        signature_type = "SIGNATURE_TYPE_PEHSTR_EXT"
        threshold = "5"
        strings_accuracy = "High"
    strings:
        $x_2_1 = {68 00 74 00 74 00 70 00 3a 00 2f 00 2f 00 73 00 6f 00 66 00 61 00 69 00 63 00 69 00 63 00 6c 00 65 00 2e 00 6f 00 6e 00 6c 00 69 00 6e 00 65 00 2f 00 6c 00 69 00 6d 00 2e 00 70 00 68 00 70}  //weight: 2, accuracy: High
        $x_1_2 = {73 00 65 00 72 00 76 00 65 00 72 00 5c 00 73 00 68 00 61 00 72 00 65}  //weight: 1, accuracy: High
        $x_1_3 = "restart the computer now" wide //weight: 1
        $x_1_4 = "Yes, I would like to view the README file" wide //weight: 1
    condition:
        (filesize < 20MB) and
        (all of ($x*))
}

rule Trojan_Win32_OffLoader_ASZ_2147900499_0
{
    meta:
        author = "defender2yara"
        detection_name = "Trojan:Win32/OffLoader.ASZ!MTB"
        threat_id = "2147900499"
        type = "Trojan"
        platform = "Win32: Windows 32-bit platform"
        family = "OffLoader"
        severity = "Critical"
        info = "MTB: Microsoft Threat Behavior"
        signature_type = "SIGNATURE_TYPE_PEHSTR_EXT"
        threshold = "5"
        strings_accuracy = "High"
    strings:
        $x_2_1 = {68 00 74 00 74 00 70 00 3a 00 2f 00 2f 00 62 00 69 00 72 00 74 00 68 00 64 00 61 00 79 00 72 00 68 00 79 00 74 00 68 00 6d 00 2e 00 6f 00 6e 00 6c 00 69 00 6e 00 65 00 2f 00 72 00 61 00 2e 00 70 00 68 00 70 00 3f 00 70 00 3d}  //weight: 2, accuracy: High
        $x_2_2 = {68 00 74 00 74 00 70 00 3a 00 2f 00 2f 00 65 00 6c 00 62 00 6f 00 77 00 73 00 74 00 72 00 75 00 63 00 74 00 75 00 72 00 65 00 2e 00 77 00 65 00 62 00 73 00 69 00 74 00 65 00 2f 00 70 00 69 00 74 00 2e 00 70 00 68 00 70 00 3f 00 70 00 65 00 3d}  //weight: 2, accuracy: High
        $x_1_3 = {73 00 65 00 72 00 76 00 65 00 72 00 5c 00 73 00 68 00 61 00 72 00 65}  //weight: 1, accuracy: High
        $x_1_4 = "restart the computer now" wide //weight: 1
        $x_1_5 = "Yes, I would like to view the README file" wide //weight: 1
    condition:
        (filesize < 20MB) and
        (
            ((1 of ($x_2_*) and 3 of ($x_1_*))) or
            ((2 of ($x_2_*) and 1 of ($x_1_*))) or
            (all of ($x*))
        )
}

rule Trojan_Win32_OffLoader_ASAA_2147900649_0
{
    meta:
        author = "defender2yara"
        detection_name = "Trojan:Win32/OffLoader.ASAA!MTB"
        threat_id = "2147900649"
        type = "Trojan"
        platform = "Win32: Windows 32-bit platform"
        family = "OffLoader"
        severity = "Critical"
        info = "MTB: Microsoft Threat Behavior"
        signature_type = "SIGNATURE_TYPE_PEHSTR_EXT"
        threshold = "5"
        strings_accuracy = "High"
    strings:
        $x_2_1 = {68 00 74 00 74 00 70 00 73 00 3a 00 2f 00 2f 00 6d 00 69 00 63 00 65 00 74 00 72 00 61 00 69 00 6e 00 73 00 2e 00 77 00 65 00 62 00 73 00 69 00 74 00 65 00 2f 00 73 00 73 00 2e 00 70 00 68 00 70 00 3f 00 61 00 3d}  //weight: 2, accuracy: High
        $x_1_2 = {73 00 65 00 72 00 76 00 65 00 72 00 5c 00 73 00 68 00 61 00 72 00 65}  //weight: 1, accuracy: High
        $x_1_3 = "restart the computer now" wide //weight: 1
        $x_1_4 = "Yes, I would like to view the README file" wide //weight: 1
    condition:
        (filesize < 20MB) and
        (all of ($x*))
}

rule Trojan_Win32_OffLoader_ASAB_2147901289_0
{
    meta:
        author = "defender2yara"
        detection_name = "Trojan:Win32/OffLoader.ASAB!MTB"
        threat_id = "2147901289"
        type = "Trojan"
        platform = "Win32: Windows 32-bit platform"
        family = "OffLoader"
        severity = "Critical"
        info = "MTB: Microsoft Threat Behavior"
        signature_type = "SIGNATURE_TYPE_PEHSTR_EXT"
        threshold = "5"
        strings_accuracy = "High"
    strings:
        $x_2_1 = {68 00 74 00 74 00 70 00 73 00 3a 00 2f 00 2f 00 62 00 75 00 6c 00 62 00 6e 00 75 00 74 00 2e 00 6f 00 6e 00 6c 00 69 00 6e 00 65 00 2f 00 73 00 73 00 2e 00 70 00 68 00 70 00 3f 00 61 00 3d}  //weight: 2, accuracy: High
        $x_1_2 = {73 00 65 00 72 00 76 00 65 00 72 00 5c 00 73 00 68 00 61 00 72 00 65}  //weight: 1, accuracy: High
        $x_1_3 = "restart the computer now" wide //weight: 1
        $x_1_4 = "Yes, I would like to view the README file" wide //weight: 1
    condition:
        (filesize < 20MB) and
        (all of ($x*))
}

rule Trojan_Win32_OffLoader_ASAC_2147901371_0
{
    meta:
        author = "defender2yara"
        detection_name = "Trojan:Win32/OffLoader.ASAC!MTB"
        threat_id = "2147901371"
        type = "Trojan"
        platform = "Win32: Windows 32-bit platform"
        family = "OffLoader"
        severity = "Critical"
        info = "MTB: Microsoft Threat Behavior"
        signature_type = "SIGNATURE_TYPE_PEHSTR_EXT"
        threshold = "5"
        strings_accuracy = "High"
    strings:
        $x_2_1 = {68 00 74 00 74 00 70 00 3a 00 2f 00 2f 00 72 00 61 00 69 00 6c 00 74 00 68 00 72 00 69 00 6c 00 6c 00 2e 00 78 00 79 00 7a 00 2f 00 66 00 69 00 6e 00 2e 00 70 00 68 00 70 00 3f 00 70 00 65 00 3d 00 6e 00 26 00 70 00 3d}  //weight: 2, accuracy: High
        $x_1_2 = {73 00 65 00 72 00 76 00 65 00 72 00 5c 00 73 00 68 00 61 00 72 00 65}  //weight: 1, accuracy: High
        $x_1_3 = "restart the computer now" wide //weight: 1
        $x_1_4 = "Yes, I would like to view the README file" wide //weight: 1
    condition:
        (filesize < 20MB) and
        (all of ($x*))
}

rule Trojan_Win32_OffLoader_ASAD_2147902010_0
{
    meta:
        author = "defender2yara"
        detection_name = "Trojan:Win32/OffLoader.ASAD!MTB"
        threat_id = "2147902010"
        type = "Trojan"
        platform = "Win32: Windows 32-bit platform"
        family = "OffLoader"
        severity = "Critical"
        info = "MTB: Microsoft Threat Behavior"
        signature_type = "SIGNATURE_TYPE_PEHSTR_EXT"
        threshold = "10"
        strings_accuracy = "Low"
    strings:
        $x_2_1 = "brassforce.site/ploss.php?a=" ascii //weight: 2
        $x_2_2 = "sto.farmscene.website/track" ascii //weight: 2
        $x_2_3 = {76 63 72 65 64 69 73 74 5f 78 36 34 2e 65 78 65 [0-16] 5c 69 6e 65 74 63 2e 64 6c 6c}  //weight: 2, accuracy: Low
        $x_2_4 = "weaksecurity" ascii //weight: 2
        $x_1_5 = "VERYSILENT /PASSWORD=NtIRVUpMK9ZD30Nf98220" ascii //weight: 1
        $x_1_6 = "VERYSILENT /SUPPRESSMSGBOXES" ascii //weight: 1
        $x_1_7 = "only/ppba" ascii //weight: 1
        $x_1_8 = "qn CAMPAIGN=" ascii //weight: 1
    condition:
        (filesize < 20MB) and
        (
            ((3 of ($x_2_*) and 4 of ($x_1_*))) or
            ((4 of ($x_2_*) and 2 of ($x_1_*))) or
            (all of ($x*))
        )
}

rule Trojan_Win32_OffLoader_ASAE_2147902481_0
{
    meta:
        author = "defender2yara"
        detection_name = "Trojan:Win32/OffLoader.ASAE!MTB"
        threat_id = "2147902481"
        type = "Trojan"
        platform = "Win32: Windows 32-bit platform"
        family = "OffLoader"
        severity = "Critical"
        info = "MTB: Microsoft Threat Behavior"
        signature_type = "SIGNATURE_TYPE_PEHSTR_EXT"
        threshold = "5"
        strings_accuracy = "High"
    strings:
        $x_2_1 = {68 00 74 00 74 00 70 00 73 00 3a 00 2f 00 2f 00 73 00 6b 00 79 00 73 00 63 00 69 00 65 00 6e 00 63 00 65 00 2e 00 77 00 65 00 62 00 73 00 69 00 74 00 65 00 2f 00 73 00 73 00 2e 00 70 00 68 00 70 00 3f 00 61 00 3d}  //weight: 2, accuracy: High
        $x_1_2 = {73 00 65 00 72 00 76 00 65 00 72 00 5c 00 73 00 68 00 61 00 72 00 65}  //weight: 1, accuracy: High
        $x_1_3 = "restart the computer now" wide //weight: 1
        $x_1_4 = "Yes, I would like to view the README file" wide //weight: 1
    condition:
        (filesize < 20MB) and
        (all of ($x*))
}

rule Trojan_Win32_OffLoader_GPA_2147902788_0
{
    meta:
        author = "defender2yara"
        detection_name = "Trojan:Win32/OffLoader.GPA!MTB"
        threat_id = "2147902788"
        type = "Trojan"
        platform = "Win32: Windows 32-bit platform"
        family = "OffLoader"
        severity = "Critical"
        info = "MTB: Microsoft Threat Behavior"
        signature_type = "SIGNATURE_TYPE_PEHSTR_EXT"
        threshold = "7"
        strings_accuracy = "High"
    strings:
        $x_5_1 = "vestmountain.site/bli.php" ascii //weight: 5
        $x_2_2 = "woodlevel.site/tracker/thank_you.php" ascii //weight: 2
        $x_5_3 = "seedagreement.site/asiko.php" ascii //weight: 5
        $x_2_4 = "sto.farmscene.website" ascii //weight: 2
    condition:
        (filesize < 20MB) and
        (
            ((1 of ($x_5_*) and 1 of ($x_2_*))) or
            ((2 of ($x_5_*))) or
            (all of ($x*))
        )
}

rule Trojan_Win32_OffLoader_ASAF_2147902897_0
{
    meta:
        author = "defender2yara"
        detection_name = "Trojan:Win32/OffLoader.ASAF!MTB"
        threat_id = "2147902897"
        type = "Trojan"
        platform = "Win32: Windows 32-bit platform"
        family = "OffLoader"
        severity = "Critical"
        info = "MTB: Microsoft Threat Behavior"
        signature_type = "SIGNATURE_TYPE_PEHSTR_EXT"
        threshold = "5"
        strings_accuracy = "High"
    strings:
        $x_1_1 = {68 00 74 00 74 00 70 00 3a 00 2f 00 2f 00 67 00 72 00 6f 00 75 00 70 00 77 00 69 00 6e 00 65 00 2e 00 77 00 65 00 62 00 73 00 69 00 74 00 65 00 2f 00 62 00 6f 00 6b 00 2e 00 70 00 68 00 70 00 3f 00 70 00 65 00 3d}  //weight: 1, accuracy: High
        $x_1_2 = {68 00 74 00 74 00 70 00 3a 00 2f 00 2f 00 6d 00 69 00 6e 00 65 00 67 00 75 00 69 00 74 00 61 00 72 00 2e 00 6f 00 6e 00 6c 00 69 00 6e 00 65 00 2f 00 62 00 6f 00 6b 00 2e 00 70 00 68 00 70 00 3f 00 70 00 65 00 3d 00 31 00 26 00 70 00 3d}  //weight: 1, accuracy: High
        $x_1_3 = {73 00 65 00 72 00 76 00 65 00 72 00 5c 00 73 00 68 00 61 00 72 00 65}  //weight: 1, accuracy: High
        $x_1_4 = "restart the computer now" wide //weight: 1
        $x_1_5 = "Yes, I would like to view the README file" wide //weight: 1
    condition:
        (filesize < 20MB) and
        (all of ($x*))
}

rule Trojan_Win32_OffLoader_GPC_2147903252_0
{
    meta:
        author = "defender2yara"
        detection_name = "Trojan:Win32/OffLoader.GPC!MTB"
        threat_id = "2147903252"
        type = "Trojan"
        platform = "Win32: Windows 32-bit platform"
        family = "OffLoader"
        severity = "Critical"
        info = "MTB: Microsoft Threat Behavior"
        signature_type = "SIGNATURE_TYPE_PEHSTR_EXT"
        threshold = "7"
        strings_accuracy = "High"
    strings:
        $x_5_1 = "wastetop.website/run.php" ascii //weight: 5
        $x_2_2 = "thoughtmeal.site/tracker/thank_you" ascii //weight: 2
    condition:
        (filesize < 20MB) and
        (all of ($x*))
}

rule Trojan_Win32_OffLoader_ASAG_2147903865_0
{
    meta:
        author = "defender2yara"
        detection_name = "Trojan:Win32/OffLoader.ASAG!MTB"
        threat_id = "2147903865"
        type = "Trojan"
        platform = "Win32: Windows 32-bit platform"
        family = "OffLoader"
        severity = "Critical"
        info = "MTB: Microsoft Threat Behavior"
        signature_type = "SIGNATURE_TYPE_PEHSTR_EXT"
        threshold = "9"
        strings_accuracy = "Low"
    strings:
        $x_2_1 = "drinkbattle.xyz/asiko.php?" wide //weight: 2
        $x_2_2 = "shipstream.xyz/asiko.php?" wide //weight: 2
        $x_2_3 = "Are you sure that you want to stop download?" wide //weight: 2
        $x_2_4 = {73 00 65 00 74 00 5f 00 ?? 00 2e 00 65 00 78 00 65 00 22 00 20 00 2f 00 71 00 6e 00 20 00 43 00 41 00 4d 00 50 00 41 00 49 00 47 00 4e 00 3d}  //weight: 2, accuracy: Low
        $x_2_5 = {73 00 65 00 74 00 5f 00 30 00 2e 00 65 00 78 00 65 00 22 00 20 00 2d 00 2d 00 73 00 69 00 6c 00 65 00 6e 00 74 00 20 00 2d 00 2d 00 61 00 6c 00 6c 00 75 00 73 00 65 00 72 00 73 00 3d 00 30}  //weight: 2, accuracy: High
        $x_1_6 = "only/ppba" wide //weight: 1
        $x_1_7 = "Software\\sdfwsdfs6df" wide //weight: 1
        $x_1_8 = "Software\\AmbaSoftGmbH" wide //weight: 1
        $x_1_9 = "VERYSILENT /PASSWORD=NtIRVUpMK9ZD30Nf98220  -token mtn1co3fo4gs5vwq -subid" wide //weight: 1
        $x_1_10 = "SP- /VERYSILENT /SUPPRESSMSGBOXES /INSTALLERSHOWNELSEWHERE /sid" wide //weight: 1
    condition:
        (filesize < 20MB) and
        (
            ((2 of ($x_2_*) and 5 of ($x_1_*))) or
            ((3 of ($x_2_*) and 3 of ($x_1_*))) or
            ((4 of ($x_2_*) and 1 of ($x_1_*))) or
            ((5 of ($x_2_*))) or
            (all of ($x*))
        )
}

rule Trojan_Win32_OffLoader_GPD_2147903882_0
{
    meta:
        author = "defender2yara"
        detection_name = "Trojan:Win32/OffLoader.GPD!MTB"
        threat_id = "2147903882"
        type = "Trojan"
        platform = "Win32: Windows 32-bit platform"
        family = "OffLoader"
        severity = "Critical"
        info = "MTB: Microsoft Threat Behavior"
        signature_type = "SIGNATURE_TYPE_PEHSTR_EXT"
        threshold = "7"
        strings_accuracy = "High"
    strings:
        $x_5_1 = "chessfang.online/pp.php?pe" ascii //weight: 5
        $x_2_2 = "educationcoach.site" ascii //weight: 2
    condition:
        (filesize < 20MB) and
        (all of ($x*))
}

rule Trojan_Win32_OffLoader_GDAA_2147903894_0
{
    meta:
        author = "defender2yara"
        detection_name = "Trojan:Win32/OffLoader.GDAA!MTB"
        threat_id = "2147903894"
        type = "Trojan"
        platform = "Win32: Windows 32-bit platform"
        family = "OffLoader"
        severity = "Critical"
        info = "MTB: Microsoft Threat Behavior"
        signature_type = "SIGNATURE_TYPE_PEHSTR_EXT"
        threshold = "5"
        strings_accuracy = "High"
    strings:
        $x_2_1 = "://towndust.website/af.php?" wide //weight: 2
        $x_2_2 = "://educationcoach.site/aft.php?" wide //weight: 2
        $x_2_3 = "://voyageblood.online/glam.php?" wide //weight: 2
        $x_2_4 = "://servantzephyr.online/tracker/thank_you.php?" wide //weight: 2
        $x_1_5 = "/silent" wide //weight: 1
    condition:
        (filesize < 20MB) and
        (
            ((2 of ($x_2_*) and 1 of ($x_1_*))) or
            ((3 of ($x_2_*))) or
            (all of ($x*))
        )
}

rule Trojan_Win32_OffLoader_GPE_2147904281_0
{
    meta:
        author = "defender2yara"
        detection_name = "Trojan:Win32/OffLoader.GPE!MTB"
        threat_id = "2147904281"
        type = "Trojan"
        platform = "Win32: Windows 32-bit platform"
        family = "OffLoader"
        severity = "Critical"
        info = "MTB: Microsoft Threat Behavior"
        signature_type = "SIGNATURE_TYPE_PEHSTR_EXT"
        threshold = "7"
        strings_accuracy = "High"
    strings:
        $x_5_1 = "ducksstop.site/glam.php?pe" ascii //weight: 5
        $x_2_2 = "jellyfishtrees.site/tracker/thank_you.php" ascii //weight: 2
    condition:
        (filesize < 20MB) and
        (all of ($x*))
}

rule Trojan_Win32_OffLoader_GE_2147904428_0
{
    meta:
        author = "defender2yara"
        detection_name = "Trojan:Win32/OffLoader.GE!MTB"
        threat_id = "2147904428"
        type = "Trojan"
        platform = "Win32: Windows 32-bit platform"
        family = "OffLoader"
        severity = "Critical"
        info = "MTB: Microsoft Threat Behavior"
        signature_type = "SIGNATURE_TYPE_PEHSTR_EXT"
        threshold = "2"
        strings_accuracy = "High"
    strings:
        $x_1_1 = "SOFTWARE\\YCL" ascii //weight: 1
        $x_1_2 = "glovefire.site/dub.php?fz" ascii //weight: 1
    condition:
        (filesize < 20MB) and
        (all of ($x*))
}

rule Trojan_Win32_OffLoader_ASAH_2147904474_0
{
    meta:
        author = "defender2yara"
        detection_name = "Trojan:Win32/OffLoader.ASAH!MTB"
        threat_id = "2147904474"
        type = "Trojan"
        platform = "Win32: Windows 32-bit platform"
        family = "OffLoader"
        severity = "Critical"
        info = "MTB: Microsoft Threat Behavior"
        signature_type = "SIGNATURE_TYPE_PEHSTR_EXT"
        threshold = "5"
        strings_accuracy = "High"
    strings:
        $x_3_1 = "pleasurefly.online/tracker/thank_you.php" wide //weight: 3
        $x_1_2 = "/silent" wide //weight: 1
        $x_1_3 = "I want to manually reboot later" wide //weight: 1
    condition:
        (filesize < 20MB) and
        (all of ($x*))
}

rule Trojan_Win32_OffLoader_HNS_2147904570_0
{
    meta:
        author = "defender2yara"
        detection_name = "Trojan:Win32/OffLoader.HNS!MTB"
        threat_id = "2147904570"
        type = "Trojan"
        platform = "Win32: Windows 32-bit platform"
        family = "OffLoader"
        severity = "Critical"
        info = "MTB: Microsoft Threat Behavior"
        signature_type = "SIGNATURE_TYPE_PEHSTR_EXT"
        threshold = "8"
        strings_accuracy = "High"
    strings:
        $x_1_1 = "InnoDownloadPlugin/1.5" ascii //weight: 1
        $x_1_2 = ".php?spot=1&a=" ascii //weight: 1
        $x_1_3 = "--silent --allusers=0" ascii //weight: 1
        $x_5_4 = ".php?fz=&d=nsis&msg=&r=offer_execution&rk=yes&o=" ascii //weight: 5
    condition:
        (filesize < 20MB) and
        (all of ($x*))
}

rule Trojan_Win32_OffLoader_HNS_2147904570_1
{
    meta:
        author = "defender2yara"
        detection_name = "Trojan:Win32/OffLoader.HNS!MTB"
        threat_id = "2147904570"
        type = "Trojan"
        platform = "Win32: Windows 32-bit platform"
        family = "OffLoader"
        severity = "Critical"
        info = "MTB: Microsoft Threat Behavior"
        signature_type = "SIGNATURE_TYPE_PEHSTR_EXT"
        threshold = "14"
        strings_accuracy = "Low"
    strings:
        $x_1_1 = "--silent --allusers=0" ascii //weight: 1
        $x_1_2 = ".php?fz=" ascii //weight: 1
        $x_1_3 = ".php?spot=" ascii //weight: 1
        $x_10_4 = {64 00 3d 00 69 00 6e 00 6e 00 6f 00 26 00 72 00 3d 00 6f 00 66 00 66 00 65 00 72 00 5f 00 65 00 78 00 65 00 63 00 75 00 74 00 69 00 6f 00 6e 00 26 00 ?? ?? ?? ?? 3d 00 79 00 65 00 73 00 26 00 6f 00 3d 00}  //weight: 10, accuracy: Low
        $x_10_5 = {64 3d 69 6e 6e 6f 26 72 3d 6f 66 66 65 72 5f 65 78 65 63 75 74 69 6f 6e 26 ?? ?? ?? ?? 3d 79 65 73 26 6f 3d}  //weight: 10, accuracy: Low
        $x_2_6 = {2e 00 6f 00 6e 00 6c 00 69 00 6e 00 65 00 2f 00 74 00 72 00 61 00 63 00 6b 00 5f 00 [0-16] 2e 00 70 00 68 00 70 00 3f 00 74 00 69 00 6d 00 3d 00}  //weight: 2, accuracy: Low
        $x_2_7 = {2e 6f 6e 6c 69 6e 65 2f 74 72 61 63 6b 5f [0-16] 2e 70 68 70 3f 74 69 6d 3d}  //weight: 2, accuracy: Low
        $x_2_8 = {73 00 74 00 61 00 74 00 65 00 73 00 2e 00 6c 00 6f 00 67 00 0b 12 00 00 00 00 00 15 00 00 60 01 14 00 00 00 66 00 00 00 68 00 74 00 74 00 70 00 3a 00 2f 00 2f}  //weight: 2, accuracy: High
    condition:
        (filesize < 20MB) and
        (
            ((1 of ($x_10_*) and 1 of ($x_2_*) and 2 of ($x_1_*))) or
            ((1 of ($x_10_*) and 2 of ($x_2_*))) or
            ((2 of ($x_10_*))) or
            (all of ($x*))
        )
}

rule Trojan_Win32_OffLoader_GF_2147904579_0
{
    meta:
        author = "defender2yara"
        detection_name = "Trojan:Win32/OffLoader.GF!MTB"
        threat_id = "2147904579"
        type = "Trojan"
        platform = "Win32: Windows 32-bit platform"
        family = "OffLoader"
        severity = "Critical"
        info = "MTB: Microsoft Threat Behavior"
        signature_type = "SIGNATURE_TYPE_PEHSTR_EXT"
        threshold = "3"
        strings_accuracy = "High"
    strings:
        $x_1_1 = "Software\\sdfwsdfs6df" ascii //weight: 1
        $x_1_2 = "Software\\SPoloCleaner" ascii //weight: 1
        $x_1_3 = "peacesleep.site/dub.php?fz" ascii //weight: 1
    condition:
        (filesize < 20MB) and
        (all of ($x*))
}

rule Trojan_Win32_OffLoader_SPFL_2147904609_0
{
    meta:
        author = "defender2yara"
        detection_name = "Trojan:Win32/OffLoader.SPFL!MTB"
        threat_id = "2147904609"
        type = "Trojan"
        platform = "Win32: Windows 32-bit platform"
        family = "OffLoader"
        severity = "Critical"
        info = "MTB: Microsoft Threat Behavior"
        signature_type = "SIGNATURE_TYPE_PEHSTR_EXT"
        threshold = "4"
        strings_accuracy = "High"
    strings:
        $x_2_1 = "laughyard.site/blip.php" wide //weight: 2
        $x_2_2 = "committeecircle.website/tracker/thank_you.php" wide //weight: 2
    condition:
        (filesize < 20MB) and
        (all of ($x*))
}

rule Trojan_Win32_OffLoader_SPGA_2147904664_0
{
    meta:
        author = "defender2yara"
        detection_name = "Trojan:Win32/OffLoader.SPGA!MTB"
        threat_id = "2147904664"
        type = "Trojan"
        platform = "Win32: Windows 32-bit platform"
        family = "OffLoader"
        severity = "Critical"
        info = "MTB: Microsoft Threat Behavior"
        signature_type = "SIGNATURE_TYPE_PEHSTR_EXT"
        threshold = "5"
        strings_accuracy = "High"
    strings:
        $x_3_1 = "veilorange.website/blip.php" wide //weight: 3
        $x_2_2 = "additionwriting.site/tracker/thank_you.php" wide //weight: 2
    condition:
        (filesize < 20MB) and
        (all of ($x*))
}

rule Trojan_Win32_OffLoader_SPDI_2147904780_0
{
    meta:
        author = "defender2yara"
        detection_name = "Trojan:Win32/OffLoader.SPDI!MTB"
        threat_id = "2147904780"
        type = "Trojan"
        platform = "Win32: Windows 32-bit platform"
        family = "OffLoader"
        severity = "Critical"
        info = "MTB: Microsoft Threat Behavior"
        signature_type = "SIGNATURE_TYPE_PEHSTR_EXT"
        threshold = "4"
        strings_accuracy = "High"
    strings:
        $x_2_1 = "detailquicksand.website/reap.php" wide //weight: 2
        $x_2_2 = "planegrain.website/tracker/thank_you.php" wide //weight: 2
    condition:
        (filesize < 20MB) and
        (all of ($x*))
}

rule Trojan_Win32_OffLoader_SPLL_2147904781_0
{
    meta:
        author = "defender2yara"
        detection_name = "Trojan:Win32/OffLoader.SPLL!MTB"
        threat_id = "2147904781"
        type = "Trojan"
        platform = "Win32: Windows 32-bit platform"
        family = "OffLoader"
        severity = "Critical"
        info = "MTB: Microsoft Threat Behavior"
        signature_type = "SIGNATURE_TYPE_PEHSTR_EXT"
        threshold = "2"
        strings_accuracy = "High"
    strings:
        $x_2_1 = "numberquince.xyz/li.php" ascii //weight: 2
    condition:
        (filesize < 20MB) and
        (all of ($x*))
}

rule Trojan_Win32_OffLoader_SPLL_2147904781_1
{
    meta:
        author = "defender2yara"
        detection_name = "Trojan:Win32/OffLoader.SPLL!MTB"
        threat_id = "2147904781"
        type = "Trojan"
        platform = "Win32: Windows 32-bit platform"
        family = "OffLoader"
        severity = "Critical"
        info = "MTB: Microsoft Threat Behavior"
        signature_type = "SIGNATURE_TYPE_PEHSTR_EXT"
        threshold = "3"
        strings_accuracy = "High"
    strings:
        $x_2_1 = "/magiclunch.icu/trr.php" wide //weight: 2
        $x_1_2 = "/silent" wide //weight: 1
    condition:
        (filesize < 20MB) and
        (all of ($x*))
}

rule Trojan_Win32_OffLoader_GK_2147904920_0
{
    meta:
        author = "defender2yara"
        detection_name = "Trojan:Win32/OffLoader.GK!MTB"
        threat_id = "2147904920"
        type = "Trojan"
        platform = "Win32: Windows 32-bit platform"
        family = "OffLoader"
        severity = "Critical"
        info = "MTB: Microsoft Threat Behavior"
        signature_type = "SIGNATURE_TYPE_PEHSTR_EXT"
        threshold = "5"
        strings_accuracy = "High"
    strings:
        $x_1_1 = "Software\\AmbaSoftGmbH" ascii //weight: 1
        $x_1_2 = "Software\\SPoloCleaner" ascii //weight: 1
        $x_1_3 = "Software\\sdfwsdfs6df" ascii //weight: 1
        $x_1_4 = "d=nsis&msg=&r=offer_execution&rk=no" ascii //weight: 1
        $x_1_5 = "set_0.exe" ascii //weight: 1
    condition:
        (filesize < 20MB) and
        (all of ($x*))
}

rule Trojan_Win32_OffLoader_SPJL_2147904927_0
{
    meta:
        author = "defender2yara"
        detection_name = "Trojan:Win32/OffLoader.SPJL!MTB"
        threat_id = "2147904927"
        type = "Trojan"
        platform = "Win32: Windows 32-bit platform"
        family = "OffLoader"
        severity = "Critical"
        info = "MTB: Microsoft Threat Behavior"
        signature_type = "SIGNATURE_TYPE_PEHSTR_EXT"
        threshold = "6"
        strings_accuracy = "High"
    strings:
        $x_4_1 = "save.windowstone.website/track_polosEU.php" ascii //weight: 4
        $x_2_2 = "jewelbasketball.xyz/lica.php" ascii //weight: 2
    condition:
        (filesize < 20MB) and
        (all of ($x*))
}

rule Trojan_Win32_OffLoader_GPF_2147905042_0
{
    meta:
        author = "defender2yara"
        detection_name = "Trojan:Win32/OffLoader.GPF!MTB"
        threat_id = "2147905042"
        type = "Trojan"
        platform = "Win32: Windows 32-bit platform"
        family = "OffLoader"
        severity = "Critical"
        info = "MTB: Microsoft Threat Behavior"
        signature_type = "SIGNATURE_TYPE_PEHSTR_EXT"
        threshold = "7"
        strings_accuracy = "High"
    strings:
        $x_5_1 = "throatbalance.xyz/reap.php?pe" ascii //weight: 5
        $x_2_2 = "skirtrose.site/tracker/thank_you.php" ascii //weight: 2
    condition:
        (filesize < 20MB) and
        (all of ($x*))
}

rule Trojan_Win32_OffLoader_ASAI_2147905152_0
{
    meta:
        author = "defender2yara"
        detection_name = "Trojan:Win32/OffLoader.ASAI!MTB"
        threat_id = "2147905152"
        type = "Trojan"
        platform = "Win32: Windows 32-bit platform"
        family = "OffLoader"
        severity = "Critical"
        info = "MTB: Microsoft Threat Behavior"
        signature_type = "SIGNATURE_TYPE_PEHSTR_EXT"
        threshold = "5"
        strings_accuracy = "High"
    strings:
        $x_2_1 = "save.windowstone.website/track_" wide //weight: 2
        $x_1_2 = "restart the computer now" wide //weight: 1
        $x_1_3 = "Yes, I would like to view the README file" wide //weight: 1
        $x_1_4 = {73 00 65 00 72 00 76 00 65 00 72 00 5c 00 73 00 68 00 61 00 72 00 65}  //weight: 1, accuracy: High
    condition:
        (filesize < 20MB) and
        (all of ($x*))
}

rule Trojan_Win32_OffLoader_SPAK_2147905551_0
{
    meta:
        author = "defender2yara"
        detection_name = "Trojan:Win32/OffLoader.SPAK!MTB"
        threat_id = "2147905551"
        type = "Trojan"
        platform = "Win32: Windows 32-bit platform"
        family = "OffLoader"
        severity = "Critical"
        info = "MTB: Microsoft Threat Behavior"
        signature_type = "SIGNATURE_TYPE_PEHSTR_EXT"
        threshold = "7"
        strings_accuracy = "High"
    strings:
        $x_4_1 = "gold-proxy.net/licensing-agreement.php" ascii //weight: 4
        $x_2_2 = "restart the computer now" wide //weight: 2
        $x_1_3 = "Yes, I would like to view the README file" wide //weight: 1
    condition:
        (filesize < 20MB) and
        (all of ($x*))
}

rule Trojan_Win32_OffLoader_ASAJ_2147905583_0
{
    meta:
        author = "defender2yara"
        detection_name = "Trojan:Win32/OffLoader.ASAJ!MTB"
        threat_id = "2147905583"
        type = "Trojan"
        platform = "Win32: Windows 32-bit platform"
        family = "OffLoader"
        severity = "Critical"
        info = "MTB: Microsoft Threat Behavior"
        signature_type = "SIGNATURE_TYPE_PEHSTR_EXT"
        threshold = "7"
        strings_accuracy = "High"
    strings:
        $x_2_1 = "pp.toothbrushindustry.online/track_" wide //weight: 2
        $x_2_2 = "oceanriddle.website/pre2.php" wide //weight: 2
        $x_1_3 = "restart the computer now" wide //weight: 1
        $x_1_4 = "Yes, I would like to view the README file" wide //weight: 1
        $x_1_5 = "server\\share" wide //weight: 1
    condition:
        (filesize < 20MB) and
        (all of ($x*))
}

rule Trojan_Win32_OffLoader_SPUP_2147905975_0
{
    meta:
        author = "defender2yara"
        detection_name = "Trojan:Win32/OffLoader.SPUP!MTB"
        threat_id = "2147905975"
        type = "Trojan"
        platform = "Win32: Windows 32-bit platform"
        family = "OffLoader"
        severity = "Critical"
        info = "MTB: Microsoft Threat Behavior"
        signature_type = "SIGNATURE_TYPE_PEHSTR_EXT"
        threshold = "4"
        strings_accuracy = "High"
    strings:
        $x_2_1 = "blowrain.website/njg.php" wide //weight: 2
        $x_2_2 = "enginewine.xyz/njk.php" wide //weight: 2
    condition:
        (filesize < 20MB) and
        (all of ($x*))
}

rule Trojan_Win32_OffLoader_ASAK_2147906196_0
{
    meta:
        author = "defender2yara"
        detection_name = "Trojan:Win32/OffLoader.ASAK!MTB"
        threat_id = "2147906196"
        type = "Trojan"
        platform = "Win32: Windows 32-bit platform"
        family = "OffLoader"
        severity = "Critical"
        info = "MTB: Microsoft Threat Behavior"
        signature_type = "SIGNATURE_TYPE_PEHSTR_EXT"
        threshold = "6"
        strings_accuracy = "High"
    strings:
        $x_2_1 = "joinfront.xyz/pos.php?" wide //weight: 2
        $x_2_2 = "cabledust.website/pos.php?" wide //weight: 2
        $x_1_3 = "goal.harborhorse.online/track_" wide //weight: 1
        $x_1_4 = "restart the computer now" wide //weight: 1
        $x_1_5 = "Yes, I would like to view the README file" wide //weight: 1
        $x_1_6 = "server\\share" wide //weight: 1
    condition:
        (filesize < 20MB) and
        (
            ((1 of ($x_2_*) and 4 of ($x_1_*))) or
            ((2 of ($x_2_*) and 2 of ($x_1_*))) or
            (all of ($x*))
        )
}

rule Trojan_Win32_OffLoader_JMAA_2147906380_0
{
    meta:
        author = "defender2yara"
        detection_name = "Trojan:Win32/OffLoader.JMAA!MTB"
        threat_id = "2147906380"
        type = "Trojan"
        platform = "Win32: Windows 32-bit platform"
        family = "OffLoader"
        severity = "Critical"
        info = "MTB: Microsoft Threat Behavior"
        signature_type = "SIGNATURE_TYPE_PEHSTR_EXT"
        threshold = "10"
        strings_accuracy = "High"
    strings:
        $x_2_1 = {e8 b2 9b fa ff 52 5a 52 5a 52 5a 52 5a 52 5a 52 5a 52 5a 52 5a 52 5a 52 5a 52 5a 52 5a 52 5a 52 5a 52 5a 52 5a 52 5a 52 5a 52 5a 52 5a 52 5a 52}  //weight: 2, accuracy: High
        $x_2_2 = {e8 cf 74 fa ff 84 db 84 db 84 db 84 db 84 db 84 db 84 db 84 db 84 db 84 db 84 db 84 db 84 db 84 db 84 db 84 db 34 89 34 89 34 89 34 89 34 89 34}  //weight: 2, accuracy: High
        $x_1_3 = "/silent" wide //weight: 1
        $x_1_4 = "/weaksecurity" wide //weight: 1
        $x_1_5 = "/nocookies" wide //weight: 1
        $x_1_6 = "/popup" wide //weight: 1
        $x_1_7 = "/resume" wide //weight: 1
        $x_1_8 = "/useragent" wide //weight: 1
        $x_1_9 = "/connecttimeout" wide //weight: 1
        $x_1_10 = "/tostackconv" wide //weight: 1
    condition:
        (filesize < 20MB) and
        (
            ((1 of ($x_2_*) and 8 of ($x_1_*))) or
            ((2 of ($x_2_*) and 6 of ($x_1_*))) or
            (all of ($x*))
        )
}

rule Trojan_Win32_OffLoader_GPG_2147907487_0
{
    meta:
        author = "defender2yara"
        detection_name = "Trojan:Win32/OffLoader.GPG!MTB"
        threat_id = "2147907487"
        type = "Trojan"
        platform = "Win32: Windows 32-bit platform"
        family = "OffLoader"
        severity = "Critical"
        info = "MTB: Microsoft Threat Behavior"
        signature_type = "SIGNATURE_TYPE_PEHSTR_EXT"
        threshold = "7"
        strings_accuracy = "High"
    strings:
        $x_5_1 = "galandskiyher5.com/privacy" ascii //weight: 5
        $x_2_2 = "digitalpulsedata.com/tos" ascii //weight: 2
    condition:
        (filesize < 20MB) and
        (all of ($x*))
}

rule Trojan_Win32_OffLoader_ADJ_2147911511_0
{
    meta:
        author = "defender2yara"
        detection_name = "Trojan:Win32/OffLoader.ADJ!MTB"
        threat_id = "2147911511"
        type = "Trojan"
        platform = "Win32: Windows 32-bit platform"
        family = "OffLoader"
        severity = "Critical"
        info = "MTB: Microsoft Threat Behavior"
        signature_type = "SIGNATURE_TYPE_PEHSTR_EXT"
        threshold = "5"
        strings_accuracy = "High"
    strings:
        $x_1_1 = "http://farmfang.fun/rlo.php?" wide //weight: 1
        $x_1_2 = "https://farmfang.fun/tracker/thank_you.php?" wide //weight: 1
        $x_1_3 = {73 00 65 00 72 00 76 00 65 00 72 00 5c 00 73 00 68 00 61 00 72 00 65}  //weight: 1, accuracy: High
        $x_1_4 = "restart the computer now" wide //weight: 1
        $x_1_5 = "Yes, I would like to view the README file" wide //weight: 1
    condition:
        (filesize < 20MB) and
        (all of ($x*))
}

rule Trojan_Win32_OffLoader_SPOD_2147911718_0
{
    meta:
        author = "defender2yara"
        detection_name = "Trojan:Win32/OffLoader.SPOD!MTB"
        threat_id = "2147911718"
        type = "Trojan"
        platform = "Win32: Windows 32-bit platform"
        family = "OffLoader"
        severity = "Critical"
        info = "MTB: Microsoft Threat Behavior"
        signature_type = "SIGNATURE_TYPE_PEHSTR_EXT"
        threshold = "4"
        strings_accuracy = "High"
    strings:
        $x_1_1 = "sideair.hair/tracker/thank_you.php" wide //weight: 1
        $x_1_2 = "sideair.hair/rlo.php" wide //weight: 1
        $x_1_3 = "restart the computer now" wide //weight: 1
        $x_1_4 = "Yes, I would like to view the README file" wide //weight: 1
    condition:
        (filesize < 20MB) and
        (all of ($x*))
}

rule Trojan_Win32_OffLoader_SPMC_2147911876_0
{
    meta:
        author = "defender2yara"
        detection_name = "Trojan:Win32/OffLoader.SPMC!MTB"
        threat_id = "2147911876"
        type = "Trojan"
        platform = "Win32: Windows 32-bit platform"
        family = "OffLoader"
        severity = "Critical"
        info = "MTB: Microsoft Threat Behavior"
        signature_type = "SIGNATURE_TYPE_PEHSTR_EXT"
        threshold = "4"
        strings_accuracy = "High"
    strings:
        $x_2_1 = "dollshands.icu/arpk.php" wide //weight: 2
        $x_2_2 = "shakesleep.bond/arpt.php" wide //weight: 2
    condition:
        (filesize < 20MB) and
        (all of ($x*))
}

rule Trojan_Win32_OffLoader_GPH_2147912074_0
{
    meta:
        author = "defender2yara"
        detection_name = "Trojan:Win32/OffLoader.GPH!MTB"
        threat_id = "2147912074"
        type = "Trojan"
        platform = "Win32: Windows 32-bit platform"
        family = "OffLoader"
        severity = "Critical"
        info = "MTB: Microsoft Threat Behavior"
        signature_type = "SIGNATURE_TYPE_PEHSTR_EXT"
        threshold = "7"
        strings_accuracy = "High"
    strings:
        $x_5_1 = "forkcast.website/art.php?pid" ascii //weight: 5
        $x_2_2 = "forkcast.website/rlo.php" ascii //weight: 2
    condition:
        (filesize < 20MB) and
        (all of ($x*))
}

rule Trojan_Win32_OffLoader_ADI_2147912161_0
{
    meta:
        author = "defender2yara"
        detection_name = "Trojan:Win32/OffLoader.ADI!MTB"
        threat_id = "2147912161"
        type = "Trojan"
        platform = "Win32: Windows 32-bit platform"
        family = "OffLoader"
        severity = "Critical"
        info = "MTB: Microsoft Threat Behavior"
        signature_type = "SIGNATURE_TYPE_PEHSTR_EXT"
        threshold = "5"
        strings_accuracy = "High"
    strings:
        $x_1_1 = {68 00 74 00 74 00 70 00 3a 00 2f 00 2f 00 73 00 61 00 76 00 65 00 2e 00 70 00 6c 00 61 00 63 00 65 00 67 00 6f 00 6c 00 64 00 2e 00 77 00 65 00 62 00 73 00 69 00 74 00 65 00 2f 00 74 00 72 00 61 00 63 00 6b 00 5f 00 70 00 72 00 6f 00 78 00 2e 00 70 00 68 00 70 00 3f}  //weight: 1, accuracy: High
        $x_1_2 = {73 00 74 00 61 00 74 00 65 00 73 00 2e 00 6c 00 6f 00 67}  //weight: 1, accuracy: High
        $x_1_3 = {73 00 65 00 72 00 76 00 65 00 72 00 5c 00 73 00 68 00 61 00 72 00 65}  //weight: 1, accuracy: High
        $x_1_4 = "restart the computer now" wide //weight: 1
        $x_1_5 = "Yes, I would like to view the README file" wide //weight: 1
    condition:
        (filesize < 20MB) and
        (all of ($x*))
}

rule Trojan_Win32_OffLoader_ADK_2147912451_0
{
    meta:
        author = "defender2yara"
        detection_name = "Trojan:Win32/OffLoader.ADK!MTB"
        threat_id = "2147912451"
        type = "Trojan"
        platform = "Win32: Windows 32-bit platform"
        family = "OffLoader"
        severity = "Critical"
        info = "MTB: Microsoft Threat Behavior"
        signature_type = "SIGNATURE_TYPE_PEHSTR_EXT"
        threshold = "6"
        strings_accuracy = "High"
    strings:
        $x_1_1 = "http://laughvein.hair/rlo.php?" wide //weight: 1
        $x_1_2 = "https://laughvein.hair/tracker/thank_you.php?" wide //weight: 1
        $x_1_3 = {73 00 65 00 72 00 76 00 65 00 72 00 5c 00 73 00 68 00 61 00 72 00 65}  //weight: 1, accuracy: High
        $x_1_4 = "restart the computer now" wide //weight: 1
        $x_1_5 = "Yes, I would like to view the README file" wide //weight: 1
        $x_1_6 = "states.log" wide //weight: 1
    condition:
        (filesize < 20MB) and
        (all of ($x*))
}

rule Trojan_Win32_OffLoader_GPI_2147912719_0
{
    meta:
        author = "defender2yara"
        detection_name = "Trojan:Win32/OffLoader.GPI!MTB"
        threat_id = "2147912719"
        type = "Trojan"
        platform = "Win32: Windows 32-bit platform"
        family = "OffLoader"
        severity = "Critical"
        info = "MTB: Microsoft Threat Behavior"
        signature_type = "SIGNATURE_TYPE_PEHSTR_EXT"
        threshold = "7"
        strings_accuracy = "High"
    strings:
        $x_5_1 = "nightauthority.xyz/rlo.php?d" ascii //weight: 5
        $x_2_2 = "nightauthority.xyz/tracker/thank_you.php" ascii //weight: 2
    condition:
        (filesize < 20MB) and
        (all of ($x*))
}

rule Trojan_Win32_OffLoader_PEAA_2147912751_0
{
    meta:
        author = "defender2yara"
        detection_name = "Trojan:Win32/OffLoader.PEAA!MTB"
        threat_id = "2147912751"
        type = "Trojan"
        platform = "Win32: Windows 32-bit platform"
        family = "OffLoader"
        severity = "Critical"
        info = "MTB: Microsoft Threat Behavior"
        signature_type = "SIGNATURE_TYPE_PEHSTR_EXT"
        threshold = "6"
        strings_accuracy = "High"
    strings:
        $x_2_1 = "http://cattlebusiness.icu/rlo.php" wide //weight: 2
        $x_2_2 = "https://cattlebusiness.icu/art.php" wide //weight: 2
        $x_2_3 = "http://cattlebusiness.icu/coo.php" wide //weight: 2
        $x_1_4 = "https://cattlebusiness.icu/tracker/thank_you.php" wide //weight: 1
        $x_1_5 = "\\\\server\\share" wide //weight: 1
        $x_1_6 = "restart the computer now" ascii //weight: 1
        $x_1_7 = "Yes, I would like to view the README file" ascii //weight: 1
    condition:
        (filesize < 20MB) and
        (
            ((1 of ($x_2_*) and 4 of ($x_1_*))) or
            ((2 of ($x_2_*) and 2 of ($x_1_*))) or
            ((3 of ($x_2_*))) or
            (all of ($x*))
        )
}

rule Trojan_Win32_OffLoader_ADL_2147912813_0
{
    meta:
        author = "defender2yara"
        detection_name = "Trojan:Win32/OffLoader.ADL!MTB"
        threat_id = "2147912813"
        type = "Trojan"
        platform = "Win32: Windows 32-bit platform"
        family = "OffLoader"
        severity = "Critical"
        info = "MTB: Microsoft Threat Behavior"
        signature_type = "SIGNATURE_TYPE_PEHSTR_EXT"
        threshold = "5"
        strings_accuracy = "High"
    strings:
        $x_2_1 = "https://brotherpopcorn.website/tracker/thank_you.php?" wide //weight: 2
        $x_2_2 = "https://oceanriddle.website/tracker/thank_you.php?" wide //weight: 2
        $x_2_3 = "https://monkeyagreement.fun/tracker/thank_you.php?" wide //weight: 2
        $x_1_4 = {73 00 65 00 72 00 76 00 65 00 72 00 5c 00 73 00 68 00 61 00 72 00 65}  //weight: 1, accuracy: High
        $x_1_5 = "restart the computer now" wide //weight: 1
        $x_1_6 = "Yes, I would like to view the README file" wide //weight: 1
    condition:
        (filesize < 20MB) and
        (
            ((1 of ($x_2_*) and 3 of ($x_1_*))) or
            ((2 of ($x_2_*) and 1 of ($x_1_*))) or
            ((3 of ($x_2_*))) or
            (all of ($x*))
        )
}

rule Trojan_Win32_OffLoader_SPBC_2147912881_0
{
    meta:
        author = "defender2yara"
        detection_name = "Trojan:Win32/OffLoader.SPBC!MTB"
        threat_id = "2147912881"
        type = "Trojan"
        platform = "Win32: Windows 32-bit platform"
        family = "OffLoader"
        severity = "Critical"
        info = "MTB: Microsoft Threat Behavior"
        signature_type = "SIGNATURE_TYPE_PEHSTR_EXT"
        threshold = "6"
        strings_accuracy = "High"
    strings:
        $x_5_1 = "/chintray.website/outo.php" wide //weight: 5
        $x_1_2 = "/silent" wide //weight: 1
    condition:
        (filesize < 20MB) and
        (all of ($x*))
}

rule Trojan_Win32_OffLoader_GPJ_2147912978_0
{
    meta:
        author = "defender2yara"
        detection_name = "Trojan:Win32/OffLoader.GPJ!MTB"
        threat_id = "2147912978"
        type = "Trojan"
        platform = "Win32: Windows 32-bit platform"
        family = "OffLoader"
        severity = "Critical"
        info = "MTB: Microsoft Threat Behavior"
        signature_type = "SIGNATURE_TYPE_PEHSTR_EXT"
        threshold = "7"
        strings_accuracy = "High"
    strings:
        $x_5_1 = "advancedmanager.io/eula" ascii //weight: 5
        $x_2_2 = "digitalpulsedata.com/tos" ascii //weight: 2
    condition:
        (filesize < 20MB) and
        (all of ($x*))
}

rule Trojan_Win32_OffLoader_ADM_2147913074_0
{
    meta:
        author = "defender2yara"
        detection_name = "Trojan:Win32/OffLoader.ADM!MTB"
        threat_id = "2147913074"
        type = "Trojan"
        platform = "Win32: Windows 32-bit platform"
        family = "OffLoader"
        severity = "Critical"
        info = "MTB: Microsoft Threat Behavior"
        signature_type = "SIGNATURE_TYPE_PEHSTR_EXT"
        threshold = "7"
        strings_accuracy = "High"
    strings:
        $x_2_1 = "http://valuescent.website/coo.php?" wide //weight: 2
        $x_2_2 = "http://save.placegold.website/track_inl2.php?" wide //weight: 2
        $x_1_3 = {73 00 65 00 72 00 76 00 65 00 72 00 5c 00 73 00 68 00 61 00 72 00 65}  //weight: 1, accuracy: High
        $x_1_4 = "restart the computer now" wide //weight: 1
        $x_1_5 = "Yes, I would like to view the README file" wide //weight: 1
    condition:
        (filesize < 20MB) and
        (all of ($x*))
}

rule Trojan_Win32_OffLoader_ADN_2147913211_0
{
    meta:
        author = "defender2yara"
        detection_name = "Trojan:Win32/OffLoader.ADN!MTB"
        threat_id = "2147913211"
        type = "Trojan"
        platform = "Win32: Windows 32-bit platform"
        family = "OffLoader"
        severity = "Critical"
        info = "MTB: Microsoft Threat Behavior"
        signature_type = "SIGNATURE_TYPE_PEHSTR_EXT"
        threshold = "7"
        strings_accuracy = "High"
    strings:
        $x_2_1 = "https://whipunit.hair/tracker/thank_you.php?" wide //weight: 2
        $x_2_2 = "http://whipunit.hair/coo.php?" wide //weight: 2
        $x_2_3 = "http://caretouch.hair/rlo.php?" wide //weight: 2
        $x_2_4 = "https://caretouch.hair/tracker/thank_you.php?trk" wide //weight: 2
        $x_1_5 = {73 00 65 00 72 00 76 00 65 00 72 00 5c 00 73 00 68 00 61 00 72 00 65}  //weight: 1, accuracy: High
        $x_1_6 = "restart the computer now" wide //weight: 1
        $x_1_7 = "Yes, I would like to view the README file" wide //weight: 1
    condition:
        (filesize < 20MB) and
        (
            ((2 of ($x_2_*) and 3 of ($x_1_*))) or
            ((3 of ($x_2_*) and 1 of ($x_1_*))) or
            ((4 of ($x_2_*))) or
            (all of ($x*))
        )
}

rule Trojan_Win32_OffLoader_SPPC_2147914041_0
{
    meta:
        author = "defender2yara"
        detection_name = "Trojan:Win32/OffLoader.SPPC!MTB"
        threat_id = "2147914041"
        type = "Trojan"
        platform = "Win32: Windows 32-bit platform"
        family = "OffLoader"
        severity = "Critical"
        info = "MTB: Microsoft Threat Behavior"
        signature_type = "SIGNATURE_TYPE_PEHSTR_EXT"
        threshold = "7"
        strings_accuracy = "High"
    strings:
        $x_3_1 = "/hornquiver.icu/kond.php" wide //weight: 3
        $x_3_2 = "/pizzasreason.icu/kund.php" wide //weight: 3
        $x_1_3 = "/silent" wide //weight: 1
    condition:
        (filesize < 20MB) and
        (all of ($x*))
}

rule Trojan_Win32_OffLoader_SDRL_2147915674_0
{
    meta:
        author = "defender2yara"
        detection_name = "Trojan:Win32/OffLoader.SDRL!MTB"
        threat_id = "2147915674"
        type = "Trojan"
        platform = "Win32: Windows 32-bit platform"
        family = "OffLoader"
        severity = "Critical"
        info = "MTB: Microsoft Threat Behavior"
        signature_type = "SIGNATURE_TYPE_PEHSTR_EXT"
        threshold = "3"
        strings_accuracy = "High"
    strings:
        $x_2_1 = "/cherryforce.xyz/gota.php" wide //weight: 2
        $x_1_2 = "/silent" wide //weight: 1
    condition:
        (filesize < 20MB) and
        (all of ($x*))
}

rule Trojan_Win32_OffLoader_SDJL_2147915832_0
{
    meta:
        author = "defender2yara"
        detection_name = "Trojan:Win32/OffLoader.SDJL!MTB"
        threat_id = "2147915832"
        type = "Trojan"
        platform = "Win32: Windows 32-bit platform"
        family = "OffLoader"
        severity = "Critical"
        info = "MTB: Microsoft Threat Behavior"
        signature_type = "SIGNATURE_TYPE_PEHSTR_EXT"
        threshold = "3"
        strings_accuracy = "High"
    strings:
        $x_2_1 = "/zooschool.website/pe/start/index.php" wide //weight: 2
        $x_1_2 = "/silent" wide //weight: 1
    condition:
        (filesize < 20MB) and
        (all of ($x*))
}

rule Trojan_Win32_OffLoader_SPWQ_2147915935_0
{
    meta:
        author = "defender2yara"
        detection_name = "Trojan:Win32/OffLoader.SPWQ!MTB"
        threat_id = "2147915935"
        type = "Trojan"
        platform = "Win32: Windows 32-bit platform"
        family = "OffLoader"
        severity = "Critical"
        info = "MTB: Microsoft Threat Behavior"
        signature_type = "SIGNATURE_TYPE_PEHSTR_EXT"
        threshold = "3"
        strings_accuracy = "High"
    strings:
        $x_2_1 = "/crownsmoke.xyz/but.php" wide //weight: 2
        $x_1_2 = "/silent" wide //weight: 1
    condition:
        (filesize < 20MB) and
        (all of ($x*))
}

rule Trojan_Win32_OffLoader_SPKM_2147916324_0
{
    meta:
        author = "defender2yara"
        detection_name = "Trojan:Win32/OffLoader.SPKM!MTB"
        threat_id = "2147916324"
        type = "Trojan"
        platform = "Win32: Windows 32-bit platform"
        family = "OffLoader"
        severity = "Critical"
        info = "MTB: Microsoft Threat Behavior"
        signature_type = "SIGNATURE_TYPE_PEHSTR_EXT"
        threshold = "3"
        strings_accuracy = "High"
    strings:
        $x_2_1 = "/thrillsand.icu/alo.php" wide //weight: 2
        $x_1_2 = "/silent" wide //weight: 1
    condition:
        (filesize < 20MB) and
        (all of ($x*))
}

rule Trojan_Win32_OffLoader_SCBC_2147917129_0
{
    meta:
        author = "defender2yara"
        detection_name = "Trojan:Win32/OffLoader.SCBC!MTB"
        threat_id = "2147917129"
        type = "Trojan"
        platform = "Win32: Windows 32-bit platform"
        family = "OffLoader"
        severity = "Critical"
        info = "MTB: Microsoft Threat Behavior"
        signature_type = "SIGNATURE_TYPE_PEHSTR_EXT"
        threshold = "3"
        strings_accuracy = "High"
    strings:
        $x_2_1 = "/sheetcopper.xyz/hc.php" wide //weight: 2
        $x_1_2 = "/silent" wide //weight: 1
    condition:
        (filesize < 20MB) and
        (all of ($x*))
}

rule Trojan_Win32_OffLoader_ADO_2147918023_0
{
    meta:
        author = "defender2yara"
        detection_name = "Trojan:Win32/OffLoader.ADO!MTB"
        threat_id = "2147918023"
        type = "Trojan"
        platform = "Win32: Windows 32-bit platform"
        family = "OffLoader"
        severity = "Critical"
        info = "MTB: Microsoft Threat Behavior"
        signature_type = "SIGNATURE_TYPE_PEHSTR_EXT"
        threshold = "5"
        strings_accuracy = "High"
    strings:
        $x_3_1 = "amountnorth.icu/abb.php?" wide //weight: 3
        $x_1_2 = "/nocookies" wide //weight: 1
        $x_1_3 = "/silent" wide //weight: 1
    condition:
        (filesize < 20MB) and
        (all of ($x*))
}

rule Trojan_Win32_OffLoader_SSBC_2147918988_0
{
    meta:
        author = "defender2yara"
        detection_name = "Trojan:Win32/OffLoader.SSBC!MTB"
        threat_id = "2147918988"
        type = "Trojan"
        platform = "Win32: Windows 32-bit platform"
        family = "OffLoader"
        severity = "Critical"
        info = "MTB: Microsoft Threat Behavior"
        signature_type = "SIGNATURE_TYPE_PEHSTR_EXT"
        threshold = "3"
        strings_accuracy = "High"
    strings:
        $x_2_1 = "/coughexistence.icu/sch.php" wide //weight: 2
        $x_1_2 = "/silent" wide //weight: 1
    condition:
        (filesize < 20MB) and
        (all of ($x*))
}

rule Trojan_Win32_OffLoader_SDWQ_2147920085_0
{
    meta:
        author = "defender2yara"
        detection_name = "Trojan:Win32/OffLoader.SDWQ!MTB"
        threat_id = "2147920085"
        type = "Trojan"
        platform = "Win32: Windows 32-bit platform"
        family = "OffLoader"
        severity = "Critical"
        info = "MTB: Microsoft Threat Behavior"
        signature_type = "SIGNATURE_TYPE_PEHSTR_EXT"
        threshold = "3"
        strings_accuracy = "High"
    strings:
        $x_2_1 = "/expertdirection.icu/sip.php" wide //weight: 2
        $x_1_2 = "/silent" wide //weight: 1
    condition:
        (filesize < 20MB) and
        (all of ($x*))
}

rule Trojan_Win32_OffLoader_ADP_2147920914_0
{
    meta:
        author = "defender2yara"
        detection_name = "Trojan:Win32/OffLoader.ADP!MTB"
        threat_id = "2147920914"
        type = "Trojan"
        platform = "Win32: Windows 32-bit platform"
        family = "OffLoader"
        severity = "Critical"
        info = "MTB: Microsoft Threat Behavior"
        signature_type = "SIGNATURE_TYPE_PEHSTR_EXT"
        threshold = "5"
        strings_accuracy = "High"
    strings:
        $x_3_1 = "motionspace.space/klo.php?" wide //weight: 3
        $x_1_2 = "/nocookies" wide //weight: 1
        $x_1_3 = "/silent" wide //weight: 1
    condition:
        (filesize < 20MB) and
        (all of ($x*))
}

rule Trojan_Win32_OffLoader_SHLQ_2147921174_0
{
    meta:
        author = "defender2yara"
        detection_name = "Trojan:Win32/OffLoader.SHLQ!MTB"
        threat_id = "2147921174"
        type = "Trojan"
        platform = "Win32: Windows 32-bit platform"
        family = "OffLoader"
        severity = "Critical"
        info = "MTB: Microsoft Threat Behavior"
        signature_type = "SIGNATURE_TYPE_PEHSTR_EXT"
        threshold = "3"
        strings_accuracy = "High"
    strings:
        $x_2_1 = "/thoughtwren.website/one.php" wide //weight: 2
        $x_1_2 = "/silent" wide //weight: 1
    condition:
        (filesize < 20MB) and
        (all of ($x*))
}

