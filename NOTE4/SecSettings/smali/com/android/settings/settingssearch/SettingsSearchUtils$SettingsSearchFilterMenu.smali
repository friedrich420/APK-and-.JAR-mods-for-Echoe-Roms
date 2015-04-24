.class public Lcom/android/settings/settingssearch/SettingsSearchUtils$SettingsSearchFilterMenu;
.super Ljava/lang/Object;
.source "SettingsSearchUtils.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/settingssearch/SettingsSearchUtils;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "SettingsSearchFilterMenu"
.end annotation


# static fields
.field private static final KNOX_MODE_REMOVED_MENU:[Ljava/lang/String;

.field private static final RESTRICTED_PROFILE_REMOVED_MENU:[Ljava/lang/String;

.field private static final SUB_USER_REMOVED_MENU:[Ljava/lang/String;


# instance fields
.field private mContext:Landroid/content/Context;

.field private mRemovekeyList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 8

    .prologue
    const/4 v7, 0x3

    const/4 v6, 0x2

    const/4 v5, 0x1

    const/4 v4, 0x0

    const v3, 0x7f1006d1

    .line 9703
    const/16 v0, 0x37

    new-array v0, v0, [Ljava/lang/String;

    const v1, 0x7f1006a9

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    aput-object v1, v0, v4

    const v1, 0x7f1006ad

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    aput-object v1, v0, v5

    const v1, 0x7f1006ae

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    aput-object v1, v0, v6

    const v1, 0x7f1006b6

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    aput-object v1, v0, v7

    const/4 v1, 0x4

    const v2, 0x7f10070e

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    const/4 v1, 0x5

    const v2, 0x7f10070f

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    const/4 v1, 0x6

    const v2, 0x7f100710

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    const/4 v1, 0x7

    const v2, 0x7f100712

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    const/16 v1, 0x8

    const v2, 0x7f100713

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    const/16 v1, 0x9

    const v2, 0x7f1006e6

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    const/16 v1, 0xa

    const v2, 0x7f1006fa

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    const/16 v1, 0xb

    const v2, 0x7f1006f7

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    const/16 v1, 0xc

    const v2, 0x7f1006c8

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    const/16 v1, 0xd

    const v2, 0x7f100691

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    const/16 v1, 0xe

    const v2, 0x7f10071f

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    const/16 v1, 0xf

    const v2, 0x7f100700

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    const/16 v1, 0x10

    const v2, 0x7f1006cc

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    const/16 v1, 0x11

    invoke-static {v3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    const/16 v1, 0x12

    const v2, 0x7f10069c

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    const/16 v1, 0x13

    const v2, 0x7f10069d

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    const/16 v1, 0x14

    const v2, 0x7f10069e

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    const/16 v1, 0x15

    const v2, 0x7f10069f

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    const/16 v1, 0x16

    const v2, 0x7f10069a

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    const/16 v1, 0x17

    const v2, 0x7f1006a1

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    const/16 v1, 0x18

    const v2, 0x7f1006a2

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    const/16 v1, 0x19

    const-string v2, "ringtone"

    aput-object v2, v0, v1

    const/16 v1, 0x1a

    const-string v2, "phone_vibration"

    aput-object v2, v0, v1

    const/16 v1, 0x1b

    const-string v2, "vibrate_when_ringing"

    aput-object v2, v0, v1

    const/16 v1, 0x1c

    const-string v2, "dtmf_tone"

    aput-object v2, v0, v1

    const/16 v1, 0x1d

    const-string v2, "sound_applications"

    aput-object v2, v0, v1

    const/16 v1, 0x1e

    const-string v2, "sound_call"

    aput-object v2, v0, v1

    const/16 v1, 0x1f

    const-string v2, "sound_message"

    aput-object v2, v0, v1

    const/16 v1, 0x20

    const-string v2, "sound_email"

    aput-object v2, v0, v1

    const/16 v1, 0x21

    const-string v2, "sound_splanner"

    aput-object v2, v0, v1

    const/16 v1, 0x22

    const-string v2, "unlock_set_motion"

    aput-object v2, v0, v1

    const/16 v1, 0x23

    const-string v2, "unlock_set_biometric_weak"

    aput-object v2, v0, v1

    const/16 v1, 0x24

    const-string v2, "unlock_set_biometric_weak_with_voice"

    aput-object v2, v0, v1

    const/16 v1, 0x25

    const-string v2, "unlock_set_signature"

    aput-object v2, v0, v1

    const/16 v1, 0x26

    const-string v2, "unlock_set_pattern"

    aput-object v2, v0, v1

    const/16 v1, 0x27

    const-string v2, "unlock_set_pin"

    aput-object v2, v0, v1

    const/16 v1, 0x28

    const-string v2, "unlock_set_password"

    aput-object v2, v0, v1

    const/16 v1, 0x29

    const-string v2, "unlock_set_smart"

    aput-object v2, v0, v1

    const/16 v1, 0x2a

    const-string v2, "unlock_set_cac_pin"

    aput-object v2, v0, v1

    const/16 v1, 0x2b

    const-string v2, "unlock_set_off"

    aput-object v2, v0, v1

    const/16 v1, 0x2c

    const-string v2, "owner_info_settings"

    aput-object v2, v0, v1

    const/16 v1, 0x2d

    const-string v2, "unlock_effect"

    aput-object v2, v0, v1

    const/16 v1, 0x2e

    const-string v2, "additional_information"

    aput-object v2, v0, v1

    const/16 v1, 0x2f

    const-string v2, "disable_incoming_calls"

    aput-object v2, v0, v1

    const/16 v1, 0x30

    const-string v2, "allowed_contacts"

    aput-object v2, v0, v1

    const/16 v1, 0x31

    const-string v2, "allowed_list"

    aput-object v2, v0, v1

    const/16 v1, 0x32

    const-string v2, "pick_up_to_call_out"

    aput-object v2, v0, v1

    const/16 v1, 0x33

    const-string v2, "pick_up"

    aput-object v2, v0, v1

    const/16 v1, 0x34

    const-string v2, "software_update_settings"

    aput-object v2, v0, v1

    const/16 v1, 0x35

    const-string v2, "ultra_powersaving"

    aput-object v2, v0, v1

    const/16 v1, 0x36

    const-string v2, "ultra_powersaving_tablet"

    aput-object v2, v0, v1

    sput-object v0, Lcom/android/settings/settingssearch/SettingsSearchUtils$SettingsSearchFilterMenu;->SUB_USER_REMOVED_MENU:[Ljava/lang/String;

    .line 9769
    const/16 v0, 0x43

    new-array v0, v0, [Ljava/lang/String;

    const v1, 0x7f1006a9

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    aput-object v1, v0, v4

    const v1, 0x7f1006ad

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    aput-object v1, v0, v5

    const v1, 0x7f1006ae

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    aput-object v1, v0, v6

    const v1, 0x7f1006b6

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    aput-object v1, v0, v7

    const/4 v1, 0x4

    const v2, 0x7f10070e

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    const/4 v1, 0x5

    const v2, 0x7f10070f

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    const/4 v1, 0x6

    const v2, 0x7f100710

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    const/4 v1, 0x7

    const v2, 0x7f100712

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    const/16 v1, 0x8

    const v2, 0x7f100713

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    const/16 v1, 0x9

    const v2, 0x7f1006e6

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    const/16 v1, 0xa

    const v2, 0x7f1006fa

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    const/16 v1, 0xb

    const v2, 0x7f1006f7

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    const/16 v1, 0xc

    const v2, 0x7f1006c8

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    const/16 v1, 0xd

    const v2, 0x7f100691

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    const/16 v1, 0xe

    const v2, 0x7f10071f

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    const/16 v1, 0xf

    const v2, 0x7f100700

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    const/16 v1, 0x10

    const v2, 0x7f1006cc

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    const/16 v1, 0x11

    invoke-static {v3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    const/16 v1, 0x12

    const v2, 0x7f10069c

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    const/16 v1, 0x13

    const v2, 0x7f10069d

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    const/16 v1, 0x14

    const v2, 0x7f10069e

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    const/16 v1, 0x15

    const v2, 0x7f10069f

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    const/16 v1, 0x16

    const v2, 0x7f10069a

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    const/16 v1, 0x17

    const v2, 0x7f1006a1

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    const/16 v1, 0x18

    const v2, 0x7f1006a2

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    const/16 v1, 0x19

    const v2, 0x7f1006aa

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    const/16 v1, 0x1a

    const v2, 0x7f1006fd

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    const/16 v1, 0x1b

    const v2, 0x7f1006e7

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    const/16 v1, 0x1c

    const v2, 0x7f1006f3

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    const/16 v1, 0x1d

    const v2, 0x7f10068d

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    const/16 v1, 0x1e

    const v2, 0x7f100690

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    const/16 v1, 0x1f

    const v2, 0x7f10068e

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    const/16 v1, 0x20

    const v2, 0x7f1006fe

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    const/16 v1, 0x21

    const-string v2, "ringtone"

    aput-object v2, v0, v1

    const/16 v1, 0x22

    const-string v2, "phone_vibration"

    aput-object v2, v0, v1

    const/16 v1, 0x23

    const-string v2, "vibrate_when_ringing"

    aput-object v2, v0, v1

    const/16 v1, 0x24

    const-string v2, "dtmf_tone"

    aput-object v2, v0, v1

    const/16 v1, 0x25

    const-string v2, "sound_applications"

    aput-object v2, v0, v1

    const/16 v1, 0x26

    const-string v2, "sound_call"

    aput-object v2, v0, v1

    const/16 v1, 0x27

    const-string v2, "sound_message"

    aput-object v2, v0, v1

    const/16 v1, 0x28

    const-string v2, "sound_email"

    aput-object v2, v0, v1

    const/16 v1, 0x29

    const-string v2, "sound_splanner"

    aput-object v2, v0, v1

    const/16 v1, 0x2a

    const-string v2, "unlock_set_motion"

    aput-object v2, v0, v1

    const/16 v1, 0x2b

    const-string v2, "unlock_set_biometric_weak"

    aput-object v2, v0, v1

    const/16 v1, 0x2c

    const-string v2, "unlock_set_biometric_weak_with_voice"

    aput-object v2, v0, v1

    const/16 v1, 0x2d

    const-string v2, "unlock_set_signature"

    aput-object v2, v0, v1

    const/16 v1, 0x2e

    const-string v2, "unlock_set_pattern"

    aput-object v2, v0, v1

    const/16 v1, 0x2f

    const-string v2, "unlock_set_pin"

    aput-object v2, v0, v1

    const/16 v1, 0x30

    const-string v2, "unlock_set_password"

    aput-object v2, v0, v1

    const/16 v1, 0x31

    const-string v2, "unlock_set_smart"

    aput-object v2, v0, v1

    const/16 v1, 0x32

    const-string v2, "unlock_set_cac_pin"

    aput-object v2, v0, v1

    const/16 v1, 0x33

    const-string v2, "unlock_set_off"

    aput-object v2, v0, v1

    const/16 v1, 0x34

    const-string v2, "owner_info_settings"

    aput-object v2, v0, v1

    const/16 v1, 0x35

    const-string v2, "unlock_effect"

    aput-object v2, v0, v1

    const/16 v1, 0x36

    const-string v2, "additional_information"

    aput-object v2, v0, v1

    const/16 v1, 0x37

    const-string v2, "disable_incoming_calls"

    aput-object v2, v0, v1

    const/16 v1, 0x38

    const-string v2, "allowed_contacts"

    aput-object v2, v0, v1

    const/16 v1, 0x39

    const-string v2, "allowed_list"

    aput-object v2, v0, v1

    const/16 v1, 0x3a

    const-string v2, "pick_up_to_call_out"

    aput-object v2, v0, v1

    const/16 v1, 0x3b

    const-string v2, "pick_up"

    aput-object v2, v0, v1

    const/16 v1, 0x3c

    const-string v2, "software_update_settings"

    aput-object v2, v0, v1

    const/16 v1, 0x3d

    const-string v2, "ultra_powersaving"

    aput-object v2, v0, v1

    const/16 v1, 0x3e

    const-string v2, "ultra_powersaving_tablet"

    aput-object v2, v0, v1

    const/16 v1, 0x3f

    const-string v2, "samsung_captioning_preference_screen"

    aput-object v2, v0, v1

    const/16 v1, 0x40

    const-string v2, "toggle_install_applications"

    aput-object v2, v0, v1

    const/16 v1, 0x41

    const-string v2, "additional_information"

    aput-object v2, v0, v1

    const/16 v1, 0x42

    const-string v2, "unlock_set_fingerprint"

    aput-object v2, v0, v1

    sput-object v0, Lcom/android/settings/settingssearch/SettingsSearchUtils$SettingsSearchFilterMenu;->RESTRICTED_PROFILE_REMOVED_MENU:[Ljava/lang/String;

    .line 9849
    const/16 v0, 0x6b

    new-array v0, v0, [Ljava/lang/String;

    const v1, 0x7f1006ae

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    aput-object v1, v0, v4

    const v1, 0x7f1006ba

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    aput-object v1, v0, v5

    const v1, 0x7f10070c

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    aput-object v1, v0, v6

    const v1, 0x7f1006bb

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    aput-object v1, v0, v7

    const/4 v1, 0x4

    const v2, 0x7f1006bd

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    const/4 v1, 0x5

    const v2, 0x7f1006be

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    const/4 v1, 0x6

    const v2, 0x7f1006f0

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    const/4 v1, 0x7

    const v2, 0x7f1006d5

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    const/16 v1, 0x8

    const v2, 0x7f1006f1

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    const/16 v1, 0x9

    const-string v2, "key_multi_window"

    aput-object v2, v0, v1

    const/16 v1, 0xa

    const v2, 0x7f1006f2

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    const/16 v1, 0xb

    const v2, 0x7f100718

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    const/16 v1, 0xc

    const v2, 0x7f1006e6

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    const/16 v1, 0xd

    const v2, 0x7f1006fa

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    const/16 v1, 0xe

    const v2, 0x7f1006f7

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    const/16 v1, 0xf

    const v2, 0x7f1006c8

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    const/16 v1, 0x10

    const v2, 0x7f1006e7

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    const/16 v1, 0x11

    const v2, 0x7f100690

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    const/16 v1, 0x12

    const v2, 0x7f100691

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    const/16 v1, 0x13

    const v2, 0x7f100700

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    const/16 v1, 0x14

    invoke-static {v3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    const/16 v1, 0x15

    const v2, 0x7f100699

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    const/16 v1, 0x16

    const v2, 0x7f10069c

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    const/16 v1, 0x17

    const v2, 0x7f10069d

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    const/16 v1, 0x18

    const v2, 0x7f10069e

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    const/16 v1, 0x19

    const v2, 0x7f10069f

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    const/16 v1, 0x1a

    const v2, 0x7f10069a

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    const/16 v1, 0x1b

    const v2, 0x7f1006a1

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    const/16 v1, 0x1c

    const v2, 0x7f1006a0

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    const/16 v1, 0x1d

    const v2, 0x7f1006a2

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    const/16 v1, 0x1e

    const v2, 0x7f1006df

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    const/16 v1, 0x1f

    const v2, 0x7f100721

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    const/16 v1, 0x20

    invoke-static {v3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    const/16 v1, 0x21

    const v2, 0x7f1006f3

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    const/16 v1, 0x22

    const v2, 0x7f100726

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    const/16 v1, 0x23

    const v2, 0x7f100714

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    const/16 v1, 0x24

    const v2, 0x7f100697

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    const/16 v1, 0x25

    const v2, 0x7f100726

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    const/16 v1, 0x26

    const v2, 0x7f1006d4

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    const/16 v1, 0x27

    const v2, 0x7f100694

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    const/16 v1, 0x28

    const v2, 0x7f10068d

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    const/16 v1, 0x29

    const v2, 0x7f10068e

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    const/16 v1, 0x2a

    const v2, 0x7f1006fe

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    const/16 v1, 0x2b

    const-string v2, "help"

    aput-object v2, v0, v1

    const/16 v1, 0x2c

    const-string v2, "dtmf_tone"

    aput-object v2, v0, v1

    const/16 v1, 0x2d

    const-string v2, "sound_applications"

    aput-object v2, v0, v1

    const/16 v1, 0x2e

    const-string v2, "lock_sounds"

    aput-object v2, v0, v1

    const/16 v1, 0x2f

    const-string v2, "onehand_settings"

    aput-object v2, v0, v1

    const/16 v1, 0x30

    const-string v2, "onehand_settings"

    aput-object v2, v0, v1

    const/16 v1, 0x31

    const-string v2, "wallpaper"

    aput-object v2, v0, v1

    const/16 v1, 0x32

    const-string v2, "lockscreen_wallpaper"

    aput-object v2, v0, v1

    const/16 v1, 0x33

    const-string v2, "both_wallpaper"

    aput-object v2, v0, v1

    const/16 v1, 0x34

    const-string v2, "unlock_set_motion"

    aput-object v2, v0, v1

    const/16 v1, 0x35

    const-string v2, "unlock_set_biometric_weak"

    aput-object v2, v0, v1

    const/16 v1, 0x36

    const-string v2, "unlock_set_biometric_weak_with_voice"

    aput-object v2, v0, v1

    const/16 v1, 0x37

    const-string v2, "unlock_set_signature"

    aput-object v2, v0, v1

    const/16 v1, 0x38

    const-string v2, "unlock_set_pattern"

    aput-object v2, v0, v1

    const/16 v1, 0x39

    const-string v2, "unlock_set_pin"

    aput-object v2, v0, v1

    const/16 v1, 0x3a

    const-string v2, "unlock_set_password"

    aput-object v2, v0, v1

    const/16 v1, 0x3b

    const-string v2, "unlock_set_smart"

    aput-object v2, v0, v1

    const/16 v1, 0x3c

    const-string v2, "unlock_set_cac_pin"

    aput-object v2, v0, v1

    const/16 v1, 0x3d

    const-string v2, "unlock_set_off"

    aput-object v2, v0, v1

    const/16 v1, 0x3e

    const-string v2, "owner_info_settings"

    aput-object v2, v0, v1

    const/16 v1, 0x3f

    const-string v2, "unlock_effect"

    aput-object v2, v0, v1

    const/16 v1, 0x40

    const-string v2, "additional_information"

    aput-object v2, v0, v1

    const/16 v1, 0x41

    const-string v2, "additional_information"

    aput-object v2, v0, v1

    const/16 v1, 0x42

    const-string v2, "unlock_set_fingerprint"

    aput-object v2, v0, v1

    const/16 v1, 0x43

    const-string v2, "recommended_apps_phone"

    aput-object v2, v0, v1

    const/16 v1, 0x44

    const-string v2, "disable_incoming_calls"

    aput-object v2, v0, v1

    const/16 v1, 0x45

    const-string v2, "allowed_contacts"

    aput-object v2, v0, v1

    const/16 v1, 0x46

    const-string v2, "allowed_list"

    aput-object v2, v0, v1

    const/16 v1, 0x47

    const-string v2, "pick_up_to_call_out"

    aput-object v2, v0, v1

    const/16 v1, 0x48

    const-string v2, "turn_over"

    aput-object v2, v0, v1

    const/16 v1, 0x49

    const-string v2, "palm_swipe"

    aput-object v2, v0, v1

    const/16 v1, 0x4a

    const-string v2, "bgm_on_lock_screen"

    aput-object v2, v0, v1

    const/16 v1, 0x4b

    const-string v2, "palm_swipe_switch"

    aput-object v2, v0, v1

    const/16 v1, 0x4c

    const-string v2, "software_update_settings"

    aput-object v2, v0, v1

    const/16 v1, 0x4d

    const-string v2, "security_policy_updates"

    aput-object v2, v0, v1

    const/16 v1, 0x4e

    const-string v2, "security_reports"

    aput-object v2, v0, v1

    const/16 v1, 0x4f

    const-string v2, "SIMAlert"

    aput-object v2, v0, v1

    const/16 v1, 0x50

    const-string v2, "LockMyMobile"

    aput-object v2, v0, v1

    const/16 v1, 0x51

    const-string v2, "knox_active_protection"

    aput-object v2, v0, v1

    const/16 v1, 0x52

    const-string v2, "encryption"

    aput-object v2, v0, v1

    const/16 v1, 0x53

    const-string v2, "sdEncpref"

    aput-object v2, v0, v1

    const/16 v1, 0x54

    const-string v2, "RemoteControls"

    aput-object v2, v0, v1

    const/16 v1, 0x55

    const-string v2, "SIMAlert"

    aput-object v2, v0, v1

    const/16 v1, 0x56

    const-string v2, "ruim_lock_settings"

    aput-object v2, v0, v1

    const/16 v1, 0x57

    const-string v2, "LockMyMobile"

    aput-object v2, v0, v1

    const/16 v1, 0x58

    const-string v2, "ultra_powersaving"

    aput-object v2, v0, v1

    const/16 v1, 0x59

    const-string v2, "ultra_powersaving_tablet"

    aput-object v2, v0, v1

    const/16 v1, 0x5a

    const-string v2, "nfc_setting"

    aput-object v2, v0, v1

    const/16 v1, 0x5b

    const-string v2, "open_multi_window_view"

    aput-object v2, v0, v1

    const/16 v1, 0x5c

    const-string v2, "popup_view_shortcut"

    aput-object v2, v0, v1

    const/16 v1, 0x5d

    const-string v2, "app_ops"

    aput-object v2, v0, v1

    const/16 v1, 0x5e

    const-string v2, "new_security_update_service"

    aput-object v2, v0, v1

    const/16 v1, 0x5f

    const-string v2, "new_security_update_service"

    aput-object v2, v0, v1

    const/16 v1, 0x60

    const-string v2, "credentials_management"

    aput-object v2, v0, v1

    const/16 v1, 0x61

    const-string v2, "advanced_security"

    aput-object v2, v0, v1

    const/16 v1, 0x62

    const-string v2, "share_acc_setting_menu"

    aput-object v2, v0, v1

    const/16 v1, 0x63

    const-string v2, "samsung_captioning_preference_screen"

    aput-object v2, v0, v1

    const/16 v1, 0x64

    const-string v2, "Recognition_preference_key"

    aput-object v2, v0, v1

    const/16 v1, 0x65

    const-string v2, "app_notifications"

    aput-object v2, v0, v1

    const/16 v1, 0x66

    const-string v2, "othersound_samsungapplications"

    aput-object v2, v0, v1

    const/16 v1, 0x67

    const-string v2, "sound_call"

    aput-object v2, v0, v1

    const/16 v1, 0x68

    const-string v2, "sound_message"

    aput-object v2, v0, v1

    const/16 v1, 0x69

    const-string v2, "sound_email"

    aput-object v2, v0, v1

    const/16 v1, 0x6a

    const-string v2, "sound_splanner"

    aput-object v2, v0, v1

    sput-object v0, Lcom/android/settings/settingssearch/SettingsSearchUtils$SettingsSearchFilterMenu;->KNOX_MODE_REMOVED_MENU:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 9204
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 9202
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/settings/settingssearch/SettingsSearchUtils$SettingsSearchFilterMenu;->mRemovekeyList:Ljava/util/ArrayList;

    .line 9205
    iput-object p1, p0, Lcom/android/settings/settingssearch/SettingsSearchUtils$SettingsSearchFilterMenu;->mContext:Landroid/content/Context;

    .line 9206
    iget-object v0, p0, Lcom/android/settings/settingssearch/SettingsSearchUtils$SettingsSearchFilterMenu;->mRemovekeyList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 9207
    return-void
.end method

.method static synthetic access$000()[Ljava/lang/String;
    .locals 1

    .prologue
    .line 9197
    sget-object v0, Lcom/android/settings/settingssearch/SettingsSearchUtils$SettingsSearchFilterMenu;->KNOX_MODE_REMOVED_MENU:[Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$100()[Ljava/lang/String;
    .locals 1

    .prologue
    .line 9197
    sget-object v0, Lcom/android/settings/settingssearch/SettingsSearchUtils$SettingsSearchFilterMenu;->SUB_USER_REMOVED_MENU:[Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$200()[Ljava/lang/String;
    .locals 1

    .prologue
    .line 9197
    sget-object v0, Lcom/android/settings/settingssearch/SettingsSearchUtils$SettingsSearchFilterMenu;->RESTRICTED_PROFILE_REMOVED_MENU:[Ljava/lang/String;

    return-object v0
.end method

.method private addRemovePreferenceKey(Ljava/lang/String;)V
    .locals 1
    .param p1, "key"    # Ljava/lang/String;

    .prologue
    .line 9685
    iget-object v0, p0, Lcom/android/settings/settingssearch/SettingsSearchUtils$SettingsSearchFilterMenu;->mRemovekeyList:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 9687
    return-void
.end method


# virtual methods
.method public getDynamiRemoveResult(Ljava/lang/String;)Z
    .locals 1
    .param p1, "key"    # Ljava/lang/String;

    .prologue
    .line 9697
    iget-object v0, p0, Lcom/android/settings/settingssearch/SettingsSearchUtils$SettingsSearchFilterMenu;->mRemovekeyList:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 9698
    const/4 v0, 0x0

    .line 9700
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public initDynamicPreferenceRemovekey()V
    .locals 15

    .prologue
    const/4 v11, 0x0

    const/4 v10, 0x1

    .line 9211
    new-instance v7, Lcom/android/internal/widget/LockPatternUtils;

    iget-object v12, p0, Lcom/android/settings/settingssearch/SettingsSearchUtils$SettingsSearchFilterMenu;->mContext:Landroid/content/Context;

    invoke-direct {v7, v12}, Lcom/android/internal/widget/LockPatternUtils;-><init>(Landroid/content/Context;)V

    .line 9212
    .local v7, "mLockPatternUtils":Lcom/android/internal/widget/LockPatternUtils;
    invoke-static {}, Lcom/android/settings/Utils;->isSettingsUI2013Supported()Z

    move-result v12

    if-eqz v12, :cond_17

    .line 9213
    invoke-virtual {v7}, Lcom/android/internal/widget/LockPatternUtils;->isSecure()Z

    move-result v12

    if-nez v12, :cond_13

    .line 9214
    invoke-virtual {v7}, Lcom/android/internal/widget/LockPatternUtils;->isLockScreenDisabled()Z

    move-result v12

    if-eqz v12, :cond_10

    .line 9215
    const-string v12, "multiple_lock_screenswitch"

    invoke-direct {p0, v12}, Lcom/android/settings/settingssearch/SettingsSearchUtils$SettingsSearchFilterMenu;->addRemovePreferenceKey(Ljava/lang/String;)V

    .line 9216
    const-string v12, "lock_screen_clock_settings"

    invoke-direct {p0, v12}, Lcom/android/settings/settingssearch/SettingsSearchUtils$SettingsSearchFilterMenu;->addRemovePreferenceKey(Ljava/lang/String;)V

    .line 9217
    const-string v12, "lock_screen_shortcut_menu"

    invoke-direct {p0, v12}, Lcom/android/settings/settingssearch/SettingsSearchUtils$SettingsSearchFilterMenu;->addRemovePreferenceKey(Ljava/lang/String;)V

    .line 9218
    const-string v12, "lock_screen_myprofile_settings"

    invoke-direct {p0, v12}, Lcom/android/settings/settingssearch/SettingsSearchUtils$SettingsSearchFilterMenu;->addRemovePreferenceKey(Ljava/lang/String;)V

    .line 9219
    const-string v12, "owner_info_settings"

    invoke-direct {p0, v12}, Lcom/android/settings/settingssearch/SettingsSearchUtils$SettingsSearchFilterMenu;->addRemovePreferenceKey(Ljava/lang/String;)V

    .line 9220
    const-string v12, "biometric_weak_improve_matching"

    invoke-direct {p0, v12}, Lcom/android/settings/settingssearch/SettingsSearchUtils$SettingsSearchFilterMenu;->addRemovePreferenceKey(Ljava/lang/String;)V

    .line 9221
    const-string v12, "visiblepattern"

    invoke-direct {p0, v12}, Lcom/android/settings/settingssearch/SettingsSearchUtils$SettingsSearchFilterMenu;->addRemovePreferenceKey(Ljava/lang/String;)V

    .line 9222
    const-string v12, "unlock_effect"

    invoke-direct {p0, v12}, Lcom/android/settings/settingssearch/SettingsSearchUtils$SettingsSearchFilterMenu;->addRemovePreferenceKey(Ljava/lang/String;)V

    .line 9223
    const-string v12, "unlock_effect_with_preview"

    invoke-direct {p0, v12}, Lcom/android/settings/settingssearch/SettingsSearchUtils$SettingsSearchFilterMenu;->addRemovePreferenceKey(Ljava/lang/String;)V

    .line 9224
    const-string v12, "ink_effect"

    invoke-direct {p0, v12}, Lcom/android/settings/settingssearch/SettingsSearchUtils$SettingsSearchFilterMenu;->addRemovePreferenceKey(Ljava/lang/String;)V

    .line 9225
    const-string v12, "lock_screen_wakeup_settings"

    invoke-direct {p0, v12}, Lcom/android/settings/settingssearch/SettingsSearchUtils$SettingsSearchFilterMenu;->addRemovePreferenceKey(Ljava/lang/String;)V

    .line 9226
    const-string v12, "lock_after_timeout"

    invoke-direct {p0, v12}, Lcom/android/settings/settingssearch/SettingsSearchUtils$SettingsSearchFilterMenu;->addRemovePreferenceKey(Ljava/lang/String;)V

    .line 9227
    const-string v12, "power_button_instantly_locks"

    invoke-direct {p0, v12}, Lcom/android/settings/settingssearch/SettingsSearchUtils$SettingsSearchFilterMenu;->addRemovePreferenceKey(Ljava/lang/String;)V

    .line 9228
    const-string v12, "quick_note"

    invoke-direct {p0, v12}, Lcom/android/settings/settingssearch/SettingsSearchUtils$SettingsSearchFilterMenu;->addRemovePreferenceKey(Ljava/lang/String;)V

    .line 9229
    const-string v12, "help_text"

    invoke-direct {p0, v12}, Lcom/android/settings/settingssearch/SettingsSearchUtils$SettingsSearchFilterMenu;->addRemovePreferenceKey(Ljava/lang/String;)V

    .line 9230
    const-string v12, "visiblesignature"

    invoke-direct {p0, v12}, Lcom/android/settings/settingssearch/SettingsSearchUtils$SettingsSearchFilterMenu;->addRemovePreferenceKey(Ljava/lang/String;)V

    .line 9231
    const-string v12, "signature_verification_level"

    invoke-direct {p0, v12}, Lcom/android/settings/settingssearch/SettingsSearchUtils$SettingsSearchFilterMenu;->addRemovePreferenceKey(Ljava/lang/String;)V

    .line 9232
    const-string v12, "lock_screen_magazine_card"

    invoke-direct {p0, v12}, Lcom/android/settings/settingssearch/SettingsSearchUtils$SettingsSearchFilterMenu;->addRemovePreferenceKey(Ljava/lang/String;)V

    .line 9233
    const-string v12, "additional_information"

    invoke-direct {p0, v12}, Lcom/android/settings/settingssearch/SettingsSearchUtils$SettingsSearchFilterMenu;->addRemovePreferenceKey(Ljava/lang/String;)V

    .line 9234
    const-string v12, "lock_info_weather"

    invoke-direct {p0, v12}, Lcom/android/settings/settingssearch/SettingsSearchUtils$SettingsSearchFilterMenu;->addRemovePreferenceKey(Ljava/lang/String;)V

    .line 9235
    const-string v12, "upcoming_event"

    invoke-direct {p0, v12}, Lcom/android/settings/settingssearch/SettingsSearchUtils$SettingsSearchFilterMenu;->addRemovePreferenceKey(Ljava/lang/String;)V

    .line 9236
    const-string v12, "steps"

    invoke-direct {p0, v12}, Lcom/android/settings/settingssearch/SettingsSearchUtils$SettingsSearchFilterMenu;->addRemovePreferenceKey(Ljava/lang/String;)V

    .line 9237
    const-string v12, "dualclock_settings"

    invoke-direct {p0, v12}, Lcom/android/settings/settingssearch/SettingsSearchUtils$SettingsSearchFilterMenu;->addRemovePreferenceKey(Ljava/lang/String;)V

    .line 9238
    const-string v12, "homecity_timezone"

    invoke-direct {p0, v12}, Lcom/android/settings/settingssearch/SettingsSearchUtils$SettingsSearchFilterMenu;->addRemovePreferenceKey(Ljava/lang/String;)V

    .line 9239
    const-string v12, "vibration_feedback"

    invoke-direct {p0, v12}, Lcom/android/settings/settingssearch/SettingsSearchUtils$SettingsSearchFilterMenu;->addRemovePreferenceKey(Ljava/lang/String;)V

    .line 9240
    const-string v12, "lock_screen_camera_shortcut"

    invoke-direct {p0, v12}, Lcom/android/settings/settingssearch/SettingsSearchUtils$SettingsSearchFilterMenu;->addRemovePreferenceKey(Ljava/lang/String;)V

    .line 9241
    const-string v12, "clock_size"

    invoke-direct {p0, v12}, Lcom/android/settings/settingssearch/SettingsSearchUtils$SettingsSearchFilterMenu;->addRemovePreferenceKey(Ljava/lang/String;)V

    .line 9242
    const-string v12, "clock_size_with_preview"

    invoke-direct {p0, v12}, Lcom/android/settings/settingssearch/SettingsSearchUtils$SettingsSearchFilterMenu;->addRemovePreferenceKey(Ljava/lang/String;)V

    .line 9243
    const-string v12, "show_information"

    invoke-direct {p0, v12}, Lcom/android/settings/settingssearch/SettingsSearchUtils$SettingsSearchFilterMenu;->addRemovePreferenceKey(Ljava/lang/String;)V

    .line 9244
    const-string v12, "pattern_type"

    invoke-direct {p0, v12}, Lcom/android/settings/settingssearch/SettingsSearchUtils$SettingsSearchFilterMenu;->addRemovePreferenceKey(Ljava/lang/String;)V

    .line 9245
    const-string v12, "pattern_type_with_preview"

    invoke-direct {p0, v12}, Lcom/android/settings/settingssearch/SettingsSearchUtils$SettingsSearchFilterMenu;->addRemovePreferenceKey(Ljava/lang/String;)V

    .line 9246
    const-string v12, "health_info_panel"

    invoke-direct {p0, v12}, Lcom/android/settings/settingssearch/SettingsSearchUtils$SettingsSearchFilterMenu;->addRemovePreferenceKey(Ljava/lang/String;)V

    .line 9247
    const-string v12, "auto_swipe"

    invoke-direct {p0, v12}, Lcom/android/settings/settingssearch/SettingsSearchUtils$SettingsSearchFilterMenu;->addRemovePreferenceKey(Ljava/lang/String;)V

    .line 9507
    :goto_0
    :sswitch_0
    iget-object v12, p0, Lcom/android/settings/settingssearch/SettingsSearchUtils$SettingsSearchFilterMenu;->mContext:Landroid/content/Context;

    invoke-virtual {v12}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v12

    const-string v13, "easy_mode_switch"

    invoke-static {v12, v13, v10}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v12

    if-nez v12, :cond_0

    .line 9508
    const v12, 0x7f1006f8

    invoke-static {v12}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v12

    invoke-direct {p0, v12}, Lcom/android/settings/settingssearch/SettingsSearchUtils$SettingsSearchFilterMenu;->addRemovePreferenceKey(Ljava/lang/String;)V

    .line 9509
    const v12, 0x7f1006a1

    invoke-static {v12}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v12

    invoke-direct {p0, v12}, Lcom/android/settings/settingssearch/SettingsSearchUtils$SettingsSearchFilterMenu;->addRemovePreferenceKey(Ljava/lang/String;)V

    .line 9513
    :cond_0
    const/4 v3, 0x0

    .line 9514
    .local v3, "isDisabledSvoice":Z
    iget-object v12, p0, Lcom/android/settings/settingssearch/SettingsSearchUtils$SettingsSearchFilterMenu;->mContext:Landroid/content/Context;

    invoke-virtual {v12}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v8

    .line 9516
    .local v8, "packMgr":Landroid/content/pm/PackageManager;
    if-eqz v8, :cond_2

    .line 9517
    :try_start_0
    const-string v12, "com.vlingo.midas"

    const/4 v13, 0x1

    invoke-virtual {v8, v12, v13}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    .line 9518
    const-string v12, "com.vlingo.midas"

    invoke-virtual {v8, v12}, Landroid/content/pm/PackageManager;->getApplicationEnabledSetting(Ljava/lang/String;)I

    move-result v12

    const/4 v13, 0x2

    if-eq v12, v13, :cond_1

    const-string v12, "com.vlingo.midas"

    invoke-virtual {v8, v12}, Landroid/content/pm/PackageManager;->getApplicationEnabledSetting(Ljava/lang/String;)I
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_2

    move-result v12

    const/4 v13, 0x3

    if-ne v12, v13, :cond_2

    .line 9520
    :cond_1
    const/4 v3, 0x1

    .line 9525
    :cond_2
    :goto_1
    const/4 v4, 0x1

    .line 9527
    .local v4, "isSVoiceInstalled":Z
    :try_start_1
    iget-object v12, p0, Lcom/android/settings/settingssearch/SettingsSearchUtils$SettingsSearchFilterMenu;->mContext:Landroid/content/Context;

    invoke-virtual {v12}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v12

    const-string v13, "com.vlingo.midas"

    const/4 v14, 0x0

    invoke-virtual {v12, v13, v14}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    .line 9528
    const-string v12, "SettingSearch/SettingsSearchUtils"

    const-string v13, "SVoice is installed."

    invoke-static {v12, v13}, Landroid/util/secutil/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_1 .. :try_end_1} :catch_0

    .line 9533
    :goto_2
    if-eqz v4, :cond_3

    if-eqz v3, :cond_4

    .line 9534
    :cond_3
    const-string v12, "SettingSearch/SettingsSearchUtils"

    const-string v13, "svoice_settings is disabled"

    invoke-static {v12, v13}, Landroid/util/secutil/Log;->secI(Ljava/lang/String;Ljava/lang/String;)I

    .line 9535
    const v12, 0x7f1006a2

    invoke-static {v12}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v12

    invoke-direct {p0, v12}, Lcom/android/settings/settingssearch/SettingsSearchUtils$SettingsSearchFilterMenu;->addRemovePreferenceKey(Ljava/lang/String;)V

    .line 9539
    :cond_4
    invoke-static {}, Lcom/android/settings/Utils;->DisableCloud()Z

    move-result v12

    if-nez v12, :cond_5

    .line 9541
    :try_start_2
    iget-object v12, p0, Lcom/android/settings/settingssearch/SettingsSearchUtils$SettingsSearchFilterMenu;->mContext:Landroid/content/Context;

    invoke-virtual {v12}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v12

    const-string v13, "com.sec.android.cloudagent"

    const/4 v14, 0x5

    invoke-virtual {v12, v13, v14}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;
    :try_end_2
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_2 .. :try_end_2} :catch_1

    .line 9548
    :cond_5
    :goto_3
    iget-object v12, p0, Lcom/android/settings/settingssearch/SettingsSearchUtils$SettingsSearchFilterMenu;->mContext:Landroid/content/Context;

    invoke-virtual {v12}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v12

    const-string v13, "wmanager_connected"

    invoke-static {v12, v13, v11}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v9

    .line 9549
    .local v9, "state":I
    if-ne v9, v10, :cond_1c

    .line 9558
    :goto_4
    invoke-static {}, Lcom/android/settings/Utils;->isMultisimModel()Z

    move-result v12

    if-eqz v12, :cond_1d

    .line 9559
    const-string v12, "sim_toggle"

    invoke-direct {p0, v12}, Lcom/android/settings/settingssearch/SettingsSearchUtils$SettingsSearchFilterMenu;->addRemovePreferenceKey(Ljava/lang/String;)V

    .line 9560
    const-string v12, "sim_pin"

    invoke-direct {p0, v12}, Lcom/android/settings/settingssearch/SettingsSearchUtils$SettingsSearchFilterMenu;->addRemovePreferenceKey(Ljava/lang/String;)V

    .line 9577
    :cond_6
    :goto_5
    iget-object v12, p0, Lcom/android/settings/settingssearch/SettingsSearchUtils$SettingsSearchFilterMenu;->mContext:Landroid/content/Context;

    invoke-virtual {v12}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v12

    const-string v13, "default_input_method"

    invoke-static {v12, v13}, Landroid/provider/Settings$Secure;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 9578
    .local v2, "inputMethodId":Ljava/lang/String;
    const-string v12, "com.sec.android.inputmethod/.SamsungKeypad"

    invoke-virtual {v12, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-nez v12, :cond_7

    .line 9579
    const-string v12, "sip_feedback_sound"

    invoke-direct {p0, v12}, Lcom/android/settings/settingssearch/SettingsSearchUtils$SettingsSearchFilterMenu;->addRemovePreferenceKey(Ljava/lang/String;)V

    .line 9580
    const-string v12, "sip_feedback_vibration"

    invoke-direct {p0, v12}, Lcom/android/settings/settingssearch/SettingsSearchUtils$SettingsSearchFilterMenu;->addRemovePreferenceKey(Ljava/lang/String;)V

    .line 9584
    :cond_7
    iget-object v12, p0, Lcom/android/settings/settingssearch/SettingsSearchUtils$SettingsSearchFilterMenu;->mContext:Landroid/content/Context;

    invoke-virtual {v12}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v12

    const-string v13, "access_control_use"

    invoke-static {v12, v13, v11}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v12

    if-nez v12, :cond_8

    .line 9586
    const-string v12, "direct_accesscontrol"

    invoke-direct {p0, v12}, Lcom/android/settings/settingssearch/SettingsSearchUtils$SettingsSearchFilterMenu;->addRemovePreferenceKey(Ljava/lang/String;)V

    .line 9592
    :cond_8
    const-string v12, "captioning_typeface"

    invoke-direct {p0, v12}, Lcom/android/settings/settingssearch/SettingsSearchUtils$SettingsSearchFilterMenu;->addRemovePreferenceKey(Ljava/lang/String;)V

    .line 9593
    const-string v12, "captioning_foreground_color"

    invoke-direct {p0, v12}, Lcom/android/settings/settingssearch/SettingsSearchUtils$SettingsSearchFilterMenu;->addRemovePreferenceKey(Ljava/lang/String;)V

    .line 9594
    const-string v12, "captioning_edge_type"

    invoke-direct {p0, v12}, Lcom/android/settings/settingssearch/SettingsSearchUtils$SettingsSearchFilterMenu;->addRemovePreferenceKey(Ljava/lang/String;)V

    .line 9595
    const-string v12, "captioning_edge_color"

    invoke-direct {p0, v12}, Lcom/android/settings/settingssearch/SettingsSearchUtils$SettingsSearchFilterMenu;->addRemovePreferenceKey(Ljava/lang/String;)V

    .line 9596
    const-string v12, "captioning_background_color"

    invoke-direct {p0, v12}, Lcom/android/settings/settingssearch/SettingsSearchUtils$SettingsSearchFilterMenu;->addRemovePreferenceKey(Ljava/lang/String;)V

    .line 9597
    const-string v12, "captioning_background_opacity"

    invoke-direct {p0, v12}, Lcom/android/settings/settingssearch/SettingsSearchUtils$SettingsSearchFilterMenu;->addRemovePreferenceKey(Ljava/lang/String;)V

    .line 9598
    const-string v12, "captioning_foreground_opacity"

    invoke-direct {p0, v12}, Lcom/android/settings/settingssearch/SettingsSearchUtils$SettingsSearchFilterMenu;->addRemovePreferenceKey(Ljava/lang/String;)V

    .line 9600
    const-string v12, "captioning_window_color"

    invoke-direct {p0, v12}, Lcom/android/settings/settingssearch/SettingsSearchUtils$SettingsSearchFilterMenu;->addRemovePreferenceKey(Ljava/lang/String;)V

    .line 9601
    const-string v12, "captioning_window_opacity"

    invoke-direct {p0, v12}, Lcom/android/settings/settingssearch/SettingsSearchUtils$SettingsSearchFilterMenu;->addRemovePreferenceKey(Ljava/lang/String;)V

    .line 9605
    const/4 v6, 0x0

    .line 9607
    .local v6, "mIsEmerMode":Z
    iget-object v12, p0, Lcom/android/settings/settingssearch/SettingsSearchUtils$SettingsSearchFilterMenu;->mContext:Landroid/content/Context;

    invoke-static {v12}, Lcom/sec/android/emergencymode/EmergencyManager;->getInstance(Landroid/content/Context;)Lcom/sec/android/emergencymode/EmergencyManager;

    move-result-object v1

    .line 9608
    .local v1, "em":Lcom/sec/android/emergencymode/EmergencyManager;
    invoke-virtual {v1}, Lcom/sec/android/emergencymode/EmergencyManager;->isEmergencyMode()Z

    move-result v12

    if-eqz v12, :cond_9

    .line 9609
    const/4 v6, 0x1

    .line 9612
    :cond_9
    if-eqz v6, :cond_a

    .line 9613
    const-string v12, "ringtone"

    invoke-direct {p0, v12}, Lcom/android/settings/settingssearch/SettingsSearchUtils$SettingsSearchFilterMenu;->addRemovePreferenceKey(Ljava/lang/String;)V

    .line 9614
    const-string v12, "phone_vibration"

    invoke-direct {p0, v12}, Lcom/android/settings/settingssearch/SettingsSearchUtils$SettingsSearchFilterMenu;->addRemovePreferenceKey(Ljava/lang/String;)V

    .line 9615
    const-string v12, "notification_sound"

    invoke-direct {p0, v12}, Lcom/android/settings/settingssearch/SettingsSearchUtils$SettingsSearchFilterMenu;->addRemovePreferenceKey(Ljava/lang/String;)V

    .line 9616
    const-string v12, "vibrate_when_ringing"

    invoke-direct {p0, v12}, Lcom/android/settings/settingssearch/SettingsSearchUtils$SettingsSearchFilterMenu;->addRemovePreferenceKey(Ljava/lang/String;)V

    .line 9617
    const-string v12, "dtmf_tone"

    invoke-direct {p0, v12}, Lcom/android/settings/settingssearch/SettingsSearchUtils$SettingsSearchFilterMenu;->addRemovePreferenceKey(Ljava/lang/String;)V

    .line 9618
    const-string v12, "sound_effects"

    invoke-direct {p0, v12}, Lcom/android/settings/settingssearch/SettingsSearchUtils$SettingsSearchFilterMenu;->addRemovePreferenceKey(Ljava/lang/String;)V

    .line 9619
    const-string v12, "lock_sounds"

    invoke-direct {p0, v12}, Lcom/android/settings/settingssearch/SettingsSearchUtils$SettingsSearchFilterMenu;->addRemovePreferenceKey(Ljava/lang/String;)V

    .line 9620
    const-string v12, "gps_notification_sounds"

    invoke-direct {p0, v12}, Lcom/android/settings/settingssearch/SettingsSearchUtils$SettingsSearchFilterMenu;->addRemovePreferenceKey(Ljava/lang/String;)V

    .line 9621
    const-string v12, "haptic_feedback"

    invoke-direct {p0, v12}, Lcom/android/settings/settingssearch/SettingsSearchUtils$SettingsSearchFilterMenu;->addRemovePreferenceKey(Ljava/lang/String;)V

    .line 9622
    const-string v12, "audio_output"

    invoke-direct {p0, v12}, Lcom/android/settings/settingssearch/SettingsSearchUtils$SettingsSearchFilterMenu;->addRemovePreferenceKey(Ljava/lang/String;)V

    .line 9623
    const-string v12, "musicfx"

    invoke-direct {p0, v12}, Lcom/android/settings/settingssearch/SettingsSearchUtils$SettingsSearchFilterMenu;->addRemovePreferenceKey(Ljava/lang/String;)V

    .line 9624
    const-string v12, "my_sound"

    invoke-direct {p0, v12}, Lcom/android/settings/settingssearch/SettingsSearchUtils$SettingsSearchFilterMenu;->addRemovePreferenceKey(Ljava/lang/String;)V

    .line 9625
    const-string v12, "sound_call"

    invoke-direct {p0, v12}, Lcom/android/settings/settingssearch/SettingsSearchUtils$SettingsSearchFilterMenu;->addRemovePreferenceKey(Ljava/lang/String;)V

    .line 9626
    const-string v12, "sound_message"

    invoke-direct {p0, v12}, Lcom/android/settings/settingssearch/SettingsSearchUtils$SettingsSearchFilterMenu;->addRemovePreferenceKey(Ljava/lang/String;)V

    .line 9627
    const-string v12, "sound_email"

    invoke-direct {p0, v12}, Lcom/android/settings/settingssearch/SettingsSearchUtils$SettingsSearchFilterMenu;->addRemovePreferenceKey(Ljava/lang/String;)V

    .line 9628
    const-string v12, "sound_splanner"

    invoke-direct {p0, v12}, Lcom/android/settings/settingssearch/SettingsSearchUtils$SettingsSearchFilterMenu;->addRemovePreferenceKey(Ljava/lang/String;)V

    .line 9629
    const-string v12, "sip_feedback_sound"

    invoke-direct {p0, v12}, Lcom/android/settings/settingssearch/SettingsSearchUtils$SettingsSearchFilterMenu;->addRemovePreferenceKey(Ljava/lang/String;)V

    .line 9630
    const-string v12, "sip_feedback_vibration"

    invoke-direct {p0, v12}, Lcom/android/settings/settingssearch/SettingsSearchUtils$SettingsSearchFilterMenu;->addRemovePreferenceKey(Ljava/lang/String;)V

    .line 9633
    :cond_a
    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v12

    if-eqz v12, :cond_1f

    move v5, v10

    .line 9635
    .local v5, "isSecondaryUser":Z
    :goto_6
    if-nez v5, :cond_b

    iget-object v12, p0, Lcom/android/settings/settingssearch/SettingsSearchUtils$SettingsSearchFilterMenu;->mContext:Landroid/content/Context;

    invoke-static {v12}, Lcom/android/settings/Utils;->isWifiOnly(Landroid/content/Context;)Z

    move-result v12

    if-eqz v12, :cond_20

    .line 9636
    :cond_b
    const-string v10, "roaming_settings"

    invoke-direct {p0, v10}, Lcom/android/settings/settingssearch/SettingsSearchUtils$SettingsSearchFilterMenu;->addRemovePreferenceKey(Ljava/lang/String;)V

    .line 9643
    :cond_c
    :goto_7
    if-eqz v5, :cond_d

    .line 9644
    const-string v10, "lockscreen_wallpaper"

    invoke-direct {p0, v10}, Lcom/android/settings/settingssearch/SettingsSearchUtils$SettingsSearchFilterMenu;->addRemovePreferenceKey(Ljava/lang/String;)V

    .line 9645
    const-string v10, "both_wallpaper"

    invoke-direct {p0, v10}, Lcom/android/settings/settingssearch/SettingsSearchUtils$SettingsSearchFilterMenu;->addRemovePreferenceKey(Ljava/lang/String;)V

    .line 9649
    :cond_d
    iget-object v10, p0, Lcom/android/settings/settingssearch/SettingsSearchUtils$SettingsSearchFilterMenu;->mContext:Landroid/content/Context;

    # invokes: Lcom/android/settings/settingssearch/SettingsSearchUtils;->samsungAccountExists(Landroid/content/Context;)Z
    invoke-static {v10}, Lcom/android/settings/settingssearch/SettingsSearchUtils;->access$400(Landroid/content/Context;)Z

    move-result v10

    if-eqz v10, :cond_e

    .line 9650
    const-string v10, "pref_add_samsung_account"

    invoke-direct {p0, v10}, Lcom/android/settings/settingssearch/SettingsSearchUtils$SettingsSearchFilterMenu;->addRemovePreferenceKey(Ljava/lang/String;)V

    .line 9654
    :cond_e
    iget-object v10, p0, Lcom/android/settings/settingssearch/SettingsSearchUtils$SettingsSearchFilterMenu;->mContext:Landroid/content/Context;

    invoke-static {v10}, Lcom/android/settings/Utils;->isCoverVerified(Landroid/content/Context;)Z

    move-result v10

    if-nez v10, :cond_21

    .line 9655
    const-string v10, "sview_color"

    invoke-direct {p0, v10}, Lcom/android/settings/settingssearch/SettingsSearchUtils$SettingsSearchFilterMenu;->addRemovePreferenceKey(Ljava/lang/String;)V

    .line 9656
    const-string v10, "sview_color_2014"

    invoke-direct {p0, v10}, Lcom/android/settings/settingssearch/SettingsSearchUtils$SettingsSearchFilterMenu;->addRemovePreferenceKey(Ljava/lang/String;)V

    .line 9657
    const-string v10, "sview_mini_wallpaper"

    invoke-direct {p0, v10}, Lcom/android/settings/settingssearch/SettingsSearchUtils$SettingsSearchFilterMenu;->addRemovePreferenceKey(Ljava/lang/String;)V

    .line 9658
    const-string v10, "sview_style_clock"

    invoke-direct {p0, v10}, Lcom/android/settings/settingssearch/SettingsSearchUtils$SettingsSearchFilterMenu;->addRemovePreferenceKey(Ljava/lang/String;)V

    .line 9659
    const-string v10, "sview_edge_cover_settings"

    invoke-direct {p0, v10}, Lcom/android/settings/settingssearch/SettingsSearchUtils$SettingsSearchFilterMenu;->addRemovePreferenceKey(Ljava/lang/String;)V

    .line 9660
    const-string v10, "select_info"

    invoke-direct {p0, v10}, Lcom/android/settings/settingssearch/SettingsSearchUtils$SettingsSearchFilterMenu;->addRemovePreferenceKey(Ljava/lang/String;)V

    .line 9661
    const-string v10, "weather"

    invoke-direct {p0, v10}, Lcom/android/settings/settingssearch/SettingsSearchUtils$SettingsSearchFilterMenu;->addRemovePreferenceKey(Ljava/lang/String;)V

    .line 9662
    const-string v10, "weather_tmr"

    invoke-direct {p0, v10}, Lcom/android/settings/settingssearch/SettingsSearchUtils$SettingsSearchFilterMenu;->addRemovePreferenceKey(Ljava/lang/String;)V

    .line 9663
    const-string v10, "walking_mate"

    invoke-direct {p0, v10}, Lcom/android/settings/settingssearch/SettingsSearchUtils$SettingsSearchFilterMenu;->addRemovePreferenceKey(Ljava/lang/String;)V

    .line 9664
    const-string v10, "scover_airmessage"

    invoke-direct {p0, v10}, Lcom/android/settings/settingssearch/SettingsSearchUtils$SettingsSearchFilterMenu;->addRemovePreferenceKey(Ljava/lang/String;)V

    .line 9665
    const-string v10, "automatic_unlock"

    invoke-direct {p0, v10}, Lcom/android/settings/settingssearch/SettingsSearchUtils$SettingsSearchFilterMenu;->addRemovePreferenceKey(Ljava/lang/String;)V

    .line 9666
    const-string v10, "show_in_call_screen"

    invoke-direct {p0, v10}, Lcom/android/settings/settingssearch/SettingsSearchUtils$SettingsSearchFilterMenu;->addRemovePreferenceKey(Ljava/lang/String;)V

    .line 9676
    :goto_8
    invoke-static {}, Landroid/app/ActivityManager;->getCurrentUser()I

    move-result v10

    if-eqz v10, :cond_f

    .line 9677
    const-string v10, "share_acc_setting_menu"

    invoke-direct {p0, v10}, Lcom/android/settings/settingssearch/SettingsSearchUtils$SettingsSearchFilterMenu;->addRemovePreferenceKey(Ljava/lang/String;)V

    .line 9678
    const-string v10, "shared_accessibility_export_import"

    invoke-direct {p0, v10}, Lcom/android/settings/settingssearch/SettingsSearchUtils$SettingsSearchFilterMenu;->addRemovePreferenceKey(Ljava/lang/String;)V

    .line 9679
    const-string v10, "shared_accessibility_share"

    invoke-direct {p0, v10}, Lcom/android/settings/settingssearch/SettingsSearchUtils$SettingsSearchFilterMenu;->addRemovePreferenceKey(Ljava/lang/String;)V

    .line 9681
    :cond_f
    return-void

    .line 9249
    .end local v1    # "em":Lcom/sec/android/emergencymode/EmergencyManager;
    .end local v2    # "inputMethodId":Ljava/lang/String;
    .end local v3    # "isDisabledSvoice":Z
    .end local v4    # "isSVoiceInstalled":Z
    .end local v5    # "isSecondaryUser":Z
    .end local v6    # "mIsEmerMode":Z
    .end local v8    # "packMgr":Landroid/content/pm/PackageManager;
    .end local v9    # "state":I
    :cond_10
    const-string v12, "lock_after_timeout"

    invoke-direct {p0, v12}, Lcom/android/settings/settingssearch/SettingsSearchUtils$SettingsSearchFilterMenu;->addRemovePreferenceKey(Ljava/lang/String;)V

    .line 9250
    const-string v12, "visiblepattern"

    invoke-direct {p0, v12}, Lcom/android/settings/settingssearch/SettingsSearchUtils$SettingsSearchFilterMenu;->addRemovePreferenceKey(Ljava/lang/String;)V

    .line 9251
    const-string v12, "power_button_instantly_locks"

    invoke-direct {p0, v12}, Lcom/android/settings/settingssearch/SettingsSearchUtils$SettingsSearchFilterMenu;->addRemovePreferenceKey(Ljava/lang/String;)V

    .line 9252
    const-string v12, "biometric_weak_improve_matching"

    invoke-direct {p0, v12}, Lcom/android/settings/settingssearch/SettingsSearchUtils$SettingsSearchFilterMenu;->addRemovePreferenceKey(Ljava/lang/String;)V

    .line 9253
    const-string v12, "visiblesignature"

    invoke-direct {p0, v12}, Lcom/android/settings/settingssearch/SettingsSearchUtils$SettingsSearchFilterMenu;->addRemovePreferenceKey(Ljava/lang/String;)V

    .line 9254
    const-string v12, "signature_verification_level"

    invoke-direct {p0, v12}, Lcom/android/settings/settingssearch/SettingsSearchUtils$SettingsSearchFilterMenu;->addRemovePreferenceKey(Ljava/lang/String;)V

    .line 9255
    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v12

    if-eqz v12, :cond_11

    .line 9256
    const-string v12, "unlock_effect"

    invoke-direct {p0, v12}, Lcom/android/settings/settingssearch/SettingsSearchUtils$SettingsSearchFilterMenu;->addRemovePreferenceKey(Ljava/lang/String;)V

    .line 9257
    const-string v12, "unlock_effect_with_preview"

    invoke-direct {p0, v12}, Lcom/android/settings/settingssearch/SettingsSearchUtils$SettingsSearchFilterMenu;->addRemovePreferenceKey(Ljava/lang/String;)V

    .line 9258
    const-string v12, "ink_effect"

    invoke-direct {p0, v12}, Lcom/android/settings/settingssearch/SettingsSearchUtils$SettingsSearchFilterMenu;->addRemovePreferenceKey(Ljava/lang/String;)V

    .line 9260
    :cond_11
    const/4 v12, 0x0

    invoke-static {v12}, Lcom/android/settings/Utils;->isTablet(Landroid/content/Context;)Z

    move-result v12

    if-eqz v12, :cond_12

    .line 9261
    const-string v12, "clock_weather"

    invoke-direct {p0, v12}, Lcom/android/settings/settingssearch/SettingsSearchUtils$SettingsSearchFilterMenu;->addRemovePreferenceKey(Ljava/lang/String;)V

    .line 9262
    :cond_12
    const-string v12, "vibration_feedback"

    invoke-direct {p0, v12}, Lcom/android/settings/settingssearch/SettingsSearchUtils$SettingsSearchFilterMenu;->addRemovePreferenceKey(Ljava/lang/String;)V

    .line 9263
    const-string v12, "pattern_type"

    invoke-direct {p0, v12}, Lcom/android/settings/settingssearch/SettingsSearchUtils$SettingsSearchFilterMenu;->addRemovePreferenceKey(Ljava/lang/String;)V

    .line 9264
    const-string v12, "pattern_type_with_preview"

    invoke-direct {p0, v12}, Lcom/android/settings/settingssearch/SettingsSearchUtils$SettingsSearchFilterMenu;->addRemovePreferenceKey(Ljava/lang/String;)V

    .line 9265
    const-string v12, "auto_swipe"

    invoke-direct {p0, v12}, Lcom/android/settings/settingssearch/SettingsSearchUtils$SettingsSearchFilterMenu;->addRemovePreferenceKey(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 9267
    :cond_13
    invoke-virtual {v7}, Lcom/android/internal/widget/LockPatternUtils;->usingBiometricWeak()Z

    move-result v12

    if-eqz v12, :cond_14

    invoke-virtual {v7}, Lcom/android/internal/widget/LockPatternUtils;->isBiometricWeakInstalled()Z

    move-result v12

    if-eqz v12, :cond_14

    .line 9269
    const-string v12, "unlock_effect"

    invoke-direct {p0, v12}, Lcom/android/settings/settingssearch/SettingsSearchUtils$SettingsSearchFilterMenu;->addRemovePreferenceKey(Ljava/lang/String;)V

    .line 9270
    const-string v12, "unlock_effect_with_preview"

    invoke-direct {p0, v12}, Lcom/android/settings/settingssearch/SettingsSearchUtils$SettingsSearchFilterMenu;->addRemovePreferenceKey(Ljava/lang/String;)V

    .line 9271
    const-string v12, "ink_effect"

    invoke-direct {p0, v12}, Lcom/android/settings/settingssearch/SettingsSearchUtils$SettingsSearchFilterMenu;->addRemovePreferenceKey(Ljava/lang/String;)V

    .line 9272
    const-string v12, "lock_screen_wakeup_settings"

    invoke-direct {p0, v12}, Lcom/android/settings/settingssearch/SettingsSearchUtils$SettingsSearchFilterMenu;->addRemovePreferenceKey(Ljava/lang/String;)V

    .line 9273
    const-string v12, "multiple_lock_screenswitch"

    invoke-direct {p0, v12}, Lcom/android/settings/settingssearch/SettingsSearchUtils$SettingsSearchFilterMenu;->addRemovePreferenceKey(Ljava/lang/String;)V

    .line 9274
    const-string v12, "lock_screen_shortcut_menu"

    invoke-direct {p0, v12}, Lcom/android/settings/settingssearch/SettingsSearchUtils$SettingsSearchFilterMenu;->addRemovePreferenceKey(Ljava/lang/String;)V

    .line 9275
    const-string v12, "visiblepattern"

    invoke-direct {p0, v12}, Lcom/android/settings/settingssearch/SettingsSearchUtils$SettingsSearchFilterMenu;->addRemovePreferenceKey(Ljava/lang/String;)V

    .line 9276
    const-string v12, "help_text"

    invoke-direct {p0, v12}, Lcom/android/settings/settingssearch/SettingsSearchUtils$SettingsSearchFilterMenu;->addRemovePreferenceKey(Ljava/lang/String;)V

    .line 9277
    const-string v12, "visiblesignature"

    invoke-direct {p0, v12}, Lcom/android/settings/settingssearch/SettingsSearchUtils$SettingsSearchFilterMenu;->addRemovePreferenceKey(Ljava/lang/String;)V

    .line 9278
    const-string v12, "signature_verification_level"

    invoke-direct {p0, v12}, Lcom/android/settings/settingssearch/SettingsSearchUtils$SettingsSearchFilterMenu;->addRemovePreferenceKey(Ljava/lang/String;)V

    .line 9279
    const-string v12, "additional_information"

    invoke-direct {p0, v12}, Lcom/android/settings/settingssearch/SettingsSearchUtils$SettingsSearchFilterMenu;->addRemovePreferenceKey(Ljava/lang/String;)V

    .line 9280
    const-string v12, "lock_info_weather"

    invoke-direct {p0, v12}, Lcom/android/settings/settingssearch/SettingsSearchUtils$SettingsSearchFilterMenu;->addRemovePreferenceKey(Ljava/lang/String;)V

    .line 9281
    const-string v12, "upcoming_event"

    invoke-direct {p0, v12}, Lcom/android/settings/settingssearch/SettingsSearchUtils$SettingsSearchFilterMenu;->addRemovePreferenceKey(Ljava/lang/String;)V

    .line 9282
    const-string v12, "steps"

    invoke-direct {p0, v12}, Lcom/android/settings/settingssearch/SettingsSearchUtils$SettingsSearchFilterMenu;->addRemovePreferenceKey(Ljava/lang/String;)V

    .line 9283
    const-string v12, "vibration_feedback"

    invoke-direct {p0, v12}, Lcom/android/settings/settingssearch/SettingsSearchUtils$SettingsSearchFilterMenu;->addRemovePreferenceKey(Ljava/lang/String;)V

    .line 9287
    const-string v12, "pattern_type"

    invoke-direct {p0, v12}, Lcom/android/settings/settingssearch/SettingsSearchUtils$SettingsSearchFilterMenu;->addRemovePreferenceKey(Ljava/lang/String;)V

    .line 9288
    const-string v12, "pattern_type_with_preview"

    invoke-direct {p0, v12}, Lcom/android/settings/settingssearch/SettingsSearchUtils$SettingsSearchFilterMenu;->addRemovePreferenceKey(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 9310
    :cond_14
    invoke-virtual {v7}, Lcom/android/internal/widget/LockPatternUtils;->getKeyguardStoredPasswordQuality()I

    move-result v12

    sparse-switch v12, :sswitch_data_0

    goto/16 :goto_0

    .line 9312
    :sswitch_1
    const-string v12, "biometric_weak_improve_matching"

    invoke-direct {p0, v12}, Lcom/android/settings/settingssearch/SettingsSearchUtils$SettingsSearchFilterMenu;->addRemovePreferenceKey(Ljava/lang/String;)V

    .line 9313
    const-string v12, "NONE,ABSTRACTTILES,POPPINGCOLOURS,WATERCOLOUR,RIPPLE"

    const-string v13, "WATERCOLOUR"

    invoke-virtual {v12, v13}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v12

    if-eqz v12, :cond_15

    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v12

    if-eqz v12, :cond_16

    .line 9314
    :cond_15
    const-string v12, "unlock_effect"

    invoke-direct {p0, v12}, Lcom/android/settings/settingssearch/SettingsSearchUtils$SettingsSearchFilterMenu;->addRemovePreferenceKey(Ljava/lang/String;)V

    .line 9315
    const-string v12, "unlock_effect_with_preview"

    invoke-direct {p0, v12}, Lcom/android/settings/settingssearch/SettingsSearchUtils$SettingsSearchFilterMenu;->addRemovePreferenceKey(Ljava/lang/String;)V

    .line 9317
    :cond_16
    const-string v12, "ink_effect"

    invoke-direct {p0, v12}, Lcom/android/settings/settingssearch/SettingsSearchUtils$SettingsSearchFilterMenu;->addRemovePreferenceKey(Ljava/lang/String;)V

    .line 9318
    const-string v12, "lock_screen_wakeup_settings"

    invoke-direct {p0, v12}, Lcom/android/settings/settingssearch/SettingsSearchUtils$SettingsSearchFilterMenu;->addRemovePreferenceKey(Ljava/lang/String;)V

    .line 9319
    const-string v12, "multiple_lock_screenswitch"

    invoke-direct {p0, v12}, Lcom/android/settings/settingssearch/SettingsSearchUtils$SettingsSearchFilterMenu;->addRemovePreferenceKey(Ljava/lang/String;)V

    .line 9320
    const-string v12, "lock_screen_shortcut_menu"

    invoke-direct {p0, v12}, Lcom/android/settings/settingssearch/SettingsSearchUtils$SettingsSearchFilterMenu;->addRemovePreferenceKey(Ljava/lang/String;)V

    .line 9321
    const-string v12, "help_text"

    invoke-direct {p0, v12}, Lcom/android/settings/settingssearch/SettingsSearchUtils$SettingsSearchFilterMenu;->addRemovePreferenceKey(Ljava/lang/String;)V

    .line 9322
    const-string v12, "visiblesignature"

    invoke-direct {p0, v12}, Lcom/android/settings/settingssearch/SettingsSearchUtils$SettingsSearchFilterMenu;->addRemovePreferenceKey(Ljava/lang/String;)V

    .line 9323
    const-string v12, "signature_verification_level"

    invoke-direct {p0, v12}, Lcom/android/settings/settingssearch/SettingsSearchUtils$SettingsSearchFilterMenu;->addRemovePreferenceKey(Ljava/lang/String;)V

    .line 9324
    const-string v12, "clock_weather"

    invoke-direct {p0, v12}, Lcom/android/settings/settingssearch/SettingsSearchUtils$SettingsSearchFilterMenu;->addRemovePreferenceKey(Ljava/lang/String;)V

    .line 9325
    const-string v12, "additional_information"

    invoke-direct {p0, v12}, Lcom/android/settings/settingssearch/SettingsSearchUtils$SettingsSearchFilterMenu;->addRemovePreferenceKey(Ljava/lang/String;)V

    .line 9326
    const-string v12, "lock_info_weather"

    invoke-direct {p0, v12}, Lcom/android/settings/settingssearch/SettingsSearchUtils$SettingsSearchFilterMenu;->addRemovePreferenceKey(Ljava/lang/String;)V

    .line 9327
    const-string v12, "upcoming_event"

    invoke-direct {p0, v12}, Lcom/android/settings/settingssearch/SettingsSearchUtils$SettingsSearchFilterMenu;->addRemovePreferenceKey(Ljava/lang/String;)V

    .line 9328
    const-string v12, "steps"

    invoke-direct {p0, v12}, Lcom/android/settings/settingssearch/SettingsSearchUtils$SettingsSearchFilterMenu;->addRemovePreferenceKey(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 9334
    :sswitch_2
    const-string v12, "biometric_weak_improve_matching"

    invoke-direct {p0, v12}, Lcom/android/settings/settingssearch/SettingsSearchUtils$SettingsSearchFilterMenu;->addRemovePreferenceKey(Ljava/lang/String;)V

    .line 9335
    const-string v12, "unlock_effect"

    invoke-direct {p0, v12}, Lcom/android/settings/settingssearch/SettingsSearchUtils$SettingsSearchFilterMenu;->addRemovePreferenceKey(Ljava/lang/String;)V

    .line 9336
    const-string v12, "unlock_effect_with_preview"

    invoke-direct {p0, v12}, Lcom/android/settings/settingssearch/SettingsSearchUtils$SettingsSearchFilterMenu;->addRemovePreferenceKey(Ljava/lang/String;)V

    .line 9337
    const-string v12, "ink_effect"

    invoke-direct {p0, v12}, Lcom/android/settings/settingssearch/SettingsSearchUtils$SettingsSearchFilterMenu;->addRemovePreferenceKey(Ljava/lang/String;)V

    .line 9338
    const-string v12, "lock_screen_wakeup_settings"

    invoke-direct {p0, v12}, Lcom/android/settings/settingssearch/SettingsSearchUtils$SettingsSearchFilterMenu;->addRemovePreferenceKey(Ljava/lang/String;)V

    .line 9339
    const-string v12, "multiple_lock_screenswitch"

    invoke-direct {p0, v12}, Lcom/android/settings/settingssearch/SettingsSearchUtils$SettingsSearchFilterMenu;->addRemovePreferenceKey(Ljava/lang/String;)V

    .line 9340
    const-string v12, "lock_screen_shortcut_menu"

    invoke-direct {p0, v12}, Lcom/android/settings/settingssearch/SettingsSearchUtils$SettingsSearchFilterMenu;->addRemovePreferenceKey(Ljava/lang/String;)V

    .line 9341
    const-string v12, "visiblepattern"

    invoke-direct {p0, v12}, Lcom/android/settings/settingssearch/SettingsSearchUtils$SettingsSearchFilterMenu;->addRemovePreferenceKey(Ljava/lang/String;)V

    .line 9342
    const-string v12, "help_text"

    invoke-direct {p0, v12}, Lcom/android/settings/settingssearch/SettingsSearchUtils$SettingsSearchFilterMenu;->addRemovePreferenceKey(Ljava/lang/String;)V

    .line 9343
    const-string v12, "visiblesignature"

    invoke-direct {p0, v12}, Lcom/android/settings/settingssearch/SettingsSearchUtils$SettingsSearchFilterMenu;->addRemovePreferenceKey(Ljava/lang/String;)V

    .line 9344
    const-string v12, "signature_verification_level"

    invoke-direct {p0, v12}, Lcom/android/settings/settingssearch/SettingsSearchUtils$SettingsSearchFilterMenu;->addRemovePreferenceKey(Ljava/lang/String;)V

    .line 9345
    const-string v12, "additional_information"

    invoke-direct {p0, v12}, Lcom/android/settings/settingssearch/SettingsSearchUtils$SettingsSearchFilterMenu;->addRemovePreferenceKey(Ljava/lang/String;)V

    .line 9346
    const-string v12, "lock_info_weather"

    invoke-direct {p0, v12}, Lcom/android/settings/settingssearch/SettingsSearchUtils$SettingsSearchFilterMenu;->addRemovePreferenceKey(Ljava/lang/String;)V

    .line 9347
    const-string v12, "upcoming_event"

    invoke-direct {p0, v12}, Lcom/android/settings/settingssearch/SettingsSearchUtils$SettingsSearchFilterMenu;->addRemovePreferenceKey(Ljava/lang/String;)V

    .line 9348
    const-string v12, "steps"

    invoke-direct {p0, v12}, Lcom/android/settings/settingssearch/SettingsSearchUtils$SettingsSearchFilterMenu;->addRemovePreferenceKey(Ljava/lang/String;)V

    .line 9349
    const-string v12, "vibration_feedback"

    invoke-direct {p0, v12}, Lcom/android/settings/settingssearch/SettingsSearchUtils$SettingsSearchFilterMenu;->addRemovePreferenceKey(Ljava/lang/String;)V

    .line 9353
    const-string v12, "pattern_type"

    invoke-direct {p0, v12}, Lcom/android/settings/settingssearch/SettingsSearchUtils$SettingsSearchFilterMenu;->addRemovePreferenceKey(Ljava/lang/String;)V

    .line 9354
    const-string v12, "pattern_type_with_preview"

    invoke-direct {p0, v12}, Lcom/android/settings/settingssearch/SettingsSearchUtils$SettingsSearchFilterMenu;->addRemovePreferenceKey(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 9357
    :sswitch_3
    const-string v12, "biometric_weak_improve_matching"

    invoke-direct {p0, v12}, Lcom/android/settings/settingssearch/SettingsSearchUtils$SettingsSearchFilterMenu;->addRemovePreferenceKey(Ljava/lang/String;)V

    .line 9358
    const-string v12, "unlock_effect"

    invoke-direct {p0, v12}, Lcom/android/settings/settingssearch/SettingsSearchUtils$SettingsSearchFilterMenu;->addRemovePreferenceKey(Ljava/lang/String;)V

    .line 9359
    const-string v12, "unlock_effect_with_preview"

    invoke-direct {p0, v12}, Lcom/android/settings/settingssearch/SettingsSearchUtils$SettingsSearchFilterMenu;->addRemovePreferenceKey(Ljava/lang/String;)V

    .line 9360
    const-string v12, "ink_effect"

    invoke-direct {p0, v12}, Lcom/android/settings/settingssearch/SettingsSearchUtils$SettingsSearchFilterMenu;->addRemovePreferenceKey(Ljava/lang/String;)V

    .line 9361
    const-string v12, "lock_screen_wakeup_settings"

    invoke-direct {p0, v12}, Lcom/android/settings/settingssearch/SettingsSearchUtils$SettingsSearchFilterMenu;->addRemovePreferenceKey(Ljava/lang/String;)V

    .line 9362
    const-string v12, "multiple_lock_screenswitch"

    invoke-direct {p0, v12}, Lcom/android/settings/settingssearch/SettingsSearchUtils$SettingsSearchFilterMenu;->addRemovePreferenceKey(Ljava/lang/String;)V

    .line 9363
    const-string v12, "lock_screen_shortcut_menu"

    invoke-direct {p0, v12}, Lcom/android/settings/settingssearch/SettingsSearchUtils$SettingsSearchFilterMenu;->addRemovePreferenceKey(Ljava/lang/String;)V

    .line 9364
    const-string v12, "visiblepattern"

    invoke-direct {p0, v12}, Lcom/android/settings/settingssearch/SettingsSearchUtils$SettingsSearchFilterMenu;->addRemovePreferenceKey(Ljava/lang/String;)V

    .line 9365
    const-string v12, "help_text"

    invoke-direct {p0, v12}, Lcom/android/settings/settingssearch/SettingsSearchUtils$SettingsSearchFilterMenu;->addRemovePreferenceKey(Ljava/lang/String;)V

    .line 9366
    const-string v12, "visiblesignature"

    invoke-direct {p0, v12}, Lcom/android/settings/settingssearch/SettingsSearchUtils$SettingsSearchFilterMenu;->addRemovePreferenceKey(Ljava/lang/String;)V

    .line 9367
    const-string v12, "signature_verification_level"

    invoke-direct {p0, v12}, Lcom/android/settings/settingssearch/SettingsSearchUtils$SettingsSearchFilterMenu;->addRemovePreferenceKey(Ljava/lang/String;)V

    .line 9368
    const-string v12, "clock_weather"

    invoke-direct {p0, v12}, Lcom/android/settings/settingssearch/SettingsSearchUtils$SettingsSearchFilterMenu;->addRemovePreferenceKey(Ljava/lang/String;)V

    .line 9369
    const-string v12, "vibration_feedback"

    invoke-direct {p0, v12}, Lcom/android/settings/settingssearch/SettingsSearchUtils$SettingsSearchFilterMenu;->addRemovePreferenceKey(Ljava/lang/String;)V

    .line 9373
    const-string v12, "pattern_type"

    invoke-direct {p0, v12}, Lcom/android/settings/settingssearch/SettingsSearchUtils$SettingsSearchFilterMenu;->addRemovePreferenceKey(Ljava/lang/String;)V

    .line 9374
    const-string v12, "pattern_type_with_preview"

    invoke-direct {p0, v12}, Lcom/android/settings/settingssearch/SettingsSearchUtils$SettingsSearchFilterMenu;->addRemovePreferenceKey(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 9399
    :sswitch_4
    const-string v12, "biometric_weak_improve_matching"

    invoke-direct {p0, v12}, Lcom/android/settings/settingssearch/SettingsSearchUtils$SettingsSearchFilterMenu;->addRemovePreferenceKey(Ljava/lang/String;)V

    .line 9400
    const-string v12, "unlock_effect"

    invoke-direct {p0, v12}, Lcom/android/settings/settingssearch/SettingsSearchUtils$SettingsSearchFilterMenu;->addRemovePreferenceKey(Ljava/lang/String;)V

    .line 9401
    const-string v12, "unlock_effect_with_preview"

    invoke-direct {p0, v12}, Lcom/android/settings/settingssearch/SettingsSearchUtils$SettingsSearchFilterMenu;->addRemovePreferenceKey(Ljava/lang/String;)V

    .line 9402
    const-string v12, "ink_effect"

    invoke-direct {p0, v12}, Lcom/android/settings/settingssearch/SettingsSearchUtils$SettingsSearchFilterMenu;->addRemovePreferenceKey(Ljava/lang/String;)V

    .line 9403
    const-string v12, "lock_screen_wakeup_settings"

    invoke-direct {p0, v12}, Lcom/android/settings/settingssearch/SettingsSearchUtils$SettingsSearchFilterMenu;->addRemovePreferenceKey(Ljava/lang/String;)V

    .line 9404
    const-string v12, "multiple_lock_screenswitch"

    invoke-direct {p0, v12}, Lcom/android/settings/settingssearch/SettingsSearchUtils$SettingsSearchFilterMenu;->addRemovePreferenceKey(Ljava/lang/String;)V

    .line 9405
    const-string v12, "lock_screen_shortcut_menu"

    invoke-direct {p0, v12}, Lcom/android/settings/settingssearch/SettingsSearchUtils$SettingsSearchFilterMenu;->addRemovePreferenceKey(Ljava/lang/String;)V

    .line 9406
    const-string v12, "visiblepattern"

    invoke-direct {p0, v12}, Lcom/android/settings/settingssearch/SettingsSearchUtils$SettingsSearchFilterMenu;->addRemovePreferenceKey(Ljava/lang/String;)V

    .line 9407
    const-string v12, "help_text"

    invoke-direct {p0, v12}, Lcom/android/settings/settingssearch/SettingsSearchUtils$SettingsSearchFilterMenu;->addRemovePreferenceKey(Ljava/lang/String;)V

    .line 9408
    const-string v12, "visiblesignature"

    invoke-direct {p0, v12}, Lcom/android/settings/settingssearch/SettingsSearchUtils$SettingsSearchFilterMenu;->addRemovePreferenceKey(Ljava/lang/String;)V

    .line 9409
    const-string v12, "signature_verification_level"

    invoke-direct {p0, v12}, Lcom/android/settings/settingssearch/SettingsSearchUtils$SettingsSearchFilterMenu;->addRemovePreferenceKey(Ljava/lang/String;)V

    .line 9410
    const-string v12, "clock_weather"

    invoke-direct {p0, v12}, Lcom/android/settings/settingssearch/SettingsSearchUtils$SettingsSearchFilterMenu;->addRemovePreferenceKey(Ljava/lang/String;)V

    .line 9411
    const-string v12, "vibration_feedback"

    invoke-direct {p0, v12}, Lcom/android/settings/settingssearch/SettingsSearchUtils$SettingsSearchFilterMenu;->addRemovePreferenceKey(Ljava/lang/String;)V

    .line 9415
    const-string v12, "pattern_type"

    invoke-direct {p0, v12}, Lcom/android/settings/settingssearch/SettingsSearchUtils$SettingsSearchFilterMenu;->addRemovePreferenceKey(Ljava/lang/String;)V

    .line 9416
    const-string v12, "pattern_type_with_preview"

    invoke-direct {p0, v12}, Lcom/android/settings/settingssearch/SettingsSearchUtils$SettingsSearchFilterMenu;->addRemovePreferenceKey(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 9421
    :cond_17
    invoke-virtual {v7}, Lcom/android/internal/widget/LockPatternUtils;->isSecure()Z

    move-result v12

    if-nez v12, :cond_19

    .line 9422
    invoke-virtual {v7}, Lcom/android/internal/widget/LockPatternUtils;->isLockScreenDisabled()Z

    move-result v12

    if-eqz v12, :cond_18

    .line 9423
    const-string v12, "lock_screen_widget_options"

    invoke-direct {p0, v12}, Lcom/android/settings/settingssearch/SettingsSearchUtils$SettingsSearchFilterMenu;->addRemovePreferenceKey(Ljava/lang/String;)V

    .line 9424
    const-string v12, "lock_screen_shortcut_menu"

    invoke-direct {p0, v12}, Lcom/android/settings/settingssearch/SettingsSearchUtils$SettingsSearchFilterMenu;->addRemovePreferenceKey(Ljava/lang/String;)V

    .line 9425
    const-string v12, "safetyzone_settings"

    invoke-direct {p0, v12}, Lcom/android/settings/settingssearch/SettingsSearchUtils$SettingsSearchFilterMenu;->addRemovePreferenceKey(Ljava/lang/String;)V

    .line 9426
    const-string v12, "unlock_effect"

    invoke-direct {p0, v12}, Lcom/android/settings/settingssearch/SettingsSearchUtils$SettingsSearchFilterMenu;->addRemovePreferenceKey(Ljava/lang/String;)V

    .line 9427
    const-string v12, "unlock_effect_with_preview"

    invoke-direct {p0, v12}, Lcom/android/settings/settingssearch/SettingsSearchUtils$SettingsSearchFilterMenu;->addRemovePreferenceKey(Ljava/lang/String;)V

    .line 9428
    const-string v12, "help_text"

    invoke-direct {p0, v12}, Lcom/android/settings/settingssearch/SettingsSearchUtils$SettingsSearchFilterMenu;->addRemovePreferenceKey(Ljava/lang/String;)V

    .line 9429
    const-string v12, "say_your_wakeup"

    invoke-direct {p0, v12}, Lcom/android/settings/settingssearch/SettingsSearchUtils$SettingsSearchFilterMenu;->addRemovePreferenceKey(Ljava/lang/String;)V

    .line 9430
    const-string v12, "set_wakeup_command"

    invoke-direct {p0, v12}, Lcom/android/settings/settingssearch/SettingsSearchUtils$SettingsSearchFilterMenu;->addRemovePreferenceKey(Ljava/lang/String;)V

    .line 9431
    const-string v12, "multiple_lock_screen"

    invoke-direct {p0, v12}, Lcom/android/settings/settingssearch/SettingsSearchUtils$SettingsSearchFilterMenu;->addRemovePreferenceKey(Ljava/lang/String;)V

    .line 9432
    const-string v12, "biometric_weak_improve_matching"

    invoke-direct {p0, v12}, Lcom/android/settings/settingssearch/SettingsSearchUtils$SettingsSearchFilterMenu;->addRemovePreferenceKey(Ljava/lang/String;)V

    .line 9433
    const-string v12, "biometric_weak_liveliness"

    invoke-direct {p0, v12}, Lcom/android/settings/settingssearch/SettingsSearchUtils$SettingsSearchFilterMenu;->addRemovePreferenceKey(Ljava/lang/String;)V

    .line 9434
    const-string v12, "lock_after_timeout"

    invoke-direct {p0, v12}, Lcom/android/settings/settingssearch/SettingsSearchUtils$SettingsSearchFilterMenu;->addRemovePreferenceKey(Ljava/lang/String;)V

    .line 9435
    const-string v12, "power_button_instantly_locks"

    invoke-direct {p0, v12}, Lcom/android/settings/settingssearch/SettingsSearchUtils$SettingsSearchFilterMenu;->addRemovePreferenceKey(Ljava/lang/String;)V

    .line 9436
    const-string v12, "visiblepattern"

    invoke-direct {p0, v12}, Lcom/android/settings/settingssearch/SettingsSearchUtils$SettingsSearchFilterMenu;->addRemovePreferenceKey(Ljava/lang/String;)V

    .line 9437
    const-string v12, "visiblesignature"

    invoke-direct {p0, v12}, Lcom/android/settings/settingssearch/SettingsSearchUtils$SettingsSearchFilterMenu;->addRemovePreferenceKey(Ljava/lang/String;)V

    .line 9438
    const-string v12, "signature_verification_level"

    invoke-direct {p0, v12}, Lcom/android/settings/settingssearch/SettingsSearchUtils$SettingsSearchFilterMenu;->addRemovePreferenceKey(Ljava/lang/String;)V

    .line 9439
    const-string v12, "additional_information"

    invoke-direct {p0, v12}, Lcom/android/settings/settingssearch/SettingsSearchUtils$SettingsSearchFilterMenu;->addRemovePreferenceKey(Ljava/lang/String;)V

    .line 9440
    const-string v12, "lock_info_weather"

    invoke-direct {p0, v12}, Lcom/android/settings/settingssearch/SettingsSearchUtils$SettingsSearchFilterMenu;->addRemovePreferenceKey(Ljava/lang/String;)V

    .line 9441
    const-string v12, "upcoming_event"

    invoke-direct {p0, v12}, Lcom/android/settings/settingssearch/SettingsSearchUtils$SettingsSearchFilterMenu;->addRemovePreferenceKey(Ljava/lang/String;)V

    .line 9442
    const-string v12, "steps"

    invoke-direct {p0, v12}, Lcom/android/settings/settingssearch/SettingsSearchUtils$SettingsSearchFilterMenu;->addRemovePreferenceKey(Ljava/lang/String;)V

    .line 9443
    const-string v12, "clock_size"

    invoke-direct {p0, v12}, Lcom/android/settings/settingssearch/SettingsSearchUtils$SettingsSearchFilterMenu;->addRemovePreferenceKey(Ljava/lang/String;)V

    .line 9444
    const-string v12, "clock_size_with_preview"

    invoke-direct {p0, v12}, Lcom/android/settings/settingssearch/SettingsSearchUtils$SettingsSearchFilterMenu;->addRemovePreferenceKey(Ljava/lang/String;)V

    .line 9445
    const-string v12, "show_information"

    invoke-direct {p0, v12}, Lcom/android/settings/settingssearch/SettingsSearchUtils$SettingsSearchFilterMenu;->addRemovePreferenceKey(Ljava/lang/String;)V

    .line 9446
    const-string v12, "pattern_type"

    invoke-direct {p0, v12}, Lcom/android/settings/settingssearch/SettingsSearchUtils$SettingsSearchFilterMenu;->addRemovePreferenceKey(Ljava/lang/String;)V

    .line 9447
    const-string v12, "pattern_type_with_preview"

    invoke-direct {p0, v12}, Lcom/android/settings/settingssearch/SettingsSearchUtils$SettingsSearchFilterMenu;->addRemovePreferenceKey(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 9449
    :cond_18
    const-string v12, "biometric_weak_improve_matching"

    invoke-direct {p0, v12}, Lcom/android/settings/settingssearch/SettingsSearchUtils$SettingsSearchFilterMenu;->addRemovePreferenceKey(Ljava/lang/String;)V

    .line 9450
    const-string v12, "biometric_weak_liveliness"

    invoke-direct {p0, v12}, Lcom/android/settings/settingssearch/SettingsSearchUtils$SettingsSearchFilterMenu;->addRemovePreferenceKey(Ljava/lang/String;)V

    .line 9451
    const-string v12, "lock_after_timeout"

    invoke-direct {p0, v12}, Lcom/android/settings/settingssearch/SettingsSearchUtils$SettingsSearchFilterMenu;->addRemovePreferenceKey(Ljava/lang/String;)V

    .line 9452
    const-string v12, "power_button_instantly_locks"

    invoke-direct {p0, v12}, Lcom/android/settings/settingssearch/SettingsSearchUtils$SettingsSearchFilterMenu;->addRemovePreferenceKey(Ljava/lang/String;)V

    .line 9453
    const-string v12, "visiblepattern"

    invoke-direct {p0, v12}, Lcom/android/settings/settingssearch/SettingsSearchUtils$SettingsSearchFilterMenu;->addRemovePreferenceKey(Ljava/lang/String;)V

    .line 9454
    const-string v12, "visiblesignature"

    invoke-direct {p0, v12}, Lcom/android/settings/settingssearch/SettingsSearchUtils$SettingsSearchFilterMenu;->addRemovePreferenceKey(Ljava/lang/String;)V

    .line 9455
    const-string v12, "signature_verification_level"

    invoke-direct {p0, v12}, Lcom/android/settings/settingssearch/SettingsSearchUtils$SettingsSearchFilterMenu;->addRemovePreferenceKey(Ljava/lang/String;)V

    .line 9456
    const-string v12, "pattern_type"

    invoke-direct {p0, v12}, Lcom/android/settings/settingssearch/SettingsSearchUtils$SettingsSearchFilterMenu;->addRemovePreferenceKey(Ljava/lang/String;)V

    .line 9457
    const-string v12, "pattern_type_with_preview"

    invoke-direct {p0, v12}, Lcom/android/settings/settingssearch/SettingsSearchUtils$SettingsSearchFilterMenu;->addRemovePreferenceKey(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 9459
    :cond_19
    invoke-virtual {v7}, Lcom/android/internal/widget/LockPatternUtils;->usingBiometricWeak()Z

    move-result v12

    if-eqz v12, :cond_1b

    invoke-virtual {v7}, Lcom/android/internal/widget/LockPatternUtils;->isBiometricWeakInstalled()Z

    move-result v12

    if-eqz v12, :cond_1b

    .line 9461
    const-string v12, "lock_screen_shortcut_menu"

    invoke-direct {p0, v12}, Lcom/android/settings/settingssearch/SettingsSearchUtils$SettingsSearchFilterMenu;->addRemovePreferenceKey(Ljava/lang/String;)V

    .line 9462
    const-string v12, "unlock_effect"

    invoke-direct {p0, v12}, Lcom/android/settings/settingssearch/SettingsSearchUtils$SettingsSearchFilterMenu;->addRemovePreferenceKey(Ljava/lang/String;)V

    .line 9463
    const-string v12, "unlock_effect_with_preview"

    invoke-direct {p0, v12}, Lcom/android/settings/settingssearch/SettingsSearchUtils$SettingsSearchFilterMenu;->addRemovePreferenceKey(Ljava/lang/String;)V

    .line 9464
    const-string v12, "help_text"

    invoke-direct {p0, v12}, Lcom/android/settings/settingssearch/SettingsSearchUtils$SettingsSearchFilterMenu;->addRemovePreferenceKey(Ljava/lang/String;)V

    .line 9465
    const-string v12, "say_your_wakeup"

    invoke-direct {p0, v12}, Lcom/android/settings/settingssearch/SettingsSearchUtils$SettingsSearchFilterMenu;->addRemovePreferenceKey(Ljava/lang/String;)V

    .line 9466
    const-string v12, "set_wakeup_command"

    invoke-direct {p0, v12}, Lcom/android/settings/settingssearch/SettingsSearchUtils$SettingsSearchFilterMenu;->addRemovePreferenceKey(Ljava/lang/String;)V

    .line 9467
    const-string v12, "signature_verification_level"

    invoke-direct {p0, v12}, Lcom/android/settings/settingssearch/SettingsSearchUtils$SettingsSearchFilterMenu;->addRemovePreferenceKey(Ljava/lang/String;)V

    .line 9468
    invoke-virtual {v7}, Lcom/android/internal/widget/LockPatternUtils;->getKeyguardStoredPasswordQuality()I

    move-result v12

    const/high16 v13, 0x20000

    if-ne v12, v13, :cond_1a

    .line 9469
    const-string v12, "visiblepattern"

    invoke-direct {p0, v12}, Lcom/android/settings/settingssearch/SettingsSearchUtils$SettingsSearchFilterMenu;->addRemovePreferenceKey(Ljava/lang/String;)V

    .line 9471
    :cond_1a
    const-string v12, "visiblesignature"

    invoke-direct {p0, v12}, Lcom/android/settings/settingssearch/SettingsSearchUtils$SettingsSearchFilterMenu;->addRemovePreferenceKey(Ljava/lang/String;)V

    .line 9472
    const-string v12, "pattern_type"

    invoke-direct {p0, v12}, Lcom/android/settings/settingssearch/SettingsSearchUtils$SettingsSearchFilterMenu;->addRemovePreferenceKey(Ljava/lang/String;)V

    .line 9473
    const-string v12, "pattern_type_with_preview"

    invoke-direct {p0, v12}, Lcom/android/settings/settingssearch/SettingsSearchUtils$SettingsSearchFilterMenu;->addRemovePreferenceKey(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 9475
    :cond_1b
    const-string v12, "lock_screen_shortcut_menu"

    invoke-direct {p0, v12}, Lcom/android/settings/settingssearch/SettingsSearchUtils$SettingsSearchFilterMenu;->addRemovePreferenceKey(Ljava/lang/String;)V

    .line 9476
    const-string v12, "unlock_effect"

    invoke-direct {p0, v12}, Lcom/android/settings/settingssearch/SettingsSearchUtils$SettingsSearchFilterMenu;->addRemovePreferenceKey(Ljava/lang/String;)V

    .line 9477
    const-string v12, "unlock_effect_with_preview"

    invoke-direct {p0, v12}, Lcom/android/settings/settingssearch/SettingsSearchUtils$SettingsSearchFilterMenu;->addRemovePreferenceKey(Ljava/lang/String;)V

    .line 9478
    const-string v12, "help_text"

    invoke-direct {p0, v12}, Lcom/android/settings/settingssearch/SettingsSearchUtils$SettingsSearchFilterMenu;->addRemovePreferenceKey(Ljava/lang/String;)V

    .line 9479
    const-string v12, "say_your_wakeup"

    invoke-direct {p0, v12}, Lcom/android/settings/settingssearch/SettingsSearchUtils$SettingsSearchFilterMenu;->addRemovePreferenceKey(Ljava/lang/String;)V

    .line 9480
    const-string v12, "set_wakeup_command"

    invoke-direct {p0, v12}, Lcom/android/settings/settingssearch/SettingsSearchUtils$SettingsSearchFilterMenu;->addRemovePreferenceKey(Ljava/lang/String;)V

    .line 9481
    const-string v12, "biometric_weak_improve_matching"

    invoke-direct {p0, v12}, Lcom/android/settings/settingssearch/SettingsSearchUtils$SettingsSearchFilterMenu;->addRemovePreferenceKey(Ljava/lang/String;)V

    .line 9482
    const-string v12, "biometric_weak_liveliness"

    invoke-direct {p0, v12}, Lcom/android/settings/settingssearch/SettingsSearchUtils$SettingsSearchFilterMenu;->addRemovePreferenceKey(Ljava/lang/String;)V

    .line 9483
    const-string v12, "visiblesignature"

    invoke-direct {p0, v12}, Lcom/android/settings/settingssearch/SettingsSearchUtils$SettingsSearchFilterMenu;->addRemovePreferenceKey(Ljava/lang/String;)V

    .line 9484
    const-string v12, "signature_verification_level"

    invoke-direct {p0, v12}, Lcom/android/settings/settingssearch/SettingsSearchUtils$SettingsSearchFilterMenu;->addRemovePreferenceKey(Ljava/lang/String;)V

    .line 9485
    const-string v12, "additional_information"

    invoke-direct {p0, v12}, Lcom/android/settings/settingssearch/SettingsSearchUtils$SettingsSearchFilterMenu;->addRemovePreferenceKey(Ljava/lang/String;)V

    .line 9486
    const-string v12, "lock_info_weather"

    invoke-direct {p0, v12}, Lcom/android/settings/settingssearch/SettingsSearchUtils$SettingsSearchFilterMenu;->addRemovePreferenceKey(Ljava/lang/String;)V

    .line 9487
    const-string v12, "upcoming_event"

    invoke-direct {p0, v12}, Lcom/android/settings/settingssearch/SettingsSearchUtils$SettingsSearchFilterMenu;->addRemovePreferenceKey(Ljava/lang/String;)V

    .line 9488
    const-string v12, "steps"

    invoke-direct {p0, v12}, Lcom/android/settings/settingssearch/SettingsSearchUtils$SettingsSearchFilterMenu;->addRemovePreferenceKey(Ljava/lang/String;)V

    .line 9489
    const-string v12, "pattern_type"

    invoke-direct {p0, v12}, Lcom/android/settings/settingssearch/SettingsSearchUtils$SettingsSearchFilterMenu;->addRemovePreferenceKey(Ljava/lang/String;)V

    .line 9490
    const-string v12, "pattern_type_with_preview"

    invoke-direct {p0, v12}, Lcom/android/settings/settingssearch/SettingsSearchUtils$SettingsSearchFilterMenu;->addRemovePreferenceKey(Ljava/lang/String;)V

    .line 9491
    invoke-virtual {v7}, Lcom/android/internal/widget/LockPatternUtils;->getKeyguardStoredPasswordQuality()I

    move-result v12

    sparse-switch v12, :sswitch_data_1

    goto/16 :goto_0

    .line 9495
    :sswitch_5
    const-string v12, "visiblepattern"

    invoke-direct {p0, v12}, Lcom/android/settings/settingssearch/SettingsSearchUtils$SettingsSearchFilterMenu;->addRemovePreferenceKey(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 9500
    :sswitch_6
    const-string v12, "visiblepattern"

    invoke-direct {p0, v12}, Lcom/android/settings/settingssearch/SettingsSearchUtils$SettingsSearchFilterMenu;->addRemovePreferenceKey(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 9529
    .restart local v3    # "isDisabledSvoice":Z
    .restart local v4    # "isSVoiceInstalled":Z
    .restart local v8    # "packMgr":Landroid/content/pm/PackageManager;
    :catch_0
    move-exception v0

    .line 9530
    .local v0, "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    const-string v12, "SettingSearch/SettingsSearchUtils"

    const-string v13, "SVoice is not installed."

    invoke-static {v12, v13}, Landroid/util/secutil/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 9531
    const/4 v4, 0x0

    goto/16 :goto_2

    .line 9542
    .end local v0    # "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    :catch_1
    move-exception v0

    .line 9543
    .restart local v0    # "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    const-string v12, "SettingSearch/SettingsSearchUtils"

    const-string v13, "Cloud package not found"

    invoke-static {v12, v13}, Landroid/util/secutil/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 9544
    const v12, 0x7f100690

    invoke-static {v12}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v12

    invoke-direct {p0, v12}, Lcom/android/settings/settingssearch/SettingsSearchUtils$SettingsSearchFilterMenu;->addRemovePreferenceKey(Ljava/lang/String;)V

    goto/16 :goto_3

    .line 9554
    .end local v0    # "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    .restart local v9    # "state":I
    :cond_1c
    const-string v12, "unlock_set_smart"

    invoke-direct {p0, v12}, Lcom/android/settings/settingssearch/SettingsSearchUtils$SettingsSearchFilterMenu;->addRemovePreferenceKey(Ljava/lang/String;)V

    goto/16 :goto_4

    .line 9561
    :cond_1d
    invoke-static {}, Landroid/telephony/TelephonyManager;->getDefault()Landroid/telephony/TelephonyManager;

    move-result-object v12

    invoke-virtual {v12}, Landroid/telephony/TelephonyManager;->getSimState()I

    move-result v12

    if-eq v12, v10, :cond_1e

    invoke-static {}, Landroid/telephony/TelephonyManager;->getDefault()Landroid/telephony/TelephonyManager;

    move-result-object v12

    invoke-virtual {v12}, Landroid/telephony/TelephonyManager;->getSimState()I

    move-result v12

    if-nez v12, :cond_6

    .line 9563
    :cond_1e
    const-string v12, "sim_lock_settings"

    invoke-direct {p0, v12}, Lcom/android/settings/settingssearch/SettingsSearchUtils$SettingsSearchFilterMenu;->addRemovePreferenceKey(Ljava/lang/String;)V

    .line 9564
    const-string v12, "sim_toggle"

    invoke-direct {p0, v12}, Lcom/android/settings/settingssearch/SettingsSearchUtils$SettingsSearchFilterMenu;->addRemovePreferenceKey(Ljava/lang/String;)V

    .line 9565
    const-string v12, "sim_pin"

    invoke-direct {p0, v12}, Lcom/android/settings/settingssearch/SettingsSearchUtils$SettingsSearchFilterMenu;->addRemovePreferenceKey(Ljava/lang/String;)V

    goto/16 :goto_5

    .restart local v1    # "em":Lcom/sec/android/emergencymode/EmergencyManager;
    .restart local v2    # "inputMethodId":Ljava/lang/String;
    .restart local v6    # "mIsEmerMode":Z
    :cond_1f
    move v5, v11

    .line 9633
    goto/16 :goto_6

    .line 9637
    .restart local v5    # "isSecondaryUser":Z
    :cond_20
    invoke-static {}, Lcom/sec/android/app/CscFeature;->getInstance()Lcom/sec/android/app/CscFeature;

    move-result-object v12

    const-string v13, "CscFeature_Common_UseChameleon"

    invoke-virtual {v12, v13}, Lcom/sec/android/app/CscFeature;->getEnableStatus(Ljava/lang/String;)Z

    move-result v12

    if-eqz v12, :cond_c

    .line 9638
    const-string v12, "persist.sys.roaming_menu"

    invoke-static {v12, v11}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v11

    if-eq v11, v10, :cond_c

    .line 9639
    const-string v10, "roaming_settings"

    invoke-direct {p0, v10}, Lcom/android/settings/settingssearch/SettingsSearchUtils$SettingsSearchFilterMenu;->addRemovePreferenceKey(Ljava/lang/String;)V

    goto/16 :goto_7

    .line 9668
    :cond_21
    invoke-static {}, Lcom/android/settings/Utils;->isSViewWeatherforT()Z

    move-result v10

    if-eqz v10, :cond_22

    .line 9669
    const-string v10, "weather"

    invoke-direct {p0, v10}, Lcom/android/settings/settingssearch/SettingsSearchUtils$SettingsSearchFilterMenu;->addRemovePreferenceKey(Ljava/lang/String;)V

    goto/16 :goto_8

    .line 9671
    :cond_22
    const-string v10, "weather_tmr"

    invoke-direct {p0, v10}, Lcom/android/settings/settingssearch/SettingsSearchUtils$SettingsSearchFilterMenu;->addRemovePreferenceKey(Ljava/lang/String;)V

    goto/16 :goto_8

    .line 9523
    .end local v1    # "em":Lcom/sec/android/emergencymode/EmergencyManager;
    .end local v2    # "inputMethodId":Ljava/lang/String;
    .end local v4    # "isSVoiceInstalled":Z
    .end local v5    # "isSecondaryUser":Z
    .end local v6    # "mIsEmerMode":Z
    .end local v9    # "state":I
    :catch_2
    move-exception v12

    goto/16 :goto_1

    .line 9310
    :sswitch_data_0
    .sparse-switch
        0x10000 -> :sswitch_1
        0x20000 -> :sswitch_3
        0x40000 -> :sswitch_4
        0x50000 -> :sswitch_4
        0x60000 -> :sswitch_4
        0x61000 -> :sswitch_2
    .end sparse-switch

    .line 9491
    :sswitch_data_1
    .sparse-switch
        0x10000 -> :sswitch_0
        0x20000 -> :sswitch_5
        0x40000 -> :sswitch_6
        0x50000 -> :sswitch_6
        0x60000 -> :sswitch_6
    .end sparse-switch
.end method
