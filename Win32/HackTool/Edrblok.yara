rule HackTool_Win32_Edrblok_B_2147923790_0
{
    meta:
        author = "defender2yara"
        detection_name = "HackTool:Win32/Edrblok.B"
        threat_id = "2147923790"
        type = "HackTool"
        platform = "Win32: Windows 32-bit platform"
        family = "Edrblok"
        severity = "High"
        signature_type = "SIGNATURE_TYPE_PEHSTR_EXT"
        threshold = "36"
        strings_accuracy = "Low"
    strings:
        $x_5_1 = "FWPM_LAYER_ALE_AUTH_CONNECT_V4" ascii //weight: 5
        $x_5_2 = "FWP_ACTION_BLOCK" ascii //weight: 5
        $x_1_3 = "MsMpEng.exe" ascii //weight: 1
        $x_1_4 = "MsSense.exe" ascii //weight: 1
        $x_1_5 = "SenseIR.exe" ascii //weight: 1
        $x_1_6 = "SenseNdr.exe" ascii //weight: 1
        $x_1_7 = "SenseCncProxy.exe" ascii //weight: 1
        $x_1_8 = "SenseSampleUploader.exe" ascii //weight: 1
        $x_10_9 = {d1 57 8d c3 ?? ?? ?? ?? a7 05 ?? ?? ?? ?? 33 4c ?? ?? 90 4f 7f bc ee e6 0e 82}  //weight: 10, accuracy: Low
        $x_10_10 = {87 1e 8e d7 ?? ?? ?? ?? 44 86 ?? ?? ?? ?? a5 4e ?? ?? 94 37 d8 09 ec ef c9 71}  //weight: 10, accuracy: Low
        $x_10_11 = {3b 39 72 4a ?? ?? ?? ?? 9f 31 ?? ?? ?? ?? bc 44 ?? ?? 84 c3 ba 54 dc b3 b6 b4}  //weight: 10, accuracy: Low
    condition:
        (filesize < 20MB) and
        (
            ((2 of ($x_10_*) and 2 of ($x_5_*) and 6 of ($x_1_*))) or
            ((3 of ($x_10_*) and 6 of ($x_1_*))) or
            ((3 of ($x_10_*) and 1 of ($x_5_*) and 1 of ($x_1_*))) or
            ((3 of ($x_10_*) and 2 of ($x_5_*))) or
            (all of ($x*))
        )
}

rule HackTool_Win32_Edrblok_YAB_2147925937_0
{
    meta:
        author = "defender2yara"
        detection_name = "HackTool:Win32/Edrblok.YAB!MTB"
        threat_id = "2147925937"
        type = "HackTool"
        platform = "Win32: Windows 32-bit platform"
        family = "Edrblok"
        severity = "High"
        info = "MTB: Microsoft Threat Behavior"
        signature_type = "SIGNATURE_TYPE_PEHSTR_EXT"
        threshold = "6"
        strings_accuracy = "High"
    strings:
        $x_1_1 = "FwpmEngineOpen0" ascii //weight: 1
        $x_1_2 = "EDR process was detected. Please double check the edrProcess list or add the filter manually using 'block' command" ascii //weight: 1
        $x_1_3 = "Unable to find any WFP filter created by this tool" ascii //weight: 1
        $x_1_4 = "Detected running EDR process" ascii //weight: 1
        $x_1_5 = "Added WFP filter for \"%S\" (Filter id: %llu, IPv4 layer" ascii //weight: 1
        $x_1_6 = "blockedr/block/unblockall/unblock" ascii //weight: 1
    condition:
        (filesize < 20MB) and
        (all of ($x*))
}

