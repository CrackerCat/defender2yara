rule Trojan_MSIL_XWorm_GCD_2147838082_0
{
    meta:
        author = "defender2yara"
        detection_name = "Trojan:MSIL/XWorm.GCD!MTB"
        threat_id = "2147838082"
        type = "Trojan"
        platform = "MSIL: .NET intermediate language scripts"
        family = "XWorm"
        severity = "Critical"
        info = "MTB: Microsoft Threat Behavior"
        signature_type = "SIGNATURE_TYPE_PEHSTR_EXT"
        threshold = "12"
        strings_accuracy = "Low"
    strings:
        $x_10_1 = {fe 09 05 00 20 26 35 b2 04 26 26 fe 09 04 00 20 35 6a 07 00 26 26 73 04 00 00 0a fe 0e 00 00 fe 09 00 00 6f ?? ?? ?? 0a fe 0e 01 00 20 00 00 00 00 fe 0e 02 00 2b 2f fe 0c 01 00 fe 0c 02 00 93 fe 0e 03 00 fe 0c 00 00 fe 0c 03 00 fe 09 02 00 59 d1}  //weight: 10, accuracy: Low
        $x_1_2 = "Invoke" ascii //weight: 1
        $x_1_3 = "set_UseShellExecute" ascii //weight: 1
    condition:
        (filesize < 20MB) and
        (all of ($x*))
}

rule Trojan_MSIL_XWorm_CXR_2147843453_0
{
    meta:
        author = "defender2yara"
        detection_name = "Trojan:MSIL/XWorm.CXR!MTB"
        threat_id = "2147843453"
        type = "Trojan"
        platform = "MSIL: .NET intermediate language scripts"
        family = "XWorm"
        severity = "Critical"
        info = "MTB: Microsoft Threat Behavior"
        signature_type = "SIGNATURE_TYPE_PEHSTR_EXT"
        threshold = "5"
        strings_accuracy = "Low"
    strings:
        $x_5_1 = {1b 2d 24 26 28 ?? ?? ?? ?? 06 6f ?? ?? ?? ?? 28 ?? ?? ?? ?? 17 2d 13 26 07 16 07 8e 69 18 2d 0d 26 26 26 07 0c de 10 0a 2b da 0b 2b eb 28 ?? ?? ?? ?? 2b}  //weight: 5, accuracy: Low
    condition:
        (filesize < 20MB) and
        (all of ($x*))
}

rule Trojan_MSIL_XWorm_AX_2147846424_0
{
    meta:
        author = "defender2yara"
        detection_name = "Trojan:MSIL/XWorm.AX!MTB"
        threat_id = "2147846424"
        type = "Trojan"
        platform = "MSIL: .NET intermediate language scripts"
        family = "XWorm"
        severity = "Critical"
        info = "MTB: Microsoft Threat Behavior"
        signature_type = "SIGNATURE_TYPE_PEHSTR_EXT"
        threshold = "1"
        strings_accuracy = "Low"
    strings:
        $x_1_1 = {73 25 00 00 0a 13 05 11 05 07 6f ?? ?? ?? 0a 17 73 27 00 00 0a 13 06 00 02 28 ?? ?? ?? 0a 0c 11 06 08 16 08 8e 69 6f ?? ?? ?? 0a 00 11 06}  //weight: 1, accuracy: Low
    condition:
        (filesize < 20MB) and
        (all of ($x*))
}

rule Trojan_MSIL_XWorm_CXRL_2147847845_0
{
    meta:
        author = "defender2yara"
        detection_name = "Trojan:MSIL/XWorm.CXRL!MTB"
        threat_id = "2147847845"
        type = "Trojan"
        platform = "MSIL: .NET intermediate language scripts"
        family = "XWorm"
        severity = "Critical"
        info = "MTB: Microsoft Threat Behavior"
        signature_type = "SIGNATURE_TYPE_PEHSTR_EXT"
        threshold = "2"
        strings_accuracy = "Low"
    strings:
        $x_1_1 = {72 01 01 00 70 6f ?? 00 00 0a 6f ?? 00 00 0a [0-5] 06 18 6f ?? 00 00 0a 06 6f ?? 00 00 0a 13 04 02 0d 11 04 09 16 09 8e b7 6f ?? 00 00 0a 0b de 11 de 0f 25 28 ?? 00 00 0a 13 05 28 ?? 00 00 0a de 00 07}  //weight: 1, accuracy: Low
        $x_1_2 = "5xaDLhNA4xr7Tocwz" wide //weight: 1
    condition:
        (filesize < 20MB) and
        (all of ($x*))
}

rule Trojan_MSIL_XWorm_MC_2147850596_0
{
    meta:
        author = "defender2yara"
        detection_name = "Trojan:MSIL/XWorm.MC!MTB"
        threat_id = "2147850596"
        type = "Trojan"
        platform = "MSIL: .NET intermediate language scripts"
        family = "XWorm"
        severity = "Critical"
        info = "MTB: Microsoft Threat Behavior"
        signature_type = "SIGNATURE_TYPE_PEHSTR_EXT"
        threshold = "10"
        strings_accuracy = "High"
    strings:
        $x_1_1 = "XWorm V3.1" wide //weight: 1
        $x_1_2 = "\\root\\SecurityCenter2" wide //weight: 1
        $x_1_3 = "Select * from AntivirusProduct" wide //weight: 1
        $x_1_4 = "PCLogoff" wide //weight: 1
        $x_1_5 = "shutdown.exe /f /s /t 0" wide //weight: 1
        $x_1_6 = "Urlhide" wide //weight: 1
        $x_1_7 = "StopDDos" wide //weight: 1
        $x_1_8 = "RunRecovery" wide //weight: 1
        $x_1_9 = "-ExecutionPolicy Bypass -File" wide //weight: 1
        $x_1_10 = "[ENTER]" wide //weight: 1
    condition:
        (filesize < 20MB) and
        (all of ($x*))
}

rule Trojan_MSIL_XWorm_CXLM_2147850803_0
{
    meta:
        author = "defender2yara"
        detection_name = "Trojan:MSIL/XWorm.CXLM!MTB"
        threat_id = "2147850803"
        type = "Trojan"
        platform = "MSIL: .NET intermediate language scripts"
        family = "XWorm"
        severity = "Critical"
        info = "MTB: Microsoft Threat Behavior"
        signature_type = "SIGNATURE_TYPE_PEHSTR_EXT"
        threshold = "10"
        strings_accuracy = "High"
    strings:
        $x_1_1 = "RunAntiAnalysis" ascii //weight: 1
        $x_1_2 = "GetAntivirus" ascii //weight: 1
        $x_1_3 = "CheckDefender" ascii //weight: 1
        $x_1_4 = "CrowdStrike" ascii //weight: 1
        $x_1_5 = "encryptDirectory" ascii //weight: 1
        $x_1_6 = "EncryptPassword" ascii //weight: 1
        $x_1_7 = "SandBox" ascii //weight: 1
        $x_1_8 = "VirtualBox" ascii //weight: 1
        $x_1_9 = "DDebugger" ascii //weight: 1
        $x_1_10 = "AntiCis" ascii //weight: 1
    condition:
        (filesize < 20MB) and
        (all of ($x*))
}

rule Trojan_MSIL_XWorm_RDC_2147851346_0
{
    meta:
        author = "defender2yara"
        detection_name = "Trojan:MSIL/XWorm.RDC!MTB"
        threat_id = "2147851346"
        type = "Trojan"
        platform = "MSIL: .NET intermediate language scripts"
        family = "XWorm"
        severity = "Critical"
        info = "MTB: Microsoft Threat Behavior"
        signature_type = "SIGNATURE_TYPE_PEHSTR_EXT"
        threshold = "2"
        strings_accuracy = "High"
    strings:
        $x_2_1 = {7e 0e 00 00 04 6f 7b 00 00 0a 02 16 02 8e 69 6f 7c 00 00 0a 0a}  //weight: 2, accuracy: High
    condition:
        (filesize < 20MB) and
        (all of ($x*))
}

rule Trojan_MSIL_XWorm_RDD_2147851624_0
{
    meta:
        author = "defender2yara"
        detection_name = "Trojan:MSIL/XWorm.RDD!MTB"
        threat_id = "2147851624"
        type = "Trojan"
        platform = "MSIL: .NET intermediate language scripts"
        family = "XWorm"
        severity = "Critical"
        info = "MTB: Microsoft Threat Behavior"
        signature_type = "SIGNATURE_TYPE_PEHSTR_EXT"
        threshold = "2"
        strings_accuracy = "High"
    strings:
        $x_2_1 = {28 1e 00 00 06 80 01 00 00 04 7e 01 00 00 04 28 03 00 00 06 28 1c 00 00 0a 28 1d 00 00 0a}  //weight: 2, accuracy: High
    condition:
        (filesize < 20MB) and
        (all of ($x*))
}

rule Trojan_MSIL_XWorm_RDE_2147851754_0
{
    meta:
        author = "defender2yara"
        detection_name = "Trojan:MSIL/XWorm.RDE!MTB"
        threat_id = "2147851754"
        type = "Trojan"
        platform = "MSIL: .NET intermediate language scripts"
        family = "XWorm"
        severity = "Critical"
        info = "MTB: Microsoft Threat Behavior"
        signature_type = "SIGNATURE_TYPE_PEHSTR_EXT"
        threshold = "2"
        strings_accuracy = "High"
    strings:
        $x_2_1 = {28 11 00 00 0a 0a 06 28 04 00 00 06 28 12 00 00 0a 0a 06 72 3f 00 00 70 28 12 00 00 0a 0a 06}  //weight: 2, accuracy: High
    condition:
        (filesize < 20MB) and
        (all of ($x*))
}

rule Trojan_MSIL_XWorm_NWM_2147853096_0
{
    meta:
        author = "defender2yara"
        detection_name = "Trojan:MSIL/XWorm.NWM!MTB"
        threat_id = "2147853096"
        type = "Trojan"
        platform = "MSIL: .NET intermediate language scripts"
        family = "XWorm"
        severity = "Critical"
        info = "MTB: Microsoft Threat Behavior"
        signature_type = "SIGNATURE_TYPE_PEHSTR_EXT"
        threshold = "11"
        strings_accuracy = "Low"
    strings:
        $x_5_1 = {02 28 2f 00 00 06 28 ?? 00 00 06 0b 07 8e 69 28 ?? 00 00 0a 72 ?? 00 00 70 28 ?? 00 00 0a 28 ?? 00 00 06 0c 06 08 16 08 8e 69 6f ?? 00 00 0a}  //weight: 5, accuracy: Low
        $x_5_2 = {6f 62 00 00 0a 6f ?? 00 00 0a 00 07 18 6f ?? 00 00 0a 00 07 6f ?? 00 00 0a 0d 02 13 04 09 11 04 16 11 04 8e 69 6f ?? 00 00 0a}  //weight: 5, accuracy: Low
        $x_1_3 = "Plugin.Resources" wide //weight: 1
    condition:
        (filesize < 20MB) and
        (all of ($x*))
}

rule Trojan_MSIL_XWorm_NW_2147891165_0
{
    meta:
        author = "defender2yara"
        detection_name = "Trojan:MSIL/XWorm.NW!MTB"
        threat_id = "2147891165"
        type = "Trojan"
        platform = "MSIL: .NET intermediate language scripts"
        family = "XWorm"
        severity = "Critical"
        info = "MTB: Microsoft Threat Behavior"
        signature_type = "SIGNATURE_TYPE_PEHSTR_EXT"
        threshold = "7"
        strings_accuracy = "Low"
    strings:
        $x_5_1 = {28 f1 00 00 0a 02 6f ?? ?? 00 0a 0a 06 0b 1f 20 8d ?? ?? 00 01 25 d0 ?? ?? 00 04 28 ?? ?? 00 0a 0c 28 ?? ?? 00 0a 03 6f ?? ?? 00 0a 28 ?? ?? 00 06 0d 73 ?? ?? 00 0a 13 04 28 ?? ?? 00 06 13 05 11 05 08 6f ?? ?? 00 0a 11 05 09 6f ?? ?? 00 0a 11 04 11 05 6f ?? ?? 00 0a 17 73 ?? ?? 00 0a 13 06 11 06 07 16 07 8e 69 6f ?? ?? 00 0a 11 06 6f ?? ?? 00 0a 11 04 6f ?? ?? 00 0a 28 ?? ?? 00 0a}  //weight: 5, accuracy: Low
        $x_1_2 = "WriteProcessMemory" ascii //weight: 1
        $x_1_3 = "hotqft.Resources" ascii //weight: 1
    condition:
        (filesize < 20MB) and
        (all of ($x*))
}

rule Trojan_MSIL_XWorm_MBJS_2147892681_0
{
    meta:
        author = "defender2yara"
        detection_name = "Trojan:MSIL/XWorm.MBJS!MTB"
        threat_id = "2147892681"
        type = "Trojan"
        platform = "MSIL: .NET intermediate language scripts"
        family = "XWorm"
        severity = "Critical"
        info = "MTB: Microsoft Threat Behavior"
        signature_type = "SIGNATURE_TYPE_PEHSTR_EXT"
        threshold = "12"
        strings_accuracy = "High"
    strings:
        $x_10_1 = "$38c4f9b5-a084-4c14-bebe-a7690f8d4b1e" ascii //weight: 10
        $x_10_2 = "$038ce683-2255-442c-8674-62e8cfe85954" ascii //weight: 10
        $x_1_3 = "XClient.exe" ascii //weight: 1
        $x_1_4 = "FromBase64String" ascii //weight: 1
    condition:
        (filesize < 20MB) and
        (
            ((1 of ($x_10_*) and 2 of ($x_1_*))) or
            ((2 of ($x_10_*))) or
            (all of ($x*))
        )
}

rule Trojan_MSIL_XWorm_CCDT_2147895861_0
{
    meta:
        author = "defender2yara"
        detection_name = "Trojan:MSIL/XWorm.CCDT!MTB"
        threat_id = "2147895861"
        type = "Trojan"
        platform = "MSIL: .NET intermediate language scripts"
        family = "XWorm"
        severity = "Critical"
        info = "MTB: Microsoft Threat Behavior"
        signature_type = "SIGNATURE_TYPE_PEHSTR_EXT"
        threshold = "5"
        strings_accuracy = "High"
    strings:
        $x_1_1 = "ekovnI.tnioPyrtnE.daoL" wide //weight: 1
        $x_1_2 = "4D5A90000300000004000000FFFF0000B80000000000000040" wide //weight: 1
        $x_1_3 = "001113729F0A007016286A00000A1633207E260000046FA500000ADE0F25282400000A1304282600000ADE00386A040000111372B10A007016" wide //weight: 1
        $x_1_4 = "6F00494E44415445005370726561640055414300416E746976" wide //weight: 1
        $x_1_5 = "79436F6D70616E7941747472696275746500417373656D626C" wide //weight: 1
    condition:
        (filesize < 20MB) and
        (all of ($x*))
}

rule Trojan_MSIL_XWorm_AMBA_2147902297_0
{
    meta:
        author = "defender2yara"
        detection_name = "Trojan:MSIL/XWorm.AMBA!MTB"
        threat_id = "2147902297"
        type = "Trojan"
        platform = "MSIL: .NET intermediate language scripts"
        family = "XWorm"
        severity = "Critical"
        info = "MTB: Microsoft Threat Behavior"
        signature_type = "SIGNATURE_TYPE_PEHSTR_EXT"
        threshold = "5"
        strings_accuracy = "High"
    strings:
        $x_2_1 = {d2 05 53 00 71 00 51 00 c7 05 44 00 4d 00 41 00 c7 05 44 00 41 00 45 00 c7 05 44 00 41 00 41 00 a9 05 2a 00 38 00 41 00 c7 05 49 00 67 00 41 00 c7 05 44 00 41 00 41 00 c7 05 44 00 41 00 41 00 d7}  //weight: 2, accuracy: High
        $x_2_2 = {d2 05 48 00 30 00 68 00 d0 05 42 00 68 00 70 00 e5 05 7c 00 42 00 77 00 e5 05 68 00 39 00 6e 00}  //weight: 2, accuracy: High
        $x_1_3 = "SelenaGomez.Program" wide //weight: 1
    condition:
        (filesize < 20MB) and
        (all of ($x*))
}

rule Trojan_MSIL_XWorm_AMBB_2147902298_0
{
    meta:
        author = "defender2yara"
        detection_name = "Trojan:MSIL/XWorm.AMBB!MTB"
        threat_id = "2147902298"
        type = "Trojan"
        platform = "MSIL: .NET intermediate language scripts"
        family = "XWorm"
        severity = "Critical"
        info = "MTB: Microsoft Threat Behavior"
        signature_type = "SIGNATURE_TYPE_PEHSTR_EXT"
        threshold = "6"
        strings_accuracy = "Low"
    strings:
        $x_2_1 = {06 07 02 17 8d ?? 00 00 01 0c 08 16 07 8c ?? 00 00 01 a2 08 14 28}  //weight: 2, accuracy: Low
        $x_2_2 = {16 17 9c 11 ?? 28 ?? 00 00 0a 28 ?? 00 00 0a 14 72 ?? ?? 00 70 16 8d ?? ?? ?? ?? 14 14 14 28 ?? 00 00 0a 28 ?? 00 00 0a 14 72 ?? ?? 00 70 18 8d ?? ?? ?? ?? 0d 09 16 14 a2 09 17 14 a2 09 14 14 14 17}  //weight: 2, accuracy: Low
        $x_1_3 = "XorObject" ascii //weight: 1
        $x_1_4 = "EntryPoint" wide //weight: 1
    condition:
        (filesize < 20MB) and
        (all of ($x*))
}

rule Trojan_MSIL_XWorm_KAC_2147902680_0
{
    meta:
        author = "defender2yara"
        detection_name = "Trojan:MSIL/XWorm.KAC!MTB"
        threat_id = "2147902680"
        type = "Trojan"
        platform = "MSIL: .NET intermediate language scripts"
        family = "XWorm"
        severity = "Critical"
        info = "MTB: Microsoft Threat Behavior"
        signature_type = "SIGNATURE_TYPE_PEHSTR_EXT"
        threshold = "2"
        strings_accuracy = "High"
    strings:
        $x_1_1 = {28 03 00 00 2b 0b 2b 00 07 2a}  //weight: 1, accuracy: High
        $x_1_2 = {34 00 35 00 34 00 37 00 39 00 37 00 30 00 36 00 35 00 30 00 30 00 35 00 30 00 37 00 32 00 36}  //weight: 1, accuracy: High
    condition:
        (filesize < 20MB) and
        (all of ($x*))
}

rule Trojan_MSIL_XWorm_CCHT_2147903438_0
{
    meta:
        author = "defender2yara"
        detection_name = "Trojan:MSIL/XWorm.CCHT!MTB"
        threat_id = "2147903438"
        type = "Trojan"
        platform = "MSIL: .NET intermediate language scripts"
        family = "XWorm"
        severity = "Critical"
        info = "MTB: Microsoft Threat Behavior"
        signature_type = "SIGNATURE_TYPE_PEHSTR_EXT"
        threshold = "1"
        strings_accuracy = "Low"
    strings:
        $x_1_1 = {06 08 7e 45 00 00 04 28 ?? 00 00 06 6f ?? 01 00 0a 6f ?? 01 00 0a 06 18 6f ?? 01 00 0a 06 6f ?? 01 00 0a 13 04 02 0d 11 04 09 16 09 8e b7 6f ?? 01 00 0a 0b de 11}  //weight: 1, accuracy: Low
    condition:
        (filesize < 20MB) and
        (all of ($x*))
}

rule Trojan_MSIL_XWorm_RDF_2147904897_0
{
    meta:
        author = "defender2yara"
        detection_name = "Trojan:MSIL/XWorm.RDF!MTB"
        threat_id = "2147904897"
        type = "Trojan"
        platform = "MSIL: .NET intermediate language scripts"
        family = "XWorm"
        severity = "Critical"
        info = "MTB: Microsoft Threat Behavior"
        signature_type = "SIGNATURE_TYPE_PEHSTR_EXT"
        threshold = "2"
        strings_accuracy = "High"
    strings:
        $x_2_1 = {8e 69 6f 45 00 00 0a 0a 06 0b}  //weight: 2, accuracy: High
    condition:
        (filesize < 20MB) and
        (all of ($x*))
}

rule Trojan_MSIL_XWorm_RDG_2147906099_0
{
    meta:
        author = "defender2yara"
        detection_name = "Trojan:MSIL/XWorm.RDG!MTB"
        threat_id = "2147906099"
        type = "Trojan"
        platform = "MSIL: .NET intermediate language scripts"
        family = "XWorm"
        severity = "Critical"
        info = "MTB: Microsoft Threat Behavior"
        signature_type = "SIGNATURE_TYPE_PEHSTR_EXT"
        threshold = "2"
        strings_accuracy = "High"
    strings:
        $x_2_1 = {11 04 09 16 09 8e b7 6f ef 00 00 0a 0b}  //weight: 2, accuracy: High
    condition:
        (filesize < 20MB) and
        (all of ($x*))
}

rule Trojan_MSIL_XWorm_GPB_2147906996_0
{
    meta:
        author = "defender2yara"
        detection_name = "Trojan:MSIL/XWorm.GPB!MTB"
        threat_id = "2147906996"
        type = "Trojan"
        platform = "MSIL: .NET intermediate language scripts"
        family = "XWorm"
        severity = "Critical"
        info = "MTB: Microsoft Threat Behavior"
        signature_type = "SIGNATURE_TYPE_PEHSTR_EXT"
        threshold = "1"
        strings_accuracy = "Low"
    strings:
        $x_1_1 = {0c 08 17 61 d1 0c 07 08 6f ?? 00 00 0a 26 09 17 58 0d 09 02}  //weight: 1, accuracy: Low
    condition:
        (filesize < 20MB) and
        (all of ($x*))
}

rule Trojan_MSIL_XWorm_AXW_2147908235_0
{
    meta:
        author = "defender2yara"
        detection_name = "Trojan:MSIL/XWorm.AXW!MTB"
        threat_id = "2147908235"
        type = "Trojan"
        platform = "MSIL: .NET intermediate language scripts"
        family = "XWorm"
        severity = "Critical"
        info = "MTB: Microsoft Threat Behavior"
        signature_type = "SIGNATURE_TYPE_PEHSTR_EXT"
        threshold = "7"
        strings_accuracy = "High"
    strings:
        $x_1_1 = "a88d60ed-a77a-4724-8158-78f38e7fb298" ascii //weight: 1
        $x_2_2 = "ImmobiliWinForms.FormTipoImmobile.resources" ascii //weight: 2
        $x_2_3 = "ImmobiliWinForms.NuovoImmobile.resources" ascii //weight: 2
        $x_1_4 = "SELECT * FROM Proprietari" wide //weight: 1
        $x_1_5 = "SELECT * FROM TipiImmobile" wide //weight: 1
    condition:
        (filesize < 20MB) and
        (all of ($x*))
}

rule Trojan_MSIL_XWorm_RDI_2147911515_0
{
    meta:
        author = "defender2yara"
        detection_name = "Trojan:MSIL/XWorm.RDI!MTB"
        threat_id = "2147911515"
        type = "Trojan"
        platform = "MSIL: .NET intermediate language scripts"
        family = "XWorm"
        severity = "Critical"
        info = "MTB: Microsoft Threat Behavior"
        signature_type = "SIGNATURE_TYPE_PEHSTR_EXT"
        threshold = "2"
        strings_accuracy = "High"
    strings:
        $x_2_1 = {0d 07 16 09 a2 07 17 08 6f 3c 00 00 0a a2 07 18 07 16 9a}  //weight: 2, accuracy: High
    condition:
        (filesize < 20MB) and
        (all of ($x*))
}

rule Trojan_MSIL_XWorm_SPZF_2147912608_0
{
    meta:
        author = "defender2yara"
        detection_name = "Trojan:MSIL/XWorm.SPZF!MTB"
        threat_id = "2147912608"
        type = "Trojan"
        platform = "MSIL: .NET intermediate language scripts"
        family = "XWorm"
        severity = "Critical"
        info = "MTB: Microsoft Threat Behavior"
        signature_type = "SIGNATURE_TYPE_PEHSTR_EXT"
        threshold = "5"
        strings_accuracy = "Low"
    strings:
        $x_5_1 = {02 07 08 6f ?? ?? ?? 0a 0d 12 03 28 ?? ?? ?? 0a 1f 64 fe 01 13 04 11 04 2c 0e 00 06 6f ?? ?? ?? 0a 13 05 38 dd 00 00 00}  //weight: 5, accuracy: Low
    condition:
        (filesize < 20MB) and
        (all of ($x*))
}

rule Trojan_MSIL_XWorm_SG_2147914272_0
{
    meta:
        author = "defender2yara"
        detection_name = "Trojan:MSIL/XWorm.SG!MTB"
        threat_id = "2147914272"
        type = "Trojan"
        platform = "MSIL: .NET intermediate language scripts"
        family = "XWorm"
        severity = "Critical"
        info = "MTB: Microsoft Threat Behavior"
        signature_type = "SIGNATURE_TYPE_PEHSTR"
        threshold = "5"
        strings_accuracy = "High"
    strings:
        $x_1_1 = "Urlhide" wide //weight: 1
        $x_1_2 = "shutdown.exe -L" wide //weight: 1
        $x_1_3 = "RunShell" wide //weight: 1
        $x_1_4 = "OfflineKeylogger Not Enabled" wide //weight: 1
        $x_1_5 = "/dev/disk/by-uuid" wide //weight: 1
    condition:
        (filesize < 20MB) and
        (all of ($x*))
}

rule Trojan_MSIL_XWorm_AMAI_2147914740_0
{
    meta:
        author = "defender2yara"
        detection_name = "Trojan:MSIL/XWorm.AMAI!MTB"
        threat_id = "2147914740"
        type = "Trojan"
        platform = "MSIL: .NET intermediate language scripts"
        family = "XWorm"
        severity = "Critical"
        info = "MTB: Microsoft Threat Behavior"
        signature_type = "SIGNATURE_TYPE_PEHSTR_EXT"
        threshold = "1"
        strings_accuracy = "Low"
    strings:
        $x_1_1 = {1f 16 5d 91 13 ?? 07 09 91 11 ?? 61 13 ?? 07 09 17 58 08 5d 91}  //weight: 1, accuracy: Low
    condition:
        (filesize < 20MB) and
        (all of ($x*))
}

rule Trojan_MSIL_XWorm_AMAJ_2147914863_0
{
    meta:
        author = "defender2yara"
        detection_name = "Trojan:MSIL/XWorm.AMAJ!MTB"
        threat_id = "2147914863"
        type = "Trojan"
        platform = "MSIL: .NET intermediate language scripts"
        family = "XWorm"
        severity = "Critical"
        info = "MTB: Microsoft Threat Behavior"
        signature_type = "SIGNATURE_TYPE_PEHSTR_EXT"
        threshold = "1"
        strings_accuracy = "Low"
    strings:
        $x_1_1 = {04 0a 06 72 ?? 00 00 70 6f ?? 00 00 0a 28 ?? 00 00 06 0b 07 06 72 ?? 01 00 70 6f ?? 00 00 0a 28 ?? 00 00 06 0c 02 28 ?? 00 00 06 0d 08 09 8e 69 1f 40 12 04 28 ?? 00 00 06 26 09 16 08 09 8e 69 28 ?? 00 00 0a 00 08 09 8e 69 11 04 12 05 28 ?? 00 00 06 26 00}  //weight: 1, accuracy: Low
    condition:
        (filesize < 20MB) and
        (all of ($x*))
}

rule Trojan_MSIL_XWorm_SPXF_2147915068_0
{
    meta:
        author = "defender2yara"
        detection_name = "Trojan:MSIL/XWorm.SPXF!MTB"
        threat_id = "2147915068"
        type = "Trojan"
        platform = "MSIL: .NET intermediate language scripts"
        family = "XWorm"
        severity = "Critical"
        info = "MTB: Microsoft Threat Behavior"
        signature_type = "SIGNATURE_TYPE_PEHSTR_EXT"
        threshold = "4"
        strings_accuracy = "Low"
    strings:
        $x_4_1 = {2b 23 2b 28 2b 2d 09 08 6f ?? ?? ?? 0a 08 6f ?? ?? ?? 0a 0a de 0a}  //weight: 4, accuracy: Low
    condition:
        (filesize < 20MB) and
        (all of ($x*))
}

rule Trojan_MSIL_XWorm_SPCF_2147915069_0
{
    meta:
        author = "defender2yara"
        detection_name = "Trojan:MSIL/XWorm.SPCF!MTB"
        threat_id = "2147915069"
        type = "Trojan"
        platform = "MSIL: .NET intermediate language scripts"
        family = "XWorm"
        severity = "Critical"
        info = "MTB: Microsoft Threat Behavior"
        signature_type = "SIGNATURE_TYPE_PEHSTR_EXT"
        threshold = "4"
        strings_accuracy = "Low"
    strings:
        $x_4_1 = {0a 06 06 6f ?? ?? ?? 0a 06 6f ?? ?? ?? 0a 6f ?? ?? ?? 0a 0b 73 08 00 00 0a 0c 08 07 17 73 09 00 00 0a 0d 28 ?? ?? ?? 06 13 04 09 11 04 16 11 04 8e 69}  //weight: 4, accuracy: Low
    condition:
        (filesize < 20MB) and
        (all of ($x*))
}

rule Trojan_MSIL_XWorm_RDJ_2147915123_0
{
    meta:
        author = "defender2yara"
        detection_name = "Trojan:MSIL/XWorm.RDJ!MTB"
        threat_id = "2147915123"
        type = "Trojan"
        platform = "MSIL: .NET intermediate language scripts"
        family = "XWorm"
        severity = "Critical"
        info = "MTB: Microsoft Threat Behavior"
        signature_type = "SIGNATURE_TYPE_PEHSTR_EXT"
        threshold = "2"
        strings_accuracy = "High"
    strings:
        $x_2_1 = {09 6f 35 01 00 0a 13 07 73 36 01 00 0a 13 04 11 04 11 07 17}  //weight: 2, accuracy: High
    condition:
        (filesize < 20MB) and
        (all of ($x*))
}

rule Trojan_MSIL_XWorm_RDK_2147916220_0
{
    meta:
        author = "defender2yara"
        detection_name = "Trojan:MSIL/XWorm.RDK!MTB"
        threat_id = "2147916220"
        type = "Trojan"
        platform = "MSIL: .NET intermediate language scripts"
        family = "XWorm"
        severity = "Critical"
        info = "MTB: Microsoft Threat Behavior"
        signature_type = "SIGNATURE_TYPE_PEHSTR_EXT"
        threshold = "2"
        strings_accuracy = "High"
    strings:
        $x_2_1 = {11 0a 91 11 09 61 13 0b 11 07 17 58 08 58 08 5d 13 0c}  //weight: 2, accuracy: High
    condition:
        (filesize < 20MB) and
        (all of ($x*))
}

rule Trojan_MSIL_XWorm_AMAA_2147918470_0
{
    meta:
        author = "defender2yara"
        detection_name = "Trojan:MSIL/XWorm.AMAA!MTB"
        threat_id = "2147918470"
        type = "Trojan"
        platform = "MSIL: .NET intermediate language scripts"
        family = "XWorm"
        severity = "Critical"
        info = "MTB: Microsoft Threat Behavior"
        signature_type = "SIGNATURE_TYPE_PEHSTR_EXT"
        threshold = "1"
        strings_accuracy = "Low"
    strings:
        $x_1_1 = {08 5d 08 58 13 [0-30] 08 5d 13 [0-20] 61 [0-50] 20 00 04 00 00 59 [0-40] 20 00 01 00 00 5d 13}  //weight: 1, accuracy: Low
    condition:
        (filesize < 20MB) and
        (all of ($x*))
}

rule Trojan_MSIL_XWorm_AYA_2147919075_0
{
    meta:
        author = "defender2yara"
        detection_name = "Trojan:MSIL/XWorm.AYA!MTB"
        threat_id = "2147919075"
        type = "Trojan"
        platform = "MSIL: .NET intermediate language scripts"
        family = "XWorm"
        severity = "Critical"
        info = "MTB: Microsoft Threat Behavior"
        signature_type = "SIGNATURE_TYPE_PEHSTR_EXT"
        threshold = "11"
        strings_accuracy = "High"
    strings:
        $x_2_1 = "RunBotKiller" ascii //weight: 2
        $x_2_2 = "DetectVirtualMachine" ascii //weight: 2
        $x_2_3 = "DetectDebugger" ascii //weight: 2
        $x_2_4 = "DetectSandboxie" ascii //weight: 2
        $x_1_5 = "CreateMutex" ascii //weight: 1
        $x_1_6 = "payload" ascii //weight: 1
        $x_1_7 = "Select * from Win32_ComputerSystem" wide //weight: 1
    condition:
        (filesize < 20MB) and
        (all of ($x*))
}

rule Trojan_MSIL_XWorm_RDL_2147919879_0
{
    meta:
        author = "defender2yara"
        detection_name = "Trojan:MSIL/XWorm.RDL!MTB"
        threat_id = "2147919879"
        type = "Trojan"
        platform = "MSIL: .NET intermediate language scripts"
        family = "XWorm"
        severity = "Critical"
        info = "MTB: Microsoft Threat Behavior"
        signature_type = "SIGNATURE_TYPE_PEHSTR_EXT"
        threshold = "2"
        strings_accuracy = "High"
    strings:
        $x_2_1 = {08 17 73 29 00 00 0a 13 04 11 04 06 16 06 8e 69 6f 2a 00 00 0a 09 6f 2b 00 00 0a 13 05}  //weight: 2, accuracy: High
    condition:
        (filesize < 20MB) and
        (all of ($x*))
}

rule Trojan_MSIL_XWorm_AMMI_2147920213_0
{
    meta:
        author = "defender2yara"
        detection_name = "Trojan:MSIL/XWorm.AMMI!MTB"
        threat_id = "2147920213"
        type = "Trojan"
        platform = "MSIL: .NET intermediate language scripts"
        family = "XWorm"
        severity = "Critical"
        info = "MTB: Microsoft Threat Behavior"
        signature_type = "SIGNATURE_TYPE_PEHSTR_EXT"
        threshold = "1"
        strings_accuracy = "Low"
    strings:
        $x_1_1 = {0b 09 08 07 28 ?? 00 00 0a 28 ?? 00 00 0a 28 ?? 00 00 0a 0a 28 ?? 00 00 0a 06 6f ?? 00 00 0a 6f ?? 00 00 0a 14 14 6f ?? 00 00 0a 74 ?? 00 00 01 13}  //weight: 1, accuracy: Low
    condition:
        (filesize < 20MB) and
        (all of ($x*))
}

