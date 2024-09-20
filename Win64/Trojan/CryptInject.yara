rule Trojan_Win64_CryptInject_AA_2147745169_0
{
    meta:
        author = "defender2yara"
        detection_name = "Trojan:Win64/CryptInject.AA!MSR"
        threat_id = "2147745169"
        type = "Trojan"
        platform = "Win64: Windows 64-bit platform"
        family = "CryptInject"
        severity = "Critical"
        info = "MSR: Microsoft Security Response"
        signature_type = "SIGNATURE_TYPE_PEHSTR"
        threshold = "1"
        strings_accuracy = "High"
    strings:
        $x_1_1 = "0pC05/wD3_=gxhB@X2Mf7@.pdb" ascii //weight: 1
    condition:
        (filesize < 20MB) and
        (all of ($x*))
}

rule Trojan_Win64_CryptInject_AE_2147749032_0
{
    meta:
        author = "defender2yara"
        detection_name = "Trojan:Win64/CryptInject.AE!MSR"
        threat_id = "2147749032"
        type = "Trojan"
        platform = "Win64: Windows 64-bit platform"
        family = "CryptInject"
        severity = "Critical"
        info = "MSR: Microsoft Security Response"
        signature_type = "SIGNATURE_TYPE_PEHSTR_EXT"
        threshold = "4"
        strings_accuracy = "Low"
    strings:
        $x_1_1 = "SOFTWARE\\Microsoft\\Windows\\CurrentVersion\\Uninstall\\pdfreader" wide //weight: 1
        $x_1_2 = "/S /uid=update" wide //weight: 1
        $x_1_3 = {66 61 63 65 62 6f 6f 6b [0-8] 5f 6e 65 77 76 65 72 73 69 6f 6e 5c 64 61 74 61 62 61 73 65 5c 78 36 34 5c 52 65 6c 65 61 73 65 5c 57 69 6e 68 74 74 70 5f 36 34 2e 70 64 62}  //weight: 1, accuracy: Low
        $x_1_4 = "[Amazon] SendRunning can not find register" ascii //weight: 1
    condition:
        (filesize < 20MB) and
        (all of ($x*))
}

rule Trojan_Win64_CryptInject_PA_2147758633_0
{
    meta:
        author = "defender2yara"
        detection_name = "Trojan:Win64/CryptInject.PA!MTB"
        threat_id = "2147758633"
        type = "Trojan"
        platform = "Win64: Windows 64-bit platform"
        family = "CryptInject"
        severity = "Critical"
        info = "MTB: Microsoft Threat Behavior"
        signature_type = "SIGNATURE_TYPE_PEHSTR_EXT"
        threshold = "1"
        strings_accuracy = "Low"
    strings:
        $x_1_1 = {45 84 c0 75 ?? 49 3b ca 73 ?? 49 8b c1 83 e0 7f 42 0f b6 04 18 30 01 48 ff c1 49 ff c1 48 83 ea 01 75}  //weight: 1, accuracy: Low
    condition:
        (filesize < 20MB) and
        (all of ($x*))
}

rule Trojan_Win64_CryptInject_BE_2147812335_0
{
    meta:
        author = "defender2yara"
        detection_name = "Trojan:Win64/CryptInject.BE!MTB"
        threat_id = "2147812335"
        type = "Trojan"
        platform = "Win64: Windows 64-bit platform"
        family = "CryptInject"
        severity = "Critical"
        info = "MTB: Microsoft Threat Behavior"
        signature_type = "SIGNATURE_TYPE_PEHSTR_EXT"
        threshold = "2"
        strings_accuracy = "High"
    strings:
        $x_2_1 = {44 6b c2 7c b9 17 00 00 00 c1 e2 05 8b c2 41 83 e8 2c 4c 0f af c0 49 8b c2 49 f7 e0 48 c1 ea 07 48 69 c2 ff 00 00 00 4c 2b c0 41 0f b6 c0 0f 45 c8 33 d2 41 88 0c 39 ff c2 81 fa f0 49 02 00}  //weight: 2, accuracy: High
        $x_2_2 = "svogfiifotuz" ascii //weight: 2
        $x_2_3 = "zsadsgjea" ascii //weight: 2
    condition:
        (filesize < 20MB) and
        (1 of ($x*))
}

rule Trojan_Win64_CryptInject_DA_2147812417_0
{
    meta:
        author = "defender2yara"
        detection_name = "Trojan:Win64/CryptInject.DA!MTB"
        threat_id = "2147812417"
        type = "Trojan"
        platform = "Win64: Windows 64-bit platform"
        family = "CryptInject"
        severity = "Critical"
        info = "MTB: Microsoft Threat Behavior"
        signature_type = "SIGNATURE_TYPE_PEHSTR_EXT"
        threshold = "1"
        strings_accuracy = "Low"
    strings:
        $x_1_1 = {48 89 5c 24 08 57 48 83 ec 20 48 63 da 48 8b f9 ba 01 00 00 00 48 8b cb ff 15 ?? ?? ?? ?? 33 d2 48 3b da 7e ?? 8a 0c 97 80 f1 4b 88 0c 02 48 ff c2 48 3b d3 7c}  //weight: 1, accuracy: Low
    condition:
        (filesize < 20MB) and
        (all of ($x*))
}

rule Trojan_Win64_CryptInject_DA_2147812417_1
{
    meta:
        author = "defender2yara"
        detection_name = "Trojan:Win64/CryptInject.DA!MTB"
        threat_id = "2147812417"
        type = "Trojan"
        platform = "Win64: Windows 64-bit platform"
        family = "CryptInject"
        severity = "Critical"
        info = "MTB: Microsoft Threat Behavior"
        signature_type = "SIGNATURE_TYPE_PEHSTR_EXT"
        threshold = "1"
        strings_accuracy = "Low"
    strings:
        $x_1_1 = {41 fe c1 49 ff c3 45 0f b6 c9 42 8b 7c 8e ?? 44 02 d7 45 0f b6 d2 42 8b 4c 96 ?? 42 89 4c 8e ?? 40 02 cf 42 89 7c 96 ?? 0f b6 c1 0f b6 4c 86 ?? 41 30 4b ?? 48 ff cb 75}  //weight: 1, accuracy: Low
    condition:
        (filesize < 20MB) and
        (all of ($x*))
}

rule Trojan_Win64_CryptInject_DA_2147812417_2
{
    meta:
        author = "defender2yara"
        detection_name = "Trojan:Win64/CryptInject.DA!MTB"
        threat_id = "2147812417"
        type = "Trojan"
        platform = "Win64: Windows 64-bit platform"
        family = "CryptInject"
        severity = "Critical"
        info = "MTB: Microsoft Threat Behavior"
        signature_type = "SIGNATURE_TYPE_PEHSTR_EXT"
        threshold = "1"
        strings_accuracy = "Low"
    strings:
        $x_1_1 = {44 8b d8 8b c3 41 2b c3 66 89 44 24 ?? 8b 44 24 ?? 83 c0 ?? 89 44 24 ?? 0f b7 54 24 ?? 8b 44 24 ?? c1 e8 ?? 8b 4c 24 ?? c1 e1 ?? 0b c1 8b ca 03 c8 8b 44 24 ?? 33 c1 89 44 24 ?? eb}  //weight: 1, accuracy: Low
    condition:
        (filesize < 20MB) and
        (all of ($x*))
}

rule Trojan_Win64_CryptInject_AG_2147817376_0
{
    meta:
        author = "defender2yara"
        detection_name = "Trojan:Win64/CryptInject.AG!MSR"
        threat_id = "2147817376"
        type = "Trojan"
        platform = "Win64: Windows 64-bit platform"
        family = "CryptInject"
        severity = "Critical"
        info = "MSR: Microsoft Security Response"
        signature_type = "SIGNATURE_TYPE_PEHSTR_EXT"
        threshold = "9"
        strings_accuracy = "High"
    strings:
        $x_3_1 = "AUjoZKdcSZ" ascii //weight: 3
        $x_1_2 = "SwitchToFiber" ascii //weight: 1
        $x_1_3 = "CreateFiber" ascii //weight: 1
        $x_1_4 = "ConvertThreadToFiber" ascii //weight: 1
        $x_1_5 = "InitializeCriticalSection" ascii //weight: 1
        $x_1_6 = "HeapAlloc" ascii //weight: 1
        $x_1_7 = "GetProcessHeap" ascii //weight: 1
    condition:
        (filesize < 20MB) and
        (all of ($x*))
}

rule Trojan_Win64_CryptInject_AG_2147817376_1
{
    meta:
        author = "defender2yara"
        detection_name = "Trojan:Win64/CryptInject.AG!MSR"
        threat_id = "2147817376"
        type = "Trojan"
        platform = "Win64: Windows 64-bit platform"
        family = "CryptInject"
        severity = "Critical"
        info = "MSR: Microsoft Security Response"
        signature_type = "SIGNATURE_TYPE_PEHSTR_EXT"
        threshold = "12"
        strings_accuracy = "High"
    strings:
        $x_3_1 = "YTBSBbNTWU" ascii //weight: 3
        $x_3_2 = "xshiMECwuG" ascii //weight: 3
        $x_1_3 = "SwitchToFiber" ascii //weight: 1
        $x_1_4 = "CreateFiber" ascii //weight: 1
        $x_1_5 = "DeleteFiber" ascii //weight: 1
        $x_1_6 = "SetCurrentDirectoryA" ascii //weight: 1
        $x_1_7 = "GetFileAttributesA" ascii //weight: 1
        $x_1_8 = "GetComputerNameA" ascii //weight: 1
        $x_1_9 = "HeapAlloc" ascii //weight: 1
        $x_1_10 = "GetProcessHeap" ascii //weight: 1
        $x_1_11 = "GetCurrentThreadId" ascii //weight: 1
    condition:
        (filesize < 20MB) and
        (
            ((1 of ($x_3_*) and 9 of ($x_1_*))) or
            ((2 of ($x_3_*) and 6 of ($x_1_*))) or
            (all of ($x*))
        )
}

rule Trojan_Win64_CryptInject_AG_2147817376_2
{
    meta:
        author = "defender2yara"
        detection_name = "Trojan:Win64/CryptInject.AG!MSR"
        threat_id = "2147817376"
        type = "Trojan"
        platform = "Win64: Windows 64-bit platform"
        family = "CryptInject"
        severity = "Critical"
        info = "MSR: Microsoft Security Response"
        signature_type = "SIGNATURE_TYPE_PEHSTR_EXT"
        threshold = "21"
        strings_accuracy = "High"
    strings:
        $x_5_1 = "HWgullOFkZ" ascii //weight: 5
        $x_5_2 = "rsoBUpcDjW" ascii //weight: 5
        $x_2_3 = "situro701zh.dll" ascii //weight: 2
        $x_1_4 = "ConnectNamedPipe" ascii //weight: 1
        $x_1_5 = "DisconnectNamedPipe" ascii //weight: 1
        $x_1_6 = "InitializeCriticalSection" ascii //weight: 1
        $x_1_7 = "EnterCriticalSection" ascii //weight: 1
        $x_1_8 = "LeaveCriticalSection" ascii //weight: 1
        $x_1_9 = "CreateThread" ascii //weight: 1
        $x_1_10 = "OpenThread" ascii //weight: 1
        $x_1_11 = "ResumeThread" ascii //weight: 1
        $x_1_12 = "GetModuleFileNameA" ascii //weight: 1
        $x_1_13 = "CreateNamedPipeA" ascii //weight: 1
        $x_1_14 = "CreateActCtxA" ascii //weight: 1
        $x_1_15 = "ActivateActCtx" ascii //weight: 1
        $x_1_16 = "GetProcessHeap" ascii //weight: 1
        $x_1_17 = "HeapAlloc" ascii //weight: 1
    condition:
        (filesize < 20MB) and
        (
            ((1 of ($x_5_*) and 1 of ($x_2_*) and 14 of ($x_1_*))) or
            ((2 of ($x_5_*) and 11 of ($x_1_*))) or
            ((2 of ($x_5_*) and 1 of ($x_2_*) and 9 of ($x_1_*))) or
            (all of ($x*))
        )
}

rule Trojan_Win64_CryptInject_DD_2147818422_0
{
    meta:
        author = "defender2yara"
        detection_name = "Trojan:Win64/CryptInject.DD!MTB"
        threat_id = "2147818422"
        type = "Trojan"
        platform = "Win64: Windows 64-bit platform"
        family = "CryptInject"
        severity = "Critical"
        info = "MTB: Microsoft Threat Behavior"
        signature_type = "SIGNATURE_TYPE_PEHSTR_EXT"
        threshold = "14"
        strings_accuracy = "High"
    strings:
        $x_10_1 = "qobxbguj7qe.dll" ascii //weight: 10
        $x_1_2 = "su19c3n67050" ascii //weight: 1
        $x_1_3 = "ohbk935y1p" ascii //weight: 1
        $x_1_4 = "f6a4x0t0" ascii //weight: 1
        $x_1_5 = "v5aeszr" ascii //weight: 1
        $x_10_6 = "ltjtt40.dll" ascii //weight: 10
        $x_1_7 = "e1nq7lp02jm8" ascii //weight: 1
        $x_1_8 = "r2q97m278k8g" ascii //weight: 1
        $x_1_9 = "q611c80d9" ascii //weight: 1
        $x_1_10 = "e6wao42s" ascii //weight: 1
    condition:
        (filesize < 20MB) and
        (
            ((1 of ($x_10_*) and 4 of ($x_1_*))) or
            ((2 of ($x_10_*))) or
            (all of ($x*))
        )
}

rule Trojan_Win64_CryptInject_LSG_2147827225_0
{
    meta:
        author = "defender2yara"
        detection_name = "Trojan:Win64/CryptInject.LSG!MSR"
        threat_id = "2147827225"
        type = "Trojan"
        platform = "Win64: Windows 64-bit platform"
        family = "CryptInject"
        severity = "Critical"
        info = "MSR: Microsoft Security Response"
        signature_type = "SIGNATURE_TYPE_PEHSTR"
        threshold = "5"
        strings_accuracy = "High"
    strings:
        $x_1_1 = "MalwareZoo" ascii //weight: 1
        $x_1_2 = "Local\\{C15730E2-145C-4c5e-B005-3BC753F42475}-once-flag" ascii //weight: 1
        $x_1_3 = "Congratulations you have successfully manually injected a DLL" ascii //weight: 1
        $x_1_4 = "BOOM" ascii //weight: 1
        $x_1_5 = "ReflectiveInjection" ascii //weight: 1
    condition:
        (filesize < 20MB) and
        (all of ($x*))
}

rule Trojan_Win64_CryptInject_C_2147829673_0
{
    meta:
        author = "defender2yara"
        detection_name = "Trojan:Win64/CryptInject.C!MSR"
        threat_id = "2147829673"
        type = "Trojan"
        platform = "Win64: Windows 64-bit platform"
        family = "CryptInject"
        severity = "Critical"
        info = "MSR: Microsoft Security Response"
        signature_type = "SIGNATURE_TYPE_PEHSTR_EXT"
        threshold = "6"
        strings_accuracy = "High"
    strings:
        $x_1_1 = "start AdminDenied.vbs" ascii //weight: 1
        $x_1_2 = "hqdefault.jpg" ascii //weight: 1
        $x_1_3 = "obj.DeleteFile(\"*.vbs\")" ascii //weight: 1
        $x_1_4 = "DEL /f AutoRun.bat" ascii //weight: 1
        $x_1_5 = "del \"%userprofile%\\AppData\\Roaming\\Microsoft\\Windows\\start Menu\\Programs\\Startup\\logoff.exe" ascii //weight: 1
        $x_1_6 = "shutdown -L" ascii //weight: 1
        $x_1_7 = "programdata\\ssh\\loop1.bat" ascii //weight: 1
    condition:
        (filesize < 20MB) and
        (6 of ($x*))
}

rule Trojan_Win64_CryptInject_MM_2147833341_0
{
    meta:
        author = "defender2yara"
        detection_name = "Trojan:Win64/CryptInject.MM!MTB"
        threat_id = "2147833341"
        type = "Trojan"
        platform = "Win64: Windows 64-bit platform"
        family = "CryptInject"
        severity = "Critical"
        info = "MTB: Microsoft Threat Behavior"
        signature_type = "SIGNATURE_TYPE_PEHSTR_EXT"
        threshold = "2"
        strings_accuracy = "Low"
    strings:
        $x_1_1 = {49 8b da 4d 2b f2 4d 8b c2 4c 8b 54 24 ?? 43 8a 0c 06 2a 8c 24 ?? ?? ?? ?? 32 8c 24 ?? ?? ?? ?? 49 8b 41 ?? 41 88 0c 00 41 83 fb 08 0f 84}  //weight: 1, accuracy: Low
        $x_1_2 = {40 d2 ef 8a 82 ?? ?? ?? ?? 48 8b 8a ?? ?? ?? ?? 34 1c 0f b7 54 24 ?? 40 22 f8 49 8b 81 ?? ?? ?? ?? 48 0f af ca 48 0f af c1 49 89 81 ?? ?? ?? ?? 41 8b c5 41 ff c5 85 c0 74}  //weight: 1, accuracy: Low
    condition:
        (filesize < 20MB) and
        (all of ($x*))
}

rule Trojan_Win64_CryptInject_JJ_2147834449_0
{
    meta:
        author = "defender2yara"
        detection_name = "Trojan:Win64/CryptInject.JJ!MTB"
        threat_id = "2147834449"
        type = "Trojan"
        platform = "Win64: Windows 64-bit platform"
        family = "CryptInject"
        severity = "Critical"
        info = "MTB: Microsoft Threat Behavior"
        signature_type = "SIGNATURE_TYPE_PEHSTR"
        threshold = "1"
        strings_accuracy = "High"
    strings:
        $x_1_1 = {48 39 fb 73 12 8a 14 1e 41 32 14 1c 48 ff c3 88 14 01 48 ff c0 eb e9 49 89 46 10}  //weight: 1, accuracy: High
    condition:
        (filesize < 20MB) and
        (all of ($x*))
}

rule Trojan_Win64_CryptInject_ID_2147835673_0
{
    meta:
        author = "defender2yara"
        detection_name = "Trojan:Win64/CryptInject.ID!MTB"
        threat_id = "2147835673"
        type = "Trojan"
        platform = "Win64: Windows 64-bit platform"
        family = "CryptInject"
        severity = "Critical"
        info = "MTB: Microsoft Threat Behavior"
        signature_type = "SIGNATURE_TYPE_PEHSTR_EXT"
        threshold = "2"
        strings_accuracy = "Low"
    strings:
        $x_1_1 = {88 14 01 ff 83 ?? ?? ?? ?? 8b 83 ?? ?? ?? ?? 2b 43 54 48 63 8b ?? ?? ?? ?? 2d 3f 6b 0d 00 09 83 ?? ?? ?? ?? 48 8b 83 ?? ?? ?? ?? 44 88 04 01 8b 83 ?? ?? ?? ?? ff 83 ?? ?? ?? ?? 33 43 24 35 38 f7 06 00 89 83 ?? ?? ?? ?? 49 81 f9}  //weight: 1, accuracy: Low
        $x_1_2 = "sll707xi3.exe" ascii //weight: 1
    condition:
        (filesize < 20MB) and
        (all of ($x*))
}

rule Trojan_Win64_CryptInject_XM_2147838385_0
{
    meta:
        author = "defender2yara"
        detection_name = "Trojan:Win64/CryptInject.XM!MTB"
        threat_id = "2147838385"
        type = "Trojan"
        platform = "Win64: Windows 64-bit platform"
        family = "CryptInject"
        severity = "Critical"
        info = "MTB: Microsoft Threat Behavior"
        signature_type = "SIGNATURE_TYPE_PEHSTR_EXT"
        threshold = "1"
        strings_accuracy = "Low"
    strings:
        $x_1_1 = {48 8b c3 49 03 dc 83 e0 ?? 8a 44 05 ?? 30 02 49 03 d4 4d 2b f4 75}  //weight: 1, accuracy: Low
    condition:
        (filesize < 20MB) and
        (all of ($x*))
}

rule Trojan_Win64_CryptInject_YM_2147838448_0
{
    meta:
        author = "defender2yara"
        detection_name = "Trojan:Win64/CryptInject.YM!MTB"
        threat_id = "2147838448"
        type = "Trojan"
        platform = "Win64: Windows 64-bit platform"
        family = "CryptInject"
        severity = "Critical"
        info = "MTB: Microsoft Threat Behavior"
        signature_type = "SIGNATURE_TYPE_PEHSTR_EXT"
        threshold = "1"
        strings_accuracy = "Low"
    strings:
        $x_1_1 = {0f b6 01 84 c0 74 ?? 3c ?? 74 ?? 34 ?? 88 01 ff c2 48 ff c1 41 3b d0 7c}  //weight: 1, accuracy: Low
    condition:
        (filesize < 20MB) and
        (all of ($x*))
}

rule Trojan_Win64_CryptInject_MMU_2147846617_0
{
    meta:
        author = "defender2yara"
        detection_name = "Trojan:Win64/CryptInject.MMU!MTB"
        threat_id = "2147846617"
        type = "Trojan"
        platform = "Win64: Windows 64-bit platform"
        family = "CryptInject"
        severity = "Critical"
        info = "MTB: Microsoft Threat Behavior"
        signature_type = "SIGNATURE_TYPE_PEHSTR"
        threshold = "1"
        strings_accuracy = "High"
    strings:
        $x_1_1 = {ff c0 89 85 54 03 00 00 48 63 85 54 03 00 00 48 3b 85 d8 02 00 00 73 2b 48 63 85 54 03 00 00 48 8b 8d 38 03 00 00 0f be 04 01 83 f0 08 83 f0 0c 48 63 8d 54 03 00 00 48 8b 95 38 03 00 00 88 04 0a eb b7}  //weight: 1, accuracy: High
    condition:
        (filesize < 20MB) and
        (all of ($x*))
}

rule Trojan_Win64_CryptInject_KIK_2147847330_0
{
    meta:
        author = "defender2yara"
        detection_name = "Trojan:Win64/CryptInject.KIK!MTB"
        threat_id = "2147847330"
        type = "Trojan"
        platform = "Win64: Windows 64-bit platform"
        family = "CryptInject"
        severity = "Critical"
        info = "MTB: Microsoft Threat Behavior"
        signature_type = "SIGNATURE_TYPE_PEHSTR_EXT"
        threshold = "2"
        strings_accuracy = "Low"
    strings:
        $x_1_1 = {03 ca 01 4b ?? 41 8b 14 02 49 83 c2 ?? 8b 4b ?? 8b 43 ?? 81 f1 ?? ?? ?? ?? 0f af c1 48 63 4b ?? 89 43 ?? 8b 43 ?? 31 43 ?? 0f b6 c2 0f b6 53 ?? 0f af d0 48 8b 83 ?? ?? ?? ?? 88 14 01 ff 43 ?? 8b 4b ?? 44 8b 83}  //weight: 1, accuracy: Low
        $x_1_2 = {ff c8 01 83 ?? ?? ?? ?? 8b 43 ?? 2d ?? ?? ?? ?? 0f af d0 8b 83 ?? ?? ?? ?? 89 93 ?? ?? ?? ?? 8b 4b ?? 44 01 43 ?? 81 c1 ?? ?? ?? ?? 03 ca 0f af ca 8b 93 ?? ?? ?? ?? 2b c2 2d ?? ?? ?? ?? 31 43 ?? 89 8b ?? ?? ?? ?? 49 81 fa ?? ?? ?? ?? 0f 8c}  //weight: 1, accuracy: Low
    condition:
        (filesize < 20MB) and
        (all of ($x*))
}

rule Trojan_Win64_CryptInject_KIM_2147847338_0
{
    meta:
        author = "defender2yara"
        detection_name = "Trojan:Win64/CryptInject.KIM!MTB"
        threat_id = "2147847338"
        type = "Trojan"
        platform = "Win64: Windows 64-bit platform"
        family = "CryptInject"
        severity = "Critical"
        info = "MTB: Microsoft Threat Behavior"
        signature_type = "SIGNATURE_TYPE_PEHSTR_EXT"
        threshold = "1"
        strings_accuracy = "Low"
    strings:
        $x_1_1 = {4c 8b cb 4c 8d 15 ?? ?? ?? ?? b8 ?? ?? ?? ?? 41 f7 e8 c1 fa ?? 8b c2 c1 e8 ?? 03 d0 6b c2 ?? 41 8b c8 2b c8 48 63 c1 42 0f b6 8c 10 ?? ?? ?? ?? 43 32 8c 11 ?? ?? ?? ?? 48 8b 85 ?? ?? ?? ?? 41 88 0c 01 41 ff c0 4d 8d 49 ?? 44 3b 85 ?? ?? ?? ?? 72}  //weight: 1, accuracy: Low
    condition:
        (filesize < 20MB) and
        (all of ($x*))
}

rule Trojan_Win64_CryptInject_REN_2147848501_0
{
    meta:
        author = "defender2yara"
        detection_name = "Trojan:Win64/CryptInject.REN!MTB"
        threat_id = "2147848501"
        type = "Trojan"
        platform = "Win64: Windows 64-bit platform"
        family = "CryptInject"
        severity = "Critical"
        info = "MTB: Microsoft Threat Behavior"
        signature_type = "SIGNATURE_TYPE_PEHSTR_EXT"
        threshold = "1"
        strings_accuracy = "Low"
    strings:
        $x_1_1 = {8b 0c 24 48 8b 44 24 ?? 0f b7 04 08 66 89 44 24 ?? 8b 04 24 83 c0 01 89 04 24 0f b7 54 24 ?? 8b 44 24 04 c1 e8 08 8b 4c 24 04 c1 e1 ?? 0b c1 8b ca 03 c8 8b 44 24 04 33 c1 89 44 24 04 eb}  //weight: 1, accuracy: Low
    condition:
        (filesize < 20MB) and
        (all of ($x*))
}

rule Trojan_Win64_CryptInject_SA_2147849664_0
{
    meta:
        author = "defender2yara"
        detection_name = "Trojan:Win64/CryptInject.SA!MTB"
        threat_id = "2147849664"
        type = "Trojan"
        platform = "Win64: Windows 64-bit platform"
        family = "CryptInject"
        severity = "Critical"
        info = "MTB: Microsoft Threat Behavior"
        signature_type = "SIGNATURE_TYPE_PEHSTR_EXT"
        threshold = "2"
        strings_accuracy = "Low"
    strings:
        $x_1_1 = {48 8b c3 49 03 dc 83 e0 ?? 8a 44 05 ?? 30 02 49 03 d4 4d 2b f4 75}  //weight: 1, accuracy: Low
        $x_1_2 = {0f b7 c0 4d 8d 49 ?? 41 33 c0 44 69 c0 ?? ?? ?? ?? 41 8b c0 c1 e8 ?? 44 33 c0 41 0f b7 01 66 85 c0 75 ?? 41 81 f8 ?? ?? ?? ?? 74 ?? 48 8b 09 48 3b ca 75}  //weight: 1, accuracy: Low
    condition:
        (filesize < 20MB) and
        (all of ($x*))
}

rule Trojan_Win64_CryptInject_BX_2147850249_0
{
    meta:
        author = "defender2yara"
        detection_name = "Trojan:Win64/CryptInject.BX!MTB"
        threat_id = "2147850249"
        type = "Trojan"
        platform = "Win64: Windows 64-bit platform"
        family = "CryptInject"
        severity = "Critical"
        info = "MTB: Microsoft Threat Behavior"
        signature_type = "SIGNATURE_TYPE_PEHSTR"
        threshold = "1"
        strings_accuracy = "High"
    strings:
        $x_1_1 = {48 8b 44 24 38 8b 40 28 48 8b 4c 24 28 48 03 c8 48 8b c1 48 89 44 24 78 ff 54 24 78}  //weight: 1, accuracy: High
    condition:
        (filesize < 20MB) and
        (all of ($x*))
}

rule Trojan_Win64_CryptInject_LKA_2147852872_0
{
    meta:
        author = "defender2yara"
        detection_name = "Trojan:Win64/CryptInject.LKA!MTB"
        threat_id = "2147852872"
        type = "Trojan"
        platform = "Win64: Windows 64-bit platform"
        family = "CryptInject"
        severity = "Critical"
        info = "MTB: Microsoft Threat Behavior"
        signature_type = "SIGNATURE_TYPE_PEHSTR_EXT"
        threshold = "1"
        strings_accuracy = "High"
    strings:
        $x_1_1 = {48 0f b7 35 96 a7 35 00 66 89 71 04 66 c7 41 06 01 00 8b cb c1 e9 1f 03 cb c1 f9 01 48 63 c9 66 c7 04 48 00 00 48 83 c4 28}  //weight: 1, accuracy: High
    condition:
        (filesize < 20MB) and
        (all of ($x*))
}

rule Trojan_Win64_CryptInject_DB_2147852873_0
{
    meta:
        author = "defender2yara"
        detection_name = "Trojan:Win64/CryptInject.DB!MTB"
        threat_id = "2147852873"
        type = "Trojan"
        platform = "Win64: Windows 64-bit platform"
        family = "CryptInject"
        severity = "Critical"
        info = "MTB: Microsoft Threat Behavior"
        signature_type = "SIGNATURE_TYPE_PEHSTR_EXT"
        threshold = "3"
        strings_accuracy = "High"
    strings:
        $x_1_1 = "71.DLL" wide //weight: 1
        $x_1_2 = "fuckoff.exe" ascii //weight: 1
        $x_1_3 = "\\repos\\FuckOFFRunPE\\x64\\Release\\FuckOFFRunPE.pdb" ascii //weight: 1
    condition:
        (filesize < 20MB) and
        (all of ($x*))
}

rule Trojan_Win64_CryptInject_GK_2147853354_0
{
    meta:
        author = "defender2yara"
        detection_name = "Trojan:Win64/CryptInject.GK!MTB"
        threat_id = "2147853354"
        type = "Trojan"
        platform = "Win64: Windows 64-bit platform"
        family = "CryptInject"
        severity = "Critical"
        info = "MTB: Microsoft Threat Behavior"
        signature_type = "SIGNATURE_TYPE_PEHSTR"
        threshold = "2"
        strings_accuracy = "High"
    strings:
        $x_1_1 = {65 48 8b 04 25 60 00 00 00 48 99 44 8b f4 44 8b d3 4d 63 f7 0f ac c9 b3 41 be bf e5 f1 78 66 45 3b fc 48 8b 50 18 48 83 c2 10 0f 99 c5}  //weight: 1, accuracy: High
        $x_1_2 = "LangDataCall" ascii //weight: 1
    condition:
        (filesize < 20MB) and
        (all of ($x*))
}

rule Trojan_Win64_CryptInject_TT_2147889415_0
{
    meta:
        author = "defender2yara"
        detection_name = "Trojan:Win64/CryptInject.TT!MTB"
        threat_id = "2147889415"
        type = "Trojan"
        platform = "Win64: Windows 64-bit platform"
        family = "CryptInject"
        severity = "Critical"
        info = "MTB: Microsoft Threat Behavior"
        signature_type = "SIGNATURE_TYPE_PEHSTR_EXT"
        threshold = "2"
        strings_accuracy = "High"
    strings:
        $x_1_1 = {65 48 8b 04 25 30 00 00 00 bb 01 00 00 00 48 8b 48 60 48 8b 69 10}  //weight: 1, accuracy: High
        $x_1_2 = "HuanLoader.pdb" ascii //weight: 1
    condition:
        (filesize < 20MB) and
        (all of ($x*))
}

rule Trojan_Win64_CryptInject_MA_2147889493_0
{
    meta:
        author = "defender2yara"
        detection_name = "Trojan:Win64/CryptInject.MA!MTB"
        threat_id = "2147889493"
        type = "Trojan"
        platform = "Win64: Windows 64-bit platform"
        family = "CryptInject"
        severity = "Critical"
        info = "MTB: Microsoft Threat Behavior"
        signature_type = "SIGNATURE_TYPE_PEHSTR_EXT"
        threshold = "1"
        strings_accuracy = "High"
    strings:
        $x_1_1 = {41 8b c0 45 03 c7 99 f7 f9 48 63 c2 42 8a 04 10 41 30 01 4d 03 cf 41 83 f8 02 72}  //weight: 1, accuracy: High
    condition:
        (filesize < 20MB) and
        (all of ($x*))
}

rule Trojan_Win64_CryptInject_MA_2147889493_1
{
    meta:
        author = "defender2yara"
        detection_name = "Trojan:Win64/CryptInject.MA!MTB"
        threat_id = "2147889493"
        type = "Trojan"
        platform = "Win64: Windows 64-bit platform"
        family = "CryptInject"
        severity = "Critical"
        info = "MTB: Microsoft Threat Behavior"
        signature_type = "SIGNATURE_TYPE_PEHSTR_EXT"
        threshold = "1"
        strings_accuracy = "Low"
    strings:
        $x_1_1 = {44 0f af 4f 4c 41 8b d1 c1 ea 08 88 14 01 ff 05 ?? ?? ?? ?? 48 8b 05 ?? ?? ?? ?? 8b 48 40 03 4f 30}  //weight: 1, accuracy: Low
    condition:
        (filesize < 20MB) and
        (all of ($x*))
}

rule Trojan_Win64_CryptInject_MA_2147889493_2
{
    meta:
        author = "defender2yara"
        detection_name = "Trojan:Win64/CryptInject.MA!MTB"
        threat_id = "2147889493"
        type = "Trojan"
        platform = "Win64: Windows 64-bit platform"
        family = "CryptInject"
        severity = "Critical"
        info = "MTB: Microsoft Threat Behavior"
        signature_type = "SIGNATURE_TYPE_PEHSTR_EXT"
        threshold = "15"
        strings_accuracy = "High"
    strings:
        $x_5_1 = {f9 dc b6 31 84 eb ea d0 15 ed 97 37 01 f4 26 d1 2c a3 32 a8 bd aa c7 b7 29 63 de c6 2c f3 1a 0f 4d 1a 17 77 e1 5b 37 43 bb ec dd fa 5a fa fb 75}  //weight: 5, accuracy: High
        $x_5_2 = {12 30 cc cc 78 80 ad dd fe b7 f2 fb 2a c1 51 36 e0 4d 19 36 d2 47 32 48 b9 a9 c3 28 77 4b a3 6a 80 ad dd fe bf b2 f8 78 9f 1a aa fc 82 ad dd fe}  //weight: 5, accuracy: High
        $x_5_3 = {f0 00 27 00 0b 02 02 18 00 32 00 00 00 2a 00 00 00 0c 00 00 75 c7 06 00 00 10}  //weight: 5, accuracy: High
    condition:
        (filesize < 20MB) and
        (all of ($x*))
}

rule Trojan_Win64_CryptInject_GTA_2147890109_0
{
    meta:
        author = "defender2yara"
        detection_name = "Trojan:Win64/CryptInject.GTA!MTB"
        threat_id = "2147890109"
        type = "Trojan"
        platform = "Win64: Windows 64-bit platform"
        family = "CryptInject"
        severity = "Critical"
        info = "MTB: Microsoft Threat Behavior"
        signature_type = "SIGNATURE_TYPE_PEHSTR_EXT"
        threshold = "1"
        strings_accuracy = "Low"
    strings:
        $x_1_1 = {0f b6 c2 4c 03 c0 45 02 08 44 88 8c 24 ?? ?? ?? ?? 41 0f b6 10 41 0f b6 c1 0f b6 4c 04 30 41 88 08 0f b6 84 24 31 01 00 00 88 54 04 30 44 0f b6 8c 24 31 01 00 00 0f b6 94 24 30 01 00 00 42 0f b6 4c 0c 30 02 4c 14 30 0f b6 c1 0f b6 4c 04 30 42 32 4c 13 03 41 88 4a ff 48 83 ef 01 75}  //weight: 1, accuracy: Low
    condition:
        (filesize < 20MB) and
        (all of ($x*))
}

rule Trojan_Win64_CryptInject_GTB_2147890110_0
{
    meta:
        author = "defender2yara"
        detection_name = "Trojan:Win64/CryptInject.GTB!MTB"
        threat_id = "2147890110"
        type = "Trojan"
        platform = "Win64: Windows 64-bit platform"
        family = "CryptInject"
        severity = "Critical"
        info = "MTB: Microsoft Threat Behavior"
        signature_type = "SIGNATURE_TYPE_PEHSTR_EXT"
        threshold = "2"
        strings_accuracy = "Low"
    strings:
        $x_1_1 = {45 8b c1 48 8b 05 ?? ?? ?? ?? 41 c1 e8 10 ff 80 a4 00 00 00 8b 82 50 01 00 00 33 05 34 5c 02 00 35 d2 a1 0c 00 89 05 29 5c 02 00 8b 4a 6c 2b 4a 48 8b 05 ed 5b 02 00}  //weight: 1, accuracy: Low
        $x_1_2 = {03 c8 89 0d e3 5b 02 00 48 63 0d 30 5c 02 00 48 8b 82 ?? ?? ?? ?? 44 88 04 01 45 8b c1 8b 05 1c 5c 02 00 ff c0 41 c1 e8 08 89 05 10 5c 02 00 48 63 c8 48 8b 82 ?? ?? ?? ?? 44 88 04 01 ff 05 fc 5b 02 00 48 63 8a a4 00 00 00 48 8b 05 2a 5c 02 00 44 88 0c 01 ff 82 a4 00 00 00 48 81 fe c4 2f 00 00 0f 8c}  //weight: 1, accuracy: Low
    condition:
        (filesize < 20MB) and
        (all of ($x*))
}

rule Trojan_Win64_CryptInject_YAA_2147892196_0
{
    meta:
        author = "defender2yara"
        detection_name = "Trojan:Win64/CryptInject.YAA!MTB"
        threat_id = "2147892196"
        type = "Trojan"
        platform = "Win64: Windows 64-bit platform"
        family = "CryptInject"
        severity = "Critical"
        info = "MTB: Microsoft Threat Behavior"
        signature_type = "SIGNATURE_TYPE_PEHSTR_EXT"
        threshold = "2"
        strings_accuracy = "Low"
    strings:
        $x_1_1 = {41 33 c1 44 69 c8 ?? ?? ?? ?? 66 41 0f be c3 41 8b c1 45 3a c4 f9 c1 e8 0f 44 3b f4 f8 44 33 c8 8a 01 f6 c5 3a 84 c0}  //weight: 1, accuracy: Low
        $x_1_2 = {83 e0 03 f9 8a 44 05 ?? f8 66 41 3b c6 4d 85 d4 30 02 49 03 d4 41 f6 c3 4f 85 f2 4d 2b f4}  //weight: 1, accuracy: Low
    condition:
        (filesize < 20MB) and
        (all of ($x*))
}

rule Trojan_Win64_CryptInject_D_2147892334_0
{
    meta:
        author = "defender2yara"
        detection_name = "Trojan:Win64/CryptInject.D!MTB"
        threat_id = "2147892334"
        type = "Trojan"
        platform = "Win64: Windows 64-bit platform"
        family = "CryptInject"
        severity = "Critical"
        info = "MTB: Microsoft Threat Behavior"
        signature_type = "SIGNATURE_TYPE_PEHSTR_EXT"
        threshold = "1"
        strings_accuracy = "Low"
    strings:
        $x_1_1 = {0f b6 8c 04 ?? ?? 00 00 8b 94 24 ?? ?? 00 00 01 c2 31 ca 88 94 04 ?? ?? 00 00 48 83 c0 01 48 83 f8 12 75 dc}  //weight: 1, accuracy: Low
    condition:
        (filesize < 20MB) and
        (all of ($x*))
}

rule Trojan_Win64_CryptInject_TB_2147893147_0
{
    meta:
        author = "defender2yara"
        detection_name = "Trojan:Win64/CryptInject.TB!MTB"
        threat_id = "2147893147"
        type = "Trojan"
        platform = "Win64: Windows 64-bit platform"
        family = "CryptInject"
        severity = "Critical"
        info = "MTB: Microsoft Threat Behavior"
        signature_type = "SIGNATURE_TYPE_PEHSTR"
        threshold = "1"
        strings_accuracy = "High"
    strings:
        $x_1_1 = {41 0f b6 14 02 8d 48 01 83 e1 03 d2 ca 41 88 14 00 48 83 c0 01 49 39 c1 75 e6 48 83 c4 28 49 ff e0}  //weight: 1, accuracy: High
    condition:
        (filesize < 20MB) and
        (all of ($x*))
}

rule Trojan_Win64_CryptInject_DC_2147893159_0
{
    meta:
        author = "defender2yara"
        detection_name = "Trojan:Win64/CryptInject.DC!MTB"
        threat_id = "2147893159"
        type = "Trojan"
        platform = "Win64: Windows 64-bit platform"
        family = "CryptInject"
        severity = "Critical"
        info = "MTB: Microsoft Threat Behavior"
        signature_type = "SIGNATURE_TYPE_PEHSTR_EXT"
        threshold = "1"
        strings_accuracy = "Low"
    strings:
        $x_1_1 = {41 f7 ef 48 03 cb 49 03 cc 41 03 d7 c1 fa ?? 8b c2 c1 e8 ?? 42 8a b4 29 ?? ?? ?? ?? 03 d0 6b c2 ?? 41 8b cf 2b c8 48 63 c1 48 8b cf 42 32 b4 28}  //weight: 1, accuracy: Low
    condition:
        (filesize < 20MB) and
        (all of ($x*))
}

rule Trojan_Win64_CryptInject_GN_2147893499_0
{
    meta:
        author = "defender2yara"
        detection_name = "Trojan:Win64/CryptInject.GN!MTB"
        threat_id = "2147893499"
        type = "Trojan"
        platform = "Win64: Windows 64-bit platform"
        family = "CryptInject"
        severity = "Critical"
        info = "MTB: Microsoft Threat Behavior"
        signature_type = "SIGNATURE_TYPE_PEHSTR"
        threshold = "1"
        strings_accuracy = "High"
    strings:
        $x_1_1 = {ff c0 89 44 24 28 0f b7 44 24 20 8b 4c 24 24 c1 e9 08 8b 54 24 24 c1 e2 18 0b ca 03 c1 8b 4c 24 24 33 c8 8b c1 89 44 24 24}  //weight: 1, accuracy: High
    condition:
        (filesize < 20MB) and
        (all of ($x*))
}

rule Trojan_Win64_CryptInject_YAD_2147893856_0
{
    meta:
        author = "defender2yara"
        detection_name = "Trojan:Win64/CryptInject.YAD!MTB"
        threat_id = "2147893856"
        type = "Trojan"
        platform = "Win64: Windows 64-bit platform"
        family = "CryptInject"
        severity = "Critical"
        info = "MTB: Microsoft Threat Behavior"
        signature_type = "SIGNATURE_TYPE_PEHSTR_EXT"
        threshold = "2"
        strings_accuracy = "High"
    strings:
        $x_2_1 = {88 41 ff 48 8b c1 49 2b c0 83 e0 1f 0f b6 04 18 41 32 04 09 88 01 49 8d 04 0b 83 e0 1f 0f b6 04 18 41 32 04 0a 88 41 01 48 8d 04 0f}  //weight: 2, accuracy: High
    condition:
        (filesize < 20MB) and
        (all of ($x*))
}

rule Trojan_Win64_CryptInject_FS_2147893996_0
{
    meta:
        author = "defender2yara"
        detection_name = "Trojan:Win64/CryptInject.FS!dha"
        threat_id = "2147893996"
        type = "Trojan"
        platform = "Win64: Windows 64-bit platform"
        family = "CryptInject"
        severity = "Critical"
        info = "dha: an internal category used to refer to some threats"
        signature_type = "SIGNATURE_TYPE_PEHSTR"
        threshold = "1"
        strings_accuracy = "High"
    strings:
        $x_1_1 = {65 48 8b 04 25 60 00 00 00 48 8b 40 58 48 89 44 24 60}  //weight: 1, accuracy: High
    condition:
        (filesize < 20MB) and
        (all of ($x*))
}

rule Trojan_Win64_CryptInject_AB_2147894003_0
{
    meta:
        author = "defender2yara"
        detection_name = "Trojan:Win64/CryptInject.AB!MTB"
        threat_id = "2147894003"
        type = "Trojan"
        platform = "Win64: Windows 64-bit platform"
        family = "CryptInject"
        severity = "Critical"
        info = "MTB: Microsoft Threat Behavior"
        signature_type = "SIGNATURE_TYPE_PEHSTR_EXT"
        threshold = "2"
        strings_accuracy = "Low"
    strings:
        $x_1_1 = {0f b6 45 fd 99 35 ?? ?? ?? ?? 66 a3 ?? ?? ?? ?? 0f bf 45 f4 0f bf 0d ?? ?? ?? ?? 33 c1 a3 ?? ?? ?? ?? 0f be 15 ?? ?? ?? ?? 85 d2 74}  //weight: 1, accuracy: Low
        $x_1_2 = {66 89 55 f0 b8 ?? ?? ?? ?? 66 89 45 f0 0f bf 0d ?? ?? ?? ?? 0f be 15 ?? ?? ?? ?? 03 ca 0f bf 05 ?? ?? ?? ?? 03 c1 66 a3 ?? ?? ?? ?? e9}  //weight: 1, accuracy: Low
    condition:
        (filesize < 20MB) and
        (all of ($x*))
}

rule Trojan_Win64_CryptInject_AZ_2147894371_0
{
    meta:
        author = "defender2yara"
        detection_name = "Trojan:Win64/CryptInject.AZ!MTB"
        threat_id = "2147894371"
        type = "Trojan"
        platform = "Win64: Windows 64-bit platform"
        family = "CryptInject"
        severity = "Critical"
        info = "MTB: Microsoft Threat Behavior"
        signature_type = "SIGNATURE_TYPE_PEHSTR_EXT"
        threshold = "8"
        strings_accuracy = "High"
    strings:
        $x_1_1 = "c:\\some\\file.dot.txt" ascii //weight: 1
        $x_1_2 = "windows_7_windows_10_check_running_once_mutex" ascii //weight: 1
        $x_1_3 = "c:\\msf\\3\\http.dll" ascii //weight: 1
        $x_1_4 = "ProcessUtils::IsUserAdmin()" ascii //weight: 1
        $x_1_5 = "Wait until GetDomainAndPc()" ascii //weight: 1
        $x_1_6 = "BotInfo.txt" wide //weight: 1
        $x_1_7 = "%programdata%\\log.log" wide //weight: 1
        $x_1_8 = "%programdata%\\ssh.dll" wide //weight: 1
    condition:
        (filesize < 20MB) and
        (all of ($x*))
}

rule Trojan_Win64_CryptInject_MB_2147895057_0
{
    meta:
        author = "defender2yara"
        detection_name = "Trojan:Win64/CryptInject.MB!MTB"
        threat_id = "2147895057"
        type = "Trojan"
        platform = "Win64: Windows 64-bit platform"
        family = "CryptInject"
        severity = "Critical"
        info = "MTB: Microsoft Threat Behavior"
        signature_type = "SIGNATURE_TYPE_PEHSTR_EXT"
        threshold = "1"
        strings_accuracy = "Low"
    strings:
        $x_1_1 = {48 c1 e9 08 48 69 c1 ?? ?? ?? ?? 49 8b c8 48 2b c8 41 8a 04 18 32 04 11 41 88 04 18 49 ff c0 49 83 f8 71}  //weight: 1, accuracy: Low
    condition:
        (filesize < 20MB) and
        (all of ($x*))
}

rule Trojan_Win64_CryptInject_MB_2147895057_1
{
    meta:
        author = "defender2yara"
        detection_name = "Trojan:Win64/CryptInject.MB!MTB"
        threat_id = "2147895057"
        type = "Trojan"
        platform = "Win64: Windows 64-bit platform"
        family = "CryptInject"
        severity = "Critical"
        info = "MTB: Microsoft Threat Behavior"
        signature_type = "SIGNATURE_TYPE_PEHSTR_EXT"
        threshold = "5"
        strings_accuracy = "Low"
    strings:
        $x_5_1 = {8b 87 a4 00 00 00 09 4f 10 8b 0d ?? ?? ?? ?? 81 f1 10 9d 01 00 0f af c1 89 87 a4 00 00 00 48 8b 05 ?? ?? ?? ?? 48 63 48 5c 48 8b 87 ?? ?? ?? ?? 44 88 04 01 48 8b 05 ?? ?? ?? ?? ff 40 5c 8b 05 ?? ?? ?? ?? 05 76 12 f7 ff 31 05 ?? ?? ?? ?? 49 81 f9 00 8e 01 00 0f 8c cc}  //weight: 5, accuracy: Low
    condition:
        (filesize < 20MB) and
        (all of ($x*))
}

rule Trojan_Win64_CryptInject_YAG_2147895339_0
{
    meta:
        author = "defender2yara"
        detection_name = "Trojan:Win64/CryptInject.YAG!MTB"
        threat_id = "2147895339"
        type = "Trojan"
        platform = "Win64: Windows 64-bit platform"
        family = "CryptInject"
        severity = "Critical"
        info = "MTB: Microsoft Threat Behavior"
        signature_type = "SIGNATURE_TYPE_PEHSTR_EXT"
        threshold = "2"
        strings_accuracy = "Low"
    strings:
        $x_2_1 = {48 2b f0 48 8d 05 ?? ?? ?? ?? 32 14 06 48 8d 35 ?? ?? ?? ?? 42 88 14 09 49 8b c0 49 63 ca 48 ff c9 4d 63 c2 48 f7 e1 48 c1 ea 08 48 69 c2 30 01 00 00 41 0f b6 51 ?? 48 2b c8 48 b8 ?? ?? ?? ?? ?? ?? ?? ?? 32 14 31 48 8b 0f 49 03 cb}  //weight: 2, accuracy: Low
    condition:
        (filesize < 20MB) and
        (all of ($x*))
}

rule Trojan_Win64_CryptInject_HD_2147895416_0
{
    meta:
        author = "defender2yara"
        detection_name = "Trojan:Win64/CryptInject.HD!MTB"
        threat_id = "2147895416"
        type = "Trojan"
        platform = "Win64: Windows 64-bit platform"
        family = "CryptInject"
        severity = "Critical"
        info = "MTB: Microsoft Threat Behavior"
        signature_type = "SIGNATURE_TYPE_PEHSTR_EXT"
        threshold = "1"
        strings_accuracy = "Low"
    strings:
        $x_1_1 = {43 0f b6 14 1a 8d 42 ?? 33 c9 3c ?? b8 ?? ?? ?? ?? 0f 46 c8 0a d1 0f be c2 49 33 c0 0f b6 c8 41 c1 e8 ?? 48 8d 05 ?? ?? ?? ?? 44 33 04 88 48 8b 54 24 ?? 41 f7 d0 44 3b 84 24 ?? ?? ?? ?? 0f 84 ?? ?? ?? ?? 41 80 3b ?? 75}  //weight: 1, accuracy: Low
    condition:
        (filesize < 20MB) and
        (all of ($x*))
}

rule Trojan_Win64_CryptInject_JB_2147895562_0
{
    meta:
        author = "defender2yara"
        detection_name = "Trojan:Win64/CryptInject.JB!MTB"
        threat_id = "2147895562"
        type = "Trojan"
        platform = "Win64: Windows 64-bit platform"
        family = "CryptInject"
        severity = "Critical"
        info = "MTB: Microsoft Threat Behavior"
        signature_type = "SIGNATURE_TYPE_PEHSTR_EXT"
        threshold = "1"
        strings_accuracy = "High"
    strings:
        $x_1_1 = {48 2b c8 48 8b 03 42 32 14 21 49 8b c8 48 2b cf 88 14 01}  //weight: 1, accuracy: High
    condition:
        (filesize < 20MB) and
        (all of ($x*))
}

rule Trojan_Win64_CryptInject_DID_2147895636_0
{
    meta:
        author = "defender2yara"
        detection_name = "Trojan:Win64/CryptInject.DID!MTB"
        threat_id = "2147895636"
        type = "Trojan"
        platform = "Win64: Windows 64-bit platform"
        family = "CryptInject"
        severity = "Critical"
        info = "MTB: Microsoft Threat Behavior"
        signature_type = "SIGNATURE_TYPE_PEHSTR_EXT"
        threshold = "1"
        strings_accuracy = "High"
    strings:
        $x_1_1 = {8b c3 99 83 e2 3f 03 c2 83 e0 3f 2b c2 48 63 c8 42 8a 8c 09 50 08 06 00 43 32 8c 08 f0 7f 0c 00 48 8b 44 24 30 41 88 0c 00 ff c3 49 ff c0 48 63 c3 48 3b 84 24 18 03 00 00 72}  //weight: 1, accuracy: High
    condition:
        (filesize < 20MB) and
        (all of ($x*))
}

rule Trojan_Win64_CryptInject_NR_2147895644_0
{
    meta:
        author = "defender2yara"
        detection_name = "Trojan:Win64/CryptInject.NR!MTB"
        threat_id = "2147895644"
        type = "Trojan"
        platform = "Win64: Windows 64-bit platform"
        family = "CryptInject"
        severity = "Critical"
        info = "MTB: Microsoft Threat Behavior"
        signature_type = "SIGNATURE_TYPE_PEHSTR_EXT"
        threshold = "2"
        strings_accuracy = "High"
    strings:
        $x_1_1 = "FilelessPELoader.pdb" ascii //weight: 1
        $x_1_2 = "Failed in retrieving the Shellcode" ascii //weight: 1
    condition:
        (filesize < 20MB) and
        (all of ($x*))
}

rule Trojan_Win64_CryptInject_CM_2147895740_0
{
    meta:
        author = "defender2yara"
        detection_name = "Trojan:Win64/CryptInject.CM!MTB"
        threat_id = "2147895740"
        type = "Trojan"
        platform = "Win64: Windows 64-bit platform"
        family = "CryptInject"
        severity = "Critical"
        info = "MTB: Microsoft Threat Behavior"
        signature_type = "SIGNATURE_TYPE_PEHSTR_EXT"
        threshold = "2"
        strings_accuracy = "High"
    strings:
        $x_1_1 = {32 84 0a e8 03 00 00 48 83 c1 01 48 8b 94 24 88 00 00 00 83 e1 0f 42 88 04 3a}  //weight: 1, accuracy: High
        $x_1_2 = {c1 e9 08 01 ca 88 50 02 89 d1 0f b6 50 01 c1 e9 08 01 ca 88 50 01 c1 ea 08 00 10}  //weight: 1, accuracy: High
    condition:
        (filesize < 20MB) and
        (all of ($x*))
}

rule Trojan_Win64_CryptInject_LLA_2147895821_0
{
    meta:
        author = "defender2yara"
        detection_name = "Trojan:Win64/CryptInject.LLA!MTB"
        threat_id = "2147895821"
        type = "Trojan"
        platform = "Win64: Windows 64-bit platform"
        family = "CryptInject"
        severity = "Critical"
        info = "MTB: Microsoft Threat Behavior"
        signature_type = "SIGNATURE_TYPE_PEHSTR_EXT"
        threshold = "1"
        strings_accuracy = "High"
    strings:
        $x_1_1 = {65 48 8b 04 25 60 00 00 00 48 89 5c 24 50 48 89 6c 24 58 48 8b 48 18 48 89 74 24 60 48 89 7c 24 40 48 8b 69 10 33 ff 48 8b 45 30 48 85 c0}  //weight: 1, accuracy: High
    condition:
        (filesize < 20MB) and
        (all of ($x*))
}

rule Trojan_Win64_CryptInject_AY_2147896488_0
{
    meta:
        author = "defender2yara"
        detection_name = "Trojan:Win64/CryptInject.AY!MTB"
        threat_id = "2147896488"
        type = "Trojan"
        platform = "Win64: Windows 64-bit platform"
        family = "CryptInject"
        severity = "Critical"
        info = "MTB: Microsoft Threat Behavior"
        signature_type = "SIGNATURE_TYPE_PEHSTR_EXT"
        threshold = "4"
        strings_accuracy = "High"
    strings:
        $x_1_1 = "MTU3LjI0NS4yNDQuNjc=" ascii //weight: 1
        $x_1_2 = "portportport" ascii //weight: 1
        $x_1_3 = "C:\\WINDOWS\\SYSTEM32\\rundll32.exe %s, run" ascii //weight: 1
        $x_1_4 = "STAGE1" ascii //weight: 1
    condition:
        (filesize < 20MB) and
        (all of ($x*))
}

rule Trojan_Win64_CryptInject_AY_2147896488_1
{
    meta:
        author = "defender2yara"
        detection_name = "Trojan:Win64/CryptInject.AY!MTB"
        threat_id = "2147896488"
        type = "Trojan"
        platform = "Win64: Windows 64-bit platform"
        family = "CryptInject"
        severity = "Critical"
        info = "MTB: Microsoft Threat Behavior"
        signature_type = "SIGNATURE_TYPE_PEHSTR_EXT"
        threshold = "2"
        strings_accuracy = "Low"
    strings:
        $x_2_1 = {48 63 c8 b8 ?? ?? ?? ?? 48 03 cb 48 03 cd 48 83 c5 ?? 42 0f b6 8c 21 ?? ?? ?? ?? f7 ee c1 fa 03 8b c2 c1 e8 1f 03 d0 48 63 c6 83 c6 01 4c 63 c2 4d 6b c0 ?? 4c 03 c0 48 8b 44 24 ?? 43 32 8c 20 ?? ?? ?? ?? 88 4c 28 ?? 48 8d 0d ?? ?? ?? ?? e8}  //weight: 2, accuracy: Low
        $x_2_2 = {4c 63 c0 b8 ?? ?? ?? ?? 4c 03 c3 4c 03 c5 f7 ee c1 fa 03 8b c2 c1 e8 1f 03 c2 48 98 48 8d 0c c0 48 63 c6 83 c6 01 48 8d 14 88 41 8a 8c 38 ?? ?? ?? ?? 48 8b 44 24 ?? 32 8c 3a ?? ?? ?? ?? 88 0c 28 48 8d 0d ?? ?? ?? ?? 48 83 c5 01 e8}  //weight: 2, accuracy: Low
    condition:
        (filesize < 20MB) and
        (1 of ($x*))
}

rule Trojan_Win64_CryptInject_ZAT_2147896504_0
{
    meta:
        author = "defender2yara"
        detection_name = "Trojan:Win64/CryptInject.ZAT!MTB"
        threat_id = "2147896504"
        type = "Trojan"
        platform = "Win64: Windows 64-bit platform"
        family = "CryptInject"
        severity = "Critical"
        info = "MTB: Microsoft Threat Behavior"
        signature_type = "SIGNATURE_TYPE_PEHSTR_EXT"
        threshold = "2"
        strings_accuracy = "High"
    strings:
        $x_1_1 = {41 01 d0 4d 01 ca 4c 89 94 24 68 01 00 00 48 8b 94 24 e0 00 00 00 48 83 c2 c0 48 89 94 24 e0 00 00 00 48 8b 94 24 d0 00 00 00 4c 8b 94 24 70 01 00 00 4c 01 d2 48 89 94 24 70 01 00 00 48 8b 94 24 f0 00 00 00 48 83 c2 c0 48 89 94 24 f0 00 00 00 90 8b 54 24 60}  //weight: 1, accuracy: High
        $x_1_2 = {41 89 12 41 33 79 04 90 41 89 7a 04 45 33 69 08 90 45 89 6a 08 8b 94 24 a4 00 00 00 41 33 51 0c 90 41 89 52 0c 41 33 41 10 90 41 89 42 10 41 33 59 14 90 41 89 5a 14 45 33 61 18 90 45 89 62 18}  //weight: 1, accuracy: High
    condition:
        (filesize < 20MB) and
        (all of ($x*))
}

rule Trojan_Win64_CryptInject_ZAV_2147896700_0
{
    meta:
        author = "defender2yara"
        detection_name = "Trojan:Win64/CryptInject.ZAV!MTB"
        threat_id = "2147896700"
        type = "Trojan"
        platform = "Win64: Windows 64-bit platform"
        family = "CryptInject"
        severity = "Critical"
        info = "MTB: Microsoft Threat Behavior"
        signature_type = "SIGNATURE_TYPE_PEHSTR_EXT"
        threshold = "1"
        strings_accuracy = "Low"
    strings:
        $x_1_1 = {45 33 c0 45 8d 48 01 8b 05 b0 3c 0b 00 8b 4f 28 33 0d bf 3c 0b 00 81 e9 58 26 1b 00 0f af c1 89 05 98 3c 0b 00 48 8b 87 a8 00 00 00 41 8b 14 00 49 83 c0 04 0f af 57 6c 8b 87 ?? ?? ?? ?? 83 e8 0d 09 47 50 8b 47 08 01 05 4c 3b 0b 00 48 8b 05 ed 3b 0b 00 48 63 8f ?? ?? ?? ?? 88 14 01 b9 94 0a 16 00}  //weight: 1, accuracy: Low
    condition:
        (filesize < 20MB) and
        (all of ($x*))
}

rule Trojan_Win64_CryptInject_ZAF_2147896701_0
{
    meta:
        author = "defender2yara"
        detection_name = "Trojan:Win64/CryptInject.ZAF!MTB"
        threat_id = "2147896701"
        type = "Trojan"
        platform = "Win64: Windows 64-bit platform"
        family = "CryptInject"
        severity = "Critical"
        info = "MTB: Microsoft Threat Behavior"
        signature_type = "SIGNATURE_TYPE_PEHSTR_EXT"
        threshold = "2"
        strings_accuracy = "High"
    strings:
        $x_1_1 = {99 41 f7 f8 48 63 d2 48 8d 05 30 1a 02 00 0f be 14 10 41 89 c8 41 83 f0 ff 89 d0 44 21 c0 41 89 d1 41 83 f1 ff 41 89 c8 45 21 c8 44 09 c0 89 45 e0 e8 d8 40 01 00 8b 45 e0 88 c2 48 8b 45 f0 48 63 4d e4 88 14 08 48 8b 45 f0 48 63 4d e4 0f be 04 08 83 f8 00 75 02}  //weight: 1, accuracy: High
        $x_1_2 = {89 c2 8b 45 fc 83 e0 01 89 c0 89 c1 48 8d 05 56 e0 01 00 33 14 88 48 63 4d f8 48 8d 05 b4 e4 01 00 89 14 88 8b 45 f8 89 45 f0 b9 67 66 2d bc e8 e1 60 01 00 89 c1 8b 45 f0 01 c8 89 45 f8 e9}  //weight: 1, accuracy: High
    condition:
        (filesize < 20MB) and
        (all of ($x*))
}

rule Trojan_Win64_CryptInject_MKX_2147897034_0
{
    meta:
        author = "defender2yara"
        detection_name = "Trojan:Win64/CryptInject.MKX!MTB"
        threat_id = "2147897034"
        type = "Trojan"
        platform = "Win64: Windows 64-bit platform"
        family = "CryptInject"
        severity = "Critical"
        info = "MTB: Microsoft Threat Behavior"
        signature_type = "SIGNATURE_TYPE_PEHSTR_EXT"
        threshold = "1"
        strings_accuracy = "High"
    strings:
        $x_1_1 = {48 ff c0 48 89 04 24 48 8b 44 24 30 48 39 04 24 73 28 48 8b 04 24 48 8b 4c 24 28 48 03 c8 48 8b c1 0f be 00 83 f0 2e 48 8b 0c 24 48 8b 54 24 20 48 03 d1 48 8b ca 88 01 eb}  //weight: 1, accuracy: High
    condition:
        (filesize < 20MB) and
        (all of ($x*))
}

rule Trojan_Win64_CryptInject_MYY_2147897035_0
{
    meta:
        author = "defender2yara"
        detection_name = "Trojan:Win64/CryptInject.MYY!MTB"
        threat_id = "2147897035"
        type = "Trojan"
        platform = "Win64: Windows 64-bit platform"
        family = "CryptInject"
        severity = "Critical"
        info = "MTB: Microsoft Threat Behavior"
        signature_type = "SIGNATURE_TYPE_PEHSTR_EXT"
        threshold = "2"
        strings_accuracy = "Low"
    strings:
        $x_1_1 = {0f b6 c8 41 02 cb 40 02 cf 0f b6 d1 41 0f b6 44 95 08 41 30 46 ff 41 8b 44 95 ?? 41 31 44 9d ?? 41 8b 44 ad 08 40 fe c5 41 8d 0c 00}  //weight: 1, accuracy: Low
        $x_1_2 = {0f b6 c8 41 02 cb 40 02 cf 0f b6 d1 41 0f b6 44 95 08 41 30 46 fe 41 8b 44 95 ?? 41 31 44 9d ?? 41 8b 44 ad 08 41 8d 0c 00 43 31 4c 95 08 49 ff cf 0f 85}  //weight: 1, accuracy: Low
    condition:
        (filesize < 20MB) and
        (all of ($x*))
}

rule Trojan_Win64_CryptInject_MZA_2147897125_0
{
    meta:
        author = "defender2yara"
        detection_name = "Trojan:Win64/CryptInject.MZA!MTB"
        threat_id = "2147897125"
        type = "Trojan"
        platform = "Win64: Windows 64-bit platform"
        family = "CryptInject"
        severity = "Critical"
        info = "MTB: Microsoft Threat Behavior"
        signature_type = "SIGNATURE_TYPE_PEHSTR_EXT"
        threshold = "2"
        strings_accuracy = "Low"
    strings:
        $x_1_1 = {41 8d 0c 00 42 8d 44 25 ?? 43 89 4c a5 ?? 0f b6 c8 44 02 d9 44 02 df 41 0f b6 cb 41 0f b6 44 8d 08 41 30 46 01 41 8b 44 8d 08 41 31 44 95 08 41 8b 44 ad 08}  //weight: 1, accuracy: Low
        $x_1_2 = {0f b6 c8 44 02 d9 44 02 df 41 0f b6 cb 49 83 c6 05 41 0f b6 44 8d ?? 41 30 46 fe 41 8b 44 8d ?? 41 31 44 95 08 41 8b 44 ad 08 41 8d 0c 00 43 31 4c 95 08 49 ff cf 0f 85}  //weight: 1, accuracy: Low
    condition:
        (filesize < 20MB) and
        (all of ($x*))
}

rule Trojan_Win64_CryptInject_ZZ_2147897281_0
{
    meta:
        author = "defender2yara"
        detection_name = "Trojan:Win64/CryptInject.ZZ!MTB"
        threat_id = "2147897281"
        type = "Trojan"
        platform = "Win64: Windows 64-bit platform"
        family = "CryptInject"
        severity = "Critical"
        info = "MTB: Microsoft Threat Behavior"
        signature_type = "SIGNATURE_TYPE_PEHSTR_EXT"
        threshold = "3"
        strings_accuracy = "High"
    strings:
        $x_1_1 = {c7 84 24 a0 00 00 00 e5 4e af 6a c7 84 24 b0 00 00 00 41 5f c5 17 c7 84 24 d0 00 00 00 e9 76 26 38 c7 84 24 c0 00 00 00 cb 31 44 0f c7 84 24 00 01 00 00 d6 8c 9f cc c7 84 24 f0 00 00 00 b1 48 1a a2 c7 84 24 e0 00 00 00 f1 77 7b 41 c7 84 24 10 01 00 00 a9 d0 62 c1}  //weight: 1, accuracy: High
        $x_1_2 = "SvchostInjector.x64.dll" ascii //weight: 1
        $x_1_3 = "MapDLL" ascii //weight: 1
    condition:
        (filesize < 20MB) and
        (all of ($x*))
}

rule Trojan_Win64_CryptInject_NKK_2147897596_0
{
    meta:
        author = "defender2yara"
        detection_name = "Trojan:Win64/CryptInject.NKK!MTB"
        threat_id = "2147897596"
        type = "Trojan"
        platform = "Win64: Windows 64-bit platform"
        family = "CryptInject"
        severity = "Critical"
        info = "MTB: Microsoft Threat Behavior"
        signature_type = "SIGNATURE_TYPE_PEHSTR_EXT"
        threshold = "1"
        strings_accuracy = "Low"
    strings:
        $x_1_1 = {83 c0 01 89 84 24 f0 00 00 00 8b 44 24 28 39 84 24 f0 00 00 00 73 ?? 48 63 8c 24 f0 00 00 00 48 8b 84 24 a0 00 00 00 44 0f b6 04 08 48 63 84 24 ?? ?? ?? ?? 33 d2 b9 2c 00 00 00 48 f7 f1 0f b6 44 14 48 41 8b d0 33 d0 48 63 8c 24 ?? ?? ?? ?? 48 8b 84 24 d8 00 00 00 88 14 08 eb}  //weight: 1, accuracy: Low
    condition:
        (filesize < 20MB) and
        (all of ($x*))
}

rule Trojan_Win64_CryptInject_MC_2147897602_0
{
    meta:
        author = "defender2yara"
        detection_name = "Trojan:Win64/CryptInject.MC"
        threat_id = "2147897602"
        type = "Trojan"
        platform = "Win64: Windows 64-bit platform"
        family = "CryptInject"
        severity = "Critical"
        signature_type = "SIGNATURE_TYPE_PEHSTR_EXT"
        threshold = "1"
        strings_accuracy = "High"
    strings:
        $x_1_1 = {48 63 8c 24 18 01 00 00 48 8b 84 24 c8 00 00 00 44 0f b6 04 08 48 63 84 24 18 01 00 00 33 d2 b9 43 00 00 00 48 f7 f1 0f b6 44 14 50 41 8b d0 33 d0 48 63 8c 24 18 01 00 00 48 8b 84 24 00 01 00 00 88 14 08}  //weight: 1, accuracy: High
    condition:
        (filesize < 20MB) and
        (all of ($x*))
}

rule Trojan_Win64_CryptInject_YAH_2147897651_0
{
    meta:
        author = "defender2yara"
        detection_name = "Trojan:Win64/CryptInject.YAH!MTB"
        threat_id = "2147897651"
        type = "Trojan"
        platform = "Win64: Windows 64-bit platform"
        family = "CryptInject"
        severity = "Critical"
        info = "MTB: Microsoft Threat Behavior"
        signature_type = "SIGNATURE_TYPE_PEHSTR_EXT"
        threshold = "1"
        strings_accuracy = "Low"
    strings:
        $x_1_1 = {b9 11 00 00 00 99 f7 f9 8b 45 e0 48 63 d2 48 8d 0d ?? ?? ?? ?? 0f be 0c 11 31 c8 88 c2 48 8b 45 f0 48 63 4d e4 88 14 08}  //weight: 1, accuracy: Low
    condition:
        (filesize < 20MB) and
        (all of ($x*))
}

rule Trojan_Win64_CryptInject_EAC_2147898749_0
{
    meta:
        author = "defender2yara"
        detection_name = "Trojan:Win64/CryptInject.EAC!MTB"
        threat_id = "2147898749"
        type = "Trojan"
        platform = "Win64: Windows 64-bit platform"
        family = "CryptInject"
        severity = "Critical"
        info = "MTB: Microsoft Threat Behavior"
        signature_type = "SIGNATURE_TYPE_PEHSTR_EXT"
        threshold = "10"
        strings_accuracy = "Low"
    strings:
        $x_5_1 = {03 c1 48 63 c8 48 8b 84 24 ?? ?? ?? ?? 44 0f b6 04 08 48 63 84 24 ?? ?? ?? ?? 33 d2 b9 3c 00 00 00 48 f7 f1 0f b6 44 14 70 41 8b d0 33 d0 8b 8c 24 88 01 00 00 8b 84 24 a8 01 00 00}  //weight: 5, accuracy: Low
        $x_5_2 = {03 c1 2b 84 24 b4 00 00 00 03 84 24 40 01 00 00 2b 84 24 88 01 00 00 03 84 24 b4 00 00 00 8b 8c 24 40 01 00 00 0f af 8c 24 ?? ?? ?? ?? 0f af 8c 24 ?? ?? ?? ?? 03 c1 2b 84 24 ?? ?? ?? ?? 03 84 24 ?? ?? ?? ?? 48 63 c8 48 8b 84 24 ?? ?? ?? ?? 88 14 08 e9}  //weight: 5, accuracy: Low
    condition:
        (filesize < 20MB) and
        (all of ($x*))
}

rule Trojan_Win64_CryptInject_PACO_2147898799_0
{
    meta:
        author = "defender2yara"
        detection_name = "Trojan:Win64/CryptInject.PACO!MTB"
        threat_id = "2147898799"
        type = "Trojan"
        platform = "Win64: Windows 64-bit platform"
        family = "CryptInject"
        severity = "Critical"
        info = "MTB: Microsoft Threat Behavior"
        signature_type = "SIGNATURE_TYPE_PEHSTR_EXT"
        threshold = "2"
        strings_accuracy = "High"
    strings:
        $x_1_1 = {f3 0f 6f 40 e0 48 8d 40 40 83 c6 40 66 0f 6f ca 66 0f ef c8 f3 0f 7f 48 a0 f3 0f 6f 40 b0 66 0f ef c2 f3 0f 7f 40 b0 f3 0f 6f 48 c0 66 0f ef ca f3 0f 7f 48 c0 66 0f 6f ca f3 0f 6f 40 d0 66 0f ef c8 f3 0f 7f 48 d0 3b f2 72 b5}  //weight: 1, accuracy: High
        $x_1_2 = {80 31 39 48 8d 49 01 48 83 e8 01 75 f3}  //weight: 1, accuracy: High
    condition:
        (filesize < 20MB) and
        (all of ($x*))
}

rule Trojan_Win64_CryptInject_BMC_2147898913_0
{
    meta:
        author = "defender2yara"
        detection_name = "Trojan:Win64/CryptInject.BMC!MTB"
        threat_id = "2147898913"
        type = "Trojan"
        platform = "Win64: Windows 64-bit platform"
        family = "CryptInject"
        severity = "Critical"
        info = "MTB: Microsoft Threat Behavior"
        signature_type = "SIGNATURE_TYPE_PEHSTR_EXT"
        threshold = "2"
        strings_accuracy = "High"
    strings:
        $x_1_1 = {42 33 0c 20 48 c1 eb 18 41 33 4c 9d 00 41 89 c9 89 c8 44 89 d9 41 89 e8 31 e8 89 c3 44 31 d3 33 5c ba f4 0f b6 f3 41 33 0c b6 0f b6 f7 41 33 0c b7 48 89 de}  //weight: 1, accuracy: High
        $x_1_2 = "deps\\shellcode_runner.pdb" ascii //weight: 1
    condition:
        (filesize < 20MB) and
        (all of ($x*))
}

rule Trojan_Win64_CryptInject_MG_2147899207_0
{
    meta:
        author = "defender2yara"
        detection_name = "Trojan:Win64/CryptInject.MG!MTB"
        threat_id = "2147899207"
        type = "Trojan"
        platform = "Win64: Windows 64-bit platform"
        family = "CryptInject"
        severity = "Critical"
        info = "MTB: Microsoft Threat Behavior"
        signature_type = "SIGNATURE_TYPE_PEHSTR_EXT"
        threshold = "1"
        strings_accuracy = "High"
    strings:
        $x_1_1 = {48 8b c2 48 8b 8c 24 80 00 00 00 48 8b 09 0f b6 04 01 88 44 24 20 48 8b 44 24 78 48 8b 00 48 8b 4c 24 28 0f b6 04 08 0f b6 4c 24 20 33 c1 89 44 24 24 0f b6 54 24 24 48 8d 4c 24 40}  //weight: 1, accuracy: High
    condition:
        (filesize < 20MB) and
        (all of ($x*))
}

rule Trojan_Win64_CryptInject_AG_2147900011_0
{
    meta:
        author = "defender2yara"
        detection_name = "Trojan:Win64/CryptInject.AG!MTB"
        threat_id = "2147900011"
        type = "Trojan"
        platform = "Win64: Windows 64-bit platform"
        family = "CryptInject"
        severity = "Critical"
        info = "MTB: Microsoft Threat Behavior"
        signature_type = "SIGNATURE_TYPE_PEHSTR_EXT"
        threshold = "3"
        strings_accuracy = "High"
    strings:
        $x_1_1 = "snatching threads in the target process using vulnerable driver" ascii //weight: 1
        $x_1_2 = "evil-mhyprot-cli\\x64\\Release\\evil-mhyprot-cli64.pdb" ascii //weight: 1
        $x_1_3 = "snatching 5 modules loaded in the process using vulnerable driver" ascii //weight: 1
    condition:
        (filesize < 20MB) and
        (all of ($x*))
}

rule Trojan_Win64_CryptInject_AC_2147900335_0
{
    meta:
        author = "defender2yara"
        detection_name = "Trojan:Win64/CryptInject.AC!MTB"
        threat_id = "2147900335"
        type = "Trojan"
        platform = "Win64: Windows 64-bit platform"
        family = "CryptInject"
        severity = "Critical"
        info = "MTB: Microsoft Threat Behavior"
        signature_type = "SIGNATURE_TYPE_PEHSTR_EXT"
        threshold = "1"
        strings_accuracy = "High"
    strings:
        $x_1_1 = {89 44 24 2c 0f b6 44 24 20 0f b6 4c 24 2c 33 c1 0f b7 4c 24 24 48 8b 54 24 48 88 04 0a}  //weight: 1, accuracy: High
    condition:
        (filesize < 20MB) and
        (all of ($x*))
}

rule Trojan_Win64_CryptInject_AC_2147900335_1
{
    meta:
        author = "defender2yara"
        detection_name = "Trojan:Win64/CryptInject.AC!MTB"
        threat_id = "2147900335"
        type = "Trojan"
        platform = "Win64: Windows 64-bit platform"
        family = "CryptInject"
        severity = "Critical"
        info = "MTB: Microsoft Threat Behavior"
        signature_type = "SIGNATURE_TYPE_PEHSTR_EXT"
        threshold = "2"
        strings_accuracy = "Low"
    strings:
        $x_2_1 = {0f af ca 89 88 ?? ?? ?? ?? 81 c1 ?? ?? ?? ?? 8b 50 10 0f af d1 89 50 10 8b 48 34 81 e9 ?? ?? ?? ?? 31 48 28 41 8b c8 41 0f af c8 41 ff c0 01 88 ?? ?? ?? ?? 44 3b 40 5c 76 ae}  //weight: 2, accuracy: Low
    condition:
        (filesize < 20MB) and
        (all of ($x*))
}

rule Trojan_Win64_CryptInject_ZT_2147900339_0
{
    meta:
        author = "defender2yara"
        detection_name = "Trojan:Win64/CryptInject.ZT!MTB"
        threat_id = "2147900339"
        type = "Trojan"
        platform = "Win64: Windows 64-bit platform"
        family = "CryptInject"
        severity = "Critical"
        info = "MTB: Microsoft Threat Behavior"
        signature_type = "SIGNATURE_TYPE_PEHSTR_EXT"
        threshold = "3"
        strings_accuracy = "Low"
    strings:
        $x_3_1 = {48 89 c8 48 f7 e2 48 c1 ea ?? 48 89 d0 48 c1 e0 ?? 48 01 d0 48 01 c0 48 01 d0 48 29 c1 48 89 ca 0f b6 84 15 ?? ?? ?? ?? 44 31 c8 41 88 00 48 83 85 ?? ?? ?? ?? ?? 48 8b 85 ?? ?? ?? ?? 48 39 85 ?? ?? ?? ?? 72}  //weight: 3, accuracy: Low
    condition:
        (filesize < 20MB) and
        (all of ($x*))
}

rule Trojan_Win64_CryptInject_ZP_2147900340_0
{
    meta:
        author = "defender2yara"
        detection_name = "Trojan:Win64/CryptInject.ZP!MTB"
        threat_id = "2147900340"
        type = "Trojan"
        platform = "Win64: Windows 64-bit platform"
        family = "CryptInject"
        severity = "Critical"
        info = "MTB: Microsoft Threat Behavior"
        signature_type = "SIGNATURE_TYPE_PEHSTR_EXT"
        threshold = "3"
        strings_accuracy = "Low"
    strings:
        $x_3_1 = {0f b7 44 24 ?? 48 8b 4c 24 ?? 0f b6 04 01 88 44 24 ?? 8b 4c 24 2c e8 ?? ?? ?? ?? 89 44 24 ?? 0f b6 44 24 ?? 0f b6 4c 24 ?? 33 c1 0f b7 4c 24 ?? 48 8b 54 24 ?? 88 04 0a eb}  //weight: 3, accuracy: Low
    condition:
        (filesize < 20MB) and
        (all of ($x*))
}

rule Trojan_Win64_CryptInject_YAN_2147900463_0
{
    meta:
        author = "defender2yara"
        detection_name = "Trojan:Win64/CryptInject.YAN!MTB"
        threat_id = "2147900463"
        type = "Trojan"
        platform = "Win64: Windows 64-bit platform"
        family = "CryptInject"
        severity = "Critical"
        info = "MTB: Microsoft Threat Behavior"
        signature_type = "SIGNATURE_TYPE_PEHSTR_EXT"
        threshold = "1"
        strings_accuracy = "Low"
    strings:
        $x_1_1 = {31 db 31 c9 48 2b 0d 9f d2 06 00 48 81 f1 ?? ?? ?? ?? 48 69 c9 ?? ?? ?? ?? 48 d1 c1 81 e1 fd ff 00 00 49 be 5e e2 b7 f1 a0 b0 78 b2 4c 33 34 08 0f b6 6c 08}  //weight: 1, accuracy: Low
    condition:
        (filesize < 20MB) and
        (all of ($x*))
}

rule Trojan_Win64_CryptInject_KKH_2147900831_0
{
    meta:
        author = "defender2yara"
        detection_name = "Trojan:Win64/CryptInject.KKH!MTB"
        threat_id = "2147900831"
        type = "Trojan"
        platform = "Win64: Windows 64-bit platform"
        family = "CryptInject"
        severity = "Critical"
        info = "MTB: Microsoft Threat Behavior"
        signature_type = "SIGNATURE_TYPE_PEHSTR_EXT"
        threshold = "1"
        strings_accuracy = "Low"
    strings:
        $x_1_1 = {01 ca 41 b8 ff ff ff ff 41 81 f0 ff 00 00 00 89 d1 44 31 c1 21 d1 48 63 c9 44 0f b6 04 08 48 8b 44 24 ?? 8b 4c 24 2c 0f b6 14 08 44 31 c2 88 14 08 8b 44 24 2c 83 c0 01 89 44 24 2c e9}  //weight: 1, accuracy: Low
    condition:
        (filesize < 20MB) and
        (all of ($x*))
}

rule Trojan_Win64_CryptInject_MC_2147900897_0
{
    meta:
        author = "defender2yara"
        detection_name = "Trojan:Win64/CryptInject.MC!MTB"
        threat_id = "2147900897"
        type = "Trojan"
        platform = "Win64: Windows 64-bit platform"
        family = "CryptInject"
        severity = "Critical"
        info = "MTB: Microsoft Threat Behavior"
        signature_type = "SIGNATURE_TYPE_PEHSTR_EXT"
        threshold = "2"
        strings_accuracy = "Low"
    strings:
        $x_1_1 = "http://finformservice.com:80/api/v1.5/subscription?token=" wide //weight: 1
        $x_1_2 = {48 63 44 24 ?? 48 8b 4c 24 ?? 0f b6 04 01 8b 4c 24 ?? c1 e1 03 48 8b 54 24 ?? 48 8b 52 ?? 48 d3 ea 48 8b ca 0f b6 c9 33 c1 48 63 4c 24 ?? 88 44 0c 28}  //weight: 1, accuracy: Low
    condition:
        (filesize < 20MB) and
        (all of ($x*))
}

rule Trojan_Win64_CryptInject_VZ_2147901435_0
{
    meta:
        author = "defender2yara"
        detection_name = "Trojan:Win64/CryptInject.VZ!MTB"
        threat_id = "2147901435"
        type = "Trojan"
        platform = "Win64: Windows 64-bit platform"
        family = "CryptInject"
        severity = "Critical"
        info = "MTB: Microsoft Threat Behavior"
        signature_type = "SIGNATURE_TYPE_PEHSTR_EXT"
        threshold = "1"
        strings_accuracy = "Low"
    strings:
        $x_1_1 = {8b 45 fc 48 63 d0 48 8b 45 10 48 01 d0 0f b6 10 8b 45 fc 48 63 c8 48 8b 45 10 48 01 c8 83 f2 ?? 88 10 83 45 fc 01 8b 45 fc 3b 45 18}  //weight: 1, accuracy: Low
    condition:
        (filesize < 20MB) and
        (all of ($x*))
}

rule Trojan_Win64_CryptInject_YAP_2147901520_0
{
    meta:
        author = "defender2yara"
        detection_name = "Trojan:Win64/CryptInject.YAP!MTB"
        threat_id = "2147901520"
        type = "Trojan"
        platform = "Win64: Windows 64-bit platform"
        family = "CryptInject"
        severity = "Critical"
        info = "MTB: Microsoft Threat Behavior"
        signature_type = "SIGNATURE_TYPE_PEHSTR_EXT"
        threshold = "1"
        strings_accuracy = "Low"
    strings:
        $x_1_1 = {48 01 c2 8b 85 ?? ?? ?? ?? 48 98 48 29 c2 8b 85 ?? ?? ?? ?? 48 98 48 01 d0 0f b6 84 05 ?? ?? ?? ?? 44 31 c8 41 88 00}  //weight: 1, accuracy: Low
    condition:
        (filesize < 20MB) and
        (all of ($x*))
}

rule Trojan_Win64_CryptInject_SE_2147901736_0
{
    meta:
        author = "defender2yara"
        detection_name = "Trojan:Win64/CryptInject.SE!MTB"
        threat_id = "2147901736"
        type = "Trojan"
        platform = "Win64: Windows 64-bit platform"
        family = "CryptInject"
        severity = "Critical"
        info = "MTB: Microsoft Threat Behavior"
        signature_type = "SIGNATURE_TYPE_PEHSTR_EXT"
        threshold = "3"
        strings_accuracy = "Low"
    strings:
        $x_1_1 = {48 8b 87 98 ?? ?? ?? 41 8b c8 41 ff c0 0f b6 14 01 49 ff c1 80 f2 ?? 41 88 51 ?? 44 3b 87 ?? ?? ?? ?? 72}  //weight: 1, accuracy: Low
        $x_1_2 = "SpInitialize" ascii //weight: 1
        $x_1_3 = "KerbFree" ascii //weight: 1
    condition:
        (filesize < 20MB) and
        (all of ($x*))
}

rule Trojan_Win64_CryptInject_XY_2147902194_0
{
    meta:
        author = "defender2yara"
        detection_name = "Trojan:Win64/CryptInject.XY!MTB"
        threat_id = "2147902194"
        type = "Trojan"
        platform = "Win64: Windows 64-bit platform"
        family = "CryptInject"
        severity = "Critical"
        info = "MTB: Microsoft Threat Behavior"
        signature_type = "SIGNATURE_TYPE_PEHSTR_EXT"
        threshold = "3"
        strings_accuracy = "High"
    strings:
        $x_1_1 = "clfs_eop.pdb" ascii //weight: 1
        $x_1_2 = "CAFECAFE" ascii //weight: 1
        $x_1_3 = "number of pipes created" ascii //weight: 1
    condition:
        (filesize < 20MB) and
        (all of ($x*))
}

rule Trojan_Win64_CryptInject_YAQ_2147902248_0
{
    meta:
        author = "defender2yara"
        detection_name = "Trojan:Win64/CryptInject.YAQ!MTB"
        threat_id = "2147902248"
        type = "Trojan"
        platform = "Win64: Windows 64-bit platform"
        family = "CryptInject"
        severity = "Critical"
        info = "MTB: Microsoft Threat Behavior"
        signature_type = "SIGNATURE_TYPE_PEHSTR_EXT"
        threshold = "1"
        strings_accuracy = "Low"
    strings:
        $x_1_1 = {48 89 d0 48 c1 e0 03 48 01 d0 48 01 c0 48 29 c1 48 89 ca 8b 85 ?? ?? ?? ?? 48 98 48 01 d0 0f b6 84 05 ?? ?? ?? ?? 44 31 c8 41 88 00}  //weight: 1, accuracy: Low
    condition:
        (filesize < 20MB) and
        (all of ($x*))
}

rule Trojan_Win64_CryptInject_XZ_2147902426_0
{
    meta:
        author = "defender2yara"
        detection_name = "Trojan:Win64/CryptInject.XZ!MTB"
        threat_id = "2147902426"
        type = "Trojan"
        platform = "Win64: Windows 64-bit platform"
        family = "CryptInject"
        severity = "Critical"
        info = "MTB: Microsoft Threat Behavior"
        signature_type = "SIGNATURE_TYPE_PEHSTR_EXT"
        threshold = "1"
        strings_accuracy = "High"
    strings:
        $x_1_1 = {4c 8d 4c 24 3c 4c 89 e2 41 b8 20 00 00 00 ff 15 18 2d 05 00}  //weight: 1, accuracy: High
    condition:
        (filesize < 20MB) and
        (all of ($x*))
}

rule Trojan_Win64_CryptInject_NIG_2147902485_0
{
    meta:
        author = "defender2yara"
        detection_name = "Trojan:Win64/CryptInject.NIG!MTB"
        threat_id = "2147902485"
        type = "Trojan"
        platform = "Win64: Windows 64-bit platform"
        family = "CryptInject"
        severity = "Critical"
        info = "MTB: Microsoft Threat Behavior"
        signature_type = "SIGNATURE_TYPE_PEHSTR_EXT"
        threshold = "2"
        strings_accuracy = "Low"
    strings:
        $x_1_1 = {48 98 48 8d 14 85 ?? ?? ?? ?? 48 8b 45 18 48 01 d0 8b 00 8b 55 f8 48 63 d2 48 8d 0c 95 ?? ?? ?? ?? 48 8b 55 18 48 01 ca 33 45 f4 89 02 83 45 f8 01 8b 45 ec 83 c0 01 c1 e0 02 39 45 f8 0f 8c}  //weight: 1, accuracy: Low
        $x_1_2 = {48 63 d0 48 8b 85 ?? ?? ?? ?? 48 01 d0 0f b6 00 0f b6 c0 8b 95 ?? ?? ?? ?? 48 63 ca 48 8b 95 a0 00 00 00 48 01 ca 48 98 0f b6 44 05 80 88 02 83 85 ?? ?? ?? ?? 01 8b 85 8c 00 00 00 48 98 48 3b 85 a8 00 00 00 72}  //weight: 1, accuracy: Low
    condition:
        (filesize < 20MB) and
        (all of ($x*))
}

rule Trojan_Win64_CryptInject_ENT_2147902612_0
{
    meta:
        author = "defender2yara"
        detection_name = "Trojan:Win64/CryptInject.ENT!MTB"
        threat_id = "2147902612"
        type = "Trojan"
        platform = "Win64: Windows 64-bit platform"
        family = "CryptInject"
        severity = "Critical"
        info = "MTB: Microsoft Threat Behavior"
        signature_type = "SIGNATURE_TYPE_PEHSTR_EXT"
        threshold = "2"
        strings_accuracy = "Low"
    strings:
        $x_1_1 = {48 83 c1 04 33 41 fc 41 89 44 09 fc 44 8b 87 ?? ?? ?? ?? 41 8d 80 fa 8b 62 d8 31 41 fc 48 ff ca 75}  //weight: 1, accuracy: Low
        $x_1_2 = {0f b7 c1 66 c1 e8 08 41 32 41 01 88 42 01 41 8d 40 ?? 85 c0 74 0a c1 e9 10 41 32 49 02 88 4a 02}  //weight: 1, accuracy: Low
    condition:
        (filesize < 20MB) and
        (all of ($x*))
}

rule Trojan_Win64_CryptInject_GMT_2147903215_0
{
    meta:
        author = "defender2yara"
        detection_name = "Trojan:Win64/CryptInject.GMT!MTB"
        threat_id = "2147903215"
        type = "Trojan"
        platform = "Win64: Windows 64-bit platform"
        family = "CryptInject"
        severity = "Critical"
        info = "MTB: Microsoft Threat Behavior"
        signature_type = "SIGNATURE_TYPE_PEHSTR_EXT"
        threshold = "1"
        strings_accuracy = "Low"
    strings:
        $x_1_1 = {49 8d 47 01 43 32 94 3e e8 03 00 00 88 54 2b 10 83 e0 0f 48 83 c5 ?? 49 89 c7 4c 39 e5 0f 8d f3}  //weight: 1, accuracy: Low
    condition:
        (filesize < 20MB) and
        (all of ($x*))
}

rule Trojan_Win64_CryptInject_ED_2147903624_0
{
    meta:
        author = "defender2yara"
        detection_name = "Trojan:Win64/CryptInject.ED!MTB"
        threat_id = "2147903624"
        type = "Trojan"
        platform = "Win64: Windows 64-bit platform"
        family = "CryptInject"
        severity = "Critical"
        info = "MTB: Microsoft Threat Behavior"
        signature_type = "SIGNATURE_TYPE_PEHSTR_EXT"
        threshold = "2"
        strings_accuracy = "Low"
    strings:
        $x_1_1 = {4d 8b f7 33 03 25 ?? ?? ?? ?? 41 31 45 ?? 0f b6 43 ?? 41 08 45 ?? eb}  //weight: 1, accuracy: Low
        $x_1_2 = {41 8d 80 20 ?? ?? ?? 48 83 c1 ?? 33 41 ?? 41 89 44 09 ?? 44 8b 87 ?? ?? ?? ?? 41 8d 80 ?? ?? ?? ?? 31 41 ?? 48 ff ca 75}  //weight: 1, accuracy: Low
    condition:
        (filesize < 20MB) and
        (all of ($x*))
}

rule Trojan_Win64_CryptInject_QM_2147903625_0
{
    meta:
        author = "defender2yara"
        detection_name = "Trojan:Win64/CryptInject.QM!MTB"
        threat_id = "2147903625"
        type = "Trojan"
        platform = "Win64: Windows 64-bit platform"
        family = "CryptInject"
        severity = "Critical"
        info = "MTB: Microsoft Threat Behavior"
        signature_type = "SIGNATURE_TYPE_PEHSTR_EXT"
        threshold = "3"
        strings_accuracy = "Low"
    strings:
        $x_1_1 = {34 e5 88 01 48 8d 49 01 0f b6 ?? 84 c0 75}  //weight: 1, accuracy: Low
        $x_1_2 = {80 34 30 e5 48 ff c0 48 3d ?? ?? ?? ?? 7c}  //weight: 1, accuracy: Low
        $x_1_3 = {80 32 e5 48 8d 52 ?? ff c1 83 f9 ?? 72}  //weight: 1, accuracy: Low
    condition:
        (filesize < 20MB) and
        (all of ($x*))
}

rule Trojan_Win64_CryptInject_YIP_2147905290_0
{
    meta:
        author = "defender2yara"
        detection_name = "Trojan:Win64/CryptInject.YIP!MTB"
        threat_id = "2147905290"
        type = "Trojan"
        platform = "Win64: Windows 64-bit platform"
        family = "CryptInject"
        severity = "Critical"
        info = "MTB: Microsoft Threat Behavior"
        signature_type = "SIGNATURE_TYPE_PEHSTR_EXT"
        threshold = "2"
        strings_accuracy = "Low"
    strings:
        $x_1_1 = {49 03 cb 0f b6 c1 8a 94 05 ?? ?? ?? ?? 43 32 14 11 41 88 12 4d 03 d6 49 2b f6 75}  //weight: 1, accuracy: Low
        $x_1_2 = {49 2b c2 83 e0 0f 8a 0c 08 41 32 09 41 32 c8 41 ff c0 f6 d1 41 88 09 49 ff c1 44 3b c2 72}  //weight: 1, accuracy: High
    condition:
        (filesize < 20MB) and
        (all of ($x*))
}

rule Trojan_Win64_CryptInject_KOT_2147905922_0
{
    meta:
        author = "defender2yara"
        detection_name = "Trojan:Win64/CryptInject.KOT!MTB"
        threat_id = "2147905922"
        type = "Trojan"
        platform = "Win64: Windows 64-bit platform"
        family = "CryptInject"
        severity = "Critical"
        info = "MTB: Microsoft Threat Behavior"
        signature_type = "SIGNATURE_TYPE_PEHSTR_EXT"
        threshold = "1"
        strings_accuracy = "Low"
    strings:
        $x_1_1 = {41 ff c1 48 f7 e1 48 8b c1 48 2b c2 48 d1 e8 48 03 c2 48 c1 e8 ?? 48 6b c0 ?? 48 2b c8 49 03 cb 0f b6 44 0c ?? 42 32 44 13 ff 41 88 42 ff 41 81 f9 00 c2 1b 00 72}  //weight: 1, accuracy: Low
    condition:
        (filesize < 20MB) and
        (all of ($x*))
}

rule Trojan_Win64_CryptInject_KNN_2147905996_0
{
    meta:
        author = "defender2yara"
        detection_name = "Trojan:Win64/CryptInject.KNN!MTB"
        threat_id = "2147905996"
        type = "Trojan"
        platform = "Win64: Windows 64-bit platform"
        family = "CryptInject"
        severity = "Critical"
        info = "MTB: Microsoft Threat Behavior"
        signature_type = "SIGNATURE_TYPE_PEHSTR_EXT"
        threshold = "1"
        strings_accuracy = "High"
    strings:
        $x_1_1 = {41 8a 14 3f 32 14 3e 88 14 39 48 ff c7 eb ec}  //weight: 1, accuracy: High
    condition:
        (filesize < 20MB) and
        (all of ($x*))
}

rule Trojan_Win64_CryptInject_KPM_2147906098_0
{
    meta:
        author = "defender2yara"
        detection_name = "Trojan:Win64/CryptInject.KPM!MTB"
        threat_id = "2147906098"
        type = "Trojan"
        platform = "Win64: Windows 64-bit platform"
        family = "CryptInject"
        severity = "Critical"
        info = "MTB: Microsoft Threat Behavior"
        signature_type = "SIGNATURE_TYPE_PEHSTR_EXT"
        threshold = "1"
        strings_accuracy = "Low"
    strings:
        $x_1_1 = {41 f7 e8 c1 fa ?? 8b c2 c1 e8 1f 03 d0 0f be c2 6b c8 35 41 0f b6 c0 2a c1 04 34 41 30 01 41 ff c0 4d 8d 49 01 41 83 f8 15 7c}  //weight: 1, accuracy: Low
    condition:
        (filesize < 20MB) and
        (all of ($x*))
}

rule Trojan_Win64_CryptInject_KZQ_2147906249_0
{
    meta:
        author = "defender2yara"
        detection_name = "Trojan:Win64/CryptInject.KZQ!MTB"
        threat_id = "2147906249"
        type = "Trojan"
        platform = "Win64: Windows 64-bit platform"
        family = "CryptInject"
        severity = "Critical"
        info = "MTB: Microsoft Threat Behavior"
        signature_type = "SIGNATURE_TYPE_PEHSTR_EXT"
        threshold = "1"
        strings_accuracy = "Low"
    strings:
        $x_1_1 = {40 8a d6 e8 ?? ?? ?? ?? 40 0f b6 ce 48 c1 e9 04 0f b6 d0 c1 e8 04 83 e2 0f 48 33 d1 8b 0c 93 33 c8 85 ff 75}  //weight: 1, accuracy: Low
    condition:
        (filesize < 20MB) and
        (all of ($x*))
}

rule Trojan_Win64_CryptInject_LKZ_2147906275_0
{
    meta:
        author = "defender2yara"
        detection_name = "Trojan:Win64/CryptInject.LKZ!MTB"
        threat_id = "2147906275"
        type = "Trojan"
        platform = "Win64: Windows 64-bit platform"
        family = "CryptInject"
        severity = "Critical"
        info = "MTB: Microsoft Threat Behavior"
        signature_type = "SIGNATURE_TYPE_PEHSTR_EXT"
        threshold = "1"
        strings_accuracy = "Low"
    strings:
        $x_1_1 = {89 f3 49 0f af db 48 c1 eb ?? 44 8d 34 db 43 8d 2c 76 01 db 01 eb 41 89 f6 41 29 de 42 0f b6 1c 32 32 1c 37 88 1c 31 ff c6 83 fe 0a 4c 89 c7 48 0f 44 f8 e9}  //weight: 1, accuracy: Low
    condition:
        (filesize < 20MB) and
        (all of ($x*))
}

rule Trojan_Win64_CryptInject_SIC_2147907279_0
{
    meta:
        author = "defender2yara"
        detection_name = "Trojan:Win64/CryptInject.SIC!MTB"
        threat_id = "2147907279"
        type = "Trojan"
        platform = "Win64: Windows 64-bit platform"
        family = "CryptInject"
        severity = "Critical"
        info = "MTB: Microsoft Threat Behavior"
        signature_type = "SIGNATURE_TYPE_PEHSTR_EXT"
        threshold = "1"
        strings_accuracy = "Low"
    strings:
        $x_1_1 = {41 8b 00 89 45 c8 41 0f b6 40 ?? 88 45 cc 80 7a 0a 00 74 19 49 8b c9 0f 1f 00 8d 41 34 30 04 0a 48 ff c1 48 83 f9 09 72}  //weight: 1, accuracy: Low
    condition:
        (filesize < 20MB) and
        (all of ($x*))
}

rule Trojan_Win64_CryptInject_DOZ_2147907917_0
{
    meta:
        author = "defender2yara"
        detection_name = "Trojan:Win64/CryptInject.DOZ!MTB"
        threat_id = "2147907917"
        type = "Trojan"
        platform = "Win64: Windows 64-bit platform"
        family = "CryptInject"
        severity = "Critical"
        info = "MTB: Microsoft Threat Behavior"
        signature_type = "SIGNATURE_TYPE_PEHSTR_EXT"
        threshold = "1"
        strings_accuracy = "Low"
    strings:
        $x_1_1 = {0f be 09 33 c8 8b c1 48 8b 4c 24 ?? 88 01 8b 44 24 28 ff c0 89 44 24 28 8b 44 24 24 99 f7 7c 24 ?? 8b c2 85 c0 75 08 c7 44 24 28 00 00 00 00 e9}  //weight: 1, accuracy: Low
    condition:
        (filesize < 20MB) and
        (all of ($x*))
}

rule Trojan_Win64_CryptInject_BK_2147908020_0
{
    meta:
        author = "defender2yara"
        detection_name = "Trojan:Win64/CryptInject.BK!MTB"
        threat_id = "2147908020"
        type = "Trojan"
        platform = "Win64: Windows 64-bit platform"
        family = "CryptInject"
        severity = "Critical"
        info = "MTB: Microsoft Threat Behavior"
        signature_type = "SIGNATURE_TYPE_PEHSTR_EXT"
        threshold = "1"
        strings_accuracy = "High"
    strings:
        $x_1_1 = {40 53 48 81 ec 10 02 00 00 65 48 8b 04 25 60 00 00 00 48 8b 58 18 48 83 c3 10 66 0f 1f 44 00 00 48 8b 1b 48 8b 53 60}  //weight: 1, accuracy: High
    condition:
        (filesize < 20MB) and
        (all of ($x*))
}

rule Trojan_Win64_CryptInject_LSG_2147908021_0
{
    meta:
        author = "defender2yara"
        detection_name = "Trojan:Win64/CryptInject.LSG!MTB"
        threat_id = "2147908021"
        type = "Trojan"
        platform = "Win64: Windows 64-bit platform"
        family = "CryptInject"
        severity = "Critical"
        info = "MTB: Microsoft Threat Behavior"
        signature_type = "SIGNATURE_TYPE_PEHSTR_EXT"
        threshold = "2"
        strings_accuracy = "High"
    strings:
        $x_1_1 = {65 48 8b 04 25 60 00 00 00 48 8b 12 48 8b 48 18 48 3b 51 10}  //weight: 1, accuracy: High
        $x_1_2 = "No hooks found in this module" ascii //weight: 1
    condition:
        (filesize < 20MB) and
        (all of ($x*))
}

rule Trojan_Win64_CryptInject_BAX_2147909264_0
{
    meta:
        author = "defender2yara"
        detection_name = "Trojan:Win64/CryptInject.BAX!MTB"
        threat_id = "2147909264"
        type = "Trojan"
        platform = "Win64: Windows 64-bit platform"
        family = "CryptInject"
        severity = "Critical"
        info = "MTB: Microsoft Threat Behavior"
        signature_type = "SIGNATURE_TYPE_PEHSTR_EXT"
        threshold = "1"
        strings_accuracy = "Low"
    strings:
        $x_1_1 = {41 01 d2 44 88 51 01 45 0f b6 d2 42 0f b6 74 11 ?? 40 88 74 01 02 42 88 54 11 02 02 54 01 02 0f b6 d2 0f b6 44 11 ?? 42 32 04 1b 43 88 04 18 49 83 c3 01 4d 39 d9 75}  //weight: 1, accuracy: Low
    condition:
        (filesize < 20MB) and
        (all of ($x*))
}

rule Trojan_Win64_CryptInject_SCH_2147909375_0
{
    meta:
        author = "defender2yara"
        detection_name = "Trojan:Win64/CryptInject.SCH!MTB"
        threat_id = "2147909375"
        type = "Trojan"
        platform = "Win64: Windows 64-bit platform"
        family = "CryptInject"
        severity = "Critical"
        info = "MTB: Microsoft Threat Behavior"
        signature_type = "SIGNATURE_TYPE_PEHSTR_EXT"
        threshold = "1"
        strings_accuracy = "Low"
    strings:
        $x_1_1 = {01 ca 89 d2 0f b6 ca 48 8b 55 ?? 48 01 ca 0f b6 12 44 31 c2 88 10 8b 45 20 8d 50 ff 89 55 20 85 c0 0f 85}  //weight: 1, accuracy: Low
    condition:
        (filesize < 20MB) and
        (all of ($x*))
}

rule Trojan_Win64_CryptInject_JAN_2147910217_0
{
    meta:
        author = "defender2yara"
        detection_name = "Trojan:Win64/CryptInject.JAN!MTB"
        threat_id = "2147910217"
        type = "Trojan"
        platform = "Win64: Windows 64-bit platform"
        family = "CryptInject"
        severity = "Critical"
        info = "MTB: Microsoft Threat Behavior"
        signature_type = "SIGNATURE_TYPE_PEHSTR_EXT"
        threshold = "2"
        strings_accuracy = "Low"
    strings:
        $x_1_1 = {48 63 ca 8d 42 d2 ff c2 30 44 0c ?? 83 fa 0c 72}  //weight: 1, accuracy: Low
        $x_1_2 = {48 8b c2 48 8d 49 01 83 e0 07 48 ff c2 0f b6 44 04 ?? 30 41 ff 49 83 e8 01 75}  //weight: 1, accuracy: Low
    condition:
        (filesize < 20MB) and
        (all of ($x*))
}

rule Trojan_Win64_CryptInject_ZY_2147910236_0
{
    meta:
        author = "defender2yara"
        detection_name = "Trojan:Win64/CryptInject.ZY!MTB"
        threat_id = "2147910236"
        type = "Trojan"
        platform = "Win64: Windows 64-bit platform"
        family = "CryptInject"
        severity = "Critical"
        info = "MTB: Microsoft Threat Behavior"
        signature_type = "SIGNATURE_TYPE_PEHSTR_EXT"
        threshold = "1"
        strings_accuracy = "Low"
    strings:
        $x_1_1 = {49 8b 06 49 01 07 48 89 e8 89 f9 48 83 c3 ?? 48 d3 f8 83 e0 ?? 30 06 48 8d 05 ?? ?? ?? ?? 48 39 d8 0f 85}  //weight: 1, accuracy: Low
    condition:
        (filesize < 20MB) and
        (all of ($x*))
}

rule Trojan_Win64_CryptInject_KLL_2147910811_0
{
    meta:
        author = "defender2yara"
        detection_name = "Trojan:Win64/CryptInject.KLL!MTB"
        threat_id = "2147910811"
        type = "Trojan"
        platform = "Win64: Windows 64-bit platform"
        family = "CryptInject"
        severity = "Critical"
        info = "MTB: Microsoft Threat Behavior"
        signature_type = "SIGNATURE_TYPE_PEHSTR_EXT"
        threshold = "1"
        strings_accuracy = "Low"
    strings:
        $x_1_1 = {8b d7 4d 2b c1 48 8d 4c 24 28 44 8b d0 4f 8d 0c 18 44 8b c0 0f 1f 80 ?? ?? ?? ?? 48 8b c2 48 8d 49 01 83 e0 03 48 ff c2 0f b6 44 04 20 41 32 04 09 88 41 ff 49 83 e8 01 75}  //weight: 1, accuracy: Low
    condition:
        (filesize < 20MB) and
        (all of ($x*))
}

rule Trojan_Win64_CryptInject_RRE_2147911074_0
{
    meta:
        author = "defender2yara"
        detection_name = "Trojan:Win64/CryptInject.RRE!MTB"
        threat_id = "2147911074"
        type = "Trojan"
        platform = "Win64: Windows 64-bit platform"
        family = "CryptInject"
        severity = "Critical"
        info = "MTB: Microsoft Threat Behavior"
        signature_type = "SIGNATURE_TYPE_PEHSTR_EXT"
        threshold = "1"
        strings_accuracy = "Low"
    strings:
        $x_1_1 = {4c 2b c1 49 63 ca 48 8b c6 41 ff c2 48 f7 e1 48 c1 ea 04 48 8d 04 d2 48 03 c0 48 2b c8 0f b6 44 0c ?? 41 30 04 28 41 0f b6 09 b8 af 07 00 00 41 0f af ca 2b c1 44 3b d0 72}  //weight: 1, accuracy: Low
    condition:
        (filesize < 20MB) and
        (all of ($x*))
}

rule Trojan_Win64_CryptInject_TJH_2147911631_0
{
    meta:
        author = "defender2yara"
        detection_name = "Trojan:Win64/CryptInject.TJH!MTB"
        threat_id = "2147911631"
        type = "Trojan"
        platform = "Win64: Windows 64-bit platform"
        family = "CryptInject"
        severity = "Critical"
        info = "MTB: Microsoft Threat Behavior"
        signature_type = "SIGNATURE_TYPE_PEHSTR_EXT"
        threshold = "1"
        strings_accuracy = "High"
    strings:
        $x_1_1 = {45 8b 8a 84 00 00 00 45 8b c1 44 0f af c2 45 2b c1 ff ca 49 63 c8 48 03 0d 96 00 03 00 0f b7 01 66 41 33 c3 66 85 c3 74 06}  //weight: 1, accuracy: High
    condition:
        (filesize < 20MB) and
        (all of ($x*))
}

rule Trojan_Win64_CryptInject_GIF_2147911957_0
{
    meta:
        author = "defender2yara"
        detection_name = "Trojan:Win64/CryptInject.GIF!MTB"
        threat_id = "2147911957"
        type = "Trojan"
        platform = "Win64: Windows 64-bit platform"
        family = "CryptInject"
        severity = "Critical"
        info = "MTB: Microsoft Threat Behavior"
        signature_type = "SIGNATURE_TYPE_PEHSTR_EXT"
        threshold = "1"
        strings_accuracy = "Low"
    strings:
        $x_1_1 = {0f b6 c8 44 02 d9 44 02 df 41 0f b6 d3 41 8a 04 94 41 30 07 41 8b 04 94 49 ff c7 41 31 04 9c 43 8b 04 ac 41 8d 14 00 43 31 14 94 48 ff 4c 24 ?? 0f 85}  //weight: 1, accuracy: Low
    condition:
        (filesize < 20MB) and
        (all of ($x*))
}

rule Trojan_Win64_CryptInject_GIT_2147911977_0
{
    meta:
        author = "defender2yara"
        detection_name = "Trojan:Win64/CryptInject.GIT!MTB"
        threat_id = "2147911977"
        type = "Trojan"
        platform = "Win64: Windows 64-bit platform"
        family = "CryptInject"
        severity = "Critical"
        info = "MTB: Microsoft Threat Behavior"
        signature_type = "SIGNATURE_TYPE_PEHSTR_EXT"
        threshold = "1"
        strings_accuracy = "High"
    strings:
        $x_1_1 = {41 0f b6 c2 41 32 01 ff c9 88 02 74 22 41 0f b7 c2 66 c1 e8 08 41 32 41 01 88 42 01 8d 41 ff 85 c0 74 0c}  //weight: 1, accuracy: High
    condition:
        (filesize < 20MB) and
        (all of ($x*))
}

rule Trojan_Win64_CryptInject_JZZ_2147912549_0
{
    meta:
        author = "defender2yara"
        detection_name = "Trojan:Win64/CryptInject.JZZ!MTB"
        threat_id = "2147912549"
        type = "Trojan"
        platform = "Win64: Windows 64-bit platform"
        family = "CryptInject"
        severity = "Critical"
        info = "MTB: Microsoft Threat Behavior"
        signature_type = "SIGNATURE_TYPE_PEHSTR_EXT"
        threshold = "1"
        strings_accuracy = "High"
    strings:
        $x_1_1 = {89 c1 4c 8d 05 ef 50 01 00 44 89 f8 31 d2 48 63 c9 41 f7 34 88 48 63 c2 48 8b 4d b0 32 1c 01 49 63 c7 48 8b 4d a0 88 1c 01 8b 05 e1 fa 01 00 8b 0d df fa 01 00}  //weight: 1, accuracy: High
    condition:
        (filesize < 20MB) and
        (all of ($x*))
}

rule Trojan_Win64_CryptInject_IIV_2147912654_0
{
    meta:
        author = "defender2yara"
        detection_name = "Trojan:Win64/CryptInject.IIV!MTB"
        threat_id = "2147912654"
        type = "Trojan"
        platform = "Win64: Windows 64-bit platform"
        family = "CryptInject"
        severity = "Critical"
        info = "MTB: Microsoft Threat Behavior"
        signature_type = "SIGNATURE_TYPE_PEHSTR_EXT"
        threshold = "1"
        strings_accuracy = "High"
    strings:
        $x_1_1 = {44 8b c0 48 8d 5b 01 b8 39 8e e3 38 41 f7 e8 d1 fa 8b ca c1 e9 1f 03 d1 8d 0c d2 44 2b c1 41 ff c0 44 30 43 ff 48 83 ef 01 75 cf}  //weight: 1, accuracy: High
    condition:
        (filesize < 20MB) and
        (all of ($x*))
}

rule Trojan_Win64_CryptInject_IT_2147913342_0
{
    meta:
        author = "defender2yara"
        detection_name = "Trojan:Win64/CryptInject.IT!MTB"
        threat_id = "2147913342"
        type = "Trojan"
        platform = "Win64: Windows 64-bit platform"
        family = "CryptInject"
        severity = "Critical"
        info = "MTB: Microsoft Threat Behavior"
        signature_type = "SIGNATURE_TYPE_PEHSTR_EXT"
        threshold = "1"
        strings_accuracy = "Low"
    strings:
        $x_1_1 = {0f b7 00 83 c0 ?? 89 44 24 ?? 48 8b 44 24 ?? 8b 4c 24 ?? 0f af 08 8b c1 8b 0c 24 33 c8 8b c1 89 04 24 eb}  //weight: 1, accuracy: Low
    condition:
        (filesize < 20MB) and
        (all of ($x*))
}

rule Trojan_Win64_CryptInject_IN_2147913344_0
{
    meta:
        author = "defender2yara"
        detection_name = "Trojan:Win64/CryptInject.IN!MTB"
        threat_id = "2147913344"
        type = "Trojan"
        platform = "Win64: Windows 64-bit platform"
        family = "CryptInject"
        severity = "Critical"
        info = "MTB: Microsoft Threat Behavior"
        signature_type = "SIGNATURE_TYPE_PEHSTR_EXT"
        threshold = "1"
        strings_accuracy = "Low"
    strings:
        $x_1_1 = {0f b6 02 44 38 c0 74 ?? 44 31 c0 88 01 32 02 88 02 32 01 f7 d0 48 83 c1 ?? 88 41}  //weight: 1, accuracy: Low
    condition:
        (filesize < 20MB) and
        (all of ($x*))
}

rule Trojan_Win64_CryptInject_MOA_2147913415_0
{
    meta:
        author = "defender2yara"
        detection_name = "Trojan:Win64/CryptInject.MOA!MTB"
        threat_id = "2147913415"
        type = "Trojan"
        platform = "Win64: Windows 64-bit platform"
        family = "CryptInject"
        severity = "Critical"
        info = "MTB: Microsoft Threat Behavior"
        signature_type = "SIGNATURE_TYPE_PEHSTR_EXT"
        threshold = "1"
        strings_accuracy = "Low"
    strings:
        $x_1_1 = {2b d0 81 ca 00 ff ff ff 03 d0 44 8b 4c 24 44 44 8b 5d 8c 48 63 ca 8a 54 8d a0 48 8b 8d ?? ?? ?? ?? 41 32 14 09 48 8b 8d e0 03 00 00 41 88 14 0b eb}  //weight: 1, accuracy: Low
    condition:
        (filesize < 20MB) and
        (all of ($x*))
}

rule Trojan_Win64_CryptInject_PAEA_2147913610_0
{
    meta:
        author = "defender2yara"
        detection_name = "Trojan:Win64/CryptInject.PAEA!MTB"
        threat_id = "2147913610"
        type = "Trojan"
        platform = "Win64: Windows 64-bit platform"
        family = "CryptInject"
        severity = "Critical"
        info = "MTB: Microsoft Threat Behavior"
        signature_type = "SIGNATURE_TYPE_PEHSTR_EXT"
        threshold = "4"
        strings_accuracy = "High"
    strings:
        $x_1_1 = "xmemory" ascii //weight: 1
        $x_1_2 = "Cant Bypass R.A.C Hook" ascii //weight: 1
        $x_1_3 = "Oyuna Enjekte Edilemedi" ascii //weight: 1
        $x_1_4 = "CrInjectorc++" ascii //weight: 1
    condition:
        (filesize < 20MB) and
        (all of ($x*))
}

rule Trojan_Win64_CryptInject_SGM_2147914181_0
{
    meta:
        author = "defender2yara"
        detection_name = "Trojan:Win64/CryptInject.SGM!MTB"
        threat_id = "2147914181"
        type = "Trojan"
        platform = "Win64: Windows 64-bit platform"
        family = "CryptInject"
        severity = "Critical"
        info = "MTB: Microsoft Threat Behavior"
        signature_type = "SIGNATURE_TYPE_PEHSTR_EXT"
        threshold = "1"
        strings_accuracy = "Low"
    strings:
        $x_1_1 = {48 8b c6 41 ff c2 4d 8d 49 ?? 48 f7 e1 48 c1 ea 04 48 6b c2 13 48 2b c8 49 03 cb 0f b6 44 0c 20 42 32 44 0b ff 41 88 41 ff 41 81 fa 00 54 07 00 72}  //weight: 1, accuracy: Low
    condition:
        (filesize < 20MB) and
        (all of ($x*))
}

rule Trojan_Win64_CryptInject_RHH_2147914304_0
{
    meta:
        author = "defender2yara"
        detection_name = "Trojan:Win64/CryptInject.RHH!MTB"
        threat_id = "2147914304"
        type = "Trojan"
        platform = "Win64: Windows 64-bit platform"
        family = "CryptInject"
        severity = "Critical"
        info = "MTB: Microsoft Threat Behavior"
        signature_type = "SIGNATURE_TYPE_PEHSTR_EXT"
        threshold = "6"
        strings_accuracy = "Low"
    strings:
        $x_1_1 = "Enhanced RSA and AES" wide //weight: 1
        $x_1_2 = ".pdata" ascii //weight: 1
        $x_2_3 = {50 45 00 00 64 86 05 ?? ?? ?? ?? ?? ?? ?? ?? ?? ?? ?? ?? ?? ?? ?? ?? ?? 0b 02 0c}  //weight: 2, accuracy: Low
        $x_2_4 = {8b fa 41 fe c2 45 0f b6 c2 43 0f b6 14 08 44 02 da 41 0f b6 cb 42 8a 04 09 43 88 04 08 42 88 14 09 43 0f b6 0c 08 03 ca 0f b6 c1 42 8a 0c 08 30 0b 48 ff c3 48 ff cf 75 c9}  //weight: 2, accuracy: High
    condition:
        (filesize < 20MB) and
        (all of ($x*))
}

rule Trojan_Win64_CryptInject_RHD_2147914323_0
{
    meta:
        author = "defender2yara"
        detection_name = "Trojan:Win64/CryptInject.RHD!MTB"
        threat_id = "2147914323"
        type = "Trojan"
        platform = "Win64: Windows 64-bit platform"
        family = "CryptInject"
        severity = "Critical"
        info = "MTB: Microsoft Threat Behavior"
        signature_type = "SIGNATURE_TYPE_PEHSTR_EXT"
        threshold = "11"
        strings_accuracy = "Low"
    strings:
        $x_1_1 = "browser.toolbars" ascii //weight: 1
        $x_1_2 = "extensions.torlauncher" ascii //weight: 1
        $x_1_3 = "http://" ascii //weight: 1
        $x_1_4 = "sbc2zv2qnz5vubwtx3aobfpkeao6l4igjegm3xx7tk5suqhjkp5jxtqd.onion/" ascii //weight: 1
        $x_1_5 = "CreateToolhelp32Snapshot" ascii //weight: 1
        $x_1_6 = "Process32FirstW" ascii //weight: 1
        $x_1_7 = "Process32NextW" ascii //weight: 1
        $x_1_8 = "CreateThread" ascii //weight: 1
        $x_1_9 = "URLDownloadToFileW" ascii //weight: 1
        $x_2_10 = {50 45 00 00 64 86 ?? ?? ?? ?? ?? ?? ?? ?? ?? ?? ?? ?? ?? ?? ?? ?? ?? ?? 0b 02 0e 00 00 ?? ?? 00 00 ?? ?? 00 00 00 00 00}  //weight: 2, accuracy: Low
    condition:
        (filesize < 20MB) and
        (all of ($x*))
}

rule Trojan_Win64_CryptInject_RHF_2147914324_0
{
    meta:
        author = "defender2yara"
        detection_name = "Trojan:Win64/CryptInject.RHF!MTB"
        threat_id = "2147914324"
        type = "Trojan"
        platform = "Win64: Windows 64-bit platform"
        family = "CryptInject"
        severity = "Critical"
        info = "MTB: Microsoft Threat Behavior"
        signature_type = "SIGNATURE_TYPE_PEHSTR_EXT"
        threshold = "12"
        strings_accuracy = "Low"
    strings:
        $x_1_1 = "hs.exe" wide //weight: 1
        $x_1_2 = "tmp" wide //weight: 1
        $x_1_3 = "Windows+NT" wide //weight: 1
        $x_1_4 = "v5.mrmpzjjhn3sgtq5w.pro" ascii //weight: 1
        $x_1_5 = "executing" ascii //weight: 1
        $x_1_6 = "TrollAV" ascii //weight: 1
        $x_1_7 = "bcrypt.dll" ascii //weight: 1
        $x_1_8 = "User Id:" ascii //weight: 1
        $x_1_9 = ".pdata" ascii //weight: 1
        $x_1_10 = ".bin" ascii //weight: 1
        $x_2_11 = {50 45 00 00 64 86 03 ?? ?? ?? ?? ?? ?? ?? ?? ?? ?? ?? ?? ?? ?? ?? ?? ?? 0b 02 06 00 00 24 00 00 00 10}  //weight: 2, accuracy: Low
    condition:
        (filesize < 20MB) and
        (all of ($x*))
}

rule Trojan_Win64_CryptInject_RHG_2147914325_0
{
    meta:
        author = "defender2yara"
        detection_name = "Trojan:Win64/CryptInject.RHG!MTB"
        threat_id = "2147914325"
        type = "Trojan"
        platform = "Win64: Windows 64-bit platform"
        family = "CryptInject"
        severity = "Critical"
        info = "MTB: Microsoft Threat Behavior"
        signature_type = "SIGNATURE_TYPE_PEHSTR_EXT"
        threshold = "13"
        strings_accuracy = "Low"
    strings:
        $x_1_1 = "CreateToolhelp32Snapshot" ascii //weight: 1
        $x_1_2 = "Process32NextW" ascii //weight: 1
        $x_1_3 = "Process32FirstW" ascii //weight: 1
        $x_1_4 = "ThreadContext" ascii //weight: 1
        $x_1_5 = "CryptHashData" ascii //weight: 1
        $x_1_6 = ".pdata" ascii //weight: 1
        $x_1_7 = "GetUserNameW" ascii //weight: 1
        $x_1_8 = "SHGetFolderPathW" ascii //weight: 1
        $x_1_9 = "Enhanced RSA and AES" wide //weight: 1
        $x_2_10 = {50 45 00 00 64 86 05 ?? ?? ?? ?? ?? ?? ?? ?? ?? ?? ?? ?? ?? ?? ?? ?? ?? 0b 02 0c}  //weight: 2, accuracy: Low
        $x_2_11 = {8b fa 41 fe c2 45 0f b6 c2 43 0f b6 14 08 44 02 da 41 0f b6 cb 42 8a 04 09 43 88 04 08 42 88 14 09 43 0f b6 0c 08 03 ca 0f b6 c1 42 8a 0c 08 30 0b 48 ff c3 48 ff cf 75 c9}  //weight: 2, accuracy: High
    condition:
        (filesize < 20MB) and
        (all of ($x*))
}

rule Trojan_Win64_CryptInject_RHR_2147918335_0
{
    meta:
        author = "defender2yara"
        detection_name = "Trojan:Win64/CryptInject.RHR!MTB"
        threat_id = "2147918335"
        type = "Trojan"
        platform = "Win64: Windows 64-bit platform"
        family = "CryptInject"
        severity = "Critical"
        info = "MTB: Microsoft Threat Behavior"
        signature_type = "SIGNATURE_TYPE_PEHSTR_EXT"
        threshold = "10"
        strings_accuracy = "Low"
    strings:
        $x_2_1 = {50 45 00 00 64 86 08 ?? ?? ?? ?? ?? ?? ?? ?? ?? ?? ?? ?? ?? ?? ?? ?? ?? 0b 02 0e 1c 00 de 00 00 00 e4 00 00 00 00 00 00 e0 30}  //weight: 2, accuracy: Low
        $x_1_2 = "roaming.dat" wide //weight: 1
        $x_1_3 = "explorer.exe" wide //weight: 1
        $x_1_4 = "targetProcess" ascii //weight: 1
        $x_1_5 = "ProcessId" ascii //weight: 1
        $x_1_6 = "XcLoader_x64.dll" ascii //weight: 1
        $x_1_7 = "DllRegisterServer" ascii //weight: 1
        $x_1_8 = ".pdata" ascii //weight: 1
        $x_1_9 = ".msvc" ascii //weight: 1
    condition:
        (filesize < 20MB) and
        (all of ($x*))
}

rule Trojan_Win64_CryptInject_RHV_2147918415_0
{
    meta:
        author = "defender2yara"
        detection_name = "Trojan:Win64/CryptInject.RHV!MTB"
        threat_id = "2147918415"
        type = "Trojan"
        platform = "Win64: Windows 64-bit platform"
        family = "CryptInject"
        severity = "Critical"
        info = "MTB: Microsoft Threat Behavior"
        signature_type = "SIGNATURE_TYPE_PEHSTR_EXT"
        threshold = "12"
        strings_accuracy = "Low"
    strings:
        $x_2_1 = {50 45 00 00 64 86 06 ?? ?? ?? ?? ?? ?? ?? ?? ?? ?? ?? ?? ?? ?? ?? ?? ?? 0b 02 0a 00 00 84 03 00 00 e0 68 01 00 00 00 00 28 fe 01}  //weight: 2, accuracy: Low
        $x_1_2 = "ZhuDongFangYu.exe" wide //weight: 1
        $x_1_3 = "Windows\\CurrentVersion\\Run" wide //weight: 1
        $x_1_4 = "BEIZHU" wide //weight: 1
        $x_1_5 = "HipsTray.exe" wide //weight: 1
        $x_1_6 = "Mcshield.exe" wide //weight: 1
        $x_1_7 = "mssecess.exe" wide //weight: 1
        $x_1_8 = "rtvscan.exe" wide //weight: 1
        $x_1_9 = "shell\\open\\command" wide //weight: 1
        $x_1_10 = ".pdata" ascii //weight: 1
        $x_1_11 = "QQPCRTP.exe" wide //weight: 1
    condition:
        (filesize < 20MB) and
        (all of ($x*))
}

rule Trojan_Win64_CryptInject_WFB_2147919393_0
{
    meta:
        author = "defender2yara"
        detection_name = "Trojan:Win64/CryptInject.WFB!MTB"
        threat_id = "2147919393"
        type = "Trojan"
        platform = "Win64: Windows 64-bit platform"
        family = "CryptInject"
        severity = "Critical"
        info = "MTB: Microsoft Threat Behavior"
        signature_type = "SIGNATURE_TYPE_PEHSTR_EXT"
        threshold = "1"
        strings_accuracy = "High"
    strings:
        $x_1_1 = {99 b9 14 00 00 00 f7 f9 8b c2 89 44 24 2c 48 63 44 24 2c 48 63 4c 24 28 0f b6 44 04 30 88 44 0c 30 48 63 44 24 2c 0f b6 4c 24 20 88 4c 04 30}  //weight: 1, accuracy: High
    condition:
        (filesize < 20MB) and
        (all of ($x*))
}

rule Trojan_Win64_CryptInject_WQF_2147919394_0
{
    meta:
        author = "defender2yara"
        detection_name = "Trojan:Win64/CryptInject.WQF!MTB"
        threat_id = "2147919394"
        type = "Trojan"
        platform = "Win64: Windows 64-bit platform"
        family = "CryptInject"
        severity = "Critical"
        info = "MTB: Microsoft Threat Behavior"
        signature_type = "SIGNATURE_TYPE_PEHSTR_EXT"
        threshold = "1"
        strings_accuracy = "High"
    strings:
        $x_1_1 = {41 bf 00 30 00 00 41 bc 00 d0 1b 00 41 b9 04 00 00 00 33 c9 45 8b c7 41 8b d4 48 89 45 7f ff d7}  //weight: 1, accuracy: High
    condition:
        (filesize < 20MB) and
        (all of ($x*))
}

rule Trojan_Win64_CryptInject_UZZ_2147919934_0
{
    meta:
        author = "defender2yara"
        detection_name = "Trojan:Win64/CryptInject.UZZ!MTB"
        threat_id = "2147919934"
        type = "Trojan"
        platform = "Win64: Windows 64-bit platform"
        family = "CryptInject"
        severity = "Critical"
        info = "MTB: Microsoft Threat Behavior"
        signature_type = "SIGNATURE_TYPE_PEHSTR_EXT"
        threshold = "5"
        strings_accuracy = "Low"
    strings:
        $x_5_1 = {48 2b c8 0f b6 44 0c 20 43 32 44 0c ?? 41 88 41 fe 41 8d 42 03 41 83 c2 06 48 63 c8 49 8b c7 48 f7 e1 48 c1 ea 04 48 6b c2 11 48 2b c8 0f b6 44 0c 20 43 32 44 0d fa 41 88 41 ff 49 ff c8 0f 85}  //weight: 5, accuracy: Low
    condition:
        (filesize < 20MB) and
        (all of ($x*))
}

rule Trojan_Win64_CryptInject_UZY_2147919935_0
{
    meta:
        author = "defender2yara"
        detection_name = "Trojan:Win64/CryptInject.UZY!MTB"
        threat_id = "2147919935"
        type = "Trojan"
        platform = "Win64: Windows 64-bit platform"
        family = "CryptInject"
        severity = "Critical"
        info = "MTB: Microsoft Threat Behavior"
        signature_type = "SIGNATURE_TYPE_PEHSTR_EXT"
        threshold = "5"
        strings_accuracy = "High"
    strings:
        $x_5_1 = {48 63 d0 48 8b 45 10 48 01 d0 0f b6 10 8b 45 fc 48 63 c8 48 8b 45 10 48 01 c8 83 f2 4d 88 10 83 45 fc 01 8b 45 fc 83 f8 0b 76 d2}  //weight: 5, accuracy: High
    condition:
        (filesize < 20MB) and
        (all of ($x*))
}

rule Trojan_Win64_CryptInject_RHAF_2147920324_0
{
    meta:
        author = "defender2yara"
        detection_name = "Trojan:Win64/CryptInject.RHAF!MTB"
        threat_id = "2147920324"
        type = "Trojan"
        platform = "Win64: Windows 64-bit platform"
        family = "CryptInject"
        severity = "Critical"
        info = "MTB: Microsoft Threat Behavior"
        signature_type = "SIGNATURE_TYPE_PEHSTR_EXT"
        threshold = "7"
        strings_accuracy = "Low"
    strings:
        $x_2_1 = {50 45 00 00 64 86 06 ?? ?? ?? ?? ?? ?? ?? ?? ?? ?? ?? ?? ?? ?? ?? ?? ?? 0b 02 0b 00 00 36 01 00 00 06 02 00 00 00 00 00 24 59}  //weight: 2, accuracy: Low
        $x_1_2 = "Key Guard" wide //weight: 1
        $x_1_3 = "host unreachable" ascii //weight: 1
        $x_1_4 = "CreateFile2" ascii //weight: 1
        $x_1_5 = {43 00 6f 00 6d 00 70 00 61 00 6e 00 79 00 4e 00 61 00 6d 00 65 00 ?? ?? ?? ?? 4d 00 69 00 6e 00 64 00 73 00 6f 00 66 00 74 00 20 00 63 00 6f 00 72 00 70 00 6f 00 72 00 61 00 74 00 69 00 6f 00 6e 00}  //weight: 1, accuracy: Low
        $x_1_6 = {4f 00 72 00 69 00 67 00 69 00 6e 00 61 00 6c 00 46 00 69 00 6c 00 65 00 6e 00 61 00 6d 00 65 00 ?? ?? 4c 00 73 00 61 00 6c 00 73 00 2e 00 64 00 6c 00 6c 00}  //weight: 1, accuracy: Low
    condition:
        (filesize < 20MB) and
        (all of ($x*))
}

rule Trojan_Win64_CryptInject_YI_2147920484_0
{
    meta:
        author = "defender2yara"
        detection_name = "Trojan:Win64/CryptInject.YI!MTB"
        threat_id = "2147920484"
        type = "Trojan"
        platform = "Win64: Windows 64-bit platform"
        family = "CryptInject"
        severity = "Critical"
        info = "MTB: Microsoft Threat Behavior"
        signature_type = "SIGNATURE_TYPE_PEHSTR_EXT"
        threshold = "5"
        strings_accuracy = "Low"
    strings:
        $x_5_1 = {31 c0 39 e8 7d ?? 48 89 c2 48 8b 4c 24 ?? 83 e2 ?? 41 8a 54 15 ?? 41 32 14 04 88 14 01 48 ff c0 eb}  //weight: 5, accuracy: Low
    condition:
        (filesize < 20MB) and
        (all of ($x*))
}

rule Trojan_Win64_CryptInject_OKZ_2147920725_0
{
    meta:
        author = "defender2yara"
        detection_name = "Trojan:Win64/CryptInject.OKZ!MTB"
        threat_id = "2147920725"
        type = "Trojan"
        platform = "Win64: Windows 64-bit platform"
        family = "CryptInject"
        severity = "Critical"
        info = "MTB: Microsoft Threat Behavior"
        signature_type = "SIGNATURE_TYPE_PEHSTR_EXT"
        threshold = "4"
        strings_accuracy = "High"
    strings:
        $x_4_1 = {48 ba 69 f4 26 ba 8f 41 64 e3 48 89 54 24 48 48 ba e7 c4 d7 03 6d ac 40 c9 48 89 54 24 50 31 c0}  //weight: 4, accuracy: High
    condition:
        (filesize < 20MB) and
        (all of ($x*))
}

rule Trojan_Win64_CryptInject_VAS_2147921418_0
{
    meta:
        author = "defender2yara"
        detection_name = "Trojan:Win64/CryptInject.VAS!MTB"
        threat_id = "2147921418"
        type = "Trojan"
        platform = "Win64: Windows 64-bit platform"
        family = "CryptInject"
        severity = "Critical"
        info = "MTB: Microsoft Threat Behavior"
        signature_type = "SIGNATURE_TYPE_PEHSTR_EXT"
        threshold = "5"
        strings_accuracy = "High"
    strings:
        $x_5_1 = {41 0f b6 c2 41 fe c2 03 c2 8a 0c 18 41 30 09 49 ff c1 41 80 fa 04 72 e8}  //weight: 5, accuracy: High
    condition:
        (filesize < 20MB) and
        (all of ($x*))
}

rule Trojan_Win64_CryptInject_KIY_2147921420_0
{
    meta:
        author = "defender2yara"
        detection_name = "Trojan:Win64/CryptInject.KIY!MTB"
        threat_id = "2147921420"
        type = "Trojan"
        platform = "Win64: Windows 64-bit platform"
        family = "CryptInject"
        severity = "Critical"
        info = "MTB: Microsoft Threat Behavior"
        signature_type = "SIGNATURE_TYPE_PEHSTR_EXT"
        threshold = "5"
        strings_accuracy = "High"
    strings:
        $x_5_1 = {44 03 de 48 f7 e1 48 c1 ea 03 48 6b c2 1a 48 2b c8 8a 44 0c 20 42 32 04 13 41 88 02 4c 03 d6 45 3b df 72 cf}  //weight: 5, accuracy: High
    condition:
        (filesize < 20MB) and
        (all of ($x*))
}

