rule Trojan_MacOS_SuspPlistModUsingPlistbuddy_C_2147915648_0
{
    meta:
        author = "defender2yara"
        detection_name = "Trojan:MacOS/SuspPlistModUsingPlistbuddy.C"
        threat_id = "2147915648"
        type = "Trojan"
        platform = "MacOS: "
        family = "SuspPlistModUsingPlistbuddy"
        severity = "Critical"
        signature_type = "SIGNATURE_TYPE_CMDHSTR_EXT"
        threshold = "1"
        strings_accuracy = "Low"
    strings:
        $x_1_1 = {2f 00 75 00 73 00 72 00 2f 00 6c 00 69 00 62 00 65 00 78 00 65 00 63 00 2f 00 70 00 6c 00 69 00 73 00 74 00 62 00 75 00 64 00 64 00 79 00 20 00 2d 00 63 00 20 00 [0-2] 73 00 65 00 74 00 [0-255] 2f 00 6c 00 69 00 62 00 72 00 61 00 72 00 79 00 2f 00 6c 00 61 00 75 00 6e 00 63 00 68 00 61 00 67 00 65 00 6e 00 74 00 73 00 2f 00}  //weight: 1, accuracy: Low
        $x_1_2 = {2f 00 75 00 73 00 72 00 2f 00 6c 00 69 00 62 00 65 00 78 00 65 00 63 00 2f 00 70 00 6c 00 69 00 73 00 74 00 62 00 75 00 64 00 64 00 79 00 20 00 2d 00 63 00 20 00 [0-2] 64 00 65 00 6c 00 65 00 74 00 65 00 [0-255] 2f 00 6c 00 69 00 62 00 72 00 61 00 72 00 79 00 2f 00 6c 00 61 00 75 00 6e 00 63 00 68 00 61 00 67 00 65 00 6e 00 74 00 73 00 2f 00}  //weight: 1, accuracy: Low
        $x_1_3 = {2f 00 75 00 73 00 72 00 2f 00 6c 00 69 00 62 00 65 00 78 00 65 00 63 00 2f 00 70 00 6c 00 69 00 73 00 74 00 62 00 75 00 64 00 64 00 79 00 20 00 2d 00 63 00 20 00 [0-2] 69 00 6d 00 70 00 6f 00 72 00 74 00 [0-255] 2f 00 6c 00 69 00 62 00 72 00 61 00 72 00 79 00 2f 00 6c 00 61 00 75 00 6e 00 63 00 68 00 61 00 67 00 65 00 6e 00 74 00 73 00 2f 00}  //weight: 1, accuracy: Low
        $x_1_4 = {2f 00 75 00 73 00 72 00 2f 00 6c 00 69 00 62 00 65 00 78 00 65 00 63 00 2f 00 70 00 6c 00 69 00 73 00 74 00 62 00 75 00 64 00 64 00 79 00 20 00 2d 00 63 00 20 00 [0-2] 61 00 64 00 64 00 [0-255] 2f 00 6c 00 69 00 62 00 72 00 61 00 72 00 79 00 2f 00 6c 00 61 00 75 00 6e 00 63 00 68 00 61 00 67 00 65 00 6e 00 74 00 73 00 2f 00}  //weight: 1, accuracy: Low
        $x_1_5 = {2f 00 75 00 73 00 72 00 2f 00 6c 00 69 00 62 00 65 00 78 00 65 00 63 00 2f 00 70 00 6c 00 69 00 73 00 74 00 62 00 75 00 64 00 64 00 79 00 20 00 2d 00 78 00 20 00 2d 00 63 00 20 00 [0-2] 6d 00 65 00 72 00 67 00 65 00 [0-255] 2f 00 6c 00 69 00 62 00 72 00 61 00 72 00 79 00 2f 00 6c 00 61 00 75 00 6e 00 63 00 68 00 61 00 67 00 65 00 6e 00 74 00 73 00 2f 00}  //weight: 1, accuracy: Low
        $x_1_6 = {2f 00 75 00 73 00 72 00 2f 00 6c 00 69 00 62 00 65 00 78 00 65 00 63 00 2f 00 70 00 6c 00 69 00 73 00 74 00 62 00 75 00 64 00 64 00 79 00 20 00 2d 00 63 00 20 00 [0-2] 73 00 65 00 74 00 [0-255] 2f 00 6c 00 69 00 62 00 72 00 61 00 72 00 79 00 2f 00 6c 00 61 00 75 00 6e 00 63 00 68 00 64 00 61 00 65 00 6d 00 6f 00 6e 00 73 00 2f 00}  //weight: 1, accuracy: Low
        $x_1_7 = {2f 00 75 00 73 00 72 00 2f 00 6c 00 69 00 62 00 65 00 78 00 65 00 63 00 2f 00 70 00 6c 00 69 00 73 00 74 00 62 00 75 00 64 00 64 00 79 00 20 00 2d 00 63 00 20 00 [0-2] 64 00 65 00 6c 00 65 00 74 00 65 00 [0-255] 2f 00 6c 00 69 00 62 00 72 00 61 00 72 00 79 00 2f 00 6c 00 61 00 75 00 6e 00 63 00 68 00 64 00 61 00 65 00 6d 00 6f 00 6e 00 73 00 2f 00}  //weight: 1, accuracy: Low
        $x_1_8 = {2f 00 75 00 73 00 72 00 2f 00 6c 00 69 00 62 00 65 00 78 00 65 00 63 00 2f 00 70 00 6c 00 69 00 73 00 74 00 62 00 75 00 64 00 64 00 79 00 20 00 2d 00 63 00 20 00 [0-2] 69 00 6d 00 70 00 6f 00 72 00 74 00 [0-255] 2f 00 6c 00 69 00 62 00 72 00 61 00 72 00 79 00 2f 00 6c 00 61 00 75 00 6e 00 63 00 68 00 64 00 61 00 65 00 6d 00 6f 00 6e 00 73 00 2f 00}  //weight: 1, accuracy: Low
        $x_1_9 = {2f 00 75 00 73 00 72 00 2f 00 6c 00 69 00 62 00 65 00 78 00 65 00 63 00 2f 00 70 00 6c 00 69 00 73 00 74 00 62 00 75 00 64 00 64 00 79 00 20 00 2d 00 63 00 20 00 [0-2] 61 00 64 00 64 00 [0-255] 2f 00 6c 00 69 00 62 00 72 00 61 00 72 00 79 00 2f 00 6c 00 61 00 75 00 6e 00 63 00 68 00 64 00 61 00 65 00 6d 00 6f 00 6e 00 73 00 2f 00}  //weight: 1, accuracy: Low
        $x_1_10 = {2f 00 75 00 73 00 72 00 2f 00 6c 00 69 00 62 00 65 00 78 00 65 00 63 00 2f 00 70 00 6c 00 69 00 73 00 74 00 62 00 75 00 64 00 64 00 79 00 20 00 2d 00 78 00 20 00 2d 00 63 00 20 00 [0-2] 6d 00 65 00 72 00 67 00 65 00 [0-255] 2f 00 6c 00 69 00 62 00 72 00 61 00 72 00 79 00 2f 00 6c 00 61 00 75 00 6e 00 63 00 68 00 64 00 61 00 65 00 6d 00 6f 00 6e 00 73 00 2f 00}  //weight: 1, accuracy: Low
        $x_1_11 = {2f 00 75 00 73 00 72 00 2f 00 6c 00 69 00 62 00 65 00 78 00 65 00 63 00 2f 00 70 00 6c 00 69 00 73 00 74 00 62 00 75 00 64 00 64 00 79 00 20 00 2d 00 63 00 20 00 [0-2] 73 00 65 00 74 00 [0-255] 2f 00 6c 00 69 00 62 00 72 00 61 00 72 00 79 00 2f 00 70 00 72 00 65 00 66 00 65 00 72 00 65 00 6e 00 63 00 65 00 73 00 2f 00}  //weight: 1, accuracy: Low
        $x_1_12 = {2f 00 75 00 73 00 72 00 2f 00 6c 00 69 00 62 00 65 00 78 00 65 00 63 00 2f 00 70 00 6c 00 69 00 73 00 74 00 62 00 75 00 64 00 64 00 79 00 20 00 2d 00 63 00 20 00 [0-2] 64 00 65 00 6c 00 65 00 74 00 65 00 [0-255] 2f 00 6c 00 69 00 62 00 72 00 61 00 72 00 79 00 2f 00 70 00 72 00 65 00 66 00 65 00 72 00 65 00 6e 00 63 00 65 00 73 00 2f 00}  //weight: 1, accuracy: Low
        $x_1_13 = {2f 00 75 00 73 00 72 00 2f 00 6c 00 69 00 62 00 65 00 78 00 65 00 63 00 2f 00 70 00 6c 00 69 00 73 00 74 00 62 00 75 00 64 00 64 00 79 00 20 00 2d 00 63 00 20 00 [0-2] 69 00 6d 00 70 00 6f 00 72 00 74 00 [0-255] 2f 00 6c 00 69 00 62 00 72 00 61 00 72 00 79 00 2f 00 70 00 72 00 65 00 66 00 65 00 72 00 65 00 6e 00 63 00 65 00 73 00 2f 00}  //weight: 1, accuracy: Low
        $x_1_14 = {2f 00 75 00 73 00 72 00 2f 00 6c 00 69 00 62 00 65 00 78 00 65 00 63 00 2f 00 70 00 6c 00 69 00 73 00 74 00 62 00 75 00 64 00 64 00 79 00 20 00 2d 00 63 00 20 00 [0-2] 61 00 64 00 64 00 [0-255] 2f 00 6c 00 69 00 62 00 72 00 61 00 72 00 79 00 2f 00 70 00 72 00 65 00 66 00 65 00 72 00 65 00 6e 00 63 00 65 00 73 00 2f 00}  //weight: 1, accuracy: Low
        $x_1_15 = {2f 00 75 00 73 00 72 00 2f 00 6c 00 69 00 62 00 65 00 78 00 65 00 63 00 2f 00 70 00 6c 00 69 00 73 00 74 00 62 00 75 00 64 00 64 00 79 00 20 00 2d 00 78 00 20 00 2d 00 63 00 20 00 [0-2] 6d 00 65 00 72 00 67 00 65 00 [0-255] 2f 00 6c 00 69 00 62 00 72 00 61 00 72 00 79 00 2f 00 70 00 72 00 65 00 66 00 65 00 72 00 65 00 6e 00 63 00 65 00 73 00 2f 00}  //weight: 1, accuracy: Low
    condition:
        (filesize < 20MB) and
        (1 of ($x*))
}

