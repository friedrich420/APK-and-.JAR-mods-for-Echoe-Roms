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

    const v3, 0x7f100682

    .line 9729
    const/16 v0, 0x37

    new-array v0, v0, [Ljava/lang/String;

    const v1, 0x7f10065a

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    aput-object v1, v0, v4

    const v1, 0x7f10065e

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    aput-object v1, v0, v5

    const v1, 0x7f10065f

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    aput-object v1, v0, v6

    const v1, 0x7f100667

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    aput-object v1, v0, v7

    const/4 v1, 0x4

    const v2, 0x7f1006bf

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    const/4 v1, 0x5

    const v2, 0x7f1006c0

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    const/4 v1, 0x6

    const v2, 0x7f1006c1

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    const/4 v1, 0x7

    const v2, 0x7f1006c3

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    const/16 v1, 0x8

    const v2, 0x7f1006c4

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    const/16 v1, 0x9

    const v2, 0x7f100697

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    const/16 v1, 0xa

    const v2, 0x7f1006ab

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    const/16 v1, 0xb

    const v2, 0x7f1006a8

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    const/16 v1, 0xc

    const v2, 0x7f100679

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    const/16 v1, 0xd

    const v2, 0x7f100642

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    const/16 v1, 0xe

    const v2, 0x7f1006d0

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    const/16 v1, 0xf

    const v2, 0x7f1006b1

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    const/16 v1, 0x10

    const v2, 0x7f10067d

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    const/16 v1, 0x11

    invoke-static {v3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    const/16 v1, 0x12

    const v2, 0x7f10064d

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    const/16 v1, 0x13

    const v2, 0x7f10064e

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    const/16 v1, 0x14

    const v2, 0x7f10064f

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    const/16 v1, 0x15

    const v2, 0x7f100650

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    const/16 v1, 0x16

    const v2, 0x7f10064b

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    const/16 v1, 0x17

    const v2, 0x7f100652

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    const/16 v1, 0x18

    const v2, 0x7f100653

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

    .line 9795
    const/16 v0, 0x43

    new-array v0, v0, [Ljava/lang/String;

    const v1, 0x7f10065a

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    aput-object v1, v0, v4

    const v1, 0x7f10065e

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    aput-object v1, v0, v5

    const v1, 0x7f10065f

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    aput-object v1, v0, v6

    const v1, 0x7f100667

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    aput-object v1, v0, v7

    const/4 v1, 0x4

    const v2, 0x7f1006bf

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    const/4 v1, 0x5

    const v2, 0x7f1006c0

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    const/4 v1, 0x6

    const v2, 0x7f1006c1

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    const/4 v1, 0x7

    const v2, 0x7f1006c3

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    const/16 v1, 0x8

    const v2, 0x7f1006c4

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    const/16 v1, 0x9

    const v2, 0x7f100697

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    const/16 v1, 0xa

    const v2, 0x7f1006ab

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    const/16 v1, 0xb

    const v2, 0x7f1006a8

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    const/16 v1, 0xc

    const v2, 0x7f100679

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    const/16 v1, 0xd

    const v2, 0x7f100642

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    const/16 v1, 0xe

    const v2, 0x7f1006d0

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    const/16 v1, 0xf

    const v2, 0x7f1006b1

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    const/16 v1, 0x10

    const v2, 0x7f10067d

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    const/16 v1, 0x11

    invoke-static {v3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    const/16 v1, 0x12

    const v2, 0x7f10064d

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    const/16 v1, 0x13

    const v2, 0x7f10064e

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    const/16 v1, 0x14

    const v2, 0x7f10064f

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    const/16 v1, 0x15

    const v2, 0x7f100650

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    const/16 v1, 0x16

    const v2, 0x7f10064b

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    const/16 v1, 0x17

    const v2, 0x7f100652

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    const/16 v1, 0x18

    const v2, 0x7f100653

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    const/16 v1, 0x19

    const v2, 0x7f10065b

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    const/16 v1, 0x1a

    const v2, 0x7f1006ae

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    const/16 v1, 0x1b

    const v2, 0x7f100698

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    const/16 v1, 0x1c

    const v2, 0x7f1006a4

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    const/16 v1, 0x1d

    const v2, 0x7f10063e

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    const/16 v1, 0x1e

    const v2, 0x7f100641

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    const/16 v1, 0x1f

    const v2, 0x7f10063f

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    const/16 v1, 0x20

    const v2, 0x7f1006af

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

    .line 9875
    const/16 v0, 0x6a

    new-array v0, v0, [Ljava/lang/String;

    const v1, 0x7f10065f

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    aput-object v1, v0, v4

    const v1, 0x7f10066b

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    aput-object v1, v0, v5

    const v1, 0x7f1006bd

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    aput-object v1, v0, v6

    const v1, 0x7f10066c

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    aput-object v1, v0, v7

    const/4 v1, 0x4

    const v2, 0x7f10066e

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    const/4 v1, 0x5

    const v2, 0x7f10066f

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    const/4 v1, 0x6

    const v2, 0x7f1006a1

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    const/4 v1, 0x7

    const v2, 0x7f100686

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    const/16 v1, 0x8

    const v2, 0x7f1006a2

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    const/16 v1, 0x9

    const-string v2, "key_multi_window"

    aput-object v2, v0, v1

    const/16 v1, 0xa

    const v2, 0x7f1006a3

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    const/16 v1, 0xb

    const v2, 0x7f1006c9

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    const/16 v1, 0xc

    const v2, 0x7f100697

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    const/16 v1, 0xd

    const v2, 0x7f1006ab

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    const/16 v1, 0xe

    const v2, 0x7f1006a8

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    const/16 v1, 0xf

    const v2, 0x7f100679

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    const/16 v1, 0x10

    const v2, 0x7f100698

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    const/16 v1, 0x11

    const v2, 0x7f100641

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    const/16 v1, 0x12

    const v2, 0x7f100642

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    const/16 v1, 0x13

    const v2, 0x7f1006b1

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    const/16 v1, 0x14

    invoke-static {v3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    const/16 v1, 0x15

    const v2, 0x7f10064a

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    const/16 v1, 0x16

    const v2, 0x7f10064d

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    const/16 v1, 0x17

    const v2, 0x7f10064e

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    const/16 v1, 0x18

    const v2, 0x7f10064f

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    const/16 v1, 0x19

    const v2, 0x7f100650

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    const/16 v1, 0x1a

    const v2, 0x7f10064b

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    const/16 v1, 0x1b

    const v2, 0x7f100652

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    const/16 v1, 0x1c

    const v2, 0x7f100651

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    const/16 v1, 0x1d

    const v2, 0x7f100653

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    const/16 v1, 0x1e

    const v2, 0x7f100690

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    const/16 v1, 0x1f

    const v2, 0x7f1006d2

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    const/16 v1, 0x20

    invoke-static {v3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    const/16 v1, 0x21

    const v2, 0x7f1006a4

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    const/16 v1, 0x22

    const v2, 0x7f1006d7

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    const/16 v1, 0x23

    const v2, 0x7f1006c5

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    const/16 v1, 0x24

    const v2, 0x7f100648

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    const/16 v1, 0x25

    const v2, 0x7f1006d7

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    const/16 v1, 0x26

    const v2, 0x7f100685

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    const/16 v1, 0x27

    const v2, 0x7f100645

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    const/16 v1, 0x28

    const v2, 0x7f10063e

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    const/16 v1, 0x29

    const v2, 0x7f10063f

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    const/16 v1, 0x2a

    const v2, 0x7f1006af

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

    const-string v2, "encryption"

    aput-object v2, v0, v1

    const/16 v1, 0x52

    const-string v2, "sdEncpref"

    aput-object v2, v0, v1

    const/16 v1, 0x53

    const-string v2, "RemoteControls"

    aput-object v2, v0, v1

    const/16 v1, 0x54

    const-string v2, "SIMAlert"

    aput-object v2, v0, v1

    const/16 v1, 0x55

    const-string v2, "ruim_lock_settings"

    aput-object v2, v0, v1

    const/16 v1, 0x56

    const-string v2, "LockMyMobile"

    aput-object v2, v0, v1

    const/16 v1, 0x57

    const-string v2, "ultra_powersaving"

    aput-object v2, v0, v1

    const/16 v1, 0x58

    const-string v2, "ultra_powersaving_tablet"

    aput-object v2, v0, v1

    const/16 v1, 0x59

    const-string v2, "nfc_setting"

    aput-object v2, v0, v1

    const/16 v1, 0x5a

    const-string v2, "open_multi_window_view"

    aput-object v2, v0, v1

    const/16 v1, 0x5b

    const-string v2, "popup_view_shortcut"

    aput-object v2, v0, v1

    const/16 v1, 0x5c

    const-string v2, "app_ops"

    aput-object v2, v0, v1

    const/16 v1, 0x5d

    const-string v2, "new_security_update_service"

    aput-object v2, v0, v1

    const/16 v1, 0x5e

    const-string v2, "new_security_update_service"

    aput-object v2, v0, v1

    const/16 v1, 0x5f

    const-string v2, "credentials_management"

    aput-object v2, v0, v1

    const/16 v1, 0x60

    const-string v2, "advanced_security"

    aput-object v2, v0, v1

    const/16 v1, 0x61

    const-string v2, "share_acc_setting_menu"

    aput-object v2, v0, v1

    const/16 v1, 0x62

    const-string v2, "samsung_captioning_preference_screen"

    aput-object v2, v0, v1

    const/16 v1, 0x63

    const-string v2, "Recognition_preference_key"

    aput-object v2, v0, v1

    const/16 v1, 0x64

    const-string v2, "app_notifications"

    aput-object v2, v0, v1

    const/16 v1, 0x65

    const-string v2, "othersound_samsungapplications"

    aput-object v2, v0, v1

    const/16 v1, 0x66

    const-string v2, "sound_call"

    aput-object v2, v0, v1

    const/16 v1, 0x67

    const-string v2, "sound_message"

    aput-object v2, v0, v1

    const/16 v1, 0x68

    const-string v2, "sound_email"

    aput-object v2, v0, v1

    const/16 v1, 0x69

    const-string v2, "sound_splanner"

    aput-object v2, v0, v1

    sput-object v0, Lcom/android/settings/settingssearch/SettingsSearchUtils$SettingsSearchFilterMenu;->KNOX_MODE_REMOVED_MENU:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 9233
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 9231
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/settings/settingssearch/SettingsSearchUtils$SettingsSearchFilterMenu;->mRemovekeyList:Ljava/util/ArrayList;

    .line 9234
    iput-object p1, p0, Lcom/android/settings/settingssearch/SettingsSearchUtils$SettingsSearchFilterMenu;->mContext:Landroid/content/Context;

    .line 9235
    iget-object v0, p0, Lcom/android/settings/settingssearch/SettingsSearchUtils$SettingsSearchFilterMenu;->mRemovekeyList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 9236
    return-void
.end method

.method static synthetic access$000()[Ljava/lang/String;
    .locals 1

    .prologue
    .line 9226
    sget-object v0, Lcom/android/settings/settingssearch/SettingsSearchUtils$SettingsSearchFilterMenu;->KNOX_MODE_REMOVED_MENU:[Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$100()[Ljava/lang/String;
    .locals 1

    .prologue
    .line 9226
    sget-object v0, Lcom/android/settings/settingssearch/SettingsSearchUtils$SettingsSearchFilterMenu;->SUB_USER_REMOVED_MENU:[Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$200()[Ljava/lang/String;
    .locals 1

    .prologue
    .line 9226
    sget-object v0, Lcom/android/settings/settingssearch/SettingsSearchUtils$SettingsSearchFilterMenu;->RESTRICTED_PROFILE_REMOVED_MENU:[Ljava/lang/String;

    return-object v0
.end method

.method private addRemovePreferenceKey(Ljava/lang/String;)V
    .locals 1
    .param p1, "key"    # Ljava/lang/String;

    .prologue
    .line 9711
    iget-object v0, p0, Lcom/android/settings/settingssearch/SettingsSearchUtils$SettingsSearchFilterMenu;->mRemovekeyList:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 9713
    return-void
.end method


# virtual methods
.method public getDynamiRemoveResult(Ljava/lang/String;)Z
    .locals 1
    .param p1, "key"    # Ljava/lang/String;

    .prologue
    .line 9723
    iget-object v0, p0, Lcom/android/settings/settingssearch/SettingsSearchUtils$SettingsSearchFilterMenu;->mRemovekeyList:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 9724
    const/4 v0, 0x0

    .line 9726
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public initDynamicPreferenceRemovekey()V
    .locals 14

    .prologue
    const/4 v10, 0x0

    const/4 v9, 0x1

    .line 9240
    new-instance v6, Lcom/android/internal/widget/LockPatternUtils;

    iget-object v11, p0, Lcom/android/settings/settingssearch/SettingsSearchUtils$SettingsSearchFilterMenu;->mContext:Landroid/content/Context;

    invoke-direct {v6, v11}, Lcom/android/internal/widget/LockPatternUtils;-><init>(Landroid/content/Context;)V

    .line 9241
    .local v6, "mLockPatternUtils":Lcom/android/internal/widget/LockPatternUtils;
    invoke-static {}, Lcom/android/settings/Utils;->isSettingsUI2013Supported()Z

    move-result v11

    if-eqz v11, :cond_16

    .line 9242
    invoke-virtual {v6}, Lcom/android/internal/widget/LockPatternUtils;->isSecure()Z

    move-result v11

    if-nez v11, :cond_12

    .line 9243
    invoke-virtual {v6}, Lcom/android/internal/widget/LockPatternUtils;->isLockScreenDisabled()Z

    move-result v11

    if-eqz v11, :cond_f

    .line 9244
    const-string v11, "multiple_lock_screenswitch"

    invoke-direct {p0, v11}, Lcom/android/settings/settingssearch/SettingsSearchUtils$SettingsSearchFilterMenu;->addRemovePreferenceKey(Ljava/lang/String;)V

    .line 9245
    const-string v11, "lock_screen_clock_settings"

    invoke-direct {p0, v11}, Lcom/android/settings/settingssearch/SettingsSearchUtils$SettingsSearchFilterMenu;->addRemovePreferenceKey(Ljava/lang/String;)V

    .line 9246
    const-string v11, "lock_screen_shortcut_menu"

    invoke-direct {p0, v11}, Lcom/android/settings/settingssearch/SettingsSearchUtils$SettingsSearchFilterMenu;->addRemovePreferenceKey(Ljava/lang/String;)V

    .line 9247
    const-string v11, "lock_screen_myprofile_settings"

    invoke-direct {p0, v11}, Lcom/android/settings/settingssearch/SettingsSearchUtils$SettingsSearchFilterMenu;->addRemovePreferenceKey(Ljava/lang/String;)V

    .line 9248
    const-string v11, "owner_info_settings"

    invoke-direct {p0, v11}, Lcom/android/settings/settingssearch/SettingsSearchUtils$SettingsSearchFilterMenu;->addRemovePreferenceKey(Ljava/lang/String;)V

    .line 9249
    const-string v11, "biometric_weak_improve_matching"

    invoke-direct {p0, v11}, Lcom/android/settings/settingssearch/SettingsSearchUtils$SettingsSearchFilterMenu;->addRemovePreferenceKey(Ljava/lang/String;)V

    .line 9250
    const-string v11, "visiblepattern"

    invoke-direct {p0, v11}, Lcom/android/settings/settingssearch/SettingsSearchUtils$SettingsSearchFilterMenu;->addRemovePreferenceKey(Ljava/lang/String;)V

    .line 9251
    const-string v11, "unlock_effect"

    invoke-direct {p0, v11}, Lcom/android/settings/settingssearch/SettingsSearchUtils$SettingsSearchFilterMenu;->addRemovePreferenceKey(Ljava/lang/String;)V

    .line 9252
    const-string v11, "unlock_effect_with_preview"

    invoke-direct {p0, v11}, Lcom/android/settings/settingssearch/SettingsSearchUtils$SettingsSearchFilterMenu;->addRemovePreferenceKey(Ljava/lang/String;)V

    .line 9253
    const-string v11, "ink_effect"

    invoke-direct {p0, v11}, Lcom/android/settings/settingssearch/SettingsSearchUtils$SettingsSearchFilterMenu;->addRemovePreferenceKey(Ljava/lang/String;)V

    .line 9254
    const-string v11, "lock_screen_wakeup_settings"

    invoke-direct {p0, v11}, Lcom/android/settings/settingssearch/SettingsSearchUtils$SettingsSearchFilterMenu;->addRemovePreferenceKey(Ljava/lang/String;)V

    .line 9255
    const-string v11, "lock_after_timeout"

    invoke-direct {p0, v11}, Lcom/android/settings/settingssearch/SettingsSearchUtils$SettingsSearchFilterMenu;->addRemovePreferenceKey(Ljava/lang/String;)V

    .line 9256
    const-string v11, "power_button_instantly_locks"

    invoke-direct {p0, v11}, Lcom/android/settings/settingssearch/SettingsSearchUtils$SettingsSearchFilterMenu;->addRemovePreferenceKey(Ljava/lang/String;)V

    .line 9257
    const-string v11, "quick_note"

    invoke-direct {p0, v11}, Lcom/android/settings/settingssearch/SettingsSearchUtils$SettingsSearchFilterMenu;->addRemovePreferenceKey(Ljava/lang/String;)V

    .line 9258
    const-string v11, "help_text"

    invoke-direct {p0, v11}, Lcom/android/settings/settingssearch/SettingsSearchUtils$SettingsSearchFilterMenu;->addRemovePreferenceKey(Ljava/lang/String;)V

    .line 9259
    const-string v11, "visiblesignature"

    invoke-direct {p0, v11}, Lcom/android/settings/settingssearch/SettingsSearchUtils$SettingsSearchFilterMenu;->addRemovePreferenceKey(Ljava/lang/String;)V

    .line 9260
    const-string v11, "signature_verification_level"

    invoke-direct {p0, v11}, Lcom/android/settings/settingssearch/SettingsSearchUtils$SettingsSearchFilterMenu;->addRemovePreferenceKey(Ljava/lang/String;)V

    .line 9261
    const-string v11, "lock_screen_magazine_card"

    invoke-direct {p0, v11}, Lcom/android/settings/settingssearch/SettingsSearchUtils$SettingsSearchFilterMenu;->addRemovePreferenceKey(Ljava/lang/String;)V

    .line 9262
    const-string v11, "additional_information"

    invoke-direct {p0, v11}, Lcom/android/settings/settingssearch/SettingsSearchUtils$SettingsSearchFilterMenu;->addRemovePreferenceKey(Ljava/lang/String;)V

    .line 9263
    const-string v11, "lock_info_weather"

    invoke-direct {p0, v11}, Lcom/android/settings/settingssearch/SettingsSearchUtils$SettingsSearchFilterMenu;->addRemovePreferenceKey(Ljava/lang/String;)V

    .line 9264
    const-string v11, "upcoming_event"

    invoke-direct {p0, v11}, Lcom/android/settings/settingssearch/SettingsSearchUtils$SettingsSearchFilterMenu;->addRemovePreferenceKey(Ljava/lang/String;)V

    .line 9265
    const-string v11, "steps"

    invoke-direct {p0, v11}, Lcom/android/settings/settingssearch/SettingsSearchUtils$SettingsSearchFilterMenu;->addRemovePreferenceKey(Ljava/lang/String;)V

    .line 9266
    const-string v11, "dualclock_settings"

    invoke-direct {p0, v11}, Lcom/android/settings/settingssearch/SettingsSearchUtils$SettingsSearchFilterMenu;->addRemovePreferenceKey(Ljava/lang/String;)V

    .line 9267
    const-string v11, "homecity_timezone"

    invoke-direct {p0, v11}, Lcom/android/settings/settingssearch/SettingsSearchUtils$SettingsSearchFilterMenu;->addRemovePreferenceKey(Ljava/lang/String;)V

    .line 9268
    const-string v11, "vibration_feedback"

    invoke-direct {p0, v11}, Lcom/android/settings/settingssearch/SettingsSearchUtils$SettingsSearchFilterMenu;->addRemovePreferenceKey(Ljava/lang/String;)V

    .line 9269
    const-string v11, "lock_screen_camera_shortcut"

    invoke-direct {p0, v11}, Lcom/android/settings/settingssearch/SettingsSearchUtils$SettingsSearchFilterMenu;->addRemovePreferenceKey(Ljava/lang/String;)V

    .line 9270
    const-string v11, "clock_size"

    invoke-direct {p0, v11}, Lcom/android/settings/settingssearch/SettingsSearchUtils$SettingsSearchFilterMenu;->addRemovePreferenceKey(Ljava/lang/String;)V

    .line 9271
    const-string v11, "clock_size_with_preview"

    invoke-direct {p0, v11}, Lcom/android/settings/settingssearch/SettingsSearchUtils$SettingsSearchFilterMenu;->addRemovePreferenceKey(Ljava/lang/String;)V

    .line 9272
    const-string v11, "show_information"

    invoke-direct {p0, v11}, Lcom/android/settings/settingssearch/SettingsSearchUtils$SettingsSearchFilterMenu;->addRemovePreferenceKey(Ljava/lang/String;)V

    .line 9273
    const-string v11, "pattern_type"

    invoke-direct {p0, v11}, Lcom/android/settings/settingssearch/SettingsSearchUtils$SettingsSearchFilterMenu;->addRemovePreferenceKey(Ljava/lang/String;)V

    .line 9274
    const-string v11, "pattern_type_with_preview"

    invoke-direct {p0, v11}, Lcom/android/settings/settingssearch/SettingsSearchUtils$SettingsSearchFilterMenu;->addRemovePreferenceKey(Ljava/lang/String;)V

    .line 9275
    const-string v11, "health_info_panel"

    invoke-direct {p0, v11}, Lcom/android/settings/settingssearch/SettingsSearchUtils$SettingsSearchFilterMenu;->addRemovePreferenceKey(Ljava/lang/String;)V

    .line 9276
    const-string v11, "auto_swipe"

    invoke-direct {p0, v11}, Lcom/android/settings/settingssearch/SettingsSearchUtils$SettingsSearchFilterMenu;->addRemovePreferenceKey(Ljava/lang/String;)V

    .line 9536
    :goto_0
    :sswitch_0
    iget-object v11, p0, Lcom/android/settings/settingssearch/SettingsSearchUtils$SettingsSearchFilterMenu;->mContext:Landroid/content/Context;

    invoke-virtual {v11}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v11

    const-string v12, "easy_mode_switch"

    invoke-static {v11, v12, v9}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v11

    if-nez v11, :cond_0

    .line 9537
    const v11, 0x7f1006a9

    invoke-static {v11}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v11

    invoke-direct {p0, v11}, Lcom/android/settings/settingssearch/SettingsSearchUtils$SettingsSearchFilterMenu;->addRemovePreferenceKey(Ljava/lang/String;)V

    .line 9538
    const v11, 0x7f100652

    invoke-static {v11}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v11

    invoke-direct {p0, v11}, Lcom/android/settings/settingssearch/SettingsSearchUtils$SettingsSearchFilterMenu;->addRemovePreferenceKey(Ljava/lang/String;)V

    .line 9542
    :cond_0
    const/4 v2, 0x0

    .line 9543
    .local v2, "isDisabledSvoice":Z
    iget-object v11, p0, Lcom/android/settings/settingssearch/SettingsSearchUtils$SettingsSearchFilterMenu;->mContext:Landroid/content/Context;

    invoke-virtual {v11}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v7

    .line 9545
    .local v7, "packMgr":Landroid/content/pm/PackageManager;
    if-eqz v7, :cond_2

    .line 9546
    :try_start_0
    const-string v11, "com.vlingo.midas"

    const/4 v12, 0x1

    invoke-virtual {v7, v11, v12}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    .line 9547
    const-string v11, "com.vlingo.midas"

    invoke-virtual {v7, v11}, Landroid/content/pm/PackageManager;->getApplicationEnabledSetting(Ljava/lang/String;)I

    move-result v11

    const/4 v12, 0x2

    if-eq v11, v12, :cond_1

    const-string v11, "com.vlingo.midas"

    invoke-virtual {v7, v11}, Landroid/content/pm/PackageManager;->getApplicationEnabledSetting(Ljava/lang/String;)I
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_2

    move-result v11

    const/4 v12, 0x3

    if-ne v11, v12, :cond_2

    .line 9549
    :cond_1
    const/4 v2, 0x1

    .line 9554
    :cond_2
    :goto_1
    const/4 v3, 0x1

    .line 9556
    .local v3, "isSVoiceInstalled":Z
    :try_start_1
    iget-object v11, p0, Lcom/android/settings/settingssearch/SettingsSearchUtils$SettingsSearchFilterMenu;->mContext:Landroid/content/Context;

    invoke-virtual {v11}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v11

    const-string v12, "com.vlingo.midas"

    const/4 v13, 0x0

    invoke-virtual {v11, v12, v13}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    .line 9557
    const-string v11, "SettingSearch/SettingsSearchUtils"

    const-string v12, "SVoice is installed."

    invoke-static {v11, v12}, Landroid/util/secutil/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_1 .. :try_end_1} :catch_0

    .line 9562
    :goto_2
    if-eqz v3, :cond_3

    if-eqz v2, :cond_4

    .line 9563
    :cond_3
    const-string v11, "SettingSearch/SettingsSearchUtils"

    const-string v12, "svoice_settings is disabled"

    invoke-static {v11, v12}, Landroid/util/secutil/Log;->secI(Ljava/lang/String;Ljava/lang/String;)I

    .line 9564
    const v11, 0x7f100653

    invoke-static {v11}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v11

    invoke-direct {p0, v11}, Lcom/android/settings/settingssearch/SettingsSearchUtils$SettingsSearchFilterMenu;->addRemovePreferenceKey(Ljava/lang/String;)V

    .line 9568
    :cond_4
    invoke-static {}, Lcom/android/settings/Utils;->DisableCloud()Z

    move-result v11

    if-nez v11, :cond_5

    .line 9570
    :try_start_2
    iget-object v11, p0, Lcom/android/settings/settingssearch/SettingsSearchUtils$SettingsSearchFilterMenu;->mContext:Landroid/content/Context;

    invoke-virtual {v11}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v11

    const-string v12, "com.sec.android.cloudagent"

    const/4 v13, 0x5

    invoke-virtual {v11, v12, v13}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;
    :try_end_2
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_2 .. :try_end_2} :catch_1

    .line 9577
    :cond_5
    :goto_3
    iget-object v11, p0, Lcom/android/settings/settingssearch/SettingsSearchUtils$SettingsSearchFilterMenu;->mContext:Landroid/content/Context;

    invoke-virtual {v11}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v11

    const-string v12, "wmanager_connected"

    invoke-static {v11, v12, v10}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v8

    .line 9578
    .local v8, "state":I
    if-ne v8, v9, :cond_1b

    .line 9587
    :goto_4
    invoke-static {}, Landroid/telephony/TelephonyManager;->getDefault()Landroid/telephony/TelephonyManager;

    move-result-object v11

    invoke-virtual {v11}, Landroid/telephony/TelephonyManager;->getSimState()I

    move-result v11

    if-eq v11, v9, :cond_6

    invoke-static {}, Landroid/telephony/TelephonyManager;->getDefault()Landroid/telephony/TelephonyManager;

    move-result-object v11

    invoke-virtual {v11}, Landroid/telephony/TelephonyManager;->getSimState()I

    move-result v11

    if-nez v11, :cond_7

    .line 9589
    :cond_6
    const-string v11, "sim_lock_settings"

    invoke-direct {p0, v11}, Lcom/android/settings/settingssearch/SettingsSearchUtils$SettingsSearchFilterMenu;->addRemovePreferenceKey(Ljava/lang/String;)V

    .line 9590
    const-string v11, "sim_toggle"

    invoke-direct {p0, v11}, Lcom/android/settings/settingssearch/SettingsSearchUtils$SettingsSearchFilterMenu;->addRemovePreferenceKey(Ljava/lang/String;)V

    .line 9591
    const-string v11, "sim_pin"

    invoke-direct {p0, v11}, Lcom/android/settings/settingssearch/SettingsSearchUtils$SettingsSearchFilterMenu;->addRemovePreferenceKey(Ljava/lang/String;)V

    .line 9603
    :cond_7
    iget-object v11, p0, Lcom/android/settings/settingssearch/SettingsSearchUtils$SettingsSearchFilterMenu;->mContext:Landroid/content/Context;

    invoke-virtual {v11}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v11

    const-string v12, "default_input_method"

    invoke-static {v11, v12}, Landroid/provider/Settings$Secure;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 9604
    .local v1, "inputMethodId":Ljava/lang/String;
    const-string v11, "com.sec.android.inputmethod/.SamsungKeypad"

    invoke-virtual {v11, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-nez v11, :cond_8

    .line 9605
    const-string v11, "sip_feedback_sound"

    invoke-direct {p0, v11}, Lcom/android/settings/settingssearch/SettingsSearchUtils$SettingsSearchFilterMenu;->addRemovePreferenceKey(Ljava/lang/String;)V

    .line 9606
    const-string v11, "sip_feedback_vibration"

    invoke-direct {p0, v11}, Lcom/android/settings/settingssearch/SettingsSearchUtils$SettingsSearchFilterMenu;->addRemovePreferenceKey(Ljava/lang/String;)V

    .line 9610
    :cond_8
    iget-object v11, p0, Lcom/android/settings/settingssearch/SettingsSearchUtils$SettingsSearchFilterMenu;->mContext:Landroid/content/Context;

    invoke-virtual {v11}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v11

    const-string v12, "access_control_use"

    invoke-static {v11, v12, v10}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v11

    if-nez v11, :cond_9

    .line 9612
    const-string v11, "direct_accesscontrol"

    invoke-direct {p0, v11}, Lcom/android/settings/settingssearch/SettingsSearchUtils$SettingsSearchFilterMenu;->addRemovePreferenceKey(Ljava/lang/String;)V

    .line 9618
    :cond_9
    const-string v11, "captioning_typeface"

    invoke-direct {p0, v11}, Lcom/android/settings/settingssearch/SettingsSearchUtils$SettingsSearchFilterMenu;->addRemovePreferenceKey(Ljava/lang/String;)V

    .line 9619
    const-string v11, "captioning_foreground_color"

    invoke-direct {p0, v11}, Lcom/android/settings/settingssearch/SettingsSearchUtils$SettingsSearchFilterMenu;->addRemovePreferenceKey(Ljava/lang/String;)V

    .line 9620
    const-string v11, "captioning_edge_type"

    invoke-direct {p0, v11}, Lcom/android/settings/settingssearch/SettingsSearchUtils$SettingsSearchFilterMenu;->addRemovePreferenceKey(Ljava/lang/String;)V

    .line 9621
    const-string v11, "captioning_edge_color"

    invoke-direct {p0, v11}, Lcom/android/settings/settingssearch/SettingsSearchUtils$SettingsSearchFilterMenu;->addRemovePreferenceKey(Ljava/lang/String;)V

    .line 9622
    const-string v11, "captioning_background_color"

    invoke-direct {p0, v11}, Lcom/android/settings/settingssearch/SettingsSearchUtils$SettingsSearchFilterMenu;->addRemovePreferenceKey(Ljava/lang/String;)V

    .line 9623
    const-string v11, "captioning_background_opacity"

    invoke-direct {p0, v11}, Lcom/android/settings/settingssearch/SettingsSearchUtils$SettingsSearchFilterMenu;->addRemovePreferenceKey(Ljava/lang/String;)V

    .line 9624
    const-string v11, "captioning_foreground_opacity"

    invoke-direct {p0, v11}, Lcom/android/settings/settingssearch/SettingsSearchUtils$SettingsSearchFilterMenu;->addRemovePreferenceKey(Ljava/lang/String;)V

    .line 9626
    const-string v11, "captioning_window_color"

    invoke-direct {p0, v11}, Lcom/android/settings/settingssearch/SettingsSearchUtils$SettingsSearchFilterMenu;->addRemovePreferenceKey(Ljava/lang/String;)V

    .line 9627
    const-string v11, "captioning_window_opacity"

    invoke-direct {p0, v11}, Lcom/android/settings/settingssearch/SettingsSearchUtils$SettingsSearchFilterMenu;->addRemovePreferenceKey(Ljava/lang/String;)V

    .line 9631
    const/4 v5, 0x0

    .line 9659
    .local v5, "mIsEmerMode":Z
    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v11

    if-eqz v11, :cond_1c

    move v4, v9

    .line 9661
    .local v4, "isSecondaryUser":Z
    :goto_5
    if-nez v4, :cond_a

    iget-object v11, p0, Lcom/android/settings/settingssearch/SettingsSearchUtils$SettingsSearchFilterMenu;->mContext:Landroid/content/Context;

    invoke-static {v11}, Lcom/android/settings/Utils;->isWifiOnly(Landroid/content/Context;)Z

    move-result v11

    if-eqz v11, :cond_1d

    .line 9662
    :cond_a
    const-string v9, "roaming_settings"

    invoke-direct {p0, v9}, Lcom/android/settings/settingssearch/SettingsSearchUtils$SettingsSearchFilterMenu;->addRemovePreferenceKey(Ljava/lang/String;)V

    .line 9669
    :cond_b
    :goto_6
    if-eqz v4, :cond_c

    .line 9670
    const-string v9, "lockscreen_wallpaper"

    invoke-direct {p0, v9}, Lcom/android/settings/settingssearch/SettingsSearchUtils$SettingsSearchFilterMenu;->addRemovePreferenceKey(Ljava/lang/String;)V

    .line 9671
    const-string v9, "both_wallpaper"

    invoke-direct {p0, v9}, Lcom/android/settings/settingssearch/SettingsSearchUtils$SettingsSearchFilterMenu;->addRemovePreferenceKey(Ljava/lang/String;)V

    .line 9675
    :cond_c
    iget-object v9, p0, Lcom/android/settings/settingssearch/SettingsSearchUtils$SettingsSearchFilterMenu;->mContext:Landroid/content/Context;

    # invokes: Lcom/android/settings/settingssearch/SettingsSearchUtils;->samsungAccountExists(Landroid/content/Context;)Z
    invoke-static {v9}, Lcom/android/settings/settingssearch/SettingsSearchUtils;->access$400(Landroid/content/Context;)Z

    move-result v9

    if-eqz v9, :cond_d

    .line 9676
    const-string v9, "pref_add_samsung_account"

    invoke-direct {p0, v9}, Lcom/android/settings/settingssearch/SettingsSearchUtils$SettingsSearchFilterMenu;->addRemovePreferenceKey(Ljava/lang/String;)V

    .line 9680
    :cond_d
    iget-object v9, p0, Lcom/android/settings/settingssearch/SettingsSearchUtils$SettingsSearchFilterMenu;->mContext:Landroid/content/Context;

    invoke-static {v9}, Lcom/android/settings/Utils;->isCoverVerified(Landroid/content/Context;)Z

    move-result v9

    if-nez v9, :cond_1e

    .line 9681
    const-string v9, "sview_color"

    invoke-direct {p0, v9}, Lcom/android/settings/settingssearch/SettingsSearchUtils$SettingsSearchFilterMenu;->addRemovePreferenceKey(Ljava/lang/String;)V

    .line 9682
    const-string v9, "sview_color_2014"

    invoke-direct {p0, v9}, Lcom/android/settings/settingssearch/SettingsSearchUtils$SettingsSearchFilterMenu;->addRemovePreferenceKey(Ljava/lang/String;)V

    .line 9683
    const-string v9, "sview_mini_wallpaper"

    invoke-direct {p0, v9}, Lcom/android/settings/settingssearch/SettingsSearchUtils$SettingsSearchFilterMenu;->addRemovePreferenceKey(Ljava/lang/String;)V

    .line 9684
    const-string v9, "sview_style_clock"

    invoke-direct {p0, v9}, Lcom/android/settings/settingssearch/SettingsSearchUtils$SettingsSearchFilterMenu;->addRemovePreferenceKey(Ljava/lang/String;)V

    .line 9685
    const-string v9, "sview_edge_cover_settings"

    invoke-direct {p0, v9}, Lcom/android/settings/settingssearch/SettingsSearchUtils$SettingsSearchFilterMenu;->addRemovePreferenceKey(Ljava/lang/String;)V

    .line 9686
    const-string v9, "select_info"

    invoke-direct {p0, v9}, Lcom/android/settings/settingssearch/SettingsSearchUtils$SettingsSearchFilterMenu;->addRemovePreferenceKey(Ljava/lang/String;)V

    .line 9687
    const-string v9, "weather"

    invoke-direct {p0, v9}, Lcom/android/settings/settingssearch/SettingsSearchUtils$SettingsSearchFilterMenu;->addRemovePreferenceKey(Ljava/lang/String;)V

    .line 9688
    const-string v9, "weather_tmr"

    invoke-direct {p0, v9}, Lcom/android/settings/settingssearch/SettingsSearchUtils$SettingsSearchFilterMenu;->addRemovePreferenceKey(Ljava/lang/String;)V

    .line 9689
    const-string v9, "walking_mate"

    invoke-direct {p0, v9}, Lcom/android/settings/settingssearch/SettingsSearchUtils$SettingsSearchFilterMenu;->addRemovePreferenceKey(Ljava/lang/String;)V

    .line 9690
    const-string v9, "scover_airmessage"

    invoke-direct {p0, v9}, Lcom/android/settings/settingssearch/SettingsSearchUtils$SettingsSearchFilterMenu;->addRemovePreferenceKey(Ljava/lang/String;)V

    .line 9691
    const-string v9, "automatic_unlock"

    invoke-direct {p0, v9}, Lcom/android/settings/settingssearch/SettingsSearchUtils$SettingsSearchFilterMenu;->addRemovePreferenceKey(Ljava/lang/String;)V

    .line 9692
    const-string v9, "show_in_call_screen"

    invoke-direct {p0, v9}, Lcom/android/settings/settingssearch/SettingsSearchUtils$SettingsSearchFilterMenu;->addRemovePreferenceKey(Ljava/lang/String;)V

    .line 9702
    :goto_7
    invoke-static {}, Landroid/app/ActivityManager;->getCurrentUser()I

    move-result v9

    if-eqz v9, :cond_e

    .line 9703
    const-string v9, "share_acc_setting_menu"

    invoke-direct {p0, v9}, Lcom/android/settings/settingssearch/SettingsSearchUtils$SettingsSearchFilterMenu;->addRemovePreferenceKey(Ljava/lang/String;)V

    .line 9704
    const-string v9, "shared_accessibility_export_import"

    invoke-direct {p0, v9}, Lcom/android/settings/settingssearch/SettingsSearchUtils$SettingsSearchFilterMenu;->addRemovePreferenceKey(Ljava/lang/String;)V

    .line 9705
    const-string v9, "shared_accessibility_share"

    invoke-direct {p0, v9}, Lcom/android/settings/settingssearch/SettingsSearchUtils$SettingsSearchFilterMenu;->addRemovePreferenceKey(Ljava/lang/String;)V

    .line 9707
    :cond_e
    return-void

    .line 9278
    .end local v1    # "inputMethodId":Ljava/lang/String;
    .end local v2    # "isDisabledSvoice":Z
    .end local v3    # "isSVoiceInstalled":Z
    .end local v4    # "isSecondaryUser":Z
    .end local v5    # "mIsEmerMode":Z
    .end local v7    # "packMgr":Landroid/content/pm/PackageManager;
    .end local v8    # "state":I
    :cond_f
    const-string v11, "lock_after_timeout"

    invoke-direct {p0, v11}, Lcom/android/settings/settingssearch/SettingsSearchUtils$SettingsSearchFilterMenu;->addRemovePreferenceKey(Ljava/lang/String;)V

    .line 9279
    const-string v11, "visiblepattern"

    invoke-direct {p0, v11}, Lcom/android/settings/settingssearch/SettingsSearchUtils$SettingsSearchFilterMenu;->addRemovePreferenceKey(Ljava/lang/String;)V

    .line 9280
    const-string v11, "power_button_instantly_locks"

    invoke-direct {p0, v11}, Lcom/android/settings/settingssearch/SettingsSearchUtils$SettingsSearchFilterMenu;->addRemovePreferenceKey(Ljava/lang/String;)V

    .line 9281
    const-string v11, "biometric_weak_improve_matching"

    invoke-direct {p0, v11}, Lcom/android/settings/settingssearch/SettingsSearchUtils$SettingsSearchFilterMenu;->addRemovePreferenceKey(Ljava/lang/String;)V

    .line 9282
    const-string v11, "visiblesignature"

    invoke-direct {p0, v11}, Lcom/android/settings/settingssearch/SettingsSearchUtils$SettingsSearchFilterMenu;->addRemovePreferenceKey(Ljava/lang/String;)V

    .line 9283
    const-string v11, "signature_verification_level"

    invoke-direct {p0, v11}, Lcom/android/settings/settingssearch/SettingsSearchUtils$SettingsSearchFilterMenu;->addRemovePreferenceKey(Ljava/lang/String;)V

    .line 9284
    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v11

    if-eqz v11, :cond_10

    .line 9285
    const-string v11, "unlock_effect"

    invoke-direct {p0, v11}, Lcom/android/settings/settingssearch/SettingsSearchUtils$SettingsSearchFilterMenu;->addRemovePreferenceKey(Ljava/lang/String;)V

    .line 9286
    const-string v11, "unlock_effect_with_preview"

    invoke-direct {p0, v11}, Lcom/android/settings/settingssearch/SettingsSearchUtils$SettingsSearchFilterMenu;->addRemovePreferenceKey(Ljava/lang/String;)V

    .line 9287
    const-string v11, "ink_effect"

    invoke-direct {p0, v11}, Lcom/android/settings/settingssearch/SettingsSearchUtils$SettingsSearchFilterMenu;->addRemovePreferenceKey(Ljava/lang/String;)V

    .line 9289
    :cond_10
    const/4 v11, 0x0

    invoke-static {v11}, Lcom/android/settings/Utils;->isTablet(Landroid/content/Context;)Z

    move-result v11

    if-eqz v11, :cond_11

    .line 9290
    const-string v11, "clock_weather"

    invoke-direct {p0, v11}, Lcom/android/settings/settingssearch/SettingsSearchUtils$SettingsSearchFilterMenu;->addRemovePreferenceKey(Ljava/lang/String;)V

    .line 9291
    :cond_11
    const-string v11, "vibration_feedback"

    invoke-direct {p0, v11}, Lcom/android/settings/settingssearch/SettingsSearchUtils$SettingsSearchFilterMenu;->addRemovePreferenceKey(Ljava/lang/String;)V

    .line 9292
    const-string v11, "pattern_type"

    invoke-direct {p0, v11}, Lcom/android/settings/settingssearch/SettingsSearchUtils$SettingsSearchFilterMenu;->addRemovePreferenceKey(Ljava/lang/String;)V

    .line 9293
    const-string v11, "pattern_type_with_preview"

    invoke-direct {p0, v11}, Lcom/android/settings/settingssearch/SettingsSearchUtils$SettingsSearchFilterMenu;->addRemovePreferenceKey(Ljava/lang/String;)V

    .line 9294
    const-string v11, "auto_swipe"

    invoke-direct {p0, v11}, Lcom/android/settings/settingssearch/SettingsSearchUtils$SettingsSearchFilterMenu;->addRemovePreferenceKey(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 9296
    :cond_12
    invoke-virtual {v6}, Lcom/android/internal/widget/LockPatternUtils;->usingBiometricWeak()Z

    move-result v11

    if-eqz v11, :cond_13

    invoke-virtual {v6}, Lcom/android/internal/widget/LockPatternUtils;->isBiometricWeakInstalled()Z

    move-result v11

    if-eqz v11, :cond_13

    .line 9298
    const-string v11, "unlock_effect"

    invoke-direct {p0, v11}, Lcom/android/settings/settingssearch/SettingsSearchUtils$SettingsSearchFilterMenu;->addRemovePreferenceKey(Ljava/lang/String;)V

    .line 9299
    const-string v11, "unlock_effect_with_preview"

    invoke-direct {p0, v11}, Lcom/android/settings/settingssearch/SettingsSearchUtils$SettingsSearchFilterMenu;->addRemovePreferenceKey(Ljava/lang/String;)V

    .line 9300
    const-string v11, "ink_effect"

    invoke-direct {p0, v11}, Lcom/android/settings/settingssearch/SettingsSearchUtils$SettingsSearchFilterMenu;->addRemovePreferenceKey(Ljava/lang/String;)V

    .line 9301
    const-string v11, "lock_screen_wakeup_settings"

    invoke-direct {p0, v11}, Lcom/android/settings/settingssearch/SettingsSearchUtils$SettingsSearchFilterMenu;->addRemovePreferenceKey(Ljava/lang/String;)V

    .line 9302
    const-string v11, "multiple_lock_screenswitch"

    invoke-direct {p0, v11}, Lcom/android/settings/settingssearch/SettingsSearchUtils$SettingsSearchFilterMenu;->addRemovePreferenceKey(Ljava/lang/String;)V

    .line 9303
    const-string v11, "lock_screen_shortcut_menu"

    invoke-direct {p0, v11}, Lcom/android/settings/settingssearch/SettingsSearchUtils$SettingsSearchFilterMenu;->addRemovePreferenceKey(Ljava/lang/String;)V

    .line 9304
    const-string v11, "visiblepattern"

    invoke-direct {p0, v11}, Lcom/android/settings/settingssearch/SettingsSearchUtils$SettingsSearchFilterMenu;->addRemovePreferenceKey(Ljava/lang/String;)V

    .line 9305
    const-string v11, "help_text"

    invoke-direct {p0, v11}, Lcom/android/settings/settingssearch/SettingsSearchUtils$SettingsSearchFilterMenu;->addRemovePreferenceKey(Ljava/lang/String;)V

    .line 9306
    const-string v11, "visiblesignature"

    invoke-direct {p0, v11}, Lcom/android/settings/settingssearch/SettingsSearchUtils$SettingsSearchFilterMenu;->addRemovePreferenceKey(Ljava/lang/String;)V

    .line 9307
    const-string v11, "signature_verification_level"

    invoke-direct {p0, v11}, Lcom/android/settings/settingssearch/SettingsSearchUtils$SettingsSearchFilterMenu;->addRemovePreferenceKey(Ljava/lang/String;)V

    .line 9308
    const-string v11, "additional_information"

    invoke-direct {p0, v11}, Lcom/android/settings/settingssearch/SettingsSearchUtils$SettingsSearchFilterMenu;->addRemovePreferenceKey(Ljava/lang/String;)V

    .line 9309
    const-string v11, "lock_info_weather"

    invoke-direct {p0, v11}, Lcom/android/settings/settingssearch/SettingsSearchUtils$SettingsSearchFilterMenu;->addRemovePreferenceKey(Ljava/lang/String;)V

    .line 9310
    const-string v11, "upcoming_event"

    invoke-direct {p0, v11}, Lcom/android/settings/settingssearch/SettingsSearchUtils$SettingsSearchFilterMenu;->addRemovePreferenceKey(Ljava/lang/String;)V

    .line 9311
    const-string v11, "steps"

    invoke-direct {p0, v11}, Lcom/android/settings/settingssearch/SettingsSearchUtils$SettingsSearchFilterMenu;->addRemovePreferenceKey(Ljava/lang/String;)V

    .line 9312
    const-string v11, "vibration_feedback"

    invoke-direct {p0, v11}, Lcom/android/settings/settingssearch/SettingsSearchUtils$SettingsSearchFilterMenu;->addRemovePreferenceKey(Ljava/lang/String;)V

    .line 9316
    const-string v11, "pattern_type"

    invoke-direct {p0, v11}, Lcom/android/settings/settingssearch/SettingsSearchUtils$SettingsSearchFilterMenu;->addRemovePreferenceKey(Ljava/lang/String;)V

    .line 9317
    const-string v11, "pattern_type_with_preview"

    invoke-direct {p0, v11}, Lcom/android/settings/settingssearch/SettingsSearchUtils$SettingsSearchFilterMenu;->addRemovePreferenceKey(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 9339
    :cond_13
    invoke-virtual {v6}, Lcom/android/internal/widget/LockPatternUtils;->getKeyguardStoredPasswordQuality()I

    move-result v11

    sparse-switch v11, :sswitch_data_0

    goto/16 :goto_0

    .line 9341
    :sswitch_1
    const-string v11, "biometric_weak_improve_matching"

    invoke-direct {p0, v11}, Lcom/android/settings/settingssearch/SettingsSearchUtils$SettingsSearchFilterMenu;->addRemovePreferenceKey(Ljava/lang/String;)V

    .line 9342
    const-string v11, "NONE"

    const-string v12, "WATERCOLOUR"

    invoke-virtual {v11, v12}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v11

    if-eqz v11, :cond_14

    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v11

    if-eqz v11, :cond_15

    .line 9343
    :cond_14
    const-string v11, "unlock_effect"

    invoke-direct {p0, v11}, Lcom/android/settings/settingssearch/SettingsSearchUtils$SettingsSearchFilterMenu;->addRemovePreferenceKey(Ljava/lang/String;)V

    .line 9344
    const-string v11, "unlock_effect_with_preview"

    invoke-direct {p0, v11}, Lcom/android/settings/settingssearch/SettingsSearchUtils$SettingsSearchFilterMenu;->addRemovePreferenceKey(Ljava/lang/String;)V

    .line 9346
    :cond_15
    const-string v11, "ink_effect"

    invoke-direct {p0, v11}, Lcom/android/settings/settingssearch/SettingsSearchUtils$SettingsSearchFilterMenu;->addRemovePreferenceKey(Ljava/lang/String;)V

    .line 9347
    const-string v11, "lock_screen_wakeup_settings"

    invoke-direct {p0, v11}, Lcom/android/settings/settingssearch/SettingsSearchUtils$SettingsSearchFilterMenu;->addRemovePreferenceKey(Ljava/lang/String;)V

    .line 9348
    const-string v11, "multiple_lock_screenswitch"

    invoke-direct {p0, v11}, Lcom/android/settings/settingssearch/SettingsSearchUtils$SettingsSearchFilterMenu;->addRemovePreferenceKey(Ljava/lang/String;)V

    .line 9349
    const-string v11, "lock_screen_shortcut_menu"

    invoke-direct {p0, v11}, Lcom/android/settings/settingssearch/SettingsSearchUtils$SettingsSearchFilterMenu;->addRemovePreferenceKey(Ljava/lang/String;)V

    .line 9350
    const-string v11, "help_text"

    invoke-direct {p0, v11}, Lcom/android/settings/settingssearch/SettingsSearchUtils$SettingsSearchFilterMenu;->addRemovePreferenceKey(Ljava/lang/String;)V

    .line 9351
    const-string v11, "visiblesignature"

    invoke-direct {p0, v11}, Lcom/android/settings/settingssearch/SettingsSearchUtils$SettingsSearchFilterMenu;->addRemovePreferenceKey(Ljava/lang/String;)V

    .line 9352
    const-string v11, "signature_verification_level"

    invoke-direct {p0, v11}, Lcom/android/settings/settingssearch/SettingsSearchUtils$SettingsSearchFilterMenu;->addRemovePreferenceKey(Ljava/lang/String;)V

    .line 9353
    const-string v11, "clock_weather"

    invoke-direct {p0, v11}, Lcom/android/settings/settingssearch/SettingsSearchUtils$SettingsSearchFilterMenu;->addRemovePreferenceKey(Ljava/lang/String;)V

    .line 9354
    const-string v11, "additional_information"

    invoke-direct {p0, v11}, Lcom/android/settings/settingssearch/SettingsSearchUtils$SettingsSearchFilterMenu;->addRemovePreferenceKey(Ljava/lang/String;)V

    .line 9355
    const-string v11, "lock_info_weather"

    invoke-direct {p0, v11}, Lcom/android/settings/settingssearch/SettingsSearchUtils$SettingsSearchFilterMenu;->addRemovePreferenceKey(Ljava/lang/String;)V

    .line 9356
    const-string v11, "upcoming_event"

    invoke-direct {p0, v11}, Lcom/android/settings/settingssearch/SettingsSearchUtils$SettingsSearchFilterMenu;->addRemovePreferenceKey(Ljava/lang/String;)V

    .line 9357
    const-string v11, "steps"

    invoke-direct {p0, v11}, Lcom/android/settings/settingssearch/SettingsSearchUtils$SettingsSearchFilterMenu;->addRemovePreferenceKey(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 9363
    :sswitch_2
    const-string v11, "biometric_weak_improve_matching"

    invoke-direct {p0, v11}, Lcom/android/settings/settingssearch/SettingsSearchUtils$SettingsSearchFilterMenu;->addRemovePreferenceKey(Ljava/lang/String;)V

    .line 9364
    const-string v11, "unlock_effect"

    invoke-direct {p0, v11}, Lcom/android/settings/settingssearch/SettingsSearchUtils$SettingsSearchFilterMenu;->addRemovePreferenceKey(Ljava/lang/String;)V

    .line 9365
    const-string v11, "unlock_effect_with_preview"

    invoke-direct {p0, v11}, Lcom/android/settings/settingssearch/SettingsSearchUtils$SettingsSearchFilterMenu;->addRemovePreferenceKey(Ljava/lang/String;)V

    .line 9366
    const-string v11, "ink_effect"

    invoke-direct {p0, v11}, Lcom/android/settings/settingssearch/SettingsSearchUtils$SettingsSearchFilterMenu;->addRemovePreferenceKey(Ljava/lang/String;)V

    .line 9367
    const-string v11, "lock_screen_wakeup_settings"

    invoke-direct {p0, v11}, Lcom/android/settings/settingssearch/SettingsSearchUtils$SettingsSearchFilterMenu;->addRemovePreferenceKey(Ljava/lang/String;)V

    .line 9368
    const-string v11, "multiple_lock_screenswitch"

    invoke-direct {p0, v11}, Lcom/android/settings/settingssearch/SettingsSearchUtils$SettingsSearchFilterMenu;->addRemovePreferenceKey(Ljava/lang/String;)V

    .line 9369
    const-string v11, "lock_screen_shortcut_menu"

    invoke-direct {p0, v11}, Lcom/android/settings/settingssearch/SettingsSearchUtils$SettingsSearchFilterMenu;->addRemovePreferenceKey(Ljava/lang/String;)V

    .line 9370
    const-string v11, "visiblepattern"

    invoke-direct {p0, v11}, Lcom/android/settings/settingssearch/SettingsSearchUtils$SettingsSearchFilterMenu;->addRemovePreferenceKey(Ljava/lang/String;)V

    .line 9371
    const-string v11, "help_text"

    invoke-direct {p0, v11}, Lcom/android/settings/settingssearch/SettingsSearchUtils$SettingsSearchFilterMenu;->addRemovePreferenceKey(Ljava/lang/String;)V

    .line 9372
    const-string v11, "visiblesignature"

    invoke-direct {p0, v11}, Lcom/android/settings/settingssearch/SettingsSearchUtils$SettingsSearchFilterMenu;->addRemovePreferenceKey(Ljava/lang/String;)V

    .line 9373
    const-string v11, "signature_verification_level"

    invoke-direct {p0, v11}, Lcom/android/settings/settingssearch/SettingsSearchUtils$SettingsSearchFilterMenu;->addRemovePreferenceKey(Ljava/lang/String;)V

    .line 9374
    const-string v11, "additional_information"

    invoke-direct {p0, v11}, Lcom/android/settings/settingssearch/SettingsSearchUtils$SettingsSearchFilterMenu;->addRemovePreferenceKey(Ljava/lang/String;)V

    .line 9375
    const-string v11, "lock_info_weather"

    invoke-direct {p0, v11}, Lcom/android/settings/settingssearch/SettingsSearchUtils$SettingsSearchFilterMenu;->addRemovePreferenceKey(Ljava/lang/String;)V

    .line 9376
    const-string v11, "upcoming_event"

    invoke-direct {p0, v11}, Lcom/android/settings/settingssearch/SettingsSearchUtils$SettingsSearchFilterMenu;->addRemovePreferenceKey(Ljava/lang/String;)V

    .line 9377
    const-string v11, "steps"

    invoke-direct {p0, v11}, Lcom/android/settings/settingssearch/SettingsSearchUtils$SettingsSearchFilterMenu;->addRemovePreferenceKey(Ljava/lang/String;)V

    .line 9378
    const-string v11, "vibration_feedback"

    invoke-direct {p0, v11}, Lcom/android/settings/settingssearch/SettingsSearchUtils$SettingsSearchFilterMenu;->addRemovePreferenceKey(Ljava/lang/String;)V

    .line 9382
    const-string v11, "pattern_type"

    invoke-direct {p0, v11}, Lcom/android/settings/settingssearch/SettingsSearchUtils$SettingsSearchFilterMenu;->addRemovePreferenceKey(Ljava/lang/String;)V

    .line 9383
    const-string v11, "pattern_type_with_preview"

    invoke-direct {p0, v11}, Lcom/android/settings/settingssearch/SettingsSearchUtils$SettingsSearchFilterMenu;->addRemovePreferenceKey(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 9386
    :sswitch_3
    const-string v11, "biometric_weak_improve_matching"

    invoke-direct {p0, v11}, Lcom/android/settings/settingssearch/SettingsSearchUtils$SettingsSearchFilterMenu;->addRemovePreferenceKey(Ljava/lang/String;)V

    .line 9387
    const-string v11, "unlock_effect"

    invoke-direct {p0, v11}, Lcom/android/settings/settingssearch/SettingsSearchUtils$SettingsSearchFilterMenu;->addRemovePreferenceKey(Ljava/lang/String;)V

    .line 9388
    const-string v11, "unlock_effect_with_preview"

    invoke-direct {p0, v11}, Lcom/android/settings/settingssearch/SettingsSearchUtils$SettingsSearchFilterMenu;->addRemovePreferenceKey(Ljava/lang/String;)V

    .line 9389
    const-string v11, "ink_effect"

    invoke-direct {p0, v11}, Lcom/android/settings/settingssearch/SettingsSearchUtils$SettingsSearchFilterMenu;->addRemovePreferenceKey(Ljava/lang/String;)V

    .line 9390
    const-string v11, "lock_screen_wakeup_settings"

    invoke-direct {p0, v11}, Lcom/android/settings/settingssearch/SettingsSearchUtils$SettingsSearchFilterMenu;->addRemovePreferenceKey(Ljava/lang/String;)V

    .line 9391
    const-string v11, "multiple_lock_screenswitch"

    invoke-direct {p0, v11}, Lcom/android/settings/settingssearch/SettingsSearchUtils$SettingsSearchFilterMenu;->addRemovePreferenceKey(Ljava/lang/String;)V

    .line 9392
    const-string v11, "lock_screen_shortcut_menu"

    invoke-direct {p0, v11}, Lcom/android/settings/settingssearch/SettingsSearchUtils$SettingsSearchFilterMenu;->addRemovePreferenceKey(Ljava/lang/String;)V

    .line 9393
    const-string v11, "visiblepattern"

    invoke-direct {p0, v11}, Lcom/android/settings/settingssearch/SettingsSearchUtils$SettingsSearchFilterMenu;->addRemovePreferenceKey(Ljava/lang/String;)V

    .line 9394
    const-string v11, "help_text"

    invoke-direct {p0, v11}, Lcom/android/settings/settingssearch/SettingsSearchUtils$SettingsSearchFilterMenu;->addRemovePreferenceKey(Ljava/lang/String;)V

    .line 9395
    const-string v11, "visiblesignature"

    invoke-direct {p0, v11}, Lcom/android/settings/settingssearch/SettingsSearchUtils$SettingsSearchFilterMenu;->addRemovePreferenceKey(Ljava/lang/String;)V

    .line 9396
    const-string v11, "signature_verification_level"

    invoke-direct {p0, v11}, Lcom/android/settings/settingssearch/SettingsSearchUtils$SettingsSearchFilterMenu;->addRemovePreferenceKey(Ljava/lang/String;)V

    .line 9397
    const-string v11, "clock_weather"

    invoke-direct {p0, v11}, Lcom/android/settings/settingssearch/SettingsSearchUtils$SettingsSearchFilterMenu;->addRemovePreferenceKey(Ljava/lang/String;)V

    .line 9398
    const-string v11, "vibration_feedback"

    invoke-direct {p0, v11}, Lcom/android/settings/settingssearch/SettingsSearchUtils$SettingsSearchFilterMenu;->addRemovePreferenceKey(Ljava/lang/String;)V

    .line 9402
    const-string v11, "pattern_type"

    invoke-direct {p0, v11}, Lcom/android/settings/settingssearch/SettingsSearchUtils$SettingsSearchFilterMenu;->addRemovePreferenceKey(Ljava/lang/String;)V

    .line 9403
    const-string v11, "pattern_type_with_preview"

    invoke-direct {p0, v11}, Lcom/android/settings/settingssearch/SettingsSearchUtils$SettingsSearchFilterMenu;->addRemovePreferenceKey(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 9428
    :sswitch_4
    const-string v11, "biometric_weak_improve_matching"

    invoke-direct {p0, v11}, Lcom/android/settings/settingssearch/SettingsSearchUtils$SettingsSearchFilterMenu;->addRemovePreferenceKey(Ljava/lang/String;)V

    .line 9429
    const-string v11, "unlock_effect"

    invoke-direct {p0, v11}, Lcom/android/settings/settingssearch/SettingsSearchUtils$SettingsSearchFilterMenu;->addRemovePreferenceKey(Ljava/lang/String;)V

    .line 9430
    const-string v11, "unlock_effect_with_preview"

    invoke-direct {p0, v11}, Lcom/android/settings/settingssearch/SettingsSearchUtils$SettingsSearchFilterMenu;->addRemovePreferenceKey(Ljava/lang/String;)V

    .line 9431
    const-string v11, "ink_effect"

    invoke-direct {p0, v11}, Lcom/android/settings/settingssearch/SettingsSearchUtils$SettingsSearchFilterMenu;->addRemovePreferenceKey(Ljava/lang/String;)V

    .line 9432
    const-string v11, "lock_screen_wakeup_settings"

    invoke-direct {p0, v11}, Lcom/android/settings/settingssearch/SettingsSearchUtils$SettingsSearchFilterMenu;->addRemovePreferenceKey(Ljava/lang/String;)V

    .line 9433
    const-string v11, "multiple_lock_screenswitch"

    invoke-direct {p0, v11}, Lcom/android/settings/settingssearch/SettingsSearchUtils$SettingsSearchFilterMenu;->addRemovePreferenceKey(Ljava/lang/String;)V

    .line 9434
    const-string v11, "lock_screen_shortcut_menu"

    invoke-direct {p0, v11}, Lcom/android/settings/settingssearch/SettingsSearchUtils$SettingsSearchFilterMenu;->addRemovePreferenceKey(Ljava/lang/String;)V

    .line 9435
    const-string v11, "visiblepattern"

    invoke-direct {p0, v11}, Lcom/android/settings/settingssearch/SettingsSearchUtils$SettingsSearchFilterMenu;->addRemovePreferenceKey(Ljava/lang/String;)V

    .line 9436
    const-string v11, "help_text"

    invoke-direct {p0, v11}, Lcom/android/settings/settingssearch/SettingsSearchUtils$SettingsSearchFilterMenu;->addRemovePreferenceKey(Ljava/lang/String;)V

    .line 9437
    const-string v11, "visiblesignature"

    invoke-direct {p0, v11}, Lcom/android/settings/settingssearch/SettingsSearchUtils$SettingsSearchFilterMenu;->addRemovePreferenceKey(Ljava/lang/String;)V

    .line 9438
    const-string v11, "signature_verification_level"

    invoke-direct {p0, v11}, Lcom/android/settings/settingssearch/SettingsSearchUtils$SettingsSearchFilterMenu;->addRemovePreferenceKey(Ljava/lang/String;)V

    .line 9439
    const-string v11, "clock_weather"

    invoke-direct {p0, v11}, Lcom/android/settings/settingssearch/SettingsSearchUtils$SettingsSearchFilterMenu;->addRemovePreferenceKey(Ljava/lang/String;)V

    .line 9440
    const-string v11, "vibration_feedback"

    invoke-direct {p0, v11}, Lcom/android/settings/settingssearch/SettingsSearchUtils$SettingsSearchFilterMenu;->addRemovePreferenceKey(Ljava/lang/String;)V

    .line 9444
    const-string v11, "pattern_type"

    invoke-direct {p0, v11}, Lcom/android/settings/settingssearch/SettingsSearchUtils$SettingsSearchFilterMenu;->addRemovePreferenceKey(Ljava/lang/String;)V

    .line 9445
    const-string v11, "pattern_type_with_preview"

    invoke-direct {p0, v11}, Lcom/android/settings/settingssearch/SettingsSearchUtils$SettingsSearchFilterMenu;->addRemovePreferenceKey(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 9450
    :cond_16
    invoke-virtual {v6}, Lcom/android/internal/widget/LockPatternUtils;->isSecure()Z

    move-result v11

    if-nez v11, :cond_18

    .line 9451
    invoke-virtual {v6}, Lcom/android/internal/widget/LockPatternUtils;->isLockScreenDisabled()Z

    move-result v11

    if-eqz v11, :cond_17

    .line 9452
    const-string v11, "lock_screen_widget_options"

    invoke-direct {p0, v11}, Lcom/android/settings/settingssearch/SettingsSearchUtils$SettingsSearchFilterMenu;->addRemovePreferenceKey(Ljava/lang/String;)V

    .line 9453
    const-string v11, "lock_screen_shortcut_menu"

    invoke-direct {p0, v11}, Lcom/android/settings/settingssearch/SettingsSearchUtils$SettingsSearchFilterMenu;->addRemovePreferenceKey(Ljava/lang/String;)V

    .line 9454
    const-string v11, "safetyzone_settings"

    invoke-direct {p0, v11}, Lcom/android/settings/settingssearch/SettingsSearchUtils$SettingsSearchFilterMenu;->addRemovePreferenceKey(Ljava/lang/String;)V

    .line 9455
    const-string v11, "unlock_effect"

    invoke-direct {p0, v11}, Lcom/android/settings/settingssearch/SettingsSearchUtils$SettingsSearchFilterMenu;->addRemovePreferenceKey(Ljava/lang/String;)V

    .line 9456
    const-string v11, "unlock_effect_with_preview"

    invoke-direct {p0, v11}, Lcom/android/settings/settingssearch/SettingsSearchUtils$SettingsSearchFilterMenu;->addRemovePreferenceKey(Ljava/lang/String;)V

    .line 9457
    const-string v11, "help_text"

    invoke-direct {p0, v11}, Lcom/android/settings/settingssearch/SettingsSearchUtils$SettingsSearchFilterMenu;->addRemovePreferenceKey(Ljava/lang/String;)V

    .line 9458
    const-string v11, "say_your_wakeup"

    invoke-direct {p0, v11}, Lcom/android/settings/settingssearch/SettingsSearchUtils$SettingsSearchFilterMenu;->addRemovePreferenceKey(Ljava/lang/String;)V

    .line 9459
    const-string v11, "set_wakeup_command"

    invoke-direct {p0, v11}, Lcom/android/settings/settingssearch/SettingsSearchUtils$SettingsSearchFilterMenu;->addRemovePreferenceKey(Ljava/lang/String;)V

    .line 9460
    const-string v11, "multiple_lock_screen"

    invoke-direct {p0, v11}, Lcom/android/settings/settingssearch/SettingsSearchUtils$SettingsSearchFilterMenu;->addRemovePreferenceKey(Ljava/lang/String;)V

    .line 9461
    const-string v11, "biometric_weak_improve_matching"

    invoke-direct {p0, v11}, Lcom/android/settings/settingssearch/SettingsSearchUtils$SettingsSearchFilterMenu;->addRemovePreferenceKey(Ljava/lang/String;)V

    .line 9462
    const-string v11, "biometric_weak_liveliness"

    invoke-direct {p0, v11}, Lcom/android/settings/settingssearch/SettingsSearchUtils$SettingsSearchFilterMenu;->addRemovePreferenceKey(Ljava/lang/String;)V

    .line 9463
    const-string v11, "lock_after_timeout"

    invoke-direct {p0, v11}, Lcom/android/settings/settingssearch/SettingsSearchUtils$SettingsSearchFilterMenu;->addRemovePreferenceKey(Ljava/lang/String;)V

    .line 9464
    const-string v11, "power_button_instantly_locks"

    invoke-direct {p0, v11}, Lcom/android/settings/settingssearch/SettingsSearchUtils$SettingsSearchFilterMenu;->addRemovePreferenceKey(Ljava/lang/String;)V

    .line 9465
    const-string v11, "visiblepattern"

    invoke-direct {p0, v11}, Lcom/android/settings/settingssearch/SettingsSearchUtils$SettingsSearchFilterMenu;->addRemovePreferenceKey(Ljava/lang/String;)V

    .line 9466
    const-string v11, "visiblesignature"

    invoke-direct {p0, v11}, Lcom/android/settings/settingssearch/SettingsSearchUtils$SettingsSearchFilterMenu;->addRemovePreferenceKey(Ljava/lang/String;)V

    .line 9467
    const-string v11, "signature_verification_level"

    invoke-direct {p0, v11}, Lcom/android/settings/settingssearch/SettingsSearchUtils$SettingsSearchFilterMenu;->addRemovePreferenceKey(Ljava/lang/String;)V

    .line 9468
    const-string v11, "additional_information"

    invoke-direct {p0, v11}, Lcom/android/settings/settingssearch/SettingsSearchUtils$SettingsSearchFilterMenu;->addRemovePreferenceKey(Ljava/lang/String;)V

    .line 9469
    const-string v11, "lock_info_weather"

    invoke-direct {p0, v11}, Lcom/android/settings/settingssearch/SettingsSearchUtils$SettingsSearchFilterMenu;->addRemovePreferenceKey(Ljava/lang/String;)V

    .line 9470
    const-string v11, "upcoming_event"

    invoke-direct {p0, v11}, Lcom/android/settings/settingssearch/SettingsSearchUtils$SettingsSearchFilterMenu;->addRemovePreferenceKey(Ljava/lang/String;)V

    .line 9471
    const-string v11, "steps"

    invoke-direct {p0, v11}, Lcom/android/settings/settingssearch/SettingsSearchUtils$SettingsSearchFilterMenu;->addRemovePreferenceKey(Ljava/lang/String;)V

    .line 9472
    const-string v11, "clock_size"

    invoke-direct {p0, v11}, Lcom/android/settings/settingssearch/SettingsSearchUtils$SettingsSearchFilterMenu;->addRemovePreferenceKey(Ljava/lang/String;)V

    .line 9473
    const-string v11, "clock_size_with_preview"

    invoke-direct {p0, v11}, Lcom/android/settings/settingssearch/SettingsSearchUtils$SettingsSearchFilterMenu;->addRemovePreferenceKey(Ljava/lang/String;)V

    .line 9474
    const-string v11, "show_information"

    invoke-direct {p0, v11}, Lcom/android/settings/settingssearch/SettingsSearchUtils$SettingsSearchFilterMenu;->addRemovePreferenceKey(Ljava/lang/String;)V

    .line 9475
    const-string v11, "pattern_type"

    invoke-direct {p0, v11}, Lcom/android/settings/settingssearch/SettingsSearchUtils$SettingsSearchFilterMenu;->addRemovePreferenceKey(Ljava/lang/String;)V

    .line 9476
    const-string v11, "pattern_type_with_preview"

    invoke-direct {p0, v11}, Lcom/android/settings/settingssearch/SettingsSearchUtils$SettingsSearchFilterMenu;->addRemovePreferenceKey(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 9478
    :cond_17
    const-string v11, "biometric_weak_improve_matching"

    invoke-direct {p0, v11}, Lcom/android/settings/settingssearch/SettingsSearchUtils$SettingsSearchFilterMenu;->addRemovePreferenceKey(Ljava/lang/String;)V

    .line 9479
    const-string v11, "biometric_weak_liveliness"

    invoke-direct {p0, v11}, Lcom/android/settings/settingssearch/SettingsSearchUtils$SettingsSearchFilterMenu;->addRemovePreferenceKey(Ljava/lang/String;)V

    .line 9480
    const-string v11, "lock_after_timeout"

    invoke-direct {p0, v11}, Lcom/android/settings/settingssearch/SettingsSearchUtils$SettingsSearchFilterMenu;->addRemovePreferenceKey(Ljava/lang/String;)V

    .line 9481
    const-string v11, "power_button_instantly_locks"

    invoke-direct {p0, v11}, Lcom/android/settings/settingssearch/SettingsSearchUtils$SettingsSearchFilterMenu;->addRemovePreferenceKey(Ljava/lang/String;)V

    .line 9482
    const-string v11, "visiblepattern"

    invoke-direct {p0, v11}, Lcom/android/settings/settingssearch/SettingsSearchUtils$SettingsSearchFilterMenu;->addRemovePreferenceKey(Ljava/lang/String;)V

    .line 9483
    const-string v11, "visiblesignature"

    invoke-direct {p0, v11}, Lcom/android/settings/settingssearch/SettingsSearchUtils$SettingsSearchFilterMenu;->addRemovePreferenceKey(Ljava/lang/String;)V

    .line 9484
    const-string v11, "signature_verification_level"

    invoke-direct {p0, v11}, Lcom/android/settings/settingssearch/SettingsSearchUtils$SettingsSearchFilterMenu;->addRemovePreferenceKey(Ljava/lang/String;)V

    .line 9485
    const-string v11, "pattern_type"

    invoke-direct {p0, v11}, Lcom/android/settings/settingssearch/SettingsSearchUtils$SettingsSearchFilterMenu;->addRemovePreferenceKey(Ljava/lang/String;)V

    .line 9486
    const-string v11, "pattern_type_with_preview"

    invoke-direct {p0, v11}, Lcom/android/settings/settingssearch/SettingsSearchUtils$SettingsSearchFilterMenu;->addRemovePreferenceKey(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 9488
    :cond_18
    invoke-virtual {v6}, Lcom/android/internal/widget/LockPatternUtils;->usingBiometricWeak()Z

    move-result v11

    if-eqz v11, :cond_1a

    invoke-virtual {v6}, Lcom/android/internal/widget/LockPatternUtils;->isBiometricWeakInstalled()Z

    move-result v11

    if-eqz v11, :cond_1a

    .line 9490
    const-string v11, "lock_screen_shortcut_menu"

    invoke-direct {p0, v11}, Lcom/android/settings/settingssearch/SettingsSearchUtils$SettingsSearchFilterMenu;->addRemovePreferenceKey(Ljava/lang/String;)V

    .line 9491
    const-string v11, "unlock_effect"

    invoke-direct {p0, v11}, Lcom/android/settings/settingssearch/SettingsSearchUtils$SettingsSearchFilterMenu;->addRemovePreferenceKey(Ljava/lang/String;)V

    .line 9492
    const-string v11, "unlock_effect_with_preview"

    invoke-direct {p0, v11}, Lcom/android/settings/settingssearch/SettingsSearchUtils$SettingsSearchFilterMenu;->addRemovePreferenceKey(Ljava/lang/String;)V

    .line 9493
    const-string v11, "help_text"

    invoke-direct {p0, v11}, Lcom/android/settings/settingssearch/SettingsSearchUtils$SettingsSearchFilterMenu;->addRemovePreferenceKey(Ljava/lang/String;)V

    .line 9494
    const-string v11, "say_your_wakeup"

    invoke-direct {p0, v11}, Lcom/android/settings/settingssearch/SettingsSearchUtils$SettingsSearchFilterMenu;->addRemovePreferenceKey(Ljava/lang/String;)V

    .line 9495
    const-string v11, "set_wakeup_command"

    invoke-direct {p0, v11}, Lcom/android/settings/settingssearch/SettingsSearchUtils$SettingsSearchFilterMenu;->addRemovePreferenceKey(Ljava/lang/String;)V

    .line 9496
    const-string v11, "signature_verification_level"

    invoke-direct {p0, v11}, Lcom/android/settings/settingssearch/SettingsSearchUtils$SettingsSearchFilterMenu;->addRemovePreferenceKey(Ljava/lang/String;)V

    .line 9497
    invoke-virtual {v6}, Lcom/android/internal/widget/LockPatternUtils;->getKeyguardStoredPasswordQuality()I

    move-result v11

    const/high16 v12, 0x20000

    if-ne v11, v12, :cond_19

    .line 9498
    const-string v11, "visiblepattern"

    invoke-direct {p0, v11}, Lcom/android/settings/settingssearch/SettingsSearchUtils$SettingsSearchFilterMenu;->addRemovePreferenceKey(Ljava/lang/String;)V

    .line 9500
    :cond_19
    const-string v11, "visiblesignature"

    invoke-direct {p0, v11}, Lcom/android/settings/settingssearch/SettingsSearchUtils$SettingsSearchFilterMenu;->addRemovePreferenceKey(Ljava/lang/String;)V

    .line 9501
    const-string v11, "pattern_type"

    invoke-direct {p0, v11}, Lcom/android/settings/settingssearch/SettingsSearchUtils$SettingsSearchFilterMenu;->addRemovePreferenceKey(Ljava/lang/String;)V

    .line 9502
    const-string v11, "pattern_type_with_preview"

    invoke-direct {p0, v11}, Lcom/android/settings/settingssearch/SettingsSearchUtils$SettingsSearchFilterMenu;->addRemovePreferenceKey(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 9504
    :cond_1a
    const-string v11, "lock_screen_shortcut_menu"

    invoke-direct {p0, v11}, Lcom/android/settings/settingssearch/SettingsSearchUtils$SettingsSearchFilterMenu;->addRemovePreferenceKey(Ljava/lang/String;)V

    .line 9505
    const-string v11, "unlock_effect"

    invoke-direct {p0, v11}, Lcom/android/settings/settingssearch/SettingsSearchUtils$SettingsSearchFilterMenu;->addRemovePreferenceKey(Ljava/lang/String;)V

    .line 9506
    const-string v11, "unlock_effect_with_preview"

    invoke-direct {p0, v11}, Lcom/android/settings/settingssearch/SettingsSearchUtils$SettingsSearchFilterMenu;->addRemovePreferenceKey(Ljava/lang/String;)V

    .line 9507
    const-string v11, "help_text"

    invoke-direct {p0, v11}, Lcom/android/settings/settingssearch/SettingsSearchUtils$SettingsSearchFilterMenu;->addRemovePreferenceKey(Ljava/lang/String;)V

    .line 9508
    const-string v11, "say_your_wakeup"

    invoke-direct {p0, v11}, Lcom/android/settings/settingssearch/SettingsSearchUtils$SettingsSearchFilterMenu;->addRemovePreferenceKey(Ljava/lang/String;)V

    .line 9509
    const-string v11, "set_wakeup_command"

    invoke-direct {p0, v11}, Lcom/android/settings/settingssearch/SettingsSearchUtils$SettingsSearchFilterMenu;->addRemovePreferenceKey(Ljava/lang/String;)V

    .line 9510
    const-string v11, "biometric_weak_improve_matching"

    invoke-direct {p0, v11}, Lcom/android/settings/settingssearch/SettingsSearchUtils$SettingsSearchFilterMenu;->addRemovePreferenceKey(Ljava/lang/String;)V

    .line 9511
    const-string v11, "biometric_weak_liveliness"

    invoke-direct {p0, v11}, Lcom/android/settings/settingssearch/SettingsSearchUtils$SettingsSearchFilterMenu;->addRemovePreferenceKey(Ljava/lang/String;)V

    .line 9512
    const-string v11, "visiblesignature"

    invoke-direct {p0, v11}, Lcom/android/settings/settingssearch/SettingsSearchUtils$SettingsSearchFilterMenu;->addRemovePreferenceKey(Ljava/lang/String;)V

    .line 9513
    const-string v11, "signature_verification_level"

    invoke-direct {p0, v11}, Lcom/android/settings/settingssearch/SettingsSearchUtils$SettingsSearchFilterMenu;->addRemovePreferenceKey(Ljava/lang/String;)V

    .line 9514
    const-string v11, "additional_information"

    invoke-direct {p0, v11}, Lcom/android/settings/settingssearch/SettingsSearchUtils$SettingsSearchFilterMenu;->addRemovePreferenceKey(Ljava/lang/String;)V

    .line 9515
    const-string v11, "lock_info_weather"

    invoke-direct {p0, v11}, Lcom/android/settings/settingssearch/SettingsSearchUtils$SettingsSearchFilterMenu;->addRemovePreferenceKey(Ljava/lang/String;)V

    .line 9516
    const-string v11, "upcoming_event"

    invoke-direct {p0, v11}, Lcom/android/settings/settingssearch/SettingsSearchUtils$SettingsSearchFilterMenu;->addRemovePreferenceKey(Ljava/lang/String;)V

    .line 9517
    const-string v11, "steps"

    invoke-direct {p0, v11}, Lcom/android/settings/settingssearch/SettingsSearchUtils$SettingsSearchFilterMenu;->addRemovePreferenceKey(Ljava/lang/String;)V

    .line 9518
    const-string v11, "pattern_type"

    invoke-direct {p0, v11}, Lcom/android/settings/settingssearch/SettingsSearchUtils$SettingsSearchFilterMenu;->addRemovePreferenceKey(Ljava/lang/String;)V

    .line 9519
    const-string v11, "pattern_type_with_preview"

    invoke-direct {p0, v11}, Lcom/android/settings/settingssearch/SettingsSearchUtils$SettingsSearchFilterMenu;->addRemovePreferenceKey(Ljava/lang/String;)V

    .line 9520
    invoke-virtual {v6}, Lcom/android/internal/widget/LockPatternUtils;->getKeyguardStoredPasswordQuality()I

    move-result v11

    sparse-switch v11, :sswitch_data_1

    goto/16 :goto_0

    .line 9524
    :sswitch_5
    const-string v11, "visiblepattern"

    invoke-direct {p0, v11}, Lcom/android/settings/settingssearch/SettingsSearchUtils$SettingsSearchFilterMenu;->addRemovePreferenceKey(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 9529
    :sswitch_6
    const-string v11, "visiblepattern"

    invoke-direct {p0, v11}, Lcom/android/settings/settingssearch/SettingsSearchUtils$SettingsSearchFilterMenu;->addRemovePreferenceKey(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 9558
    .restart local v2    # "isDisabledSvoice":Z
    .restart local v3    # "isSVoiceInstalled":Z
    .restart local v7    # "packMgr":Landroid/content/pm/PackageManager;
    :catch_0
    move-exception v0

    .line 9559
    .local v0, "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    const-string v11, "SettingSearch/SettingsSearchUtils"

    const-string v12, "SVoice is not installed."

    invoke-static {v11, v12}, Landroid/util/secutil/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 9560
    const/4 v3, 0x0

    goto/16 :goto_2

    .line 9571
    .end local v0    # "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    :catch_1
    move-exception v0

    .line 9572
    .restart local v0    # "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    const-string v11, "SettingSearch/SettingsSearchUtils"

    const-string v12, "Cloud package not found"

    invoke-static {v11, v12}, Landroid/util/secutil/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 9573
    const v11, 0x7f100641

    invoke-static {v11}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v11

    invoke-direct {p0, v11}, Lcom/android/settings/settingssearch/SettingsSearchUtils$SettingsSearchFilterMenu;->addRemovePreferenceKey(Ljava/lang/String;)V

    goto/16 :goto_3

    .line 9583
    .end local v0    # "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    .restart local v8    # "state":I
    :cond_1b
    const-string v11, "unlock_set_smart"

    invoke-direct {p0, v11}, Lcom/android/settings/settingssearch/SettingsSearchUtils$SettingsSearchFilterMenu;->addRemovePreferenceKey(Ljava/lang/String;)V

    goto/16 :goto_4

    .restart local v1    # "inputMethodId":Ljava/lang/String;
    .restart local v5    # "mIsEmerMode":Z
    :cond_1c
    move v4, v10

    .line 9659
    goto/16 :goto_5

    .line 9663
    .restart local v4    # "isSecondaryUser":Z
    :cond_1d
    invoke-static {}, Lcom/sec/android/app/CscFeature;->getInstance()Lcom/sec/android/app/CscFeature;

    move-result-object v11

    const-string v12, "CscFeature_Common_UseChameleon"

    invoke-virtual {v11, v12}, Lcom/sec/android/app/CscFeature;->getEnableStatus(Ljava/lang/String;)Z

    move-result v11

    if-eqz v11, :cond_b

    .line 9664
    const-string v11, "persist.sys.roaming_menu"

    invoke-static {v11, v10}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v10

    if-eq v10, v9, :cond_b

    .line 9665
    const-string v9, "roaming_settings"

    invoke-direct {p0, v9}, Lcom/android/settings/settingssearch/SettingsSearchUtils$SettingsSearchFilterMenu;->addRemovePreferenceKey(Ljava/lang/String;)V

    goto/16 :goto_6

    .line 9694
    :cond_1e
    invoke-static {}, Lcom/android/settings/Utils;->isSViewWeatherforT()Z

    move-result v9

    if-eqz v9, :cond_1f

    .line 9695
    const-string v9, "weather"

    invoke-direct {p0, v9}, Lcom/android/settings/settingssearch/SettingsSearchUtils$SettingsSearchFilterMenu;->addRemovePreferenceKey(Ljava/lang/String;)V

    goto/16 :goto_7

    .line 9697
    :cond_1f
    const-string v9, "weather_tmr"

    invoke-direct {p0, v9}, Lcom/android/settings/settingssearch/SettingsSearchUtils$SettingsSearchFilterMenu;->addRemovePreferenceKey(Ljava/lang/String;)V

    goto/16 :goto_7

    .line 9552
    .end local v1    # "inputMethodId":Ljava/lang/String;
    .end local v3    # "isSVoiceInstalled":Z
    .end local v4    # "isSecondaryUser":Z
    .end local v5    # "mIsEmerMode":Z
    .end local v8    # "state":I
    :catch_2
    move-exception v11

    goto/16 :goto_1

    .line 9339
    nop

    :sswitch_data_0
    .sparse-switch
        0x10000 -> :sswitch_1
        0x20000 -> :sswitch_3
        0x40000 -> :sswitch_4
        0x50000 -> :sswitch_4
        0x60000 -> :sswitch_4
        0x61000 -> :sswitch_2
    .end sparse-switch

    .line 9520
    :sswitch_data_1
    .sparse-switch
        0x10000 -> :sswitch_0
        0x20000 -> :sswitch_5
        0x40000 -> :sswitch_6
        0x50000 -> :sswitch_6
        0x60000 -> :sswitch_6
    .end sparse-switch
.end method
