.class public Lcom/android/internal/widget/LockPatternUtils;
.super Ljava/lang/Object;
.source "LockPatternUtils.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/internal/widget/LockPatternUtils$registerCardCallback;,
        Lcom/android/internal/widget/LockPatternUtils$verifyCardCallback;
    }
.end annotation


# static fields
.field public static final BIOMETRIC_WEAK_EVER_CHOSEN_KEY:Ljava/lang/String; = "lockscreen.biometricweakeverchosen"

.field private static final DEBUG:Z = false

.field public static final DISABLE_LOCKSCREEN_KEY:Ljava/lang/String; = "lockscreen.disabled"

.field private static final ENABLED_TRUST_AGENTS:Ljava/lang/String; = "lockscreen.enabledtrustagents"

.field public static final FAILED_ATTEMPTS_BEFORE_RESET:I = 0x14

.field public static final FAILED_ATTEMPTS_BEFORE_TIMEOUT:I = 0x5

.field public static final FAILED_ATTEMPTS_BEFORE_WIPE_GRACE:I = 0x5

.field public static final FAILED_ATTEMPT_COUNTDOWN_INTERVAL_MS:J = 0x3e8L

.field public static final FAILED_ATTEMPT_TIMEOUT_MS:J = 0x7530L

.field public static final FLAG_BIOMETRIC_WEAK_LIVELINESS:I = 0x1

.field public static final FMM_LOCK:I = 0x0

.field public static final ID_DEFAULT_STATUS_WIDGET:I = -0x2

.field public static final KEYGUARD_SHOW_APPWIDGET:Ljava/lang/String; = "showappwidget"

.field public static final KEYGUARD_SHOW_SECURITY_CHALLENGE:Ljava/lang/String; = "showsecuritychallenge"

.field public static final KEYGUARD_SHOW_USER_SWITCHER:Ljava/lang/String; = "showuserswitcher"

.field public static final LOCKOUT_ATTEMPT_DEADLINE:Ljava/lang/String; = "lockscreen.lockoutattemptdeadline"

.field public static final LOCKOUT_PERMANENT_KEY:Ljava/lang/String; = "lockscreen.lockedoutpermanently"

.field public static final LOCKOUT_RECOVERY_KEY:Ljava/lang/String; = "lockscreen.lockedoutRecovery"

.field public static final LOCKSCREEN_BIOMETRIC_WEAK_FALLBACK:Ljava/lang/String; = "lockscreen.biometric_weak_fallback"

.field public static final LOCKSCREEN_OPTIONS:Ljava/lang/String; = "lockscreen.options"

.field public static final LOCKSCREEN_POWER_BUTTON_INSTANTLY_LOCKS:Ljava/lang/String; = "lockscreen.power_button_instantly_locks"

.field public static final LOCKSCREEN_SIGNATURE_FALLBACK:Ljava/lang/String; = "lockscreen.signature_fallback"

.field public static final LOCKSCREEN_WIDGETS_ENABLED:Ljava/lang/String; = "lockscreen.widgets_enabled"

.field public static final LOCK_PASSWORD_SALT_KEY:Ljava/lang/String; = "lockscreen.password_salt"

.field private static final LOCK_SCREEN_OWNER_INFO:Ljava/lang/String; = "lock_screen_owner_info"

.field private static final LOCK_SCREEN_OWNER_INFO_ENABLED:Ljava/lang/String; = "lock_screen_owner_info_enabled"

.field public static final MAX_ALLOWED_SEQUENCE:I = 0x3

.field public static final MIN_LOCK_PATTERN_SIZE:I = 0x4

.field public static final MIN_PATTERN_REGISTER_FAIL:I = 0x4

.field public static final PASSWORD_HISTORY_KEY:Ljava/lang/String; = "lockscreen.passwordhistory"

.field public static final PASSWORD_TYPE_ALTERNATE_KEY:Ljava/lang/String; = "lockscreen.password_type_alternate"

.field public static final PASSWORD_TYPE_KEY:Ljava/lang/String; = "lockscreen.password_type"

.field private static final PATH_PERMANENT_MEM_LOCK_FOLDER:Ljava/lang/String; = "/efs/sktdm_mem"

.field private static final PATH_PERMANENT_MEM_LOCK_INFO:Ljava/lang/String; = "/efs/sktdm_mem/lawlock.txt"

.field private static final PATH_PERMANENT_MEM_LOCK_MSG_INFO:Ljava/lang/String; = "/efs/sktdm_mem/lawlockmsg.txt"

.field public static final PATTERN_EVER_CHOSEN_KEY:Ljava/lang/String; = "lockscreen.patterneverchosen"

.field public static final SIGNATURE_EVER_CHOSEN_KEY:Ljava/lang/String; = "lockscreen.signatureeverchosen"

.field public static final SIGNATURE_REGISTERED_KEY:Ljava/lang/String; = "lockscreen.signatureregistered"

.field public static final SKTLOCKOUT_ATTEMPT_DEADLINE:Ljava/lang/String; = "sktlockscreen.lockoutdeadline"

.field private static final SKT_CARRIERLOCK_MODE_FILE:Ljava/lang/String; = "/efs/sms/sktcarrierlockmode"

.field public static final SKT_CARRIER_LOCK:I = 0x1

.field public static final SKT_FAILED_ATTEMPT_TIMEOUT_MS:J = 0x927c0L

.field public static final SMARTCARD_TYPE_KEY:Ljava/lang/String; = "lockscreen.smartcard_type"

.field private static final TAG:Ljava/lang/String; = "LockPatternUtils"

.field private static final TEXT_SEPERATOR:C = ':'

.field private static cacPasswordSetProgress:Z

.field private static lockChecksum:Ljava/lang/String;

.field private static lockChecksumUnlock:Ljava/lang/String;

.field private static lockMsg:Ljava/lang/String;

.field private static lockMsgUnlock:Ljava/lang/String;

.field private static lockPassword:Ljava/lang/String;

.field private static lockPasswordUnlock:Ljava/lang/String;

.field private static lockSaveMsg:Ljava/lang/String;

.field private static lockSaveMsgUnlock:Ljava/lang/String;

.field private static lockType:Ljava/lang/String;

.field private static lockTypeUnlock:Ljava/lang/String;

.field private static mIsCallbackCalled:Z

.field private static mScVerifyStatus:I

.field private static mSmartcardPinMgr:Lcom/sec/smartcard/pinservice/SmartCardPinManager;

.field private static mSwipeSmartLock:Z

.field private static volatile sCurrentUserId:I


# instance fields
.field private final mContentResolver:Landroid/content/ContentResolver;

.field private final mContext:Landroid/content/Context;

.field private mDevicePolicyManager:Landroid/app/admin/DevicePolicyManager;

.field private mLockSettingsService:Lcom/android/internal/widget/ILockSettings;

.field private final mMultiUserMode:Z


# direct methods
.method static constructor <clinit>()V
    .registers 2

    .prologue
    const/4 v1, 0x0

    .line 220
    sput v1, mScVerifyStatus:I

    .line 221
    const/4 v0, 0x0

    sput-object v0, mSmartcardPinMgr:Lcom/sec/smartcard/pinservice/SmartCardPinManager;

    .line 222
    sput-boolean v1, cacPasswordSetProgress:Z

    .line 249
    const-string v0, ""

    sput-object v0, lockMsg:Ljava/lang/String;

    .line 250
    const-string v0, ""

    sput-object v0, lockSaveMsg:Ljava/lang/String;

    .line 254
    const-string v0, ""

    sput-object v0, lockMsgUnlock:Ljava/lang/String;

    .line 255
    const-string v0, ""

    sput-object v0, lockSaveMsgUnlock:Ljava/lang/String;

    .line 260
    sput-boolean v1, mSwipeSmartLock:Z

    .line 262
    const/16 v0, -0x2710

    sput v0, sCurrentUserId:I

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .registers 3
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 288
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 289
    iput-object p1, p0, mContext:Landroid/content/Context;

    .line 290
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iput-object v0, p0, mContentResolver:Landroid/content/ContentResolver;

    .line 295
    const-string v0, "android.permission.INTERACT_ACROSS_USERS_FULL"

    invoke-virtual {p1, v0}, Landroid/content/Context;->checkCallingOrSelfPermission(Ljava/lang/String;)I

    move-result v0

    if-nez v0, :cond_17

    const/4 v0, 0x1

    :goto_14
    iput-boolean v0, p0, mMultiUserMode:Z

    .line 297
    return-void

    .line 295
    :cond_17
    const/4 v0, 0x0

    goto :goto_14
.end method

.method private SeperateLockString(Ljava/lang/String;I)V
    .registers 5
    .param p1, "parsing"    # Ljava/lang/String;
    .param p2, "count"    # I

    .prologue
    .line 3266
    if-nez p2, :cond_5

    .line 3267
    sput-object p1, lockPassword:Ljava/lang/String;

    .line 3275
    :goto_4
    return-void

    .line 3268
    :cond_5
    const/4 v0, 0x1

    if-ne p2, v0, :cond_b

    .line 3269
    sput-object p1, lockType:Ljava/lang/String;

    goto :goto_4

    .line 3270
    :cond_b
    const/4 v0, 0x2

    if-ne p2, v0, :cond_11

    .line 3271
    sput-object p1, lockChecksum:Ljava/lang/String;

    goto :goto_4

    .line 3273
    :cond_11
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v1, lockMsg:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, lockMsg:Ljava/lang/String;

    goto :goto_4
.end method

.method private SeperateUnlockString(Ljava/lang/String;I)V
    .registers 5
    .param p1, "parsing"    # Ljava/lang/String;
    .param p2, "count"    # I

    .prologue
    .line 3278
    if-nez p2, :cond_5

    .line 3279
    sput-object p1, lockPasswordUnlock:Ljava/lang/String;

    .line 3287
    :goto_4
    return-void

    .line 3280
    :cond_5
    const/4 v0, 0x1

    if-ne p2, v0, :cond_b

    .line 3281
    sput-object p1, lockTypeUnlock:Ljava/lang/String;

    goto :goto_4

    .line 3282
    :cond_b
    const/4 v0, 0x2

    if-ne p2, v0, :cond_11

    .line 3283
    sput-object p1, lockChecksumUnlock:Ljava/lang/String;

    goto :goto_4

    .line 3285
    :cond_11
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v1, lockMsgUnlock:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, lockMsgUnlock:Ljava/lang/String;

    goto :goto_4
.end method

.method static synthetic access$102(I)I
    .registers 1
    .param p0, "x0"    # I

    .prologue
    .line 114
    sput p0, mScVerifyStatus:I

    return p0
.end method

.method static synthetic access$202(Z)Z
    .registers 1
    .param p0, "x0"    # Z

    .prologue
    .line 114
    sput-boolean p0, mIsCallbackCalled:Z

    return p0
.end method

.method private static categoryChar(C)I
    .registers 2
    .param p0, "c"    # C

    .prologue
    .line 1115
    const/16 v0, 0x61

    if-gt v0, p0, :cond_a

    const/16 v0, 0x7a

    if-gt p0, v0, :cond_a

    const/4 v0, 0x0

    .line 1118
    :goto_9
    return v0

    .line 1116
    :cond_a
    const/16 v0, 0x41

    if-gt v0, p0, :cond_14

    const/16 v0, 0x5a

    if-gt p0, v0, :cond_14

    const/4 v0, 0x1

    goto :goto_9

    .line 1117
    :cond_14
    const/16 v0, 0x30

    if-gt v0, p0, :cond_1e

    const/16 v0, 0x39

    if-gt p0, v0, :cond_1e

    const/4 v0, 0x2

    goto :goto_9

    .line 1118
    :cond_1e
    const/4 v0, 0x3

    goto :goto_9
.end method

.method private clearLockExceptPwd()V
    .registers 5

    .prologue
    const-wide/16 v2, 0x0

    const/4 v1, 0x0

    .line 849
    invoke-direct {p0, v1}, updateCACAuthentication(I)V

    .line 850
    invoke-virtual {p0, v1}, setLockFingerprintEnabled(Z)V

    .line 851
    const/4 v0, 0x0

    invoke-virtual {p0, v1, v0}, saveRemoteLockPassword(ILjava/lang/String;)V

    .line 852
    const-string/jumbo v0, "lockscreen.password_type"

    invoke-direct {p0, v0, v2, v3}, setLong(Ljava/lang/String;J)V

    .line 853
    const-string/jumbo v0, "lockscreen.password_type_alternate"

    invoke-direct {p0, v0, v2, v3}, setLong(Ljava/lang/String;J)V

    .line 854
    invoke-direct {p0}, onAfterChangingPassword()V

    .line 855
    return-void
.end method

.method private static combineStrings([ILjava/lang/String;)Ljava/lang/String;
    .registers 9
    .param p0, "list"    # [I
    .param p1, "separator"    # Ljava/lang/String;

    .prologue
    .line 2001
    array-length v1, p0

    .line 2003
    .local v1, "listLength":I
    packed-switch v1, :pswitch_data_4e

    .line 2012
    const/4 v4, 0x0

    .line 2013
    .local v4, "strLength":I
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v3

    .line 2015
    .local v3, "separatorLength":I
    array-length v6, p0

    new-array v5, v6, [Ljava/lang/String;

    .line 2016
    .local v5, "stringList":[Ljava/lang/String;
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_d
    if-ge v0, v1, :cond_31

    .line 2017
    aget v6, p0, v0

    invoke-static {v6}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v6

    aput-object v6, v5, v0

    .line 2018
    aget-object v6, v5, v0

    invoke-virtual {v6}, Ljava/lang/String;->length()I

    move-result v6

    add-int/2addr v4, v6

    .line 2019
    add-int/lit8 v6, v1, -0x1

    if-ge v0, v6, :cond_23

    .line 2020
    add-int/2addr v4, v3

    .line 2016
    :cond_23
    add-int/lit8 v0, v0, 0x1

    goto :goto_d

    .line 2005
    .end local v0    # "i":I
    .end local v3    # "separatorLength":I
    .end local v4    # "strLength":I
    .end local v5    # "stringList":[Ljava/lang/String;
    :pswitch_26
    const-string v6, ""

    .line 2033
    :goto_28
    return-object v6

    .line 2008
    :pswitch_29
    const/4 v6, 0x0

    aget v6, p0, v6

    invoke-static {v6}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v6

    goto :goto_28

    .line 2024
    .restart local v0    # "i":I
    .restart local v3    # "separatorLength":I
    .restart local v4    # "strLength":I
    .restart local v5    # "stringList":[Ljava/lang/String;
    :cond_31
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2, v4}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 2026
    .local v2, "sb":Ljava/lang/StringBuilder;
    const/4 v0, 0x0

    :goto_37
    if-ge v0, v1, :cond_48

    .line 2027
    aget v6, p0, v0

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 2028
    add-int/lit8 v6, v1, -0x1

    if-ge v0, v6, :cond_45

    .line 2029
    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2026
    :cond_45
    add-int/lit8 v0, v0, 0x1

    goto :goto_37

    .line 2033
    :cond_48
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    goto :goto_28

    .line 2003
    nop

    :pswitch_data_4e
    .packed-switch 0x0
        :pswitch_26
        :pswitch_29
    .end packed-switch
.end method

.method public static computePasswordQuality(Ljava/lang/String;)I
    .registers 9
    .param p0, "password"    # Ljava/lang/String;

    .prologue
    .line 1079
    const/4 v1, 0x0

    .line 1080
    .local v1, "hasDigit":Z
    const/4 v2, 0x0

    .line 1081
    .local v2, "hasNonDigit":Z
    const/4 v3, 0x0

    .line 1082
    .local v3, "hasSymbol":Z
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v5

    .line 1083
    .local v5, "len":I
    const/4 v4, 0x0

    .local v4, "i":I
    :goto_8
    if-ge v4, v5, :cond_2b

    .line 1084
    invoke-virtual {p0, v4}, Ljava/lang/String;->charAt(I)C

    move-result v0

    .line 1085
    .local v0, "c":C
    invoke-static {v0}, Ljava/lang/Character;->isDigit(C)Z

    move-result v6

    if-eqz v6, :cond_18

    .line 1086
    const/4 v1, 0x1

    .line 1083
    :cond_15
    :goto_15
    add-int/lit8 v4, v4, 0x1

    goto :goto_8

    .line 1088
    :cond_18
    const/4 v2, 0x1

    .line 1089
    const/16 v6, 0x41

    if-lt v0, v6, :cond_21

    const/16 v6, 0x5a

    if-le v0, v6, :cond_15

    :cond_21
    const/16 v6, 0x61

    if-lt v0, v6, :cond_29

    const/16 v6, 0x7a

    if-le v0, v6, :cond_15

    .line 1092
    :cond_29
    const/4 v3, 0x1

    goto :goto_15

    .line 1097
    .end local v0    # "c":C
    :cond_2b
    if-eqz v2, :cond_34

    if-eqz v1, :cond_34

    if-eqz v3, :cond_34

    .line 1098
    const/high16 v6, 0x60000

    .line 1111
    :goto_33
    return v6

    .line 1100
    :cond_34
    if-eqz v2, :cond_3b

    if-eqz v1, :cond_3b

    .line 1101
    const/high16 v6, 0x50000

    goto :goto_33

    .line 1103
    :cond_3b
    if-eqz v2, :cond_40

    .line 1104
    const/high16 v6, 0x40000

    goto :goto_33

    .line 1106
    :cond_40
    if-eqz v1, :cond_4f

    .line 1107
    invoke-static {p0}, maxLengthSequence(Ljava/lang/String;)I

    move-result v6

    const/4 v7, 0x3

    if-le v6, v7, :cond_4c

    const/high16 v6, 0x20000

    goto :goto_33

    :cond_4c
    const/high16 v6, 0x30000

    goto :goto_33

    .line 1111
    :cond_4f
    const/4 v6, 0x0

    goto :goto_33
.end method

.method private finishBiometricWeak()V
    .registers 4

    .prologue
    .line 2263
    const-string/jumbo v1, "lockscreen.biometricweakeverchosen"

    const/4 v2, 0x1

    invoke-direct {p0, v1, v2}, setBoolean(Ljava/lang/String;Z)V

    .line 2267
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 2268
    .local v0, "intent":Landroid/content/Intent;
    const-string v1, "com.android.facelock"

    const-string v2, "com.android.facelock.SetupEndScreen"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 2270
    iget-object v1, p0, mContext:Landroid/content/Context;

    invoke-virtual {v1, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 2271
    return-void
.end method

.method private finishSignature()V
    .registers 4

    .prologue
    .line 2274
    const-string/jumbo v1, "lockscreen.signatureeverchosen"

    const/4 v2, 0x1

    invoke-direct {p0, v1, v2}, setBoolean(Ljava/lang/String;Z)V

    .line 2277
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 2278
    .local v0, "intent":Landroid/content/Intent;
    const-string v1, "com.sec.android.signaturelock"

    const-string v2, "com.sec.android.signaturelock.SetupEndScreen"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 2280
    iget-object v1, p0, mContext:Landroid/content/Context;

    invoke-virtual {v1, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 2281
    return-void
.end method

.method private generateRecoveryPassword()Ljava/lang/String;
    .registers 2

    .prologue
    .line 2446
    invoke-static {}, Lcom/android/internal/widget/RandomString;->randomstring()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private getAppWidgets(I)[I
    .registers 12
    .param p1, "userId"    # I

    .prologue
    .line 1980
    iget-object v7, p0, mContentResolver:Landroid/content/ContentResolver;

    const-string/jumbo v8, "lock_screen_appwidget_ids"

    invoke-static {v7, v8, p1}, Landroid/provider/Settings$Secure;->getStringForUser(Landroid/content/ContentResolver;Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v1

    .line 1982
    .local v1, "appWidgetIdString":Ljava/lang/String;
    const-string v4, ","

    .line 1983
    .local v4, "delims":Ljava/lang/String;
    if-eqz v1, :cond_48

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v7

    if-lez v7, :cond_48

    .line 1984
    invoke-virtual {v1, v4}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v3

    .line 1985
    .local v3, "appWidgetStringIds":[Ljava/lang/String;
    array-length v7, v3

    new-array v2, v7, [I

    .line 1986
    .local v2, "appWidgetIds":[I
    const/4 v6, 0x0

    .local v6, "i":I
    :goto_1b
    array-length v7, v3

    if-ge v6, v7, :cond_47

    .line 1987
    aget-object v0, v3, v6

    .line 1989
    .local v0, "appWidget":Ljava/lang/String;
    :try_start_20
    invoke-static {v0}, Ljava/lang/Integer;->decode(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/Integer;->intValue()I

    move-result v7

    aput v7, v2, v6
    :try_end_2a
    .catch Ljava/lang/NumberFormatException; {:try_start_20 .. :try_end_2a} :catch_2d

    .line 1986
    add-int/lit8 v6, v6, 0x1

    goto :goto_1b

    .line 1990
    :catch_2d
    move-exception v5

    .line 1991
    .local v5, "e":Ljava/lang/NumberFormatException;
    const-string v7, "LockPatternUtils"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Error when parsing widget id "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1992
    const/4 v2, 0x0

    .line 1997
    .end local v0    # "appWidget":Ljava/lang/String;
    .end local v2    # "appWidgetIds":[I
    .end local v3    # "appWidgetStringIds":[Ljava/lang/String;
    .end local v5    # "e":Ljava/lang/NumberFormatException;
    .end local v6    # "i":I
    :cond_47
    :goto_47
    return-object v2

    :cond_48
    const/4 v7, 0x0

    new-array v2, v7, [I

    goto :goto_47
.end method

.method private getBoolean(Ljava/lang/String;Z)Z
    .registers 4
    .param p1, "secureSettingKey"    # Ljava/lang/String;
    .param p2, "defaultValue"    # Z

    .prologue
    .line 1959
    invoke-direct {p0}, getCurrentOrCallingUserId()I

    move-result v0

    invoke-direct {p0, p1, p2, v0}, getBoolean(Ljava/lang/String;ZI)Z

    move-result v0

    return v0
.end method

.method private getBoolean(Ljava/lang/String;ZI)Z
    .registers 6
    .param p1, "secureSettingKey"    # Ljava/lang/String;
    .param p2, "defaultValue"    # Z
    .param p3, "userId"    # I

    .prologue
    .line 1952
    :try_start_0
    invoke-direct {p0}, getLockSettings()Lcom/android/internal/widget/ILockSettings;

    move-result-object v1

    invoke-interface {v1, p1, p2, p3}, Lcom/android/internal/widget/ILockSettings;->getBoolean(Ljava/lang/String;ZI)Z
    :try_end_7
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_7} :catch_9

    move-result p2

    .line 1954
    .end local p2    # "defaultValue":Z
    :goto_8
    return p2

    .line 1953
    .restart local p2    # "defaultValue":Z
    :catch_9
    move-exception v0

    .line 1954
    .local v0, "re":Landroid/os/RemoteException;
    goto :goto_8
.end method

.method private getCurrentOrCallingUserId()I
    .registers 2

    .prologue
    .line 624
    iget-boolean v0, p0, mMultiUserMode:Z

    if-eqz v0, :cond_9

    .line 627
    invoke-virtual {p0}, getCurrentUser()I

    move-result v0

    .line 629
    :goto_8
    return v0

    :cond_9
    invoke-static {}, Landroid/os/UserHandle;->getCallingUserId()I

    move-result v0

    goto :goto_8
.end method

.method private getLockSettings()Lcom/android/internal/widget/ILockSettings;
    .registers 2

    .prologue
    .line 300
    iget-object v0, p0, mLockSettingsService:Lcom/android/internal/widget/ILockSettings;

    if-nez v0, :cond_15

    .line 301
    const-string/jumbo v0, "lock_settings"

    invoke-static {v0}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Lcom/android/internal/widget/ILockSettings$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/widget/ILockSettings;

    move-result-object v0

    invoke-static {v0}, Lcom/android/internal/widget/LockPatternUtilsCache;->getInstance(Lcom/android/internal/widget/ILockSettings;)Lcom/android/internal/widget/LockPatternUtilsCache;

    move-result-object v0

    iput-object v0, p0, mLockSettingsService:Lcom/android/internal/widget/ILockSettings;

    .line 304
    :cond_15
    iget-object v0, p0, mLockSettingsService:Lcom/android/internal/widget/ILockSettings;

    return-object v0
.end method

.method private getLong(Ljava/lang/String;J)J
    .registers 8
    .param p1, "secureSettingKey"    # Ljava/lang/String;
    .param p2, "defaultValue"    # J

    .prologue
    .line 2119
    :try_start_0
    invoke-direct {p0}, getLockSettings()Lcom/android/internal/widget/ILockSettings;

    move-result-object v1

    invoke-direct {p0}, getCurrentOrCallingUserId()I

    move-result v2

    invoke-interface {v1, p1, p2, p3, v2}, Lcom/android/internal/widget/ILockSettings;->getLong(Ljava/lang/String;JI)J
    :try_end_b
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_b} :catch_d

    move-result-wide p2

    .line 2122
    .end local p2    # "defaultValue":J
    :goto_c
    return-wide p2

    .line 2121
    .restart local p2    # "defaultValue":J
    :catch_d
    move-exception v0

    .line 2122
    .local v0, "re":Landroid/os/RemoteException;
    goto :goto_c
.end method

.method private getLong(Ljava/lang/String;JI)J
    .registers 7
    .param p1, "secureSettingKey"    # Ljava/lang/String;
    .param p2, "defaultValue"    # J
    .param p4, "userHandle"    # I

    .prologue
    .line 2111
    :try_start_0
    invoke-direct {p0}, getLockSettings()Lcom/android/internal/widget/ILockSettings;

    move-result-object v1

    invoke-interface {v1, p1, p2, p3, p4}, Lcom/android/internal/widget/ILockSettings;->getLong(Ljava/lang/String;JI)J
    :try_end_7
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_7} :catch_9

    move-result-wide p2

    .line 2113
    .end local p2    # "defaultValue":J
    :goto_8
    return-wide p2

    .line 2112
    .restart local p2    # "defaultValue":J
    :catch_9
    move-exception v0

    .line 2113
    .local v0, "re":Landroid/os/RemoteException;
    goto :goto_8
.end method

.method private getSalt()Ljava/lang/String;
    .registers 2

    .prologue
    .line 1527
    invoke-direct {p0}, getCurrentOrCallingUserId()I

    move-result v0

    invoke-direct {p0, v0}, getSalt(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private getSalt(I)Ljava/lang/String;
    .registers 8
    .param p1, "userId"    # I

    .prologue
    const-wide/16 v4, 0x0

    .line 1531
    const-string/jumbo v1, "lockscreen.password_salt"

    invoke-direct {p0, v1, v4, v5, p1}, getLong(Ljava/lang/String;JI)J

    move-result-wide v2

    .line 1532
    .local v2, "salt":J
    cmp-long v1, v2, v4

    if-nez v1, :cond_35

    .line 1534
    :try_start_d
    const-string v1, "SHA1PRNG"

    invoke-static {v1}, Ljava/security/SecureRandom;->getInstance(Ljava/lang/String;)Ljava/security/SecureRandom;

    move-result-object v1

    invoke-virtual {v1}, Ljava/security/SecureRandom;->nextLong()J

    move-result-wide v2

    .line 1535
    const-string/jumbo v1, "lockscreen.password_salt"

    invoke-direct {p0, v1, v2, v3, p1}, setLong(Ljava/lang/String;JI)V

    .line 1536
    const-string v1, "LockPatternUtils"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Initialized lock password salt for user: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v1, v4}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_35
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_d .. :try_end_35} :catch_3a

    .line 1542
    :cond_35
    invoke-static {v2, v3}, Ljava/lang/Long;->toHexString(J)Ljava/lang/String;

    move-result-object v1

    return-object v1

    .line 1537
    :catch_3a
    move-exception v0

    .line 1539
    .local v0, "e":Ljava/security/NoSuchAlgorithmException;
    new-instance v1, Ljava/lang/IllegalStateException;

    const-string v4, "Couldn\'t get SecureRandom number"

    invoke-direct {v1, v4, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1
.end method

.method private getSmartcardPinManager()Lcom/sec/smartcard/pinservice/SmartCardPinManager;
    .registers 5

    .prologue
    .line 391
    iget-object v1, p0, mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    if-eqz v1, :cond_56

    iget-object v1, p0, mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    .line 392
    .local v0, "tContext":Landroid/content/Context;
    :goto_e
    invoke-static {}, Lcom/sec/smartcard/pinservice/SmartCardPinManagerFactory;->getInstance()Lcom/sec/smartcard/pinservice/SmartCardPinManagerFactory;

    move-result-object v1

    new-instance v2, Landroid/os/UserHandle;

    invoke-virtual {p0}, getCurrentUser()I

    move-result v3

    invoke-direct {v2, v3}, Landroid/os/UserHandle;-><init>(I)V

    invoke-virtual {v1, v0, v2}, Lcom/sec/smartcard/pinservice/SmartCardPinManagerFactory;->getSmartcardPinMgr(Landroid/content/Context;Landroid/os/UserHandle;)Lcom/sec/smartcard/pinservice/SmartCardPinManager;

    move-result-object v1

    sput-object v1, mSmartcardPinMgr:Lcom/sec/smartcard/pinservice/SmartCardPinManager;

    .line 393
    const-string v1, "LockPatternUtils"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "getSmartcardPinManager: tContext"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 395
    const-string v1, "LockPatternUtils"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "getSmartcardPinManager: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    sget-object v3, mSmartcardPinMgr:Lcom/sec/smartcard/pinservice/SmartCardPinManager;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 397
    sget-object v1, mSmartcardPinMgr:Lcom/sec/smartcard/pinservice/SmartCardPinManager;

    return-object v1

    .line 391
    .end local v0    # "tContext":Landroid/content/Context;
    :cond_56
    iget-object v0, p0, mContext:Landroid/content/Context;

    goto :goto_e
.end method

.method private getSmartcardPinManager_Sync()Lcom/sec/smartcard/pinservice/SmartCardPinManager;
    .registers 5

    .prologue
    .line 417
    iget-object v1, p0, mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    if-eqz v1, :cond_56

    iget-object v1, p0, mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    .line 418
    .local v0, "tContext":Landroid/content/Context;
    :goto_e
    invoke-static {}, Lcom/sec/smartcard/pinservice/SmartCardPinManagerFactory;->getInstance()Lcom/sec/smartcard/pinservice/SmartCardPinManagerFactory;

    move-result-object v1

    new-instance v2, Landroid/os/UserHandle;

    invoke-virtual {p0}, getCurrentUser()I

    move-result v3

    invoke-direct {v2, v3}, Landroid/os/UserHandle;-><init>(I)V

    invoke-virtual {v1, v0, v2}, Lcom/sec/smartcard/pinservice/SmartCardPinManagerFactory;->getSmartcardPinMgr_Sync(Landroid/content/Context;Landroid/os/UserHandle;)Lcom/sec/smartcard/pinservice/SmartCardPinManager;

    move-result-object v1

    sput-object v1, mSmartcardPinMgr:Lcom/sec/smartcard/pinservice/SmartCardPinManager;

    .line 419
    const-string v1, "LockPatternUtils"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "getSmartcardPinManager: tContext"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 421
    const-string v1, "LockPatternUtils"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "getSmartcardPinManager: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    sget-object v3, mSmartcardPinMgr:Lcom/sec/smartcard/pinservice/SmartCardPinManager;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 422
    sget-object v1, mSmartcardPinMgr:Lcom/sec/smartcard/pinservice/SmartCardPinManager;

    return-object v1

    .line 417
    .end local v0    # "tContext":Landroid/content/Context;
    :cond_56
    iget-object v0, p0, mContext:Landroid/content/Context;

    goto :goto_e
.end method

.method private getString(Ljava/lang/String;)Ljava/lang/String;
    .registers 3
    .param p1, "secureSettingKey"    # Ljava/lang/String;

    .prologue
    .line 2151
    invoke-direct {p0}, getCurrentOrCallingUserId()I

    move-result v0

    invoke-direct {p0, p1, v0}, getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private getString(Ljava/lang/String;I)Ljava/lang/String;
    .registers 7
    .param p1, "secureSettingKey"    # Ljava/lang/String;
    .param p2, "userHandle"    # I

    .prologue
    const/4 v1, 0x0

    .line 2156
    :try_start_1
    invoke-direct {p0}, getLockSettings()Lcom/android/internal/widget/ILockSettings;

    move-result-object v2

    const/4 v3, 0x0

    invoke-interface {v2, p1, v3, p2}, Lcom/android/internal/widget/ILockSettings;->getString(Ljava/lang/String;Ljava/lang/String;I)Ljava/lang/String;
    :try_end_9
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_9} :catch_b

    move-result-object v1

    .line 2158
    :goto_a
    return-object v1

    .line 2157
    :catch_b
    move-exception v0

    .line 2158
    .local v0, "re":Landroid/os/RemoteException;
    goto :goto_a
.end method

.method private getTelecommManager()Landroid/telecom/TelecomManager;
    .registers 3

    .prologue
    .line 2259
    iget-object v0, p0, mContext:Landroid/content/Context;

    const-string/jumbo v1, "telecom"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telecom/TelecomManager;

    return-object v0
.end method

.method private getTrustManager()Landroid/app/trust/TrustManager;
    .registers 6

    .prologue
    .line 277
    iget-object v1, p0, mContext:Landroid/content/Context;

    const-string/jumbo v2, "trust"

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/trust/TrustManager;

    .line 278
    .local v0, "trust":Landroid/app/trust/TrustManager;
    if-nez v0, :cond_1b

    .line 279
    const-string v1, "LockPatternUtils"

    const-string v2, "Can\'t get TrustManagerService: is it running?"

    new-instance v3, Ljava/lang/IllegalStateException;

    const-string v4, "Stack trace:"

    invoke-direct {v3, v4}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    invoke-static {v1, v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 282
    :cond_1b
    return-object v0
.end method

.method public static isDeviceEncrypted()Z
    .registers 5

    .prologue
    const/4 v2, 0x1

    .line 1381
    const-string/jumbo v3, "mount"

    invoke-static {v3}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v3

    invoke-static {v3}, Landroid/os/storage/IMountService$Stub;->asInterface(Landroid/os/IBinder;)Landroid/os/storage/IMountService;

    move-result-object v0

    .line 1385
    .local v0, "mountService":Landroid/os/storage/IMountService;
    :try_start_c
    invoke-interface {v0}, Landroid/os/storage/IMountService;->getEncryptionState()I
    :try_end_f
    .catch Landroid/os/RemoteException; {:try_start_c .. :try_end_f} :catch_15

    move-result v3

    if-eq v3, v2, :cond_13

    .line 1391
    :goto_12
    return v2

    .line 1385
    :cond_13
    const/4 v2, 0x0

    goto :goto_12

    .line 1388
    :catch_15
    move-exception v1

    .line 1389
    .local v1, "re":Landroid/os/RemoteException;
    const-string v3, "LockPatternUtils"

    const-string v4, "Error getting encryption state"

    invoke-static {v3, v4, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_12
.end method

.method public static isDeviceEncryptionEnabled()Z
    .registers 3

    .prologue
    .line 1401
    const-string/jumbo v1, "ro.crypto.state"

    const-string/jumbo v2, "unsupported"

    invoke-static {v1, v2}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 1402
    .local v0, "status":Ljava/lang/String;
    const-string v1, "encrypted"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    return v1
.end method

.method public static isSafeModeEnabled()Z
    .registers 1

    .prologue
    .line 2357
    :try_start_0
    const-string/jumbo v0, "window"

    invoke-static {v0}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/view/IWindowManager$Stub;->asInterface(Landroid/os/IBinder;)Landroid/view/IWindowManager;

    move-result-object v0

    invoke-interface {v0}, Landroid/view/IWindowManager;->isSafeModeEnabled()Z
    :try_end_e
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_e} :catch_10

    move-result v0

    .line 2362
    :goto_f
    return v0

    .line 2359
    :catch_10
    move-exception v0

    .line 2362
    const/4 v0, 0x0

    goto :goto_f
.end method

.method private static maxDiffCategory(I)I
    .registers 2
    .param p0, "category"    # I

    .prologue
    const/4 v0, 0x1

    .line 1122
    if-eqz p0, :cond_5

    if-ne p0, v0, :cond_6

    .line 1124
    :cond_5
    :goto_5
    return v0

    .line 1123
    :cond_6
    const/4 v0, 0x2

    if-ne p0, v0, :cond_c

    const/16 v0, 0xa

    goto :goto_5

    .line 1124
    :cond_c
    const/4 v0, 0x0

    goto :goto_5
.end method

.method public static maxLengthSequence(Ljava/lang/String;)I
    .registers 13
    .param p0, "string"    # Ljava/lang/String;

    .prologue
    const/4 v7, 0x0

    .line 1144
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v10

    if-nez v10, :cond_8

    .line 1172
    :goto_7
    return v7

    .line 1145
    :cond_8
    invoke-virtual {p0, v7}, Ljava/lang/String;->charAt(I)C

    move-result v8

    .line 1146
    .local v8, "previousChar":C
    invoke-static {v8}, categoryChar(C)I

    move-result v0

    .line 1147
    .local v0, "category":I
    const/4 v5, 0x0

    .line 1148
    .local v5, "diff":I
    const/4 v6, 0x0

    .line 1149
    .local v6, "hasDiff":Z
    const/4 v7, 0x0

    .line 1150
    .local v7, "maxLength":I
    const/4 v9, 0x0

    .line 1151
    .local v9, "startSequence":I
    const/4 v2, 0x1

    .local v2, "current":I
    :goto_15
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v10

    if-ge v2, v10, :cond_4d

    .line 1152
    invoke-virtual {p0, v2}, Ljava/lang/String;->charAt(I)C

    move-result v3

    .line 1153
    .local v3, "currentChar":C
    invoke-static {v3}, categoryChar(C)I

    move-result v1

    .line 1154
    .local v1, "categoryCurrent":I
    sub-int v4, v3, v8

    .line 1155
    .local v4, "currentDiff":I
    if-ne v1, v0, :cond_31

    invoke-static {v4}, Ljava/lang/Math;->abs(I)I

    move-result v10

    invoke-static {v0}, maxDiffCategory(I)I

    move-result v11

    if-le v10, v11, :cond_3e

    .line 1156
    :cond_31
    sub-int v10, v2, v9

    invoke-static {v7, v10}, Ljava/lang/Math;->max(II)I

    move-result v7

    .line 1157
    move v9, v2

    .line 1158
    const/4 v6, 0x0

    .line 1159
    move v0, v1

    .line 1169
    :goto_3a
    move v8, v3

    .line 1151
    add-int/lit8 v2, v2, 0x1

    goto :goto_15

    .line 1162
    :cond_3e
    if-eqz v6, :cond_4a

    if-eq v4, v5, :cond_4a

    .line 1163
    sub-int v10, v2, v9

    invoke-static {v7, v10}, Ljava/lang/Math;->max(II)I

    move-result v7

    .line 1164
    add-int/lit8 v9, v2, -0x1

    .line 1166
    :cond_4a
    move v5, v4

    .line 1167
    const/4 v6, 0x1

    goto :goto_3a

    .line 1171
    .end local v1    # "categoryCurrent":I
    .end local v3    # "currentChar":C
    .end local v4    # "currentDiff":I
    :cond_4d
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v10

    sub-int/2addr v10, v9

    invoke-static {v7, v10}, Ljava/lang/Math;->max(II)I

    move-result v7

    .line 1172
    goto :goto_7
.end method

.method private onAfterChangingPassword()V
    .registers 3

    .prologue
    .line 2493
    invoke-direct {p0}, getTrustManager()Landroid/app/trust/TrustManager;

    move-result-object v0

    invoke-direct {p0}, getCurrentOrCallingUserId()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/app/trust/TrustManager;->reportEnabledTrustAgentsChanged(I)V

    .line 2494
    return-void
.end method

.method public static patternToHash(Ljava/util/List;)[B
    .registers 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/android/internal/widget/LockPatternView$Cell;",
            ">;)[B"
        }
    .end annotation

    .prologue
    .line 1507
    .local p0, "pattern":Ljava/util/List;, "Ljava/util/List<Lcom/android/internal/widget/LockPatternView$Cell;>;"
    if-nez p0, :cond_4

    .line 1508
    const/4 v1, 0x0

    .line 1522
    :goto_3
    return-object v1

    .line 1511
    :cond_4
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v5

    .line 1512
    .local v5, "patternSize":I
    new-array v6, v5, [B

    .line 1513
    .local v6, "res":[B
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_b
    if-ge v2, v5, :cond_24

    .line 1514
    invoke-interface {p0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/internal/widget/LockPatternView$Cell;

    .line 1515
    .local v0, "cell":Lcom/android/internal/widget/LockPatternView$Cell;
    invoke-virtual {v0}, Lcom/android/internal/widget/LockPatternView$Cell;->getRow()I

    move-result v7

    mul-int/lit8 v7, v7, 0x3

    invoke-virtual {v0}, Lcom/android/internal/widget/LockPatternView$Cell;->getColumn()I

    move-result v8

    add-int/2addr v7, v8

    int-to-byte v7, v7

    aput-byte v7, v6, v2

    .line 1513
    add-int/lit8 v2, v2, 0x1

    goto :goto_b

    .line 1518
    .end local v0    # "cell":Lcom/android/internal/widget/LockPatternView$Cell;
    :cond_24
    :try_start_24
    const-string v7, "SHA-1"

    invoke-static {v7}, Ljava/security/MessageDigest;->getInstance(Ljava/lang/String;)Ljava/security/MessageDigest;

    move-result-object v3

    .line 1519
    .local v3, "md":Ljava/security/MessageDigest;
    invoke-virtual {v3, v6}, Ljava/security/MessageDigest;->digest([B)[B
    :try_end_2d
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_24 .. :try_end_2d} :catch_2f

    move-result-object v1

    .line 1520
    .local v1, "hash":[B
    goto :goto_3

    .line 1521
    .end local v1    # "hash":[B
    .end local v3    # "md":Ljava/security/MessageDigest;
    :catch_2f
    move-exception v4

    .local v4, "nsa":Ljava/security/NoSuchAlgorithmException;
    move-object v1, v6

    .line 1522
    goto :goto_3
.end method

.method public static patternToString(Ljava/util/List;)Ljava/lang/String;
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/android/internal/widget/LockPatternView$Cell;",
            ">;)",
            "Ljava/lang/String;"
        }
    .end annotation

    .prologue
    .line 1486
    .local p0, "pattern":Ljava/util/List;, "Ljava/util/List<Lcom/android/internal/widget/LockPatternView$Cell;>;"
    if-nez p0, :cond_5

    .line 1487
    const-string v4, ""

    .line 1496
    :goto_4
    return-object v4

    .line 1489
    :cond_5
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v2

    .line 1491
    .local v2, "patternSize":I
    new-array v3, v2, [B

    .line 1492
    .local v3, "res":[B
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_c
    if-ge v1, v2, :cond_25

    .line 1493
    invoke-interface {p0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/internal/widget/LockPatternView$Cell;

    .line 1494
    .local v0, "cell":Lcom/android/internal/widget/LockPatternView$Cell;
    invoke-virtual {v0}, Lcom/android/internal/widget/LockPatternView$Cell;->getRow()I

    move-result v4

    mul-int/lit8 v4, v4, 0x3

    invoke-virtual {v0}, Lcom/android/internal/widget/LockPatternView$Cell;->getColumn()I

    move-result v5

    add-int/2addr v4, v5

    int-to-byte v4, v4

    aput-byte v4, v3, v1

    .line 1492
    add-int/lit8 v1, v1, 0x1

    goto :goto_c

    .line 1496
    .end local v0    # "cell":Lcom/android/internal/widget/LockPatternView$Cell;
    :cond_25
    new-instance v4, Ljava/lang/String;

    invoke-direct {v4, v3}, Ljava/lang/String;-><init>([B)V

    goto :goto_4
.end method

.method private saveLockFingerprintPasswordwithoutQuality(Ljava/lang/String;I)V
    .registers 15
    .param p1, "password"    # Ljava/lang/String;
    .param p2, "userId"    # I

    .prologue
    .line 2911
    :try_start_0
    invoke-virtual {p0}, getDevicePolicyManager()Landroid/app/admin/DevicePolicyManager;

    move-result-object v0

    .line 2912
    .local v0, "dpm":Landroid/app/admin/DevicePolicyManager;
    if-eqz p1, :cond_41

    .line 2913
    invoke-direct {p0}, getLockSettings()Lcom/android/internal/widget/ILockSettings;

    move-result-object v1

    invoke-interface {v1, p1, p2}, Lcom/android/internal/widget/ILockSettings;->setLockFingerprintPassword(Ljava/lang/String;I)V

    .line 2914
    invoke-static {p1}, computePasswordQuality(Ljava/lang/String;)I

    move-result v10

    .line 2915
    .local v10, "computedQuality":I
    if-eqz v10, :cond_17

    .line 2916
    invoke-virtual {p0, p1, p2}, setContainerPasswordState(Ljava/lang/String;I)V

    .line 2929
    .end local v0    # "dpm":Landroid/app/admin/DevicePolicyManager;
    .end local v10    # "computedQuality":I
    :goto_16
    return-void

    .line 2919
    .restart local v0    # "dpm":Landroid/app/admin/DevicePolicyManager;
    .restart local v10    # "computedQuality":I
    :cond_17
    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    invoke-direct {p0}, getCurrentOrCallingUserId()I

    move-result v9

    invoke-virtual/range {v0 .. v9}, Landroid/app/admin/DevicePolicyManager;->setActivePasswordState(IIIIIIIII)V
    :try_end_26
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_26} :catch_27

    goto :goto_16

    .line 2926
    .end local v0    # "dpm":Landroid/app/admin/DevicePolicyManager;
    .end local v10    # "computedQuality":I
    :catch_27
    move-exception v11

    .line 2927
    .local v11, "re":Ljava/lang/Exception;
    const-string v1, "LockPatternUtils"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Unable to save Fingerprint lock password "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_16

    .line 2923
    .end local v11    # "re":Ljava/lang/Exception;
    .restart local v0    # "dpm":Landroid/app/admin/DevicePolicyManager;
    :cond_41
    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    :try_start_49
    invoke-direct {p0}, getCurrentOrCallingUserId()I

    move-result v9

    invoke-virtual/range {v0 .. v9}, Landroid/app/admin/DevicePolicyManager;->setActivePasswordState(IIIIIIIII)V
    :try_end_50
    .catch Ljava/lang/Exception; {:try_start_49 .. :try_end_50} :catch_27

    goto :goto_16
.end method

.method private savedPasswordExistsNoCache()Z
    .registers 5

    .prologue
    .line 1658
    const-string/jumbo v2, "lock_settings"

    invoke-static {v2}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v2

    invoke-static {v2}, Lcom/android/internal/widget/ILockSettings$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/widget/ILockSettings;

    move-result-object v1

    .line 1660
    .local v1, "lockSettingsService":Lcom/android/internal/widget/ILockSettings;
    if-eqz v1, :cond_1e

    .line 1662
    :try_start_d
    invoke-direct {p0}, getCurrentOrCallingUserId()I

    move-result v2

    invoke-interface {v1, v2}, Lcom/android/internal/widget/ILockSettings;->havePassword(I)Z
    :try_end_14
    .catch Landroid/os/RemoteException; {:try_start_d .. :try_end_14} :catch_16

    move-result v2

    .line 1667
    :goto_15
    return v2

    .line 1663
    :catch_16
    move-exception v0

    .line 1664
    .local v0, "e":Landroid/os/RemoteException;
    const-string v2, "LockPatternUtils"

    const-string v3, "Unable to reach LockSettingsService"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1667
    .end local v0    # "e":Landroid/os/RemoteException;
    :cond_1e
    const/4 v2, 0x0

    goto :goto_15
.end method

.method private setBoolean(Ljava/lang/String;Z)V
    .registers 4
    .param p1, "secureSettingKey"    # Ljava/lang/String;
    .param p2, "enabled"    # Z

    .prologue
    .line 1972
    invoke-direct {p0}, getCurrentOrCallingUserId()I

    move-result v0

    invoke-direct {p0, p1, p2, v0}, setBoolean(Ljava/lang/String;ZI)V

    .line 1973
    return-void
.end method

.method private setBoolean(Ljava/lang/String;ZI)V
    .registers 8
    .param p1, "secureSettingKey"    # Ljava/lang/String;
    .param p2, "enabled"    # Z
    .param p3, "userId"    # I

    .prologue
    .line 1964
    :try_start_0
    invoke-direct {p0}, getLockSettings()Lcom/android/internal/widget/ILockSettings;

    move-result-object v1

    invoke-interface {v1, p1, p2, p3}, Lcom/android/internal/widget/ILockSettings;->setBoolean(Ljava/lang/String;ZI)V
    :try_end_7
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_7} :catch_8

    .line 1969
    :goto_7
    return-void

    .line 1965
    :catch_8
    move-exception v0

    .line 1967
    .local v0, "re":Landroid/os/RemoteException;
    const-string v1, "LockPatternUtils"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Couldn\'t write boolean "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_7
.end method

.method private setLong(Ljava/lang/String;J)V
    .registers 6
    .param p1, "secureSettingKey"    # Ljava/lang/String;
    .param p2, "value"    # J

    .prologue
    .line 2127
    invoke-direct {p0}, getCurrentOrCallingUserId()I

    move-result v0

    invoke-direct {p0, p1, p2, p3, v0}, setLong(Ljava/lang/String;JI)V

    .line 2128
    return-void
.end method

.method private setLong(Ljava/lang/String;JI)V
    .registers 11
    .param p1, "secureSettingKey"    # Ljava/lang/String;
    .param p2, "value"    # J
    .param p4, "userHandle"    # I

    .prologue
    .line 2131
    invoke-static {}, Landroid/os/Debug;->isProductShip()I

    move-result v2

    if-nez v2, :cond_3c

    .line 2132
    const-string/jumbo v2, "lockscreen.password_type"

    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3c

    const/16 v2, 0x64

    if-lt p4, v2, :cond_3c

    const-wide/16 v2, 0x0

    cmp-long v2, p2, v2

    if-nez v2, :cond_3c

    .line 2135
    :try_start_19
    const-string v2, "LockPatternUtils"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "lock lock type set to : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p2, p3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2136
    new-instance v2, Ljava/lang/Exception;

    invoke-direct {v2}, Ljava/lang/Exception;-><init>()V

    throw v2
    :try_end_38
    .catch Ljava/lang/Exception; {:try_start_19 .. :try_end_38} :catch_38

    .line 2137
    :catch_38
    move-exception v0

    .line 2138
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 2143
    .end local v0    # "e":Ljava/lang/Exception;
    :cond_3c
    :try_start_3c
    invoke-direct {p0}, getLockSettings()Lcom/android/internal/widget/ILockSettings;

    move-result-object v2

    invoke-interface {v2, p1, p2, p3, p4}, Lcom/android/internal/widget/ILockSettings;->setLong(Ljava/lang/String;JI)V
    :try_end_43
    .catch Landroid/os/RemoteException; {:try_start_3c .. :try_end_43} :catch_44

    .line 2148
    :goto_43
    return-void

    .line 2144
    :catch_44
    move-exception v1

    .line 2146
    .local v1, "re":Landroid/os/RemoteException;
    const-string v2, "LockPatternUtils"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Couldn\'t write long "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_43
.end method

.method private setString(Ljava/lang/String;Ljava/lang/String;I)V
    .registers 8
    .param p1, "secureSettingKey"    # Ljava/lang/String;
    .param p2, "value"    # Ljava/lang/String;
    .param p3, "userHandle"    # I

    .prologue
    .line 2164
    :try_start_0
    invoke-direct {p0}, getLockSettings()Lcom/android/internal/widget/ILockSettings;

    move-result-object v1

    invoke-interface {v1, p1, p2, p3}, Lcom/android/internal/widget/ILockSettings;->setString(Ljava/lang/String;Ljava/lang/String;I)V
    :try_end_7
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_7} :catch_8

    .line 2169
    :goto_7
    return-void

    .line 2165
    :catch_8
    move-exception v0

    .line 2167
    .local v0, "re":Landroid/os/RemoteException;
    const-string v1, "LockPatternUtils"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Couldn\'t write string "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_7
.end method

.method public static stringToPattern(Ljava/lang/String;)Ljava/util/List;
    .registers 7
    .param p0, "string"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List",
            "<",
            "Lcom/android/internal/widget/LockPatternView$Cell;",
            ">;"
        }
    .end annotation

    .prologue
    .line 1470
    invoke-static {}, Lcom/google/android/collect/Lists;->newArrayList()Ljava/util/ArrayList;

    move-result-object v3

    .line 1472
    .local v3, "result":Ljava/util/List;, "Ljava/util/List<Lcom/android/internal/widget/LockPatternView$Cell;>;"
    invoke-virtual {p0}, Ljava/lang/String;->getBytes()[B

    move-result-object v1

    .line 1473
    .local v1, "bytes":[B
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_9
    array-length v4, v1

    if-ge v2, v4, :cond_1c

    .line 1474
    aget-byte v0, v1, v2

    .line 1475
    .local v0, "b":B
    div-int/lit8 v4, v0, 0x3

    rem-int/lit8 v5, v0, 0x3

    invoke-static {v4, v5}, Lcom/android/internal/widget/LockPatternView$Cell;->of(II)Lcom/android/internal/widget/LockPatternView$Cell;

    move-result-object v4

    invoke-interface {v3, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1473
    add-int/lit8 v2, v2, 0x1

    goto :goto_9

    .line 1477
    .end local v0    # "b":B
    :cond_1c
    return-object v3
.end method

.method private static toHex([B)Ljava/lang/String;
    .registers 7
    .param p0, "ary"    # [B

    .prologue
    .line 1603
    const-string v0, "0123456789ABCDEF"

    .line 1604
    .local v0, "hex":Ljava/lang/String;
    const-string v2, ""

    .line 1605
    .local v2, "ret":Ljava/lang/String;
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_5
    array-length v3, p0

    if-ge v1, v3, :cond_43

    .line 1606
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "0123456789ABCDEF"

    aget-byte v5, p0, v1

    shr-int/lit8 v5, v5, 0x4

    and-int/lit8 v5, v5, 0xf

    invoke-virtual {v4, v5}, Ljava/lang/String;->charAt(I)C

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 1607
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "0123456789ABCDEF"

    aget-byte v5, p0, v1

    and-int/lit8 v5, v5, 0xf

    invoke-virtual {v4, v5}, Ljava/lang/String;->charAt(I)C

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 1605
    add-int/lit8 v1, v1, 0x1

    goto :goto_5

    .line 1609
    :cond_43
    return-object v2
.end method

.method private updateCACAuthentication()V
    .registers 5

    .prologue
    .line 535
    const-string v1, "LockPatternUtils"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "cacPasswordSetProgress flag value : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    sget-boolean v3, cacPasswordSetProgress:Z

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 536
    const-string v1, "LockPatternUtils"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "isCACPasswordEnabled flag value : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p0}, isCACPasswordEnabled()Z

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 537
    invoke-virtual {p0}, isCACPasswordEnabled()Z

    move-result v1

    if-eqz v1, :cond_5b

    sget-boolean v1, cacPasswordSetProgress:Z

    if-nez v1, :cond_5b

    .line 538
    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    const-string v2, "com.sec.smartcard.pinservice.action.SMARTCARD_PIN_REMOVED"

    invoke-virtual {v1, v2}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    .line 539
    .local v0, "intent":Landroid/content/Intent;
    iget-object v1, p0, mContext:Landroid/content/Context;

    invoke-virtual {v1, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 540
    const-string v1, "LockPatternUtils"

    const-string/jumbo v2, "updateCACAuthentication: send broadcast"

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 541
    const/4 v1, 0x0

    sput-boolean v1, cacPasswordSetProgress:Z

    .line 543
    .end local v0    # "intent":Landroid/content/Intent;
    :cond_5b
    return-void
.end method

.method private updateCACAuthentication(I)V
    .registers 8
    .param p1, "quality"    # I

    .prologue
    const/high16 v5, 0x70000

    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 561
    const-string v0, "LockPatternUtils"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "updateCACAuthentication "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 562
    invoke-direct {p0}, updateCACAuthentication()V

    .line 563
    invoke-direct {p0, p1}, update_lockscreen_type(I)V

    .line 564
    if-ne p1, v5, :cond_45

    move v0, v1

    :goto_26
    invoke-virtual {p0, v0}, setCACPasswordEnabled(Z)Z

    .line 565
    const-string v0, "LockPatternUtils"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "setCACPasswordEnabled: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    if-ne p1, v5, :cond_47

    :goto_39
    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 566
    return-void

    :cond_45
    move v0, v2

    .line 564
    goto :goto_26

    :cond_47
    move v1, v2

    .line 565
    goto :goto_39
.end method

.method private updateCryptoUserInfo()V
    .registers 8

    .prologue
    .line 1035
    invoke-direct {p0}, getCurrentOrCallingUserId()I

    move-result v4

    .line 1036
    .local v4, "userId":I
    if-eqz v4, :cond_7

    .line 1055
    :goto_6
    return-void

    .line 1040
    :cond_7
    invoke-virtual {p0}, isOwnerInfoEnabled()Z

    move-result v5

    if-eqz v5, :cond_22

    invoke-virtual {p0, v4}, getOwnerInfo(I)Ljava/lang/String;

    move-result-object v2

    .line 1042
    .local v2, "ownerInfo":Ljava/lang/String;
    :goto_11
    const-string/jumbo v5, "mount"

    invoke-static {v5}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v3

    .line 1043
    .local v3, "service":Landroid/os/IBinder;
    if-nez v3, :cond_25

    .line 1044
    const-string v5, "LockPatternUtils"

    const-string v6, "Could not find the mount service to update the user info"

    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_6

    .line 1040
    .end local v2    # "ownerInfo":Ljava/lang/String;
    .end local v3    # "service":Landroid/os/IBinder;
    :cond_22
    const-string v2, ""

    goto :goto_11

    .line 1048
    .restart local v2    # "ownerInfo":Ljava/lang/String;
    .restart local v3    # "service":Landroid/os/IBinder;
    :cond_25
    invoke-static {v3}, Landroid/os/storage/IMountService$Stub;->asInterface(Landroid/os/IBinder;)Landroid/os/storage/IMountService;

    move-result-object v1

    .line 1050
    .local v1, "mountService":Landroid/os/storage/IMountService;
    :try_start_29
    const-string v5, "LockPatternUtils"

    const-string v6, "Setting owner info"

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1051
    const-string v5, "OwnerInfo"

    invoke-interface {v1, v5, v2}, Landroid/os/storage/IMountService;->setField(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_35
    .catch Landroid/os/RemoteException; {:try_start_29 .. :try_end_35} :catch_36

    goto :goto_6

    .line 1052
    :catch_36
    move-exception v0

    .line 1053
    .local v0, "e":Landroid/os/RemoteException;
    const-string v5, "LockPatternUtils"

    const-string v6, "Error changing user info"

    invoke-static {v5, v6, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_6
.end method

.method private updateEncryptionPassword(ILjava/lang/String;)V
    .registers 6
    .param p1, "type"    # I
    .param p2, "password"    # Ljava/lang/String;

    .prologue
    .line 1177
    invoke-static {}, isDeviceEncryptionEnabled()Z

    move-result v1

    if-nez v1, :cond_7

    .line 1198
    :goto_6
    return-void

    .line 1180
    :cond_7
    const-string/jumbo v1, "mount"

    invoke-static {v1}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    .line 1181
    .local v0, "service":Landroid/os/IBinder;
    if-nez v0, :cond_18

    .line 1182
    const-string v1, "LockPatternUtils"

    const-string v2, "Could not find the mount service to update the encryption password"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_6

    .line 1186
    :cond_18
    new-instance v1, Lcom/android/internal/widget/LockPatternUtils$2;

    invoke-direct {v1, p0, v0, p1, p2}, Lcom/android/internal/widget/LockPatternUtils$2;-><init>(Lcom/android/internal/widget/LockPatternUtils;Landroid/os/IBinder;ILjava/lang/String;)V

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Void;

    invoke-virtual {v1, v2}, Lcom/android/internal/widget/LockPatternUtils$2;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    goto :goto_6
.end method

.method private update_lockscreen_type(I)V
    .registers 5
    .param p1, "quality"    # I

    .prologue
    .line 550
    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    const-string v2, "com.sec.smartcard.pinservice.action.SMARTCARD_LOCKTYPE_CHANGED"

    invoke-virtual {v1, v2}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    .line 551
    .local v0, "intent":Landroid/content/Intent;
    const/high16 v1, 0x70000

    if-ne p1, v1, :cond_27

    .line 552
    const-string v1, "Type"

    const-string v2, "Smartcard"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 555
    :goto_16
    iget-object v1, p0, mContext:Landroid/content/Context;

    invoke-virtual {v1, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 556
    const-string v1, "LockPatternUtils"

    const-string/jumbo v2, "updateCACAuthentication: send broadcast"

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 557
    const/4 v1, 0x0

    sput-boolean v1, cacPasswordSetProgress:Z

    .line 558
    return-void

    .line 554
    :cond_27
    const-string v1, "Type"

    const-string v2, "Other"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    goto :goto_16
.end method

.method private writeAppWidgets([I)V
    .registers 6
    .param p1, "appWidgetIds"    # [I

    .prologue
    .line 2056
    iget-object v0, p0, mContentResolver:Landroid/content/ContentResolver;

    const-string/jumbo v1, "lock_screen_appwidget_ids"

    const-string v2, ","

    invoke-static {p1, v2}, combineStrings([ILjava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const/4 v3, -0x2

    invoke-static {v0, v1, v2, v3}, Landroid/provider/Settings$Secure;->putStringForUser(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;I)Z

    .line 2060
    return-void
.end method


# virtual methods
.method public addAppWidget(II)Z
    .registers 9
    .param p1, "widgetId"    # I
    .param p2, "index"    # I

    .prologue
    const/4 v4, 0x0

    .line 2064
    invoke-virtual {p0}, getAppWidgets()[I

    move-result-object v3

    .line 2065
    .local v3, "widgets":[I
    if-nez v3, :cond_8

    .line 2083
    :cond_7
    :goto_7
    return v4

    .line 2068
    :cond_8
    if-ltz p2, :cond_7

    array-length v5, v3

    if-gt p2, v5, :cond_7

    .line 2071
    array-length v4, v3

    add-int/lit8 v4, v4, 0x1

    new-array v2, v4, [I

    .line 2072
    .local v2, "newWidgets":[I
    const/4 v0, 0x0

    .local v0, "i":I
    const/4 v1, 0x0

    .local v1, "j":I
    :goto_14
    array-length v4, v2

    if-ge v0, v4, :cond_29

    .line 2073
    if-ne p2, v0, :cond_1d

    .line 2074
    aput p1, v2, v0

    .line 2075
    add-int/lit8 v0, v0, 0x1

    .line 2077
    :cond_1d
    array-length v4, v2

    if-ge v0, v4, :cond_26

    .line 2078
    aget v4, v3, v1

    aput v4, v2, v0

    .line 2079
    add-int/lit8 v1, v1, 0x1

    .line 2072
    :cond_26
    add-int/lit8 v0, v0, 0x1

    goto :goto_14

    .line 2082
    :cond_29
    invoke-direct {p0, v2}, writeAppWidgets([I)V

    .line 2083
    const/4 v4, 0x1

    goto :goto_7
.end method

.method public checkBackupPin(Ljava/lang/String;)Z
    .registers 5
    .param p1, "password"    # Ljava/lang/String;

    .prologue
    .line 2549
    invoke-direct {p0}, getCurrentOrCallingUserId()I

    move-result v1

    .line 2551
    .local v1, "userId":I
    :try_start_4
    invoke-direct {p0}, getLockSettings()Lcom/android/internal/widget/ILockSettings;

    move-result-object v2

    invoke-interface {v2, p1, v1}, Lcom/android/internal/widget/ILockSettings;->checkBackupPin(Ljava/lang/String;I)Z
    :try_end_b
    .catch Landroid/os/RemoteException; {:try_start_4 .. :try_end_b} :catch_d

    move-result v2

    .line 2553
    :goto_c
    return v2

    .line 2552
    :catch_d
    move-exception v0

    .line 2553
    .local v0, "re":Landroid/os/RemoteException;
    const/4 v2, 0x1

    goto :goto_c
.end method

.method public checkFMMPassword(Ljava/lang/String;)Z
    .registers 9
    .param p1, "password"    # Ljava/lang/String;

    .prologue
    const/4 v4, 0x0

    .line 3028
    :try_start_1
    const-string v5, "SHA-1"

    invoke-static {v5}, Ljava/security/MessageDigest;->getInstance(Ljava/lang/String;)Ljava/security/MessageDigest;

    move-result-object v5

    invoke-virtual {p1}, Ljava/lang/String;->getBytes()[B

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/security/MessageDigest;->digest([B)[B

    move-result-object v3

    .line 3029
    .local v3, "sha1":[B
    const/4 v5, 0x2

    invoke-static {v3, v5}, Landroid/util/Base64;->encodeToString([BI)Ljava/lang/String;

    move-result-object v0

    .line 3031
    .local v0, "base64":Ljava/lang/String;
    invoke-direct {p0}, getLockSettings()Lcom/android/internal/widget/ILockSettings;

    move-result-object v5

    const/4 v6, 0x0

    invoke-interface {v5, v0, v6}, Lcom/android/internal/widget/ILockSettings;->checkFMMPassword(Ljava/lang/String;I)Z
    :try_end_1c
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1c} :catch_1e
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_1 .. :try_end_1c} :catch_21

    move-result v4

    .line 3036
    .end local v0    # "base64":Ljava/lang/String;
    .end local v3    # "sha1":[B
    :goto_1d
    return v4

    .line 3032
    :catch_1e
    move-exception v2

    .line 3033
    .local v2, "re":Landroid/os/RemoteException;
    const/4 v4, 0x1

    goto :goto_1d

    .line 3034
    .end local v2    # "re":Landroid/os/RemoteException;
    :catch_21
    move-exception v1

    .line 3035
    .local v1, "e":Ljava/security/NoSuchAlgorithmException;
    const-string v5, "LockPatternUtils"

    const-string v6, "Failed to encode string because of missing algorithm: SHA-1"

    invoke-static {v5, v6}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1d
.end method

.method public checkFingerprintPassword(Ljava/lang/String;)Z
    .registers 3
    .param p1, "password"    # Ljava/lang/String;

    .prologue
    .line 2933
    invoke-direct {p0}, getCurrentOrCallingUserId()I

    move-result v0

    invoke-virtual {p0, p1, v0}, checkFingerprintPassword(Ljava/lang/String;I)Z

    move-result v0

    return v0
.end method

.method public checkFingerprintPassword(Ljava/lang/String;I)Z
    .registers 15
    .param p1, "password"    # Ljava/lang/String;
    .param p2, "userId"    # I

    .prologue
    const/4 v11, 0x1

    const/4 v8, 0x0

    .line 2939
    :try_start_2
    invoke-virtual {p0}, getDevicePolicyManager()Landroid/app/admin/DevicePolicyManager;

    move-result-object v1

    .line 2940
    .local v1, "dpm":Landroid/app/admin/DevicePolicyManager;
    const/4 v9, 0x0

    invoke-virtual {v1, v9}, Landroid/app/admin/DevicePolicyManager;->isSupportFingerprintForODE(Landroid/content/ComponentName;)Z

    move-result v2

    .line 2944
    .local v2, "enabledFingerprintForODE":Z
    invoke-static {}, Landroid/os/PersonaManager;->getKnoxInfo()Landroid/os/Bundle;

    move-result-object v7

    .line 2945
    .local v7, "versionInfo":Landroid/os/Bundle;
    if-eqz v7, :cond_4f

    const-string v9, "2.0"

    const-string/jumbo v10, "version"

    invoke-virtual {v7, v10}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_4f

    const/16 v9, 0x64

    if-lt p2, v9, :cond_4f

    .line 2946
    const/4 v4, 0x0

    .line 2947
    .local v4, "personaManager":Landroid/os/PersonaManager;
    iget-object v9, p0, mContext:Landroid/content/Context;

    const-string/jumbo v10, "persona"

    invoke-virtual {v9, v10}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v4

    .end local v4    # "personaManager":Landroid/os/PersonaManager;
    check-cast v4, Landroid/os/PersonaManager;

    .line 2948
    .restart local v4    # "personaManager":Landroid/os/PersonaManager;
    if-eqz v4, :cond_48

    .line 2949
    invoke-virtual {v4, p2}, Landroid/os/PersonaManager;->getParentId(I)I

    move-result v3

    .line 2950
    .local v3, "parentId":I
    if-eq v3, p2, :cond_3f

    .line 2951
    const-string v9, "LockPatternUtils"

    const-string v10, "checkFingerprintPassword in case of persona, we don\'t care ODE"

    invoke-static {v9, v10}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 2953
    :cond_3f
    invoke-direct {p0}, getLockSettings()Lcom/android/internal/widget/ILockSettings;

    move-result-object v9

    invoke-interface {v9, p1, p2}, Lcom/android/internal/widget/ILockSettings;->checkFingerprintPassword(Ljava/lang/String;I)Z

    move-result v6

    .line 2973
    .end local v1    # "dpm":Landroid/app/admin/DevicePolicyManager;
    .end local v2    # "enabledFingerprintForODE":Z
    .end local v3    # "parentId":I
    .end local v4    # "personaManager":Landroid/os/PersonaManager;
    .end local v7    # "versionInfo":Landroid/os/Bundle;
    :cond_47
    :goto_47
    return v6

    .line 2955
    .restart local v1    # "dpm":Landroid/app/admin/DevicePolicyManager;
    .restart local v2    # "enabledFingerprintForODE":Z
    .restart local v4    # "personaManager":Landroid/os/PersonaManager;
    .restart local v7    # "versionInfo":Landroid/os/Bundle;
    :cond_48
    const-string v9, "LockPatternUtils"

    const-string v10, "Can\'t access persona service"

    invoke-static {v9, v10}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2961
    .end local v4    # "personaManager":Landroid/os/PersonaManager;
    :cond_4f
    invoke-direct {p0}, getLockSettings()Lcom/android/internal/widget/ILockSettings;

    move-result-object v9

    invoke-interface {v9, p1, p2}, Lcom/android/internal/widget/ILockSettings;->checkFingerprintPassword(Ljava/lang/String;I)Z

    move-result v6

    .line 2962
    .local v6, "result":Z
    if-ne v6, v11, :cond_47

    invoke-static {}, Landroid/dirEncryption/DirEncryptionManager;->isEncryptionFeatureEnabled()Z

    move-result v9

    if-eqz v9, :cond_47

    if-ne v2, v11, :cond_47

    .line 2965
    new-instance v0, Landroid/dirEncryption/DirEncryptionManager;

    iget-object v9, p0, mContext:Landroid/content/Context;

    invoke-direct {v0, v9}, Landroid/dirEncryption/DirEncryptionManager;-><init>(Landroid/content/Context;)V

    .line 2966
    .local v0, "dem":Landroid/dirEncryption/DirEncryptionManager;
    invoke-virtual {v0, p1}, Landroid/dirEncryption/DirEncryptionManager;->setPassword(Ljava/lang/String;)I

    .line 2967
    const/4 v9, 0x0

    const/4 v10, 0x0

    invoke-virtual {v1, v9, v10}, Landroid/app/admin/DevicePolicyManager;->setNeedToGetAlternativePasswdForODE(Landroid/content/ComponentName;Z)V
    :try_end_70
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_70} :catch_71

    goto :goto_47

    .line 2972
    .end local v0    # "dem":Landroid/dirEncryption/DirEncryptionManager;
    .end local v1    # "dpm":Landroid/app/admin/DevicePolicyManager;
    .end local v2    # "enabledFingerprintForODE":Z
    .end local v6    # "result":Z
    .end local v7    # "versionInfo":Landroid/os/Bundle;
    :catch_71
    move-exception v5

    .local v5, "re":Landroid/os/RemoteException;
    move v6, v8

    .line 2973
    goto :goto_47
.end method

.method public checkParentControlPassword(Ljava/lang/String;)Z
    .registers 7
    .param p1, "password"    # Ljava/lang/String;

    .prologue
    .line 2754
    invoke-direct {p0}, getCurrentOrCallingUserId()I

    move-result v2

    .line 2762
    .local v2, "userId":I
    :try_start_4
    invoke-direct {p0}, getLockSettings()Lcom/android/internal/widget/ILockSettings;

    move-result-object v3

    invoke-interface {v3, v2}, Lcom/android/internal/widget/ILockSettings;->getParentControlPasswordHashSize(I)I

    move-result v0

    .line 2767
    .local v0, "length":I
    invoke-direct {p0}, getLockSettings()Lcom/android/internal/widget/ILockSettings;

    move-result-object v3

    invoke-virtual {p0, p1, v2}, passwordToHash(Ljava/lang/String;I)[B

    move-result-object v4

    invoke-interface {v3, v4, v2}, Lcom/android/internal/widget/ILockSettings;->checkParentControlPassword([BI)Z
    :try_end_17
    .catch Landroid/os/RemoteException; {:try_start_4 .. :try_end_17} :catch_19

    move-result v3

    .line 2772
    .end local v0    # "length":I
    :goto_18
    return v3

    .line 2771
    :catch_19
    move-exception v1

    .line 2772
    .local v1, "re":Landroid/os/RemoteException;
    const/4 v3, 0x1

    goto :goto_18
.end method

.method public checkPassword(ILjava/lang/String;)Z
    .registers 5
    .param p1, "userId"    # I
    .param p2, "password"    # Ljava/lang/String;

    .prologue
    .line 656
    :try_start_0
    invoke-direct {p0}, getLockSettings()Lcom/android/internal/widget/ILockSettings;

    move-result-object v1

    invoke-interface {v1, p2, p1}, Lcom/android/internal/widget/ILockSettings;->checkPassword(Ljava/lang/String;I)Z
    :try_end_7
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_7} :catch_9

    move-result v1

    .line 658
    :goto_8
    return v1

    .line 657
    :catch_9
    move-exception v0

    .line 658
    .local v0, "re":Landroid/os/RemoteException;
    const/4 v1, 0x1

    goto :goto_8
.end method

.method public checkPassword(Ljava/lang/String;)Z
    .registers 4
    .param p1, "password"    # Ljava/lang/String;

    .prologue
    .line 663
    invoke-direct {p0}, getCurrentOrCallingUserId()I

    move-result v0

    .line 664
    .local v0, "userId":I
    invoke-virtual {p0, v0, p1}, checkPassword(ILjava/lang/String;)Z

    move-result v1

    return v1
.end method

.method public checkPasswordHistory(Ljava/lang/String;)Z
    .registers 9
    .param p1, "password"    # Ljava/lang/String;

    .prologue
    const/4 v5, 0x0

    .line 694
    invoke-static {}, Lcom/samsung/android/security/CCManager;->isMdfEnforced()Z

    move-result v6

    if-eqz v6, :cond_8

    .line 714
    :cond_7
    :goto_7
    return v5

    .line 697
    :cond_8
    new-instance v2, Ljava/lang/String;

    invoke-direct {p0}, getCurrentOrCallingUserId()I

    move-result v6

    invoke-virtual {p0, p1, v6}, passwordToHash(Ljava/lang/String;I)[B

    move-result-object v6

    invoke-direct {v2, v6}, Ljava/lang/String;-><init>([B)V

    .line 699
    .local v2, "passwordHashString":Ljava/lang/String;
    const-string/jumbo v6, "lockscreen.passwordhistory"

    invoke-direct {p0, v6}, getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 700
    .local v3, "passwordHistory":Ljava/lang/String;
    if-eqz v3, :cond_7

    .line 704
    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v1

    .line 705
    .local v1, "passwordHashLength":I
    invoke-virtual {p0}, getRequestedPasswordHistoryLength()I

    move-result v4

    .line 706
    .local v4, "passwordHistoryLength":I
    if-eqz v4, :cond_7

    .line 709
    mul-int v6, v1, v4

    add-int/2addr v6, v4

    add-int/lit8 v0, v6, -0x1

    .line 711
    .local v0, "neededPasswordHistoryLength":I
    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v6

    if-le v6, v0, :cond_37

    .line 712
    invoke-virtual {v3, v5, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    .line 714
    :cond_37
    invoke-virtual {v3, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v5

    goto :goto_7
.end method

.method public checkPasswordWithCAC(Ljava/lang/String;)I
    .registers 7
    .param p1, "password"    # Ljava/lang/String;

    .prologue
    .line 438
    const-string v2, "LockPatternUtils"

    const-string v3, "checkPasswordWithCAC: "

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 439
    const/4 v2, 0x0

    sput-boolean v2, mIsCallbackCalled:Z

    .line 440
    new-instance v0, Landroid/os/ConditionVariable;

    invoke-direct {v0}, Landroid/os/ConditionVariable;-><init>()V

    .line 443
    .local v0, "cv":Landroid/os/ConditionVariable;
    :try_start_f
    invoke-direct {p0}, getSmartcardPinManager()Lcom/sec/smartcard/pinservice/SmartCardPinManager;

    move-result-object v2

    invoke-virtual {p1}, Ljava/lang/String;->toCharArray()[C

    move-result-object v3

    new-instance v4, Lcom/android/internal/widget/LockPatternUtils$1;

    invoke-direct {v4, p0, v0}, Lcom/android/internal/widget/LockPatternUtils$1;-><init>(Lcom/android/internal/widget/LockPatternUtils;Landroid/os/ConditionVariable;)V

    iget-object v4, v4, Lcom/android/internal/widget/LockPatternUtils$1;->mVerifyCallback:Lcom/sec/smartcard/pinservice/ISmartCardVerifyCallback;

    invoke-virtual {v2, v3, v4}, Lcom/sec/smartcard/pinservice/SmartCardPinManager;->verifyCard([CLcom/sec/smartcard/pinservice/ISmartCardVerifyCallback;)V
    :try_end_21
    .catch Ljava/lang/Exception; {:try_start_f .. :try_end_21} :catch_9d

    .line 465
    const-string v2, "LockPatternUtils"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "checkPasswordWithCAC: before block"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    sget v4, mScVerifyStatus:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 466
    const-string v2, "LockPatternUtils"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "checkPasswordWithCAC: before block cv"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 468
    sget-boolean v2, mIsCallbackCalled:Z

    if-nez v2, :cond_80

    .line 469
    const-string v2, "LockPatternUtils"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "checkPasswordWithCAC: mIsCallbackCalled is false"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 470
    invoke-virtual {v0}, Landroid/os/ConditionVariable;->block()V

    .line 472
    const-string v2, "LockPatternUtils"

    const-string v3, "checkPasswordWithCAC: mIsCallbackCalled is false after block-- Test log"

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 473
    const-string v2, "LockPatternUtils"

    const-string v3, "checkPasswordWithCAC: mIsCallbackCalled is false after block"

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 476
    :cond_80
    const-string v2, "LockPatternUtils"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "checkPasswordWithCAC: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    sget v4, mScVerifyStatus:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 477
    sget v2, mScVerifyStatus:I

    :goto_9c
    return v2

    .line 459
    :catch_9d
    move-exception v1

    .line 460
    .local v1, "e":Ljava/lang/Exception;
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    .line 461
    invoke-virtual {v0}, Landroid/os/ConditionVariable;->open()V

    .line 462
    const/4 v2, 0x5

    goto :goto_9c
.end method

.method public checkPattern(Ljava/util/List;)Z
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/android/internal/widget/LockPatternView$Cell;",
            ">;)Z"
        }
    .end annotation

    .prologue
    .line 640
    .local p1, "pattern":Ljava/util/List;, "Ljava/util/List<Lcom/android/internal/widget/LockPatternView$Cell;>;"
    invoke-direct {p0}, getCurrentOrCallingUserId()I

    move-result v1

    .line 642
    .local v1, "userId":I
    :try_start_4
    invoke-direct {p0}, getLockSettings()Lcom/android/internal/widget/ILockSettings;

    move-result-object v2

    invoke-static {p1}, patternToString(Ljava/util/List;)Ljava/lang/String;

    move-result-object v3

    invoke-interface {v2, v3, v1}, Lcom/android/internal/widget/ILockSettings;->checkPattern(Ljava/lang/String;I)Z
    :try_end_f
    .catch Landroid/os/RemoteException; {:try_start_4 .. :try_end_f} :catch_11

    move-result v2

    .line 644
    :goto_10
    return v2

    .line 643
    :catch_11
    move-exception v0

    .line 644
    .local v0, "re":Landroid/os/RemoteException;
    const/4 v2, 0x1

    goto :goto_10
.end method

.method public checkPersonalModeFingerPrintPassword(Ljava/lang/String;)Z
    .registers 5
    .param p1, "password"    # Ljava/lang/String;

    .prologue
    .line 2719
    invoke-direct {p0}, getCurrentOrCallingUserId()I

    move-result v1

    .line 2721
    .local v1, "userId":I
    :try_start_4
    invoke-direct {p0}, getLockSettings()Lcom/android/internal/widget/ILockSettings;

    move-result-object v2

    invoke-interface {v2, p1, v1}, Lcom/android/internal/widget/ILockSettings;->checkPersonalModeFingerprintPassword(Ljava/lang/String;I)Z
    :try_end_b
    .catch Landroid/os/RemoteException; {:try_start_4 .. :try_end_b} :catch_d

    move-result v2

    .line 2723
    :goto_c
    return v2

    .line 2722
    :catch_d
    move-exception v0

    .line 2723
    .local v0, "re":Landroid/os/RemoteException;
    const/4 v2, 0x1

    goto :goto_c
.end method

.method public checkPersonalModeLockBackupPin(Ljava/lang/String;)Z
    .registers 5
    .param p1, "pin"    # Ljava/lang/String;

    .prologue
    .line 2690
    invoke-direct {p0}, getCurrentOrCallingUserId()I

    move-result v1

    .line 2692
    .local v1, "userId":I
    :try_start_4
    invoke-direct {p0}, getLockSettings()Lcom/android/internal/widget/ILockSettings;

    move-result-object v2

    invoke-interface {v2, p1, v1}, Lcom/android/internal/widget/ILockSettings;->checkPersonalModeBackupPin(Ljava/lang/String;I)Z
    :try_end_b
    .catch Landroid/os/RemoteException; {:try_start_4 .. :try_end_b} :catch_d

    move-result v2

    .line 2694
    :goto_c
    return v2

    .line 2693
    :catch_d
    move-exception v0

    .line 2694
    .local v0, "re":Landroid/os/RemoteException;
    const/4 v2, 0x1

    goto :goto_c
.end method

.method public checkPersonalModeLockPassword(Ljava/lang/String;)Z
    .registers 5
    .param p1, "password"    # Ljava/lang/String;

    .prologue
    .line 2633
    invoke-direct {p0}, getCurrentOrCallingUserId()I

    move-result v1

    .line 2635
    .local v1, "userId":I
    :try_start_4
    invoke-direct {p0}, getLockSettings()Lcom/android/internal/widget/ILockSettings;

    move-result-object v2

    invoke-interface {v2, p1, v1}, Lcom/android/internal/widget/ILockSettings;->checkPersonalModePassword(Ljava/lang/String;I)Z
    :try_end_b
    .catch Landroid/os/RemoteException; {:try_start_4 .. :try_end_b} :catch_d

    move-result v2

    .line 2637
    :goto_c
    return v2

    .line 2636
    :catch_d
    move-exception v0

    .line 2637
    .local v0, "re":Landroid/os/RemoteException;
    const/4 v2, 0x1

    goto :goto_c
.end method

.method public checkPersonalModeLockPin(Ljava/lang/String;)Z
    .registers 5
    .param p1, "pin"    # Ljava/lang/String;

    .prologue
    .line 2604
    invoke-direct {p0}, getCurrentOrCallingUserId()I

    move-result v1

    .line 2606
    .local v1, "userId":I
    :try_start_4
    invoke-direct {p0}, getLockSettings()Lcom/android/internal/widget/ILockSettings;

    move-result-object v2

    invoke-interface {v2, p1, v1}, Lcom/android/internal/widget/ILockSettings;->checkPersonalModePin(Ljava/lang/String;I)Z
    :try_end_b
    .catch Landroid/os/RemoteException; {:try_start_4 .. :try_end_b} :catch_d

    move-result v2

    .line 2608
    :goto_c
    return v2

    .line 2607
    :catch_d
    move-exception v0

    .line 2608
    .local v0, "re":Landroid/os/RemoteException;
    const/4 v2, 0x1

    goto :goto_c
.end method

.method public checkPersonalModePattern(Ljava/util/List;)Z
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/android/internal/widget/LockPatternView$Cell;",
            ">;)Z"
        }
    .end annotation

    .prologue
    .line 2660
    .local p1, "pattern":Ljava/util/List;, "Ljava/util/List<Lcom/android/internal/widget/LockPatternView$Cell;>;"
    invoke-direct {p0}, getCurrentOrCallingUserId()I

    move-result v1

    .line 2662
    .local v1, "userId":I
    :try_start_4
    invoke-direct {p0}, getLockSettings()Lcom/android/internal/widget/ILockSettings;

    move-result-object v2

    invoke-static {p1}, patternToString(Ljava/util/List;)Ljava/lang/String;

    move-result-object v3

    invoke-interface {v2, v3, v1}, Lcom/android/internal/widget/ILockSettings;->checkPersonalModePattern(Ljava/lang/String;I)Z
    :try_end_f
    .catch Landroid/os/RemoteException; {:try_start_4 .. :try_end_f} :catch_11

    move-result v2

    .line 2664
    :goto_10
    return v2

    .line 2663
    :catch_11
    move-exception v0

    .line 2664
    .local v0, "re":Landroid/os/RemoteException;
    const/4 v2, 0x1

    goto :goto_10
.end method

.method public checkSignatureBackupPin(Ljava/lang/String;)Z
    .registers 7
    .param p1, "password"    # Ljava/lang/String;

    .prologue
    .line 2334
    invoke-direct {p0}, getCurrentOrCallingUserId()I

    move-result v2

    .line 2336
    .local v2, "userId":I
    :try_start_4
    invoke-direct {p0}, getLockSettings()Lcom/android/internal/widget/ILockSettings;

    move-result-object v3

    invoke-virtual {p0, p1, v2}, passwordToHash(Ljava/lang/String;I)[B

    move-result-object v4

    invoke-interface {v3, v4, v2}, Lcom/android/internal/widget/ILockSettings;->checkSignatureBackupPin([BI)Z

    move-result v0

    .line 2338
    .local v0, "matched":Z
    if-eqz v0, :cond_1b

    if-nez v2, :cond_1b

    .line 2339
    invoke-static {}, Landroid/security/KeyStore;->getInstance()Landroid/security/KeyStore;

    move-result-object v3

    invoke-virtual {v3, p1}, Landroid/security/KeyStore;->password(Ljava/lang/String;)Z
    :try_end_1b
    .catch Landroid/os/RemoteException; {:try_start_4 .. :try_end_1b} :catch_1c

    .line 2343
    .end local v0    # "matched":Z
    :cond_1b
    :goto_1b
    return v0

    .line 2342
    :catch_1c
    move-exception v1

    .line 2343
    .local v1, "re":Landroid/os/RemoteException;
    const/4 v0, 0x1

    goto :goto_1b
.end method

.method public checkVoldPassword()Z
    .registers 4

    .prologue
    .line 674
    invoke-direct {p0}, getCurrentOrCallingUserId()I

    move-result v1

    .line 676
    .local v1, "userId":I
    :try_start_4
    invoke-direct {p0}, getLockSettings()Lcom/android/internal/widget/ILockSettings;

    move-result-object v2

    invoke-interface {v2, v1}, Lcom/android/internal/widget/ILockSettings;->checkVoldPassword(I)Z
    :try_end_b
    .catch Landroid/os/RemoteException; {:try_start_4 .. :try_end_b} :catch_d

    move-result v2

    .line 678
    :goto_c
    return v2

    .line 677
    :catch_d
    move-exception v0

    .line 678
    .local v0, "re":Landroid/os/RemoteException;
    const/4 v2, 0x0

    goto :goto_c
.end method

.method public clearEncryptionPassword()V
    .registers 3

    .prologue
    .line 1409
    const/4 v0, 0x1

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, updateEncryptionPassword(ILjava/lang/String;)V

    .line 1410
    return-void
.end method

.method public clearLock(Z)V
    .registers 4
    .param p1, "isFallback"    # Z

    .prologue
    const/4 v1, 0x0

    .line 861
    if-nez p1, :cond_6

    invoke-virtual {p0}, deleteGallery()V

    .line 862
    :cond_6
    const/high16 v0, 0x10000

    invoke-virtual {p0, v1, v0}, saveLockPassword(Ljava/lang/String;I)V

    .line 863
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, setLockPatternEnabled(Z)V

    .line 864
    invoke-virtual {p0, v1}, saveLockPattern(Ljava/util/List;)V

    .line 865
    invoke-direct {p0}, clearLockExceptPwd()V

    .line 868
    return-void
.end method

.method public clearLockExceptPwd(Z)V
    .registers 2
    .param p1, "isFallback"    # Z

    .prologue
    .line 872
    if-nez p1, :cond_5

    invoke-virtual {p0}, deleteGallery()V

    .line 873
    :cond_5
    invoke-direct {p0}, clearLockExceptPwd()V

    .line 874
    return-void
.end method

.method public clearLockoutAttemptDeadline()V
    .registers 5

    .prologue
    .line 1902
    const-string/jumbo v0, "lockscreen.lockoutattemptdeadline"

    const-wide/16 v2, 0x0

    invoke-direct {p0, v0, v2, v3}, setLong(Ljava/lang/String;J)V

    .line 1903
    return-void
.end method

.method public deinitializeCACAuthentication()V
    .registers 4

    .prologue
    .line 433
    const-string v0, "LockPatternUtils"

    const-string v1, "deinitializeCACAuthentication: "

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 434
    invoke-static {}, Lcom/sec/smartcard/pinservice/SmartCardPinManagerFactory;->getInstance()Lcom/sec/smartcard/pinservice/SmartCardPinManagerFactory;

    move-result-object v0

    new-instance v1, Landroid/os/UserHandle;

    invoke-virtual {p0}, getCurrentUser()I

    move-result v2

    invoke-direct {v1, v2}, Landroid/os/UserHandle;-><init>(I)V

    invoke-virtual {v0, v1}, Lcom/sec/smartcard/pinservice/SmartCardPinManagerFactory;->deinitializeCAC(Landroid/os/UserHandle;)V

    .line 435
    return-void
.end method

.method deleteGallery()V
    .registers 4

    .prologue
    .line 922
    invoke-virtual {p0}, usingBiometricWeak()Z

    move-result v1

    if-eqz v1, :cond_1c

    .line 923
    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    const-string v2, "com.android.facelock.DELETE_GALLERY"

    invoke-virtual {v1, v2}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    .line 924
    .local v0, "intent":Landroid/content/Intent;
    const-string v1, "deleteGallery"

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 925
    iget-object v1, p0, mContext:Landroid/content/Context;

    invoke-virtual {v1, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 927
    .end local v0    # "intent":Landroid/content/Intent;
    :cond_1c
    return-void
.end method

.method public deleteTempGallery()V
    .registers 4

    .prologue
    .line 913
    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    const-string v2, "com.android.facelock.DELETE_GALLERY"

    invoke-virtual {v1, v2}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    .line 914
    .local v0, "intent":Landroid/content/Intent;
    const-string v1, "deleteTempGallery"

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 915
    iget-object v1, p0, mContext:Landroid/content/Context;

    invoke-virtual {v1, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 916
    return-void
.end method

.method public enableCarrierLockPlus()V
    .registers 4

    .prologue
    .line 3073
    :try_start_0
    invoke-direct {p0}, getLockSettings()Lcom/android/internal/widget/ILockSettings;

    move-result-object v1

    invoke-direct {p0}, getCurrentOrCallingUserId()I

    move-result v2

    invoke-interface {v1, v2}, Lcom/android/internal/widget/ILockSettings;->setCarrierLockPlusEnabled(I)V
    :try_end_b
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_b} :catch_c

    .line 3077
    :goto_b
    return-void

    .line 3074
    :catch_c
    move-exception v0

    .line 3075
    .local v0, "re":Landroid/os/RemoteException;
    const-string v1, "LockPatternUtils"

    const-string v2, "enableCarrierLockPlus exception"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_b
.end method

.method public getActivePasswordQuality()I
    .registers 7

    .prologue
    .line 776
    const/4 v0, 0x0

    .line 779
    .local v0, "activePasswordQuality":I
    const-string/jumbo v2, "lockscreen.password_type"

    const-wide/32 v4, 0x10000

    invoke-direct {p0, v2, v4, v5}, getLong(Ljava/lang/String;J)J

    move-result-wide v2

    long-to-int v1, v2

    .line 781
    .local v1, "quality":I
    sparse-switch v1, :sswitch_data_78

    .line 842
    :cond_f
    :goto_f
    return v0

    .line 783
    :sswitch_10
    invoke-virtual {p0}, isLockPatternEnabled()Z

    move-result v2

    if-eqz v2, :cond_f

    .line 784
    const/high16 v0, 0x10000

    goto :goto_f

    .line 788
    :sswitch_19
    invoke-virtual {p0}, isBiometricWeakInstalled()Z

    move-result v2

    if-eqz v2, :cond_f

    .line 789
    const v0, 0x8000

    goto :goto_f

    .line 793
    :sswitch_23
    invoke-virtual {p0}, isSignatureLockInstalled()Z

    move-result v2

    if-eqz v2, :cond_f

    .line 794
    const v0, 0x9000

    goto :goto_f

    .line 798
    :sswitch_2d
    invoke-virtual {p0}, isLockPasswordEnabled()Z

    move-result v2

    if-eqz v2, :cond_f

    .line 799
    const/high16 v0, 0x20000

    goto :goto_f

    .line 803
    :sswitch_36
    invoke-virtual {p0}, isLockPasswordEnabled()Z

    move-result v2

    if-eqz v2, :cond_f

    .line 804
    const/high16 v0, 0x30000

    goto :goto_f

    .line 808
    :sswitch_3f
    invoke-virtual {p0}, isLockPasswordEnabled()Z

    move-result v2

    if-eqz v2, :cond_f

    .line 809
    const/high16 v0, 0x40000

    goto :goto_f

    .line 813
    :sswitch_48
    invoke-virtual {p0}, isLockPasswordEnabled()Z

    move-result v2

    if-eqz v2, :cond_f

    .line 814
    const/high16 v0, 0x50000

    goto :goto_f

    .line 818
    :sswitch_51
    invoke-virtual {p0}, isLockPasswordEnabled()Z

    move-result v2

    if-eqz v2, :cond_f

    .line 819
    const/high16 v0, 0x60000

    goto :goto_f

    .line 824
    :sswitch_5a
    invoke-virtual {p0}, isSmartUnlockEnabled()Z

    move-result v2

    if-eqz v2, :cond_f

    .line 825
    const v0, 0x9100

    goto :goto_f

    .line 830
    :sswitch_64
    invoke-virtual {p0}, isSmartCardPasswordEnabled()Z

    move-result v2

    if-eqz v2, :cond_f

    .line 831
    const/high16 v0, 0x70000

    goto :goto_f

    .line 836
    :sswitch_6d
    invoke-virtual {p0}, isLockFingerprintEnabled()Z

    move-result v2

    if-eqz v2, :cond_f

    .line 837
    const v0, 0x61000

    goto :goto_f

    .line 781
    nop

    :sswitch_data_78
    .sparse-switch
        0x8000 -> :sswitch_19
        0x9000 -> :sswitch_23
        0x9100 -> :sswitch_5a
        0x10000 -> :sswitch_10
        0x20000 -> :sswitch_2d
        0x30000 -> :sswitch_36
        0x40000 -> :sswitch_3f
        0x50000 -> :sswitch_48
        0x60000 -> :sswitch_51
        0x61000 -> :sswitch_6d
        0x70000 -> :sswitch_64
        0x90000 -> :sswitch_5a
    .end sparse-switch
.end method

.method public getAppWidgets()[I
    .registers 2

    .prologue
    .line 1976
    const/4 v0, -0x2

    invoke-direct {p0, v0}, getAppWidgets(I)[I

    move-result-object v0

    return-object v0
.end method

.method public getBackupMode()I
    .registers 5

    .prologue
    .line 1760
    const-string/jumbo v0, "lockscreen.password_type_alternate"

    const-wide/16 v2, 0x0

    invoke-direct {p0, v0, v2, v3}, getLong(Ljava/lang/String;J)J

    move-result-wide v0

    long-to-int v0, v0

    return v0
.end method

.method public getCarrierLockPlusInfo(I)Ljava/lang/String;
    .registers 3
    .param p1, "kindofinfo"    # I

    .prologue
    .line 3234
    packed-switch p1, :pswitch_data_1e

    .line 3260
    const/4 v0, 0x0

    :goto_4
    return-object v0

    .line 3236
    :pswitch_5
    sget-object v0, lockPassword:Ljava/lang/String;

    goto :goto_4

    .line 3239
    :pswitch_8
    sget-object v0, lockType:Ljava/lang/String;

    goto :goto_4

    .line 3242
    :pswitch_b
    sget-object v0, lockChecksum:Ljava/lang/String;

    goto :goto_4

    .line 3245
    :pswitch_e
    sget-object v0, lockSaveMsg:Ljava/lang/String;

    goto :goto_4

    .line 3248
    :pswitch_11
    sget-object v0, lockPasswordUnlock:Ljava/lang/String;

    goto :goto_4

    .line 3251
    :pswitch_14
    sget-object v0, lockTypeUnlock:Ljava/lang/String;

    goto :goto_4

    .line 3254
    :pswitch_17
    sget-object v0, lockChecksumUnlock:Ljava/lang/String;

    goto :goto_4

    .line 3257
    :pswitch_1a
    sget-object v0, lockSaveMsgUnlock:Ljava/lang/String;

    goto :goto_4

    .line 3234
    nop

    :pswitch_data_1e
    .packed-switch 0x1
        :pswitch_5
        :pswitch_8
        :pswitch_b
        :pswitch_e
        :pswitch_11
        :pswitch_14
        :pswitch_17
        :pswitch_1a
    .end packed-switch
.end method

.method public getCarrierLockPlusMsg()Ljava/lang/String;
    .registers 7

    .prologue
    const/4 v2, 0x0

    .line 3186
    const/4 v1, 0x0

    .line 3188
    .local v1, "mCarrierlockPlusMsg":Ljava/lang/String;
    :try_start_2
    new-instance v3, Ljava/io/File;

    const-string v4, "/efs/sktdm_mem/lawlockmsg.txt"

    invoke-direct {v3, v4}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    const/16 v4, 0x80

    const/4 v5, 0x0

    invoke-static {v3, v4, v5}, Landroid/os/FileUtils;->readTextFile(Ljava/io/File;ILjava/lang/String;)Ljava/lang/String;
    :try_end_f
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_f} :catch_1b

    move-result-object v1

    .line 3192
    :goto_10
    if-eqz v1, :cond_1e

    .line 3193
    const-string v2, "LockPatternUtils"

    const-string/jumbo v3, "mCarrierlockPlusMsg is not null"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3196
    .end local v1    # "mCarrierlockPlusMsg":Ljava/lang/String;
    :goto_1a
    return-object v1

    .line 3189
    .restart local v1    # "mCarrierlockPlusMsg":Ljava/lang/String;
    :catch_1b
    move-exception v0

    .line 3190
    .local v0, "e":Ljava/io/IOException;
    const/4 v1, 0x0

    goto :goto_10

    .end local v0    # "e":Ljava/io/IOException;
    :cond_1e
    move-object v1, v2

    .line 3196
    goto :goto_1a
.end method

.method public getCarrierLockoutAttemptDeadline()J
    .registers 9

    .prologue
    const-wide/16 v4, 0x0

    .line 3296
    const-string/jumbo v6, "sktlockscreen.lockoutdeadline"

    invoke-direct {p0, v6, v4, v5}, getLong(Ljava/lang/String;J)J

    move-result-wide v0

    .line 3297
    .local v0, "deadline":J
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v2

    .line 3298
    .local v2, "now":J
    cmp-long v6, v0, v2

    if-ltz v6, :cond_19

    const-wide/32 v6, 0x927c0

    add-long/2addr v6, v2

    cmp-long v6, v0, v6

    if-lez v6, :cond_1a

    :cond_19
    move-wide v0, v4

    .line 3301
    .end local v0    # "deadline":J
    :cond_1a
    return-wide v0
.end method

.method public getCurrentUser()I
    .registers 5

    .prologue
    .line 595
    sget v2, sCurrentUserId:I

    const/16 v3, -0x2710

    if-eq v2, v3, :cond_9

    .line 597
    sget v2, sCurrentUserId:I

    .line 611
    :goto_8
    return v2

    .line 601
    :cond_9
    invoke-static {}, Landroid/os/PersonaManager;->getKnoxInfo()Landroid/os/Bundle;

    move-result-object v1

    .line 602
    .local v1, "versionInfo":Landroid/os/Bundle;
    const-string v2, "2.0"

    const-string/jumbo v3, "version"

    invoke-virtual {v1, v3}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_29

    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v2

    const/16 v3, 0x64

    if-lt v2, v3, :cond_29

    .line 604
    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v2

    goto :goto_8

    .line 609
    :cond_29
    :try_start_29
    invoke-static {}, Landroid/app/ActivityManagerNative;->getDefault()Landroid/app/IActivityManager;

    move-result-object v2

    invoke-interface {v2}, Landroid/app/IActivityManager;->getCurrentUser()Landroid/content/pm/UserInfo;

    move-result-object v2

    iget v2, v2, Landroid/content/pm/UserInfo;->id:I
    :try_end_33
    .catch Landroid/os/RemoteException; {:try_start_29 .. :try_end_33} :catch_34

    goto :goto_8

    .line 610
    :catch_34
    move-exception v0

    .line 611
    .local v0, "re":Landroid/os/RemoteException;
    const/4 v2, 0x0

    goto :goto_8
.end method

.method public getDevicePolicyManager()Landroid/app/admin/DevicePolicyManager;
    .registers 5

    .prologue
    .line 265
    iget-object v0, p0, mDevicePolicyManager:Landroid/app/admin/DevicePolicyManager;

    if-nez v0, :cond_22

    .line 266
    iget-object v0, p0, mContext:Landroid/content/Context;

    const-string v1, "device_policy"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/admin/DevicePolicyManager;

    iput-object v0, p0, mDevicePolicyManager:Landroid/app/admin/DevicePolicyManager;

    .line 268
    iget-object v0, p0, mDevicePolicyManager:Landroid/app/admin/DevicePolicyManager;

    if-nez v0, :cond_22

    .line 269
    const-string v0, "LockPatternUtils"

    const-string v1, "Can\'t get DevicePolicyManagerService: is it running?"

    new-instance v2, Ljava/lang/IllegalStateException;

    const-string v3, "Stack trace:"

    invoke-direct {v2, v3}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    invoke-static {v0, v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 273
    :cond_22
    iget-object v0, p0, mDevicePolicyManager:Landroid/app/admin/DevicePolicyManager;

    return-object v0
.end method

.method public getEnabledTrustAgents()Ljava/util/List;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Landroid/content/ComponentName;",
            ">;"
        }
    .end annotation

    .prologue
    .line 2455
    invoke-direct {p0}, getCurrentOrCallingUserId()I

    move-result v0

    invoke-virtual {p0, v0}, getEnabledTrustAgents(I)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public getEnabledTrustAgents(I)Ljava/util/List;
    .registers 10
    .param p1, "userId"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/util/List",
            "<",
            "Landroid/content/ComponentName;",
            ">;"
        }
    .end annotation

    .prologue
    .line 2471
    const-string/jumbo v7, "lockscreen.enabledtrustagents"

    invoke-direct {p0, v7, p1}, getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v5

    .line 2472
    .local v5, "serialized":Ljava/lang/String;
    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v7

    if-eqz v7, :cond_f

    .line 2473
    const/4 v0, 0x0

    .line 2482
    :cond_e
    return-object v0

    .line 2475
    :cond_f
    const-string v7, ","

    invoke-virtual {v5, v7}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v6

    .line 2476
    .local v6, "split":[Ljava/lang/String;
    new-instance v0, Ljava/util/ArrayList;

    array-length v7, v6

    invoke-direct {v0, v7}, Ljava/util/ArrayList;-><init>(I)V

    .line 2477
    .local v0, "activeTrustAgents":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/content/ComponentName;>;"
    move-object v1, v6

    .local v1, "arr$":[Ljava/lang/String;
    array-length v3, v1

    .local v3, "len$":I
    const/4 v2, 0x0

    .local v2, "i$":I
    :goto_1e
    if-ge v2, v3, :cond_e

    aget-object v4, v1, v2

    .line 2478
    .local v4, "s":Ljava/lang/String;
    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v7

    if-nez v7, :cond_2f

    .line 2479
    invoke-static {v4}, Landroid/content/ComponentName;->unflattenFromString(Ljava/lang/String;)Landroid/content/ComponentName;

    move-result-object v7

    invoke-virtual {v0, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2477
    :cond_2f
    add-int/lit8 v2, v2, 0x1

    goto :goto_1e
.end method

.method public getFallbackAppWidgetId()I
    .registers 5

    .prologue
    .line 2048
    iget-object v0, p0, mContentResolver:Landroid/content/ContentResolver;

    const-string/jumbo v1, "lock_screen_fallback_appwidget_id"

    const/4 v2, 0x0

    const/4 v3, -0x2

    invoke-static {v0, v1, v2, v3}, Landroid/provider/Settings$Secure;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v0

    return v0
.end method

.method public getIntentForClockAppWidget()Landroid/content/Intent;
    .registers 4

    .prologue
    .line 3378
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 3379
    .local v0, "intent":Landroid/content/Intent;
    const-string v1, "com.sec.android.app.clockpackage"

    const-string v2, "com.sec.android.app.clockpackage.ClockPackage"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 3381
    return-object v0
.end method

.method public getKeyguardStoredPasswordQuality()I
    .registers 2

    .prologue
    .line 1419
    invoke-direct {p0}, getCurrentOrCallingUserId()I

    move-result v0

    invoke-virtual {p0, v0}, getKeyguardStoredPasswordQuality(I)I

    move-result v0

    return v0
.end method

.method public getKeyguardStoredPasswordQuality(I)I
    .registers 8
    .param p1, "userHandle"    # I

    .prologue
    const-wide/16 v4, 0x0

    .line 1429
    const-string/jumbo v1, "lockscreen.password_type"

    invoke-direct {p0, v1, v4, v5, p1}, getLong(Ljava/lang/String;JI)J

    move-result-wide v2

    long-to-int v0, v2

    .line 1433
    .local v0, "quality":I
    const v1, 0x8000

    if-ne v0, v1, :cond_17

    .line 1434
    const-string/jumbo v1, "lockscreen.password_type_alternate"

    invoke-direct {p0, v1, v4, v5, p1}, getLong(Ljava/lang/String;JI)J

    move-result-wide v2

    long-to-int v0, v2

    .line 1439
    :cond_17
    const/high16 v1, 0x90000

    if-ne v0, v1, :cond_1e

    .line 1440
    const v0, 0x9100

    .line 1443
    :cond_1e
    return v0
.end method

.method public getLockoutAttemptDeadline()J
    .registers 9

    .prologue
    const-wide/16 v4, 0x0

    .line 1893
    const-string/jumbo v6, "lockscreen.lockoutattemptdeadline"

    invoke-direct {p0, v6, v4, v5}, getLong(Ljava/lang/String;J)J

    move-result-wide v0

    .line 1894
    .local v0, "deadline":J
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v2

    .line 1895
    .local v2, "now":J
    cmp-long v6, v0, v2

    if-ltz v6, :cond_18

    const-wide/16 v6, 0x7530

    add-long/2addr v6, v2

    cmp-long v6, v0, v6

    if-lez v6, :cond_19

    :cond_18
    move-wide v0, v4

    .line 1898
    .end local v0    # "deadline":J
    :cond_19
    return-wide v0
.end method

.method public getNextAlarm()Landroid/app/AlarmManager$AlarmClockInfo;
    .registers 4

    .prologue
    .line 1946
    iget-object v1, p0, mContext:Landroid/content/Context;

    const-string v2, "alarm"

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/AlarmManager;

    .line 1947
    .local v0, "alarmManager":Landroid/app/AlarmManager;
    const/4 v1, -0x2

    invoke-virtual {v0, v1}, Landroid/app/AlarmManager;->getNextAlarmClock(I)Landroid/app/AlarmManager$AlarmClockInfo;

    move-result-object v1

    return-object v1
.end method

.method public getOwnerInfo(I)Ljava/lang/String;
    .registers 3
    .param p1, "userId"    # I

    .prologue
    .line 1068
    const-string/jumbo v0, "lock_screen_owner_info"

    invoke-direct {p0, v0}, getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getPasswordRecoverable()Z
    .registers 4

    .prologue
    .line 355
    invoke-virtual {p0}, getDevicePolicyManager()Landroid/app/admin/DevicePolicyManager;

    move-result-object v0

    const/4 v1, 0x0

    invoke-direct {p0}, getCurrentOrCallingUserId()I

    move-result v2

    invoke-virtual {v0, v1, v2}, Landroid/app/admin/DevicePolicyManager;->getPasswordRecoverable(Landroid/content/ComponentName;I)Z

    move-result v0

    return v0
.end method

.method public getPowerButtonInstantlyLocks()Z
    .registers 3

    .prologue
    .line 2352
    const-string/jumbo v0, "lockscreen.power_button_instantly_locks"

    const/4 v1, 0x1

    invoke-direct {p0, v0, v1}, getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method public getRecoveryPassword()Ljava/lang/String;
    .registers 12

    .prologue
    const/4 v10, 0x1

    const/4 v9, 0x0

    const/4 v4, 0x0

    .line 2403
    const/4 v7, 0x0

    .line 2404
    .local v7, "recoveryPassword":Ljava/lang/String;
    iget-object v0, p0, mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v1, Landroid/provider/SecurityContract$Tables$PASSWORDS;->CONTENT_URI:Landroid/net/Uri;

    new-array v2, v10, [Ljava/lang/String;

    const-string/jumbo v3, "password"

    aput-object v3, v2, v9

    const-string/jumbo v3, "set_date IS NULL"

    move-object v5, v4

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 2409
    .local v6, "c":Landroid/database/Cursor;
    if-eqz v6, :cond_2e

    .line 2410
    invoke-interface {v6}, Landroid/database/Cursor;->getCount()I

    move-result v0

    if-ne v0, v10, :cond_2a

    .line 2411
    invoke-interface {v6}, Landroid/database/Cursor;->moveToFirst()Z

    .line 2412
    invoke-interface {v6, v9}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v7

    .line 2414
    :cond_2a
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 2415
    const/4 v6, 0x0

    .line 2419
    :cond_2e
    if-nez v7, :cond_55

    .line 2420
    invoke-direct {p0}, generateRecoveryPassword()Ljava/lang/String;

    move-result-object v7

    .line 2424
    invoke-virtual {p0}, removeRecoveryPasswords()V

    .line 2427
    new-instance v8, Landroid/content/ContentValues;

    invoke-direct {v8}, Landroid/content/ContentValues;-><init>()V

    .line 2428
    .local v8, "values":Landroid/content/ContentValues;
    const-string/jumbo v0, "password"

    invoke-virtual {v8, v0, v7}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 2430
    const-string/jumbo v0, "set_date"

    check-cast v4, Ljava/lang/Integer;

    invoke-virtual {v8, v0, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 2432
    iget-object v0, p0, mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v1, Landroid/provider/SecurityContract$Tables$PASSWORDS;->CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {v0, v1, v8}, Landroid/content/ContentResolver;->insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;

    .line 2435
    .end local v8    # "values":Landroid/content/ContentValues;
    :cond_55
    return-object v7
.end method

.method public getRecoveryScreenLocked()Z
    .registers 3

    .prologue
    .line 2563
    const-string/jumbo v0, "lockscreen.lockedoutRecovery"

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method public getRequestedMinimumPasswordLength()I
    .registers 4

    .prologue
    .line 308
    invoke-virtual {p0}, getDevicePolicyManager()Landroid/app/admin/DevicePolicyManager;

    move-result-object v0

    const/4 v1, 0x0

    invoke-direct {p0}, getCurrentOrCallingUserId()I

    move-result v2

    invoke-virtual {v0, v1, v2}, Landroid/app/admin/DevicePolicyManager;->getPasswordMinimumLength(Landroid/content/ComponentName;I)I

    move-result v0

    return v0
.end method

.method public getRequestedPasswordHistoryLength()I
    .registers 4

    .prologue
    .line 320
    invoke-virtual {p0}, getDevicePolicyManager()Landroid/app/admin/DevicePolicyManager;

    move-result-object v0

    const/4 v1, 0x0

    invoke-direct {p0}, getCurrentOrCallingUserId()I

    move-result v2

    invoke-virtual {v0, v1, v2}, Landroid/app/admin/DevicePolicyManager;->getPasswordHistoryLength(Landroid/content/ComponentName;I)I

    move-result v0

    return v0
.end method

.method public getRequestedPasswordMinimumLetters()I
    .registers 4

    .prologue
    .line 324
    invoke-virtual {p0}, getDevicePolicyManager()Landroid/app/admin/DevicePolicyManager;

    move-result-object v0

    const/4 v1, 0x0

    invoke-direct {p0}, getCurrentOrCallingUserId()I

    move-result v2

    invoke-virtual {v0, v1, v2}, Landroid/app/admin/DevicePolicyManager;->getPasswordMinimumLetters(Landroid/content/ComponentName;I)I

    move-result v0

    return v0
.end method

.method public getRequestedPasswordMinimumLowerCase()I
    .registers 4

    .prologue
    .line 334
    invoke-virtual {p0}, getDevicePolicyManager()Landroid/app/admin/DevicePolicyManager;

    move-result-object v0

    const/4 v1, 0x0

    invoke-direct {p0}, getCurrentOrCallingUserId()I

    move-result v2

    invoke-virtual {v0, v1, v2}, Landroid/app/admin/DevicePolicyManager;->getPasswordMinimumLowerCase(Landroid/content/ComponentName;I)I

    move-result v0

    return v0
.end method

.method public getRequestedPasswordMinimumNonLetter()I
    .registers 4

    .prologue
    .line 349
    invoke-virtual {p0}, getDevicePolicyManager()Landroid/app/admin/DevicePolicyManager;

    move-result-object v0

    const/4 v1, 0x0

    invoke-direct {p0}, getCurrentOrCallingUserId()I

    move-result v2

    invoke-virtual {v0, v1, v2}, Landroid/app/admin/DevicePolicyManager;->getPasswordMinimumNonLetter(Landroid/content/ComponentName;I)I

    move-result v0

    return v0
.end method

.method public getRequestedPasswordMinimumNumeric()I
    .registers 4

    .prologue
    .line 339
    invoke-virtual {p0}, getDevicePolicyManager()Landroid/app/admin/DevicePolicyManager;

    move-result-object v0

    const/4 v1, 0x0

    invoke-direct {p0}, getCurrentOrCallingUserId()I

    move-result v2

    invoke-virtual {v0, v1, v2}, Landroid/app/admin/DevicePolicyManager;->getPasswordMinimumNumeric(Landroid/content/ComponentName;I)I

    move-result v0

    return v0
.end method

.method public getRequestedPasswordMinimumSymbols()I
    .registers 4

    .prologue
    .line 344
    invoke-virtual {p0}, getDevicePolicyManager()Landroid/app/admin/DevicePolicyManager;

    move-result-object v0

    const/4 v1, 0x0

    invoke-direct {p0}, getCurrentOrCallingUserId()I

    move-result v2

    invoke-virtual {v0, v1, v2}, Landroid/app/admin/DevicePolicyManager;->getPasswordMinimumSymbols(Landroid/content/ComponentName;I)I

    move-result v0

    return v0
.end method

.method public getRequestedPasswordMinimumUpperCase()I
    .registers 4

    .prologue
    .line 329
    invoke-virtual {p0}, getDevicePolicyManager()Landroid/app/admin/DevicePolicyManager;

    move-result-object v0

    const/4 v1, 0x0

    invoke-direct {p0}, getCurrentOrCallingUserId()I

    move-result v2

    invoke-virtual {v0, v1, v2}, Landroid/app/admin/DevicePolicyManager;->getPasswordMinimumUpperCase(Landroid/content/ComponentName;I)I

    move-result v0

    return v0
.end method

.method public getRequestedPasswordQuality()I
    .registers 4

    .prologue
    .line 316
    invoke-virtual {p0}, getDevicePolicyManager()Landroid/app/admin/DevicePolicyManager;

    move-result-object v0

    const/4 v1, 0x0

    invoke-direct {p0}, getCurrentOrCallingUserId()I

    move-result v2

    invoke-virtual {v0, v1, v2}, Landroid/app/admin/DevicePolicyManager;->getPasswordQuality(Landroid/content/ComponentName;I)I

    move-result v0

    return v0
.end method

.method public getSignatureLockInfo()[B
    .registers 5

    .prologue
    .line 2285
    :try_start_0
    invoke-direct {p0}, getLockSettings()Lcom/android/internal/widget/ILockSettings;

    move-result-object v1

    invoke-direct {p0}, getCurrentOrCallingUserId()I

    move-result v2

    invoke-interface {v1, v2}, Lcom/android/internal/widget/ILockSettings;->getSignatureInfo(I)[B
    :try_end_b
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_b} :catch_d

    move-result-object v1

    .line 2289
    :goto_c
    return-object v1

    .line 2286
    :catch_d
    move-exception v0

    .line 2287
    .local v0, "re":Landroid/os/RemoteException;
    const-string v1, "LockPatternUtils"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Couldn\'t get lock signature "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2289
    const/4 v1, 0x0

    goto :goto_c
.end method

.method public getWidgetsEnabled()Z
    .registers 2

    .prologue
    .line 2381
    invoke-direct {p0}, getCurrentOrCallingUserId()I

    move-result v0

    invoke-virtual {p0, v0}, getWidgetsEnabled(I)Z

    move-result v0

    return v0
.end method

.method public getWidgetsEnabled(I)Z
    .registers 4
    .param p1, "userId"    # I

    .prologue
    .line 2385
    const-string/jumbo v0, "lockscreen.widgets_enabled"

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1, p1}, getBoolean(Ljava/lang/String;ZI)Z

    move-result v0

    return v0
.end method

.method public hasWidgetsEnabledInKeyguard(I)Z
    .registers 5
    .param p1, "userid"    # I

    .prologue
    .line 2371
    invoke-direct {p0, p1}, getAppWidgets(I)[I

    move-result-object v1

    .line 2372
    .local v1, "widgets":[I
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_5
    array-length v2, v1

    if-ge v0, v2, :cond_11

    .line 2373
    aget v2, v1, v0

    if-lez v2, :cond_e

    .line 2374
    const/4 v2, 0x1

    .line 2377
    :goto_d
    return v2

    .line 2372
    :cond_e
    add-int/lit8 v0, v0, 0x1

    goto :goto_5

    .line 2377
    :cond_11
    const/4 v2, 0x0

    goto :goto_d
.end method

.method public initializeCACAuthentication()V
    .registers 3

    .prologue
    .line 410
    const-string v0, "LockPatternUtils"

    const-string v1, "initializeCACAuthentication: "

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 411
    invoke-virtual {p0}, isSmartcardAuthInstalled()Z

    move-result v0

    if-eqz v0, :cond_10

    .line 412
    invoke-direct {p0}, getSmartcardPinManager()Lcom/sec/smartcard/pinservice/SmartCardPinManager;

    .line 414
    :cond_10
    return-void
.end method

.method public initializeCACAuthentication_Sync()V
    .registers 3

    .prologue
    .line 426
    const-string v0, "LockPatternUtils"

    const-string v1, "initializeCACAuthentication: "

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 427
    invoke-virtual {p0}, isSmartcardAuthInstalled()Z

    move-result v0

    if-eqz v0, :cond_10

    .line 428
    invoke-direct {p0}, getSmartcardPinManager_Sync()Lcom/sec/smartcard/pinservice/SmartCardPinManager;

    .line 430
    :cond_10
    return-void
.end method

.method public isBiometricWeakEverChosen()Z
    .registers 3

    .prologue
    .line 758
    const-string/jumbo v0, "lockscreen.biometricweakeverchosen"

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method public isBiometricWeakInstalled()Z
    .registers 8

    .prologue
    const/4 v3, 0x0

    .line 1691
    iget-object v4, p0, mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    .line 1693
    .local v1, "pm":Landroid/content/pm/PackageManager;
    :try_start_7
    const-string v4, "com.android.facelock"

    const/4 v5, 0x1

    invoke-virtual {v1, v4, v5}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;
    :try_end_d
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_7 .. :try_end_d} :catch_16

    .line 1699
    const-string v4, "android.hardware.camera.front"

    invoke-virtual {v1, v4}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_18

    .line 1716
    :cond_15
    :goto_15
    return v3

    .line 1694
    :catch_16
    move-exception v0

    .line 1695
    .local v0, "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    goto :goto_15

    .line 1702
    .end local v0    # "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    :cond_18
    invoke-virtual {p0}, getDevicePolicyManager()Landroid/app/admin/DevicePolicyManager;

    move-result-object v4

    const/4 v5, 0x0

    invoke-direct {p0}, getCurrentOrCallingUserId()I

    move-result v6

    invoke-virtual {v4, v5, v6}, Landroid/app/admin/DevicePolicyManager;->getCameraDisabled(Landroid/content/ComponentName;I)Z

    move-result v4

    if-nez v4, :cond_15

    .line 1707
    invoke-static {}, Landroid/sec/enterprise/EnterpriseDeviceManager;->getInstance()Landroid/sec/enterprise/EnterpriseDeviceManager;

    move-result-object v4

    invoke-virtual {v4}, Landroid/sec/enterprise/EnterpriseDeviceManager;->getRestrictionPolicy()Landroid/sec/enterprise/RestrictionPolicy;

    move-result-object v2

    .line 1708
    .local v2, "restrictionPolicy":Landroid/sec/enterprise/RestrictionPolicy;
    if-eqz v2, :cond_15

    .line 1709
    invoke-virtual {v2, v3}, Landroid/sec/enterprise/RestrictionPolicy;->isCameraEnabled(Z)Z

    move-result v3

    goto :goto_15
.end method

.method public isBiometricWeakLivelinessEnabled()Z
    .registers 7

    .prologue
    const-wide/16 v4, 0x0

    .line 1737
    const-string/jumbo v2, "lock_biometric_weak_flags"

    invoke-direct {p0, v2, v4, v5}, getLong(Ljava/lang/String;J)J

    move-result-wide v0

    .line 1738
    .local v0, "currentFlag":J
    const-wide/16 v2, 0x1

    and-long/2addr v2, v0

    cmp-long v2, v2, v4

    if-eqz v2, :cond_12

    const/4 v2, 0x1

    :goto_11
    return v2

    :cond_12
    const/4 v2, 0x0

    goto :goto_11
.end method

.method public isCACCardRegistered()Z
    .registers 5

    .prologue
    .line 488
    const/4 v0, 0x0

    .line 490
    .local v0, "ret":Z
    :try_start_1
    iget-object v1, p0, mContext:Landroid/content/Context;

    invoke-static {v1}, Lcom/sec/smartcard/pinservice/SmartCardPinManager;->isCardRegistered(Landroid/content/Context;)Z
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_6} :catch_20

    move-result v0

    .line 494
    :goto_7
    const-string v1, "LockPatternUtils"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "isCardRegistered: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 495
    return v0

    .line 491
    :catch_20
    move-exception v1

    goto :goto_7
.end method

.method public isCACPasswordEnabled()Z
    .registers 3

    .prologue
    .line 401
    const-string/jumbo v0, "lockscreen.smartcard_type"

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method public isCarrierLockEnabled()Z
    .registers 3

    .prologue
    .line 3044
    const/4 v0, 0x0

    .line 3058
    .local v0, "mCarrierlockMode":Ljava/lang/String;
    const/4 v1, 0x0

    return v1
.end method

.method public isCarrierLockPlusEnabled()Z
    .registers 4

    .prologue
    .line 3064
    :try_start_0
    invoke-direct {p0}, getLockSettings()Lcom/android/internal/widget/ILockSettings;

    move-result-object v1

    invoke-direct {p0}, getCurrentOrCallingUserId()I

    move-result v2

    invoke-interface {v1, v2}, Lcom/android/internal/widget/ILockSettings;->getCarrierLockPlusMode(I)Z
    :try_end_b
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_b} :catch_d

    move-result v1

    .line 3066
    :goto_c
    return v1

    .line 3065
    :catch_d
    move-exception v0

    .line 3066
    .local v0, "re":Landroid/os/RemoteException;
    const/4 v1, 0x0

    goto :goto_c
.end method

.method public isCarrierPasswordSaved()Z
    .registers 4

    .prologue
    .line 3342
    :try_start_0
    invoke-direct {p0}, getLockSettings()Lcom/android/internal/widget/ILockSettings;

    move-result-object v1

    invoke-direct {p0}, getCurrentOrCallingUserId()I

    move-result v2

    invoke-interface {v1, v2}, Lcom/android/internal/widget/ILockSettings;->haveCarrierPassword(I)Z
    :try_end_b
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_b} :catch_d

    move-result v1

    .line 3344
    :goto_c
    return v1

    .line 3343
    :catch_d
    move-exception v0

    .line 3344
    .local v0, "re":Landroid/os/RemoteException;
    const/4 v1, 0x0

    goto :goto_c
.end method

.method public isCarrierPasswordValid(Ljava/lang/String;)Z
    .registers 5
    .param p1, "password"    # Ljava/lang/String;

    .prologue
    .line 3349
    invoke-direct {p0}, getCurrentOrCallingUserId()I

    move-result v1

    .line 3351
    .local v1, "userId":I
    :try_start_4
    invoke-direct {p0}, getLockSettings()Lcom/android/internal/widget/ILockSettings;

    move-result-object v2

    invoke-interface {v2, p1, v1}, Lcom/android/internal/widget/ILockSettings;->checkCarrierPassword(Ljava/lang/String;I)Z
    :try_end_b
    .catch Landroid/os/RemoteException; {:try_start_4 .. :try_end_b} :catch_d

    move-result v2

    .line 3353
    :goto_c
    return v2

    .line 3352
    :catch_d
    move-exception v0

    .line 3353
    .local v0, "re":Landroid/os/RemoteException;
    const/4 v2, 0x1

    goto :goto_c
.end method

.method public isCredentialRequiredToDecrypt(Z)Z
    .registers 6
    .param p1, "defaultValue"    # Z

    .prologue
    const/4 v3, -0x1

    .line 2497
    iget-object v1, p0, mContentResolver:Landroid/content/ContentResolver;

    const-string/jumbo v2, "require_password_to_decrypt"

    invoke-static {v1, v2, v3}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    .line 2499
    .local v0, "value":I
    if-ne v0, v3, :cond_d

    .end local p1    # "defaultValue":Z
    :goto_c
    return p1

    .restart local p1    # "defaultValue":Z
    :cond_d
    if-eqz v0, :cond_11

    const/4 p1, 0x1

    goto :goto_c

    :cond_11
    const/4 p1, 0x0

    goto :goto_c
.end method

.method public isDeviceConnectedWithCACCard()Z
    .registers 5

    .prologue
    .line 499
    invoke-direct {p0}, getSmartcardPinManager()Lcom/sec/smartcard/pinservice/SmartCardPinManager;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sec/smartcard/pinservice/SmartCardPinManager;->isDeviceConnectedWithCard()Z

    move-result v0

    .line 500
    .local v0, "ret":Z
    const-string v1, "LockPatternUtils"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "isCACCardRegistred: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 501
    return v0
.end method

.method public isDevicePasswordSimple(I)Z
    .registers 6
    .param p1, "userId"    # I

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 2398
    iget-object v2, p0, mContentResolver:Landroid/content/ContentResolver;

    const-string/jumbo v3, "is_smpw_key"

    invoke-static {v2, v3, v1, p1}, Landroid/provider/Settings$Secure;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v2

    if-ne v2, v0, :cond_e

    :goto_d
    return v0

    :cond_e
    move v0, v1

    goto :goto_d
.end method

.method public isEmergencyCallCapable()Z
    .registers 3

    .prologue
    .line 1927
    iget-object v0, p0, mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x1120045

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v0

    return v0
.end method

.method public isEmergencyCallEnabledWhileSimLocked()Z
    .registers 3

    .prologue
    .line 1937
    iget-object v0, p0, mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x1120038

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v0

    return v0
.end method

.method public isFMMLockEnabled()Z
    .registers 5

    .prologue
    const/4 v1, 0x0

    .line 3020
    :try_start_1
    invoke-direct {p0}, getLockSettings()Lcom/android/internal/widget/ILockSettings;

    move-result-object v2

    const/4 v3, 0x0

    invoke-interface {v2, v3}, Lcom/android/internal/widget/ILockSettings;->haveFMMPassword(I)Z
    :try_end_9
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_9} :catch_b

    move-result v1

    .line 3022
    :goto_a
    return v1

    .line 3021
    :catch_b
    move-exception v0

    .line 3022
    .local v0, "re":Landroid/os/RemoteException;
    goto :goto_a
.end method

.method public isInCall()Z
    .registers 2

    .prologue
    .line 2241
    invoke-direct {p0}, getTelecommManager()Landroid/telecom/TelecomManager;

    move-result-object v0

    invoke-virtual {v0}, Landroid/telecom/TelecomManager;->isInCall()Z

    move-result v0

    return v0
.end method

.method public isLockFingerprintEnabled()Z
    .registers 2

    .prologue
    .line 2990
    invoke-direct {p0}, getCurrentOrCallingUserId()I

    move-result v0

    invoke-virtual {p0, v0}, isLockFingerprintEnabled(I)Z

    move-result v0

    return v0
.end method

.method public isLockFingerprintEnabled(I)Z
    .registers 8
    .param p1, "userId"    # I

    .prologue
    const-wide/32 v4, 0x61000

    const/4 v0, 0x0

    .line 2994
    const-string/jumbo v1, "lock_fingerprint_autolock"

    invoke-direct {p0, v1, v0, p1}, getBoolean(Ljava/lang/String;ZI)Z

    move-result v1

    if-eqz v1, :cond_19

    const-string/jumbo v1, "lockscreen.password_type"

    invoke-direct {p0, v1, v4, v5, p1}, getLong(Ljava/lang/String;JI)J

    move-result-wide v2

    cmp-long v1, v2, v4

    if-nez v1, :cond_19

    const/4 v0, 0x1

    :cond_19
    return v0
.end method

.method public isLockPasswordEnabled()Z
    .registers 11

    .prologue
    .line 1616
    const-string/jumbo v6, "lockscreen.password_type"

    const-wide/16 v8, 0x0

    invoke-direct {p0, v6, v8, v9}, getLong(Ljava/lang/String;J)J

    move-result-wide v4

    .line 1617
    .local v4, "mode":J
    const-string/jumbo v6, "lockscreen.password_type_alternate"

    const-wide/16 v8, 0x0

    invoke-direct {p0, v6, v8, v9}, getLong(Ljava/lang/String;J)J

    move-result-wide v2

    .line 1618
    .local v2, "backupMode":J
    const-wide/32 v6, 0x40000

    cmp-long v6, v4, v6

    if-eqz v6, :cond_3c

    const-wide/32 v6, 0x20000

    cmp-long v6, v4, v6

    if-eqz v6, :cond_3c

    const-wide/32 v6, 0x30000

    cmp-long v6, v4, v6

    if-eqz v6, :cond_3c

    const-wide/32 v6, 0x50000

    cmp-long v6, v4, v6

    if-eqz v6, :cond_3c

    const-wide/32 v6, 0x60000

    cmp-long v6, v4, v6

    if-eqz v6, :cond_3c

    const-wide/32 v6, 0x70000

    cmp-long v6, v4, v6

    if-nez v6, :cond_79

    :cond_3c
    const/4 v1, 0x1

    .line 1624
    .local v1, "passwordEnabled":Z
    :goto_3d
    const-wide/32 v6, 0x40000

    cmp-long v6, v2, v6

    if-eqz v6, :cond_60

    const-wide/32 v6, 0x20000

    cmp-long v6, v2, v6

    if-eqz v6, :cond_60

    const-wide/32 v6, 0x30000

    cmp-long v6, v2, v6

    if-eqz v6, :cond_60

    const-wide/32 v6, 0x50000

    cmp-long v6, v2, v6

    if-eqz v6, :cond_60

    const-wide/32 v6, 0x60000

    cmp-long v6, v2, v6

    if-nez v6, :cond_7b

    :cond_60
    const/4 v0, 0x1

    .line 1630
    .local v0, "backupEnabled":Z
    :goto_61
    invoke-virtual {p0}, savedPasswordExists()Z

    move-result v6

    if-eqz v6, :cond_7d

    if-nez v1, :cond_77

    invoke-virtual {p0}, usingBiometricWeak()Z

    move-result v6

    if-nez v6, :cond_75

    invoke-virtual {p0}, usingSignatureUnlock()Z

    move-result v6

    if-eqz v6, :cond_7d

    :cond_75
    if-eqz v0, :cond_7d

    :cond_77
    const/4 v6, 0x1

    :goto_78
    return v6

    .line 1618
    .end local v0    # "backupEnabled":Z
    .end local v1    # "passwordEnabled":Z
    :cond_79
    const/4 v1, 0x0

    goto :goto_3d

    .line 1624
    .restart local v1    # "passwordEnabled":Z
    :cond_7b
    const/4 v0, 0x0

    goto :goto_61

    .line 1630
    .restart local v0    # "backupEnabled":Z
    :cond_7d
    const/4 v6, 0x0

    goto :goto_78
.end method

.method public isLockPasswordEnabledNoCache()Z
    .registers 11

    .prologue
    .line 1639
    const-string/jumbo v6, "lockscreen.password_type"

    const-wide/16 v8, 0x0

    invoke-direct {p0, v6, v8, v9}, getLong(Ljava/lang/String;J)J

    move-result-wide v4

    .line 1640
    .local v4, "mode":J
    const-string/jumbo v6, "lockscreen.password_type_alternate"

    const-wide/16 v8, 0x0

    invoke-direct {p0, v6, v8, v9}, getLong(Ljava/lang/String;J)J

    move-result-wide v2

    .line 1641
    .local v2, "backupMode":J
    const-wide/32 v6, 0x40000

    cmp-long v6, v4, v6

    if-eqz v6, :cond_3c

    const-wide/32 v6, 0x20000

    cmp-long v6, v4, v6

    if-eqz v6, :cond_3c

    const-wide/32 v6, 0x30000

    cmp-long v6, v4, v6

    if-eqz v6, :cond_3c

    const-wide/32 v6, 0x50000

    cmp-long v6, v4, v6

    if-eqz v6, :cond_3c

    const-wide/32 v6, 0x60000

    cmp-long v6, v4, v6

    if-eqz v6, :cond_3c

    const-wide/32 v6, 0x70000

    cmp-long v6, v4, v6

    if-nez v6, :cond_73

    :cond_3c
    const/4 v1, 0x1

    .line 1647
    .local v1, "passwordEnabled":Z
    :goto_3d
    const-wide/32 v6, 0x40000

    cmp-long v6, v2, v6

    if-eqz v6, :cond_60

    const-wide/32 v6, 0x20000

    cmp-long v6, v2, v6

    if-eqz v6, :cond_60

    const-wide/32 v6, 0x30000

    cmp-long v6, v2, v6

    if-eqz v6, :cond_60

    const-wide/32 v6, 0x50000

    cmp-long v6, v2, v6

    if-eqz v6, :cond_60

    const-wide/32 v6, 0x60000

    cmp-long v6, v2, v6

    if-nez v6, :cond_75

    :cond_60
    const/4 v0, 0x1

    .line 1653
    .local v0, "backupEnabled":Z
    :goto_61
    invoke-direct {p0}, savedPasswordExistsNoCache()Z

    move-result v6

    if-eqz v6, :cond_77

    if-nez v1, :cond_71

    invoke-virtual {p0}, usingBiometricWeak()Z

    move-result v6

    if-eqz v6, :cond_77

    if-eqz v0, :cond_77

    :cond_71
    const/4 v6, 0x1

    :goto_72
    return v6

    .line 1641
    .end local v0    # "backupEnabled":Z
    .end local v1    # "passwordEnabled":Z
    :cond_73
    const/4 v1, 0x0

    goto :goto_3d

    .line 1647
    .restart local v1    # "passwordEnabled":Z
    :cond_75
    const/4 v0, 0x0

    goto :goto_61

    .line 1653
    .restart local v0    # "backupEnabled":Z
    :cond_77
    const/4 v6, 0x0

    goto :goto_72
.end method

.method public isLockPatternEnabled()Z
    .registers 11

    .prologue
    const-wide/32 v8, 0x10000

    const-wide/16 v6, 0x0

    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 1675
    const-string/jumbo v3, "lockscreen.password_type_alternate"

    invoke-direct {p0, v3, v6, v7}, getLong(Ljava/lang/String;J)J

    move-result-wide v4

    cmp-long v3, v4, v8

    if-nez v3, :cond_3c

    move v0, v1

    .line 1680
    .local v0, "backupEnabled":Z
    :goto_13
    const-string/jumbo v3, "lock_pattern_autolock"

    invoke-direct {p0, v3, v2}, getBoolean(Ljava/lang/String;Z)Z

    move-result v3

    if-eqz v3, :cond_3e

    const-string/jumbo v3, "lockscreen.password_type"

    invoke-direct {p0, v3, v6, v7}, getLong(Ljava/lang/String;J)J

    move-result-wide v4

    cmp-long v3, v4, v8

    if-eqz v3, :cond_3b

    invoke-virtual {p0}, isSmartUnlockEnabled()Z

    move-result v3

    if-nez v3, :cond_3b

    invoke-virtual {p0}, usingBiometricWeak()Z

    move-result v3

    if-nez v3, :cond_39

    invoke-virtual {p0}, usingSignatureUnlock()Z

    move-result v3

    if-eqz v3, :cond_3e

    :cond_39
    if-eqz v0, :cond_3e

    :cond_3b
    :goto_3b
    return v1

    .end local v0    # "backupEnabled":Z
    :cond_3c
    move v0, v2

    .line 1675
    goto :goto_13

    .restart local v0    # "backupEnabled":Z
    :cond_3e
    move v1, v2

    .line 1680
    goto :goto_3b
.end method

.method public isLockScreenDisabled()Z
    .registers 13

    .prologue
    const-wide/16 v10, 0x0

    const/4 v5, 0x1

    const/4 v6, 0x0

    .line 894
    invoke-virtual {p0}, isSecure()Z

    move-result v4

    if-nez v4, :cond_3f

    const-string/jumbo v4, "lockscreen.disabled"

    invoke-direct {p0, v4, v10, v11}, getLong(Ljava/lang/String;J)J

    move-result-wide v8

    cmp-long v4, v8, v10

    if-eqz v4, :cond_3f

    .line 896
    iget-object v4, p0, mContext:Landroid/content/Context;

    invoke-static {v4}, Landroid/os/UserManager;->get(Landroid/content/Context;)Landroid/os/UserManager;

    move-result-object v4

    invoke-virtual {v4, v5}, Landroid/os/UserManager;->getUsers(Z)Ljava/util/List;

    move-result-object v3

    .line 897
    .local v3, "users":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/UserInfo;>;"
    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v2

    .line 898
    .local v2, "userCount":I
    const/4 v1, 0x0

    .line 899
    .local v1, "switchableUsers":I
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_25
    if-ge v0, v2, :cond_38

    .line 900
    invoke-interface {v3, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/content/pm/UserInfo;

    invoke-virtual {v4}, Landroid/content/pm/UserInfo;->supportsSwitchTo()Z

    move-result v4

    if-eqz v4, :cond_35

    .line 901
    add-int/lit8 v1, v1, 0x1

    .line 899
    :cond_35
    add-int/lit8 v0, v0, 0x1

    goto :goto_25

    .line 904
    :cond_38
    const/4 v4, 0x2

    if-ge v1, v4, :cond_3d

    move v4, v5

    .line 906
    .end local v0    # "i":I
    .end local v1    # "switchableUsers":I
    .end local v2    # "userCount":I
    .end local v3    # "users":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/UserInfo;>;"
    :goto_3c
    return v4

    .restart local v0    # "i":I
    .restart local v1    # "switchableUsers":I
    .restart local v2    # "userCount":I
    .restart local v3    # "users":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/UserInfo;>;"
    :cond_3d
    move v4, v6

    .line 904
    goto :goto_3c

    .end local v0    # "i":I
    .end local v1    # "switchableUsers":I
    .end local v2    # "userCount":I
    .end local v3    # "users":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/UserInfo;>;"
    :cond_3f
    move v4, v6

    .line 906
    goto :goto_3c
.end method

.method public isOwnerInfoEnabled()Z
    .registers 3

    .prologue
    .line 1072
    const-string/jumbo v0, "lock_screen_owner_info_enabled"

    const/4 v1, 0x1

    invoke-direct {p0, v0, v1}, getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method public isParentControlLockEnabled()Z
    .registers 2

    .prologue
    .line 2794
    const/4 v0, 0x0

    return v0
.end method

.method public isPatternEverChosen()Z
    .registers 3

    .prologue
    .line 748
    const-string/jumbo v0, "lockscreen.patterneverchosen"

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method public isPermanentlyLocked()Z
    .registers 3

    .prologue
    .line 1911
    const-string/jumbo v0, "lockscreen.lockedoutpermanently"

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method public isPrevLockFingerprintEnabled(I)Z
    .registers 4
    .param p1, "userId"    # I

    .prologue
    .line 3008
    const-string/jumbo v0, "prev_lock_type"

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1, p1}, getBoolean(Ljava/lang/String;ZI)Z

    move-result v0

    return v0
.end method

.method public isPukUnlockScreenEnable()Z
    .registers 3

    .prologue
    .line 1932
    iget-object v0, p0, mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x1120037

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v0

    return v0
.end method

.method public isSecure()Z
    .registers 13

    .prologue
    const/4 v8, 0x1

    const/4 v9, 0x0

    .line 2172
    invoke-static {}, Landroid/os/StrictMode;->allowThreadDiskReads()Landroid/os/StrictMode$ThreadPolicy;

    move-result-object v5

    .line 2173
    .local v5, "oldPolicy":Landroid/os/StrictMode$ThreadPolicy;
    invoke-virtual {p0}, getKeyguardStoredPasswordQuality()I

    move-result v10

    int-to-long v6, v10

    .line 2174
    .local v6, "mode":J
    const-wide/32 v10, 0x10000

    cmp-long v10, v6, v10

    if-nez v10, :cond_9f

    move v2, v8

    .line 2175
    .local v2, "isPattern":Z
    :goto_13
    const-wide/32 v10, 0x20000

    cmp-long v10, v6, v10

    if-eqz v10, :cond_3d

    const-wide/32 v10, 0x30000

    cmp-long v10, v6, v10

    if-eqz v10, :cond_3d

    const-wide/32 v10, 0x40000

    cmp-long v10, v6, v10

    if-eqz v10, :cond_3d

    const-wide/32 v10, 0x50000

    cmp-long v10, v6, v10

    if-eqz v10, :cond_3d

    const-wide/32 v10, 0x60000

    cmp-long v10, v6, v10

    if-eqz v10, :cond_3d

    const-wide/32 v10, 0x70000

    cmp-long v10, v6, v10

    if-nez v10, :cond_a2

    :cond_3d
    move v1, v8

    .line 2181
    .local v1, "isPassword":Z
    :goto_3e
    const-wide/32 v10, 0x90000

    cmp-long v10, v6, v10

    if-eqz v10, :cond_4c

    const-wide/32 v10, 0x9100

    cmp-long v10, v6, v10

    if-nez v10, :cond_a4

    :cond_4c
    sget-boolean v10, mSwipeSmartLock:Z

    if-nez v10, :cond_a4

    move v4, v8

    .line 2183
    .local v4, "isSmartUnlock":Z
    :goto_51
    const-wide/32 v10, 0x61000

    cmp-long v10, v6, v10

    if-nez v10, :cond_a6

    move v0, v8

    .line 2184
    .local v0, "isFingerprint":Z
    :goto_59
    const-wide/32 v10, 0x9000

    cmp-long v10, v6, v10

    if-nez v10, :cond_a8

    move v3, v8

    .line 2185
    .local v3, "isSignature":Z
    :goto_61
    if-eqz v2, :cond_6f

    invoke-virtual {p0}, isLockPatternEnabled()Z

    move-result v10

    if-eqz v10, :cond_6f

    invoke-virtual {p0}, savedPatternExists()Z

    move-result v10

    if-nez v10, :cond_9b

    :cond_6f
    if-eqz v1, :cond_77

    invoke-virtual {p0}, savedPasswordExists()Z

    move-result v10

    if-nez v10, :cond_9b

    :cond_77
    if-nez v0, :cond_9b

    invoke-virtual {p0}, isFMMLockEnabled()Z

    move-result v10

    if-nez v10, :cond_9b

    if-eqz v4, :cond_8d

    invoke-virtual {p0}, isSmartUnlockEnabled()Z

    move-result v10

    if-eqz v10, :cond_8d

    invoke-virtual {p0}, savedPatternExists()Z

    move-result v10

    if-nez v10, :cond_9b

    :cond_8d
    if-nez v3, :cond_9b

    invoke-virtual {p0}, isCarrierLockPlusEnabled()Z

    move-result v10

    if-nez v10, :cond_9b

    invoke-virtual {p0}, getRecoveryScreenLocked()Z

    move-result v10

    if-eqz v10, :cond_aa

    .line 2192
    .local v8, "secure":Z
    :cond_9b
    :goto_9b
    invoke-static {v5}, Landroid/os/StrictMode;->setThreadPolicy(Landroid/os/StrictMode$ThreadPolicy;)V

    .line 2193
    return v8

    .end local v0    # "isFingerprint":Z
    .end local v1    # "isPassword":Z
    .end local v2    # "isPattern":Z
    .end local v3    # "isSignature":Z
    .end local v4    # "isSmartUnlock":Z
    .end local v8    # "secure":Z
    :cond_9f
    move v2, v9

    .line 2174
    goto/16 :goto_13

    .restart local v2    # "isPattern":Z
    :cond_a2
    move v1, v9

    .line 2175
    goto :goto_3e

    .restart local v1    # "isPassword":Z
    :cond_a4
    move v4, v9

    .line 2181
    goto :goto_51

    .restart local v4    # "isSmartUnlock":Z
    :cond_a6
    move v0, v9

    .line 2183
    goto :goto_59

    .restart local v0    # "isFingerprint":Z
    :cond_a8
    move v3, v9

    .line 2184
    goto :goto_61

    .restart local v3    # "isSignature":Z
    :cond_aa
    move v8, v9

    .line 2185
    goto :goto_9b
.end method

.method public isSignatureEverChosen()Z
    .registers 3

    .prologue
    .line 768
    const-string/jumbo v0, "lockscreen.signatureeverchosen"

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method public isSignatureLockInstalled()Z
    .registers 6

    .prologue
    const/4 v2, 0x1

    .line 1746
    iget-object v3, p0, mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    .line 1748
    .local v1, "pm":Landroid/content/pm/PackageManager;
    :try_start_7
    const-string v3, "com.sec.android.signaturelock"

    const/4 v4, 0x1

    invoke-virtual {v1, v3, v4}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;
    :try_end_d
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_7 .. :try_end_d} :catch_e

    .line 1753
    :goto_d
    return v2

    .line 1749
    :catch_e
    move-exception v0

    .line 1750
    .local v0, "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    const/4 v2, 0x0

    goto :goto_d
.end method

.method public isSmartCardPasswordEnabled()Z
    .registers 7

    .prologue
    .line 517
    const/4 v2, 0x0

    .line 518
    .local v2, "ret":Z
    const-string/jumbo v3, "lockscreen.password_type"

    const-wide/16 v4, 0x0

    invoke-direct {p0, v3, v4, v5}, getLong(Ljava/lang/String;J)J

    move-result-wide v0

    .line 520
    .local v0, "mode":J
    const-wide/32 v4, 0x70000

    cmp-long v3, v0, v4

    if-nez v3, :cond_12

    .line 521
    const/4 v2, 0x1

    .line 523
    :cond_12
    return v2
.end method

.method public isSmartUnlockEnabled()Z
    .registers 3

    .prologue
    const/4 v0, 0x0

    .line 1843
    const-string/jumbo v1, "lock_smart_unlock_enabled"

    invoke-direct {p0, v1, v0}, getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    if-eqz v1, :cond_11

    invoke-virtual {p0}, usingSmartUnlock()Z

    move-result v1

    if-eqz v1, :cond_11

    const/4 v0, 0x1

    :cond_11
    return v0
.end method

.method public isSmartcardAuthInstalled()Z
    .registers 5

    .prologue
    .line 508
    iget-object v1, p0, mContext:Landroid/content/Context;

    invoke-static {v1}, Lcom/sec/smartcard/pinservice/SmartCardPinManager;->isSmartCardAuthenticationInstalled(Landroid/content/Context;)Z

    move-result v0

    .line 509
    .local v0, "ret":Z
    const-string v1, "LockPatternUtils"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "isSmartCardAuthenticationAvailable: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 510
    return v0
.end method

.method public isSwipeSmartLock()Z
    .registers 2

    .prologue
    .line 3372
    sget-boolean v0, mSwipeSmartLock:Z

    return v0
.end method

.method public isTactileFeedbackEnabled()Z
    .registers 5

    .prologue
    const/4 v0, 0x1

    .line 1872
    iget-object v1, p0, mContentResolver:Landroid/content/ContentResolver;

    const-string v2, "haptic_feedback_enabled"

    const/4 v3, -0x2

    invoke-static {v1, v2, v0, v3}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v1

    if-eqz v1, :cond_d

    :goto_c
    return v0

    :cond_d
    const/4 v0, 0x0

    goto :goto_c
.end method

.method public isVisiblePatternDisabledByMDM()Z
    .registers 4

    .prologue
    const/4 v1, 0x0

    .line 1786
    invoke-static {}, Landroid/sec/enterprise/EnterpriseDeviceManager;->getInstance()Landroid/sec/enterprise/EnterpriseDeviceManager;

    move-result-object v2

    invoke-virtual {v2}, Landroid/sec/enterprise/EnterpriseDeviceManager;->getPasswordPolicy()Landroid/sec/enterprise/PasswordPolicy;

    move-result-object v0

    .line 1787
    .local v0, "passPolicy":Landroid/sec/enterprise/PasswordPolicy;
    if-eqz v0, :cond_12

    .line 1788
    invoke-virtual {v0}, Landroid/sec/enterprise/PasswordPolicy;->isScreenLockPatternVisibilityEnabled()Z

    move-result v2

    if-nez v2, :cond_12

    const/4 v1, 0x1

    .line 1790
    :cond_12
    return v1
.end method

.method public isVisiblePatternEnabled()Z
    .registers 3

    .prologue
    .line 1781
    const-string/jumbo v0, "lock_pattern_visible_pattern"

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method public isVisibleSignatureEnabled()Z
    .registers 3

    .prologue
    .line 1798
    const-string/jumbo v0, "lock_signature_visible_pattern"

    const/4 v1, 0x1

    invoke-direct {p0, v0, v1}, getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method public parsingCarrierLockPlusMsg()V
    .registers 9

    .prologue
    .line 3201
    invoke-virtual {p0}, getCarrierLockPlusMsg()Ljava/lang/String;

    move-result-object v2

    .line 3202
    .local v2, "mParsingLockString":Ljava/lang/String;
    const-string v5, "LockPatternUtils"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "mParsingLockString = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3203
    if-eqz v2, :cond_87

    .line 3204
    new-instance v4, Landroid/text/TextUtils$SimpleStringSplitter;

    const/16 v5, 0x3a

    invoke-direct {v4, v5}, Landroid/text/TextUtils$SimpleStringSplitter;-><init>(C)V

    .line 3205
    .local v4, "splitter":Landroid/text/TextUtils$StringSplitter;
    invoke-interface {v4, v2}, Landroid/text/TextUtils$StringSplitter;->setString(Ljava/lang/String;)V

    .line 3206
    const/4 v1, 0x0

    .line 3207
    .local v1, "lock_cnt":I
    invoke-interface {v4}, Landroid/text/TextUtils$StringSplitter;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :goto_2e
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_40

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 3208
    .local v3, "parsingLockString":Ljava/lang/String;
    invoke-direct {p0, v3, v1}, SeperateLockString(Ljava/lang/String;I)V

    .line 3209
    add-int/lit8 v1, v1, 0x1

    .line 3210
    goto :goto_2e

    .line 3211
    .end local v3    # "parsingLockString":Ljava/lang/String;
    :cond_40
    sget-object v5, lockMsg:Ljava/lang/String;

    sput-object v5, lockSaveMsg:Ljava/lang/String;

    .line 3212
    const-string v5, ""

    sput-object v5, lockMsg:Ljava/lang/String;

    .line 3213
    const-string v5, "LockPatternUtils"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "lockPassword = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    sget-object v7, lockPassword:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ", lockType = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    sget-object v7, lockType:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ", lockChecksum = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    sget-object v7, lockChecksum:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ", lockSaveMsg = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    sget-object v7, lockSaveMsg:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3215
    .end local v0    # "i$":Ljava/util/Iterator;
    .end local v1    # "lock_cnt":I
    .end local v4    # "splitter":Landroid/text/TextUtils$StringSplitter;
    :cond_87
    return-void
.end method

.method public parsingCarrierUnlockPlusMsg()V
    .registers 9

    .prologue
    .line 3218
    invoke-virtual {p0}, getCarrierLockPlusMsg()Ljava/lang/String;

    move-result-object v1

    .line 3219
    .local v1, "mParsingUnlockString":Ljava/lang/String;
    if-eqz v1, :cond_6e

    .line 3220
    new-instance v3, Landroid/text/TextUtils$SimpleStringSplitter;

    const/16 v5, 0x3a

    invoke-direct {v3, v5}, Landroid/text/TextUtils$SimpleStringSplitter;-><init>(C)V

    .line 3221
    .local v3, "splitter":Landroid/text/TextUtils$StringSplitter;
    invoke-interface {v3, v1}, Landroid/text/TextUtils$StringSplitter;->setString(Ljava/lang/String;)V

    .line 3222
    const/4 v4, 0x0

    .line 3223
    .local v4, "unlock_cnt":I
    invoke-interface {v3}, Landroid/text/TextUtils$StringSplitter;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :goto_15
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_27

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 3224
    .local v2, "parsingUnlockString":Ljava/lang/String;
    invoke-direct {p0, v2, v4}, SeperateUnlockString(Ljava/lang/String;I)V

    .line 3225
    add-int/lit8 v4, v4, 0x1

    .line 3226
    goto :goto_15

    .line 3227
    .end local v2    # "parsingUnlockString":Ljava/lang/String;
    :cond_27
    sget-object v5, lockMsgUnlock:Ljava/lang/String;

    sput-object v5, lockSaveMsgUnlock:Ljava/lang/String;

    .line 3228
    const-string v5, ""

    sput-object v5, lockMsgUnlock:Ljava/lang/String;

    .line 3229
    const-string v5, "LockPatternUtils"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "lockPasswordUnlock = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    sget-object v7, lockPasswordUnlock:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ", lockTypeUnlock = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    sget-object v7, lockTypeUnlock:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ", lockChecksumUnlock = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    sget-object v7, lockChecksumUnlock:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ", lockSaveMsgUnlock = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    sget-object v7, lockSaveMsgUnlock:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3231
    .end local v0    # "i$":Ljava/util/Iterator;
    .end local v3    # "splitter":Landroid/text/TextUtils$StringSplitter;
    .end local v4    # "unlock_cnt":I
    :cond_6e
    return-void
.end method

.method public passwordToHash(Ljava/lang/String;I)[B
    .registers 19
    .param p1, "password"    # Ljava/lang/String;
    .param p2, "userId"    # I

    .prologue
    .line 1571
    if-nez p1, :cond_4

    .line 1572
    const/4 v3, 0x0

    .line 1599
    :goto_3
    return-object v3

    .line 1574
    :cond_4
    const/4 v2, 0x0

    .line 1575
    .local v2, "algo":Ljava/lang/String;
    const/4 v3, 0x0

    .line 1583
    .local v3, "hashed":[B
    :try_start_6
    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, p1

    invoke-virtual {v12, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    move-object/from16 v0, p0

    move/from16 v1, p2

    invoke-direct {v0, v1}, getSalt(I)Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/String;->getBytes()[B

    move-result-object v10

    .line 1584
    .local v10, "saltedPassword":[B
    const/4 v11, 0x0

    .line 1585
    .local v11, "sha":[B
    const-string v2, "SHA-1"

    invoke-static {v2}, Ljava/security/MessageDigest;->getInstance(Ljava/lang/String;)Ljava/security/MessageDigest;

    move-result-object v7

    .line 1586
    .local v7, "md":Ljava/security/MessageDigest;
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v8

    .line 1587
    .local v8, "s":J
    const/4 v6, 0x0

    .local v6, "i":I
    :goto_31
    const/16 v12, 0x400

    if-ge v6, v12, :cond_5e

    .line 1588
    if-eqz v11, :cond_3a

    invoke-virtual {v7, v11}, Ljava/security/MessageDigest;->update([B)V

    .line 1589
    :cond_3a
    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, ""

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/String;->getBytes()[B

    move-result-object v12

    invoke-virtual {v7, v12}, Ljava/security/MessageDigest;->update([B)V

    .line 1590
    invoke-virtual {v7, v10}, Ljava/security/MessageDigest;->update([B)V

    .line 1591
    invoke-virtual {v7}, Ljava/security/MessageDigest;->digest()[B

    move-result-object v11

    .line 1587
    add-int/lit8 v6, v6, 0x1

    goto :goto_31

    .line 1593
    :cond_5e
    invoke-static {v11}, toHex([B)Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/String;->getBytes()[B

    move-result-object v3

    .line 1594
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    .line 1595
    .local v4, "e":J
    const-string v12, "LockPatternUtils"

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v14, "passwordToHash time = "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    sub-long v14, v4, v8

    invoke-virtual {v13, v14, v15}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v13

    const-string/jumbo v14, "ms"

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-static {v12, v13}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_8c
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_6 .. :try_end_8c} :catch_8e

    goto/16 :goto_3

    .line 1596
    .end local v4    # "e":J
    .end local v6    # "i":I
    .end local v7    # "md":Ljava/security/MessageDigest;
    .end local v8    # "s":J
    .end local v10    # "saltedPassword":[B
    .end local v11    # "sha":[B
    :catch_8e
    move-exception v4

    .line 1597
    .local v4, "e":Ljava/security/NoSuchAlgorithmException;
    const-string v12, "LockPatternUtils"

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "Failed to encode string because of missing algorithm: "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-static {v12, v13}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_3
.end method

.method public passwordToHashOriginal(Ljava/lang/String;I)[B
    .registers 12
    .param p1, "password"    # Ljava/lang/String;
    .param p2, "userId"    # I

    .prologue
    .line 1553
    if-nez p1, :cond_4

    .line 1554
    const/4 v2, 0x0

    .line 1566
    :goto_3
    return-object v2

    .line 1556
    :cond_4
    const/4 v0, 0x0

    .line 1557
    .local v0, "algo":Ljava/lang/String;
    const/4 v2, 0x0

    .line 1559
    .local v2, "hashed":[B
    :try_start_6
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-direct {p0, p2}, getSalt(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/String;->getBytes()[B

    move-result-object v4

    .line 1560
    .local v4, "saltedPassword":[B
    const-string v0, "SHA-1"

    invoke-static {v0}, Ljava/security/MessageDigest;->getInstance(Ljava/lang/String;)Ljava/security/MessageDigest;

    move-result-object v6

    invoke-virtual {v6, v4}, Ljava/security/MessageDigest;->digest([B)[B

    move-result-object v5

    .line 1561
    .local v5, "sha1":[B
    const-string v0, "MD5"

    invoke-static {v0}, Ljava/security/MessageDigest;->getInstance(Ljava/lang/String;)Ljava/security/MessageDigest;

    move-result-object v6

    invoke-virtual {v6, v4}, Ljava/security/MessageDigest;->digest([B)[B

    move-result-object v3

    .line 1562
    .local v3, "md5":[B
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {v5}, toHex([B)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-static {v3}, toHex([B)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/String;->getBytes()[B
    :try_end_4f
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_6 .. :try_end_4f} :catch_51

    move-result-object v2

    goto :goto_3

    .line 1563
    .end local v3    # "md5":[B
    .end local v4    # "saltedPassword":[B
    .end local v5    # "sha1":[B
    :catch_51
    move-exception v1

    .line 1564
    .local v1, "e":Ljava/security/NoSuchAlgorithmException;
    const-string v6, "LockPatternUtils"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Failed to encode string because of missing algorithm: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_3
.end method

.method public recoverPassword()V
    .registers 3

    .prologue
    .line 361
    invoke-virtual {p0}, getDevicePolicyManager()Landroid/app/admin/DevicePolicyManager;

    move-result-object v0

    invoke-direct {p0}, getCurrentOrCallingUserId()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/app/admin/DevicePolicyManager;->recoverPassword(I)V

    .line 362
    return-void
.end method

.method public removeAppWidget(I)Z
    .registers 8
    .param p1, "widgetId"    # I

    .prologue
    const/4 v4, 0x0

    .line 2087
    invoke-virtual {p0}, getAppWidgets()[I

    move-result-object v3

    .line 2089
    .local v3, "widgets":[I
    array-length v5, v3

    if-nez v5, :cond_9

    .line 2106
    :cond_8
    :goto_8
    return v4

    .line 2093
    :cond_9
    array-length v5, v3

    add-int/lit8 v5, v5, -0x1

    new-array v2, v5, [I

    .line 2094
    .local v2, "newWidgets":[I
    const/4 v0, 0x0

    .local v0, "i":I
    const/4 v1, 0x0

    .local v1, "j":I
    :goto_10
    array-length v5, v3

    if-ge v0, v5, :cond_24

    .line 2095
    aget v5, v3, v0

    if-ne v5, p1, :cond_1a

    .line 2094
    :goto_17
    add-int/lit8 v0, v0, 0x1

    goto :goto_10

    .line 2097
    :cond_1a
    array-length v5, v2

    if-ge v1, v5, :cond_8

    .line 2101
    aget v5, v3, v0

    aput v5, v2, v1

    .line 2102
    add-int/lit8 v1, v1, 0x1

    goto :goto_17

    .line 2105
    :cond_24
    invoke-direct {p0, v2}, writeAppWidgets([I)V

    .line 2106
    const/4 v4, 0x1

    goto :goto_8
.end method

.method public removeRecoveryPasswords()V
    .registers 5

    .prologue
    .line 2440
    iget-object v0, p0, mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v1, Landroid/provider/SecurityContract$Tables$PASSWORDS;->CONTENT_URI:Landroid/net/Uri;

    const-string/jumbo v2, "set_date IS NULL"

    const/4 v3, 0x0

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/ContentResolver;->delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I

    .line 2443
    return-void
.end method

.method public removeUser(I)V
    .registers 6
    .param p1, "userId"    # I

    .prologue
    .line 617
    :try_start_0
    invoke-direct {p0}, getLockSettings()Lcom/android/internal/widget/ILockSettings;

    move-result-object v1

    invoke-interface {v1, p1}, Lcom/android/internal/widget/ILockSettings;->removeUser(I)V
    :try_end_7
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_7} :catch_8

    .line 621
    :goto_7
    return-void

    .line 618
    :catch_8
    move-exception v0

    .line 619
    .local v0, "re":Landroid/os/RemoteException;
    const-string v1, "LockPatternUtils"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Couldn\'t remove lock settings for user "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_7
.end method

.method public reportFailedPasswordAttempt()V
    .registers 4

    .prologue
    .line 366
    invoke-direct {p0}, getCurrentOrCallingUserId()I

    move-result v0

    .line 367
    .local v0, "userId":I
    invoke-virtual {p0}, getDevicePolicyManager()Landroid/app/admin/DevicePolicyManager;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/app/admin/DevicePolicyManager;->reportFailedPasswordAttempt(I)V

    .line 368
    invoke-direct {p0}, getTrustManager()Landroid/app/trust/TrustManager;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v1, v2, v0}, Landroid/app/trust/TrustManager;->reportUnlockAttempt(ZI)V

    .line 369
    invoke-direct {p0}, getTrustManager()Landroid/app/trust/TrustManager;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/app/trust/TrustManager;->reportRequireCredentialEntry(I)V

    .line 370
    return-void
.end method

.method public reportSuccessfulPasswordAttempt()V
    .registers 5

    .prologue
    .line 373
    invoke-virtual {p0}, getDevicePolicyManager()Landroid/app/admin/DevicePolicyManager;

    move-result-object v1

    invoke-direct {p0}, getCurrentOrCallingUserId()I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/app/admin/DevicePolicyManager;->reportSuccessfulPasswordAttempt(I)V

    .line 374
    invoke-direct {p0}, getTrustManager()Landroid/app/trust/TrustManager;

    move-result-object v1

    const/4 v2, 0x1

    invoke-direct {p0}, getCurrentOrCallingUserId()I

    move-result v3

    invoke-virtual {v1, v2, v3}, Landroid/app/trust/TrustManager;->reportUnlockAttempt(ZI)V

    .line 378
    invoke-virtual {p0}, isLockFingerprintEnabled()Z

    move-result v1

    if-eqz v1, :cond_2a

    .line 380
    :try_start_1d
    invoke-direct {p0}, getLockSettings()Lcom/android/internal/widget/ILockSettings;

    move-result-object v1

    const-string v2, ""

    invoke-direct {p0}, getCurrentOrCallingUserId()I

    move-result v3

    invoke-interface {v1, v2, v3}, Lcom/android/internal/widget/ILockSettings;->checkFingerprintPassword(Ljava/lang/String;I)Z
    :try_end_2a
    .catch Landroid/os/RemoteException; {:try_start_1d .. :try_end_2a} :catch_2b

    .line 386
    :cond_2a
    :goto_2a
    return-void

    .line 381
    :catch_2b
    move-exception v0

    .line 382
    .local v0, "re":Landroid/os/RemoteException;
    const-string v1, "MDPP"

    const-string v2, "Failed KeyStore checking"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_2a
.end method

.method public requireCredentialEntry(I)V
    .registers 3
    .param p1, "userId"    # I

    .prologue
    .line 2489
    invoke-direct {p0}, getTrustManager()Landroid/app/trust/TrustManager;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/app/trust/TrustManager;->reportRequireCredentialEntry(I)V

    .line 2490
    return-void
.end method

.method public resetBiometricLock()V
    .registers 9

    .prologue
    const-wide/32 v4, 0x10000

    const-wide/16 v6, 0x0

    .line 3389
    const-string/jumbo v2, "lockscreen.password_type"

    invoke-direct {p0, v2, v4, v5}, getLong(Ljava/lang/String;J)J

    move-result-wide v2

    long-to-int v1, v2

    .line 3390
    .local v1, "quality":I
    const v2, 0x8000

    if-ne v1, v2, :cond_23

    .line 3393
    const-string/jumbo v2, "lockscreen.password_type_alternate"

    invoke-direct {p0, v2, v6, v7}, getLong(Ljava/lang/String;J)J

    move-result-wide v2

    long-to-int v0, v2

    .line 3394
    .local v0, "backupMode":I
    sparse-switch v0, :sswitch_data_40

    .line 3409
    :goto_1d
    const-string/jumbo v2, "lockscreen.password_type_alternate"

    invoke-direct {p0, v2, v6, v7}, setLong(Ljava/lang/String;J)V

    .line 3411
    .end local v0    # "backupMode":I
    :cond_23
    return-void

    .line 3397
    .restart local v0    # "backupMode":I
    :sswitch_24
    const-string/jumbo v2, "lockscreen.password_type"

    invoke-direct {p0, v2, v4, v5}, setLong(Ljava/lang/String;J)V

    goto :goto_1d

    .line 3401
    :sswitch_2b
    const-string/jumbo v2, "lockscreen.password_type"

    const-wide/32 v4, 0x20000

    invoke-direct {p0, v2, v4, v5}, setLong(Ljava/lang/String;J)V

    goto :goto_1d

    .line 3405
    :sswitch_35
    const-string/jumbo v2, "lockscreen.password_type"

    const-wide/32 v4, 0x30000

    invoke-direct {p0, v2, v4, v5}, setLong(Ljava/lang/String;J)V

    goto :goto_1d

    .line 3394
    nop

    :sswitch_data_40
    .sparse-switch
        0x10000 -> :sswitch_24
        0x20000 -> :sswitch_2b
        0x30000 -> :sswitch_35
    .end sparse-switch
.end method

.method public resumeCall()V
    .registers 3

    .prologue
    .line 2234
    invoke-direct {p0}, getTelecommManager()Landroid/telecom/TelecomManager;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/telecom/TelecomManager;->showInCallScreen(Z)V

    .line 2235
    return-void
.end method

.method public resumeVoIPCall()V
    .registers 5

    .prologue
    .line 2247
    :try_start_0
    const-string/jumbo v2, "voip"

    invoke-static {v2}, Landroid/os/ServiceManager;->checkService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v2

    invoke-static {v2}, Landroid/os/IVoIPInterface$Stub;->asInterface(Landroid/os/IBinder;)Landroid/os/IVoIPInterface;

    move-result-object v1

    .line 2248
    .local v1, "voipInterfaceService":Landroid/os/IVoIPInterface;
    if-eqz v1, :cond_18

    .line 2249
    const-string v2, "LockPatternUtils"

    const-string/jumbo v3, "moveVoIPToTop"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2250
    invoke-interface {v1}, Landroid/os/IVoIPInterface;->moveVoIPToTop()Z
    :try_end_18
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_18} :catch_19

    .line 2255
    .end local v1    # "voipInterfaceService":Landroid/os/IVoIPInterface;
    :cond_18
    :goto_18
    return-void

    .line 2252
    :catch_19
    move-exception v0

    .line 2253
    .local v0, "e":Landroid/os/RemoteException;
    const-string v2, "LockPatternUtils"

    const-string/jumbo v3, "resumeVoIPCall() failed"

    invoke-static {v2, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_18
.end method

.method public saveLockBackupPin(Ljava/lang/String;I)V
    .registers 4
    .param p1, "password"    # Ljava/lang/String;
    .param p2, "quality"    # I

    .prologue
    .line 2520
    invoke-direct {p0}, getCurrentOrCallingUserId()I

    move-result v0

    invoke-virtual {p0, p1, p2, v0}, saveLockBackupPin(Ljava/lang/String;II)V

    .line 2521
    return-void
.end method

.method public saveLockBackupPin(Ljava/lang/String;II)V
    .registers 8
    .param p1, "password"    # Ljava/lang/String;
    .param p2, "quality"    # I
    .param p3, "userHandle"    # I

    .prologue
    .line 2527
    :try_start_0
    invoke-direct {p0}, getLockSettings()Lcom/android/internal/widget/ILockSettings;

    move-result-object v1

    invoke-interface {v1, p1, p3}, Lcom/android/internal/widget/ILockSettings;->setLockBackupPin(Ljava/lang/String;I)V
    :try_end_7
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_7} :catch_8

    .line 2532
    :goto_7
    return-void

    .line 2528
    :catch_8
    move-exception v0

    .line 2530
    .local v0, "re":Landroid/os/RemoteException;
    const-string v1, "LockPatternUtils"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Unable to save lock Backup PIN "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_7
.end method

.method public saveLockFingerprint()V
    .registers 2

    .prologue
    .line 2572
    invoke-direct {p0}, getCurrentOrCallingUserId()I

    move-result v0

    invoke-virtual {p0, v0}, saveLockFingerprint(I)V

    .line 2573
    return-void
.end method

.method public saveLockFingerprint(I)V
    .registers 8
    .param p1, "userHandle"    # I

    .prologue
    const/4 v2, 0x1

    .line 2576
    invoke-virtual {p0, v2, p1}, setLockFingerprintEnabled(ZI)V

    .line 2577
    invoke-virtual {p0, v2, p1}, setPrevLockFingerprintEnabled(ZI)V

    .line 2578
    const-string/jumbo v2, "lockscreen.password_type"

    const-wide/32 v4, 0x61000

    invoke-direct {p0, v2, v4, v5, p1}, setLong(Ljava/lang/String;JI)V

    .line 2580
    invoke-virtual {p0}, getDevicePolicyManager()Landroid/app/admin/DevicePolicyManager;

    move-result-object v0

    .line 2581
    .local v0, "dpm":Landroid/app/admin/DevicePolicyManager;
    invoke-virtual {v0, p1}, Landroid/app/admin/DevicePolicyManager;->copyAlternativeToActivePasswordState(I)V

    .line 2584
    :try_start_17
    invoke-direct {p0}, getLockSettings()Lcom/android/internal/widget/ILockSettings;

    move-result-object v2

    const-string v3, ""

    invoke-interface {v2, v3, p1}, Lcom/android/internal/widget/ILockSettings;->setLockFingerprintPassword(Ljava/lang/String;I)V
    :try_end_20
    .catch Landroid/os/RemoteException; {:try_start_17 .. :try_end_20} :catch_21

    .line 2589
    :goto_20
    return-void

    .line 2585
    :catch_21
    move-exception v1

    .line 2586
    .local v1, "re":Landroid/os/RemoteException;
    const-string v2, "MDPP"

    const-string v3, "Failed KeyStore checking"

    invoke-static {v2, v3, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_20
.end method

.method public saveLockFingerprintPassword(Ljava/lang/String;)V
    .registers 3
    .param p1, "password"    # Ljava/lang/String;

    .prologue
    .line 2832
    invoke-direct {p0}, getCurrentOrCallingUserId()I

    move-result v0

    invoke-virtual {p0, p1, v0}, saveLockFingerprintPassword(Ljava/lang/String;I)V

    .line 2833
    return-void
.end method

.method public saveLockFingerprintPassword(Ljava/lang/String;I)V
    .registers 3
    .param p1, "password"    # Ljava/lang/String;
    .param p2, "userId"    # I

    .prologue
    .line 2836
    invoke-direct {p0, p1, p2}, saveLockFingerprintPasswordwithoutQuality(Ljava/lang/String;I)V

    .line 2837
    return-void
.end method

.method public saveLockFingerprintPassword(Ljava/lang/String;II)V
    .registers 23
    .param p1, "password"    # Ljava/lang/String;
    .param p2, "userId"    # I
    .param p3, "quality"    # I

    .prologue
    .line 2841
    :try_start_0
    invoke-virtual/range {p0 .. p0}, getDevicePolicyManager()Landroid/app/admin/DevicePolicyManager;

    move-result-object v2

    .line 2842
    .local v2, "dpm":Landroid/app/admin/DevicePolicyManager;
    if-eqz p1, :cond_fe

    .line 2843
    invoke-direct/range {p0 .. p0}, getLockSettings()Lcom/android/internal/widget/ILockSettings;

    move-result-object v3

    move-object/from16 v0, p1

    move/from16 v1, p2

    invoke-interface {v3, v0, v1}, Lcom/android/internal/widget/ILockSettings;->setLockFingerprintPassword(Ljava/lang/String;I)V

    .line 2844
    if-nez p2, :cond_40

    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v3

    move/from16 v0, p2

    if-ne v0, v3, :cond_40

    .line 2847
    const/4 v3, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-direct {v0, v3, v1}, updateEncryptionPassword(ILjava/lang/String;)V

    .line 2849
    invoke-static {}, Landroid/dirEncryption/DirEncryptionManager;->isEncryptionFeatureEnabled()Z

    move-result v3

    if-eqz v3, :cond_40

    .line 2850
    new-instance v13, Landroid/dirEncryption/DirEncryptionManager;

    move-object/from16 v0, p0

    iget-object v3, v0, mContext:Landroid/content/Context;

    invoke-direct {v13, v3}, Landroid/dirEncryption/DirEncryptionManager;-><init>(Landroid/content/Context;)V

    .line 2851
    .local v13, "dem":Landroid/dirEncryption/DirEncryptionManager;
    const/4 v3, 0x1

    invoke-virtual {v13, v3}, Landroid/dirEncryption/DirEncryptionManager;->setNeedToCreateKey(Z)V

    .line 2852
    move-object/from16 v0, p1

    invoke-virtual {v13, v0}, Landroid/dirEncryption/DirEncryptionManager;->setPassword(Ljava/lang/String;)I

    .line 2853
    const/4 v3, 0x0

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4}, Landroid/app/admin/DevicePolicyManager;->setNeedToGetAlternativePasswdForODE(Landroid/content/ComponentName;Z)V

    .line 2857
    .end local v13    # "dem":Landroid/dirEncryption/DirEncryptionManager;
    :cond_40
    invoke-static/range {p1 .. p1}, computePasswordQuality(Ljava/lang/String;)I

    move-result v12

    .line 2858
    .local v12, "computedQuality":I
    invoke-virtual/range {p0 .. p0}, deleteGallery()V

    .line 2859
    const-string/jumbo v3, "lockscreen.password_type_alternate"

    move/from16 v0, p3

    invoke-static {v0, v12}, Ljava/lang/Math;->max(II)I

    move-result v4

    int-to-long v4, v4

    move-object/from16 v0, p0

    invoke-direct {v0, v3, v4, v5}, setLong(Ljava/lang/String;J)V

    .line 2860
    if-eqz v12, :cond_8c

    .line 2861
    invoke-virtual/range {p0 .. p2}, setContainerPasswordState(Ljava/lang/String;I)V

    .line 2872
    :goto_5b
    invoke-static {}, Lcom/samsung/android/security/CCManager;->isMdfEnforced()Z

    move-result v3

    if-nez v3, :cond_8b

    .line 2877
    const-string/jumbo v3, "lockscreen.passwordhistory"

    invoke-direct/range {p0 .. p0}, getCurrentOrCallingUserId()I

    move-result v4

    move-object/from16 v0, p0

    invoke-direct {v0, v3, v4}, getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v16

    .line 2879
    .local v16, "passwordHistory":Ljava/lang/String;
    if-nez v16, :cond_75

    .line 2880
    new-instance v16, Ljava/lang/String;

    .end local v16    # "passwordHistory":Ljava/lang/String;
    invoke-direct/range {v16 .. v16}, Ljava/lang/String;-><init>()V

    .line 2882
    .restart local v16    # "passwordHistory":Ljava/lang/String;
    :cond_75
    invoke-virtual/range {p0 .. p0}, getRequestedPasswordHistoryLength()I

    move-result v17

    .line 2883
    .local v17, "passwordHistoryLength":I
    if-nez v17, :cond_b8

    .line 2884
    const-string v16, ""

    .line 2898
    :goto_7d
    const-string/jumbo v3, "lockscreen.passwordhistory"

    invoke-direct/range {p0 .. p0}, getCurrentOrCallingUserId()I

    move-result v4

    move-object/from16 v0, p0

    move-object/from16 v1, v16

    invoke-direct {v0, v3, v1, v4}, setString(Ljava/lang/String;Ljava/lang/String;I)V

    .line 2907
    .end local v2    # "dpm":Landroid/app/admin/DevicePolicyManager;
    .end local v12    # "computedQuality":I
    .end local v16    # "passwordHistory":Ljava/lang/String;
    .end local v17    # "passwordHistoryLength":I
    :cond_8b
    :goto_8b
    return-void

    .line 2864
    .restart local v2    # "dpm":Landroid/app/admin/DevicePolicyManager;
    .restart local v12    # "computedQuality":I
    :cond_8c
    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    invoke-direct/range {p0 .. p0}, getCurrentOrCallingUserId()I

    move-result v11

    invoke-virtual/range {v2 .. v11}, Landroid/app/admin/DevicePolicyManager;->setActivePasswordState(IIIIIIIII)V
    :try_end_9b
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_9b} :catch_9c

    goto :goto_5b

    .line 2904
    .end local v2    # "dpm":Landroid/app/admin/DevicePolicyManager;
    .end local v12    # "computedQuality":I
    :catch_9c
    move-exception v18

    .line 2905
    .local v18, "re":Ljava/lang/Exception;
    const-string v3, "LockPatternUtils"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Unable to save Fingerprint lock password "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, v18

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_8b

    .line 2886
    .end local v18    # "re":Ljava/lang/Exception;
    .restart local v2    # "dpm":Landroid/app/admin/DevicePolicyManager;
    .restart local v12    # "computedQuality":I
    .restart local v16    # "passwordHistory":Ljava/lang/String;
    .restart local v17    # "passwordHistoryLength":I
    :cond_b8
    :try_start_b8
    invoke-virtual/range {p0 .. p2}, passwordToHash(Ljava/lang/String;I)[B

    move-result-object v14

    .line 2887
    .local v14, "hash":[B
    new-instance v15, Ljava/lang/String;

    invoke-direct {v15, v14}, Ljava/lang/String;-><init>([B)V

    .line 2888
    .local v15, "hashString":Ljava/lang/String;
    move-object/from16 v0, v16

    invoke-virtual {v0, v15}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_e7

    .line 2889
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    new-instance v4, Ljava/lang/String;

    invoke-direct {v4, v14}, Ljava/lang/String;-><init>([B)V

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ","

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, v16

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v16

    .line 2893
    :cond_e7
    const/4 v3, 0x0

    array-length v4, v14

    mul-int v4, v4, v17

    add-int v4, v4, v17

    add-int/lit8 v4, v4, -0x1

    invoke-virtual/range {v16 .. v16}, Ljava/lang/String;->length()I

    move-result v5

    invoke-static {v4, v5}, Ljava/lang/Math;->min(II)I

    move-result v4

    move-object/from16 v0, v16

    invoke-virtual {v0, v3, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v16

    goto :goto_7d

    .line 2901
    .end local v12    # "computedQuality":I
    .end local v14    # "hash":[B
    .end local v15    # "hashString":Ljava/lang/String;
    .end local v16    # "passwordHistory":Ljava/lang/String;
    .end local v17    # "passwordHistoryLength":I
    :cond_fe
    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    invoke-direct/range {p0 .. p0}, getCurrentOrCallingUserId()I

    move-result v11

    invoke-virtual/range {v2 .. v11}, Landroid/app/admin/DevicePolicyManager;->setActivePasswordState(IIIIIIIII)V
    :try_end_10d
    .catch Ljava/lang/Exception; {:try_start_b8 .. :try_end_10d} :catch_9c

    goto/16 :goto_8b
.end method

.method public saveLockParentControlPassword(Ljava/lang/String;I)V
    .registers 9
    .param p1, "spare"    # Ljava/lang/String;
    .param p2, "quality"    # I

    .prologue
    .line 2778
    invoke-direct {p0}, getCurrentOrCallingUserId()I

    move-result v2

    .line 2779
    .local v2, "userId":I
    invoke-virtual {p0, p1, v2}, passwordToHash(Ljava/lang/String;I)[B

    move-result-object v0

    .line 2782
    .local v0, "hash":[B
    :try_start_8
    invoke-direct {p0}, getLockSettings()Lcom/android/internal/widget/ILockSettings;

    move-result-object v3

    invoke-direct {p0}, getCurrentOrCallingUserId()I

    move-result v4

    invoke-interface {v3, v0, v4}, Lcom/android/internal/widget/ILockSettings;->setLockParentControlPassword([BI)V
    :try_end_13
    .catch Landroid/os/RemoteException; {:try_start_8 .. :try_end_13} :catch_14

    .line 2788
    :goto_13
    return-void

    .line 2784
    :catch_14
    move-exception v1

    .line 2786
    .local v1, "re":Landroid/os/RemoteException;
    const-string v3, "LockPatternUtils"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Unable to save lock parent control password "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_13
.end method

.method public saveLockPassword(Ljava/lang/String;I)V
    .registers 5
    .param p1, "password"    # Ljava/lang/String;
    .param p2, "quality"    # I

    .prologue
    .line 1208
    const/4 v0, 0x0

    invoke-direct {p0}, getCurrentOrCallingUserId()I

    move-result v1

    invoke-virtual {p0, p1, p2, v0, v1}, saveLockPassword(Ljava/lang/String;IZI)V

    .line 1209
    return-void
.end method

.method public saveLockPassword(Ljava/lang/String;IZ)V
    .registers 5
    .param p1, "password"    # Ljava/lang/String;
    .param p2, "quality"    # I
    .param p3, "isFallback"    # Z

    .prologue
    .line 1220
    invoke-direct {p0}, getCurrentOrCallingUserId()I

    move-result v0

    invoke-virtual {p0, p1, p2, p3, v0}, saveLockPassword(Ljava/lang/String;IZI)V

    .line 1221
    return-void
.end method

.method public saveLockPassword(Ljava/lang/String;IZI)V
    .registers 11
    .param p1, "password"    # Ljava/lang/String;
    .param p2, "quality"    # I
    .param p3, "isFallback"    # Z
    .param p4, "userHandle"    # I

    .prologue
    .line 1225
    const/4 v4, 0x0

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move v3, p3

    move v5, p4

    invoke-virtual/range {v0 .. v5}, saveLockPassword(Ljava/lang/String;IZZI)V

    .line 1226
    return-void
.end method

.method public saveLockPassword(Ljava/lang/String;IZZ)V
    .registers 11
    .param p1, "password"    # Ljava/lang/String;
    .param p2, "quality"    # I
    .param p3, "isFallback"    # Z
    .param p4, "isSignature"    # Z

    .prologue
    .line 1230
    invoke-direct {p0}, getCurrentOrCallingUserId()I

    move-result v5

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    invoke-virtual/range {v0 .. v5}, saveLockPassword(Ljava/lang/String;IZZI)V

    .line 1231
    return-void
.end method

.method public saveLockPassword(Ljava/lang/String;IZZI)V
    .registers 43
    .param p1, "password"    # Ljava/lang/String;
    .param p2, "quality"    # I
    .param p3, "isFallback"    # Z
    .param p4, "isSignature"    # Z
    .param p5, "userHandle"    # I

    .prologue
    .line 1244
    :try_start_0
    invoke-virtual/range {p0 .. p0}, getDevicePolicyManager()Landroid/app/admin/DevicePolicyManager;

    move-result-object v4

    .line 1245
    .local v4, "dpm":Landroid/app/admin/DevicePolicyManager;
    invoke-static/range {p1 .. p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_204

    .line 1246
    invoke-direct/range {p0 .. p0}, getLockSettings()Lcom/android/internal/widget/ILockSettings;

    move-result-object v5

    move-object/from16 v0, p1

    move/from16 v1, p5

    invoke-interface {v5, v0, v1}, Lcom/android/internal/widget/ILockSettings;->setLockPassword(Ljava/lang/String;I)V

    .line 1247
    invoke-static/range {p1 .. p1}, computePasswordQuality(Ljava/lang/String;)I

    move-result v26

    .line 1250
    .local v26, "computedQuality":I
    if-nez p5, :cond_2d

    invoke-static {}, isDeviceEncryptionEnabled()Z

    move-result v5

    if-eqz v5, :cond_2d

    .line 1252
    const/4 v5, 0x1

    move-object/from16 v0, p0

    invoke-virtual {v0, v5}, isCredentialRequiredToDecrypt(Z)Z

    move-result v5

    if-nez v5, :cond_7d

    .line 1253
    invoke-virtual/range {p0 .. p0}, clearEncryptionPassword()V

    .line 1264
    :cond_2d
    :goto_2d
    move-object/from16 v0, p0

    move/from16 v1, p2

    invoke-direct {v0, v1}, updateCACAuthentication(I)V

    .line 1266
    if-nez p3, :cond_160

    .line 1267
    invoke-virtual/range {p0 .. p0}, deleteGallery()V

    .line 1268
    const-string/jumbo v5, "lockscreen.password_type"

    move/from16 v0, p2

    move/from16 v1, v26

    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result v6

    int-to-long v0, v6

    move-wide/from16 v16, v0

    move-object/from16 v0, p0

    move-wide/from16 v1, v16

    move/from16 v3, p5

    invoke-direct {v0, v5, v1, v2, v3}, setLong(Ljava/lang/String;JI)V

    .line 1269
    if-eqz v26, :cond_14b

    .line 1270
    const/4 v7, 0x0

    .line 1271
    .local v7, "letters":I
    const/4 v8, 0x0

    .line 1272
    .local v8, "uppercase":I
    const/4 v9, 0x0

    .line 1273
    .local v9, "lowercase":I
    const/4 v10, 0x0

    .line 1274
    .local v10, "numbers":I
    const/4 v11, 0x0

    .line 1275
    .local v11, "symbols":I
    const/4 v12, 0x0

    .line 1276
    .local v12, "nonletter":I
    const/16 v30, 0x0

    .local v30, "i":I
    :goto_5a
    invoke-virtual/range {p1 .. p1}, Ljava/lang/String;->length()I

    move-result v5

    move/from16 v0, v30

    if-ge v0, v5, :cond_e9

    .line 1277
    move-object/from16 v0, p1

    move/from16 v1, v30

    invoke-virtual {v0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v25

    .line 1278
    .local v25, "c":C
    const/16 v5, 0x41

    move/from16 v0, v25

    if-lt v0, v5, :cond_c2

    const/16 v5, 0x5a

    move/from16 v0, v25

    if-gt v0, v5, :cond_c2

    .line 1279
    add-int/lit8 v7, v7, 0x1

    .line 1280
    add-int/lit8 v8, v8, 0x1

    .line 1276
    :goto_7a
    add-int/lit8 v30, v30, 0x1

    goto :goto_5a

    .line 1255
    .end local v7    # "letters":I
    .end local v8    # "uppercase":I
    .end local v9    # "lowercase":I
    .end local v10    # "numbers":I
    .end local v11    # "symbols":I
    .end local v12    # "nonletter":I
    .end local v25    # "c":C
    .end local v30    # "i":I
    :cond_7d
    const/high16 v5, 0x20000

    move/from16 v0, v26

    if-ne v0, v5, :cond_b9

    const/16 v31, 0x1

    .line 1257
    .local v31, "numeric":Z
    :goto_85
    const/high16 v5, 0x30000

    move/from16 v0, v26

    if-ne v0, v5, :cond_bc

    const/16 v32, 0x1

    .line 1259
    .local v32, "numericComplex":Z
    :goto_8d
    if-nez v31, :cond_91

    if-eqz v32, :cond_bf

    :cond_91
    const/16 v36, 0x3

    .line 1261
    .local v36, "type":I
    :goto_93
    move-object/from16 v0, p0

    move/from16 v1, v36

    move-object/from16 v2, p1

    invoke-direct {v0, v1, v2}, updateEncryptionPassword(ILjava/lang/String;)V
    :try_end_9c
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_9c} :catch_9d

    goto :goto_2d

    .line 1369
    .end local v4    # "dpm":Landroid/app/admin/DevicePolicyManager;
    .end local v26    # "computedQuality":I
    .end local v31    # "numeric":Z
    .end local v32    # "numericComplex":Z
    .end local v36    # "type":I
    :catch_9d
    move-exception v35

    .line 1371
    .local v35, "re":Landroid/os/RemoteException;
    const-string v5, "LockPatternUtils"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "Unable to save lock password "

    invoke-virtual {v6, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move-object/from16 v0, v35

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1373
    .end local v35    # "re":Landroid/os/RemoteException;
    :cond_b8
    :goto_b8
    return-void

    .line 1255
    .restart local v4    # "dpm":Landroid/app/admin/DevicePolicyManager;
    .restart local v26    # "computedQuality":I
    :cond_b9
    const/16 v31, 0x0

    goto :goto_85

    .line 1257
    .restart local v31    # "numeric":Z
    :cond_bc
    const/16 v32, 0x0

    goto :goto_8d

    .line 1259
    .restart local v32    # "numericComplex":Z
    :cond_bf
    const/16 v36, 0x0

    goto :goto_93

    .line 1281
    .end local v31    # "numeric":Z
    .end local v32    # "numericComplex":Z
    .restart local v7    # "letters":I
    .restart local v8    # "uppercase":I
    .restart local v9    # "lowercase":I
    .restart local v10    # "numbers":I
    .restart local v11    # "symbols":I
    .restart local v12    # "nonletter":I
    .restart local v25    # "c":C
    .restart local v30    # "i":I
    :cond_c2
    const/16 v5, 0x61

    move/from16 v0, v25

    if-lt v0, v5, :cond_d3

    const/16 v5, 0x7a

    move/from16 v0, v25

    if-gt v0, v5, :cond_d3

    .line 1282
    add-int/lit8 v7, v7, 0x1

    .line 1283
    add-int/lit8 v9, v9, 0x1

    goto :goto_7a

    .line 1284
    :cond_d3
    const/16 v5, 0x30

    move/from16 v0, v25

    if-lt v0, v5, :cond_e4

    const/16 v5, 0x39

    move/from16 v0, v25

    if-gt v0, v5, :cond_e4

    .line 1285
    add-int/lit8 v10, v10, 0x1

    .line 1286
    add-int/lit8 v12, v12, 0x1

    goto :goto_7a

    .line 1288
    :cond_e4
    add-int/lit8 v11, v11, 0x1

    .line 1289
    add-int/lit8 v12, v12, 0x1

    goto :goto_7a

    .line 1292
    .end local v25    # "c":C
    :cond_e9
    :try_start_e9
    move/from16 v0, p2

    move/from16 v1, v26

    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result v5

    invoke-virtual/range {p1 .. p1}, Ljava/lang/String;->length()I

    move-result v6

    move/from16 v13, p5

    invoke-virtual/range {v4 .. v13}, Landroid/app/admin/DevicePolicyManager;->setActivePasswordState(IIIIIIIII)V

    .line 1323
    .end local v7    # "letters":I
    .end local v8    # "uppercase":I
    .end local v9    # "lowercase":I
    .end local v10    # "numbers":I
    .end local v11    # "symbols":I
    .end local v12    # "nonletter":I
    .end local v30    # "i":I
    :goto_fa
    invoke-static {}, Lcom/samsung/android/security/CCManager;->isMdfEnforced()Z

    move-result v5

    if-nez v5, :cond_126

    .line 1327
    const-string/jumbo v5, "lockscreen.passwordhistory"

    move-object/from16 v0, p0

    move/from16 v1, p5

    invoke-direct {v0, v5, v1}, getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v33

    .line 1328
    .local v33, "passwordHistory":Ljava/lang/String;
    if-nez v33, :cond_112

    .line 1329
    new-instance v33, Ljava/lang/String;

    .end local v33    # "passwordHistory":Ljava/lang/String;
    invoke-direct/range {v33 .. v33}, Ljava/lang/String;-><init>()V

    .line 1331
    .restart local v33    # "passwordHistory":Ljava/lang/String;
    :cond_112
    invoke-virtual/range {p0 .. p0}, getRequestedPasswordHistoryLength()I

    move-result v34

    .line 1332
    .local v34, "passwordHistoryLength":I
    if-nez v34, :cond_1ad

    .line 1333
    const-string v33, ""

    .line 1346
    :goto_11a
    const-string/jumbo v5, "lockscreen.passwordhistory"

    move-object/from16 v0, p0

    move-object/from16 v1, v33

    move/from16 v2, p5

    invoke-direct {v0, v5, v1, v2}, setString(Ljava/lang/String;Ljava/lang/String;I)V

    .line 1360
    .end local v26    # "computedQuality":I
    .end local v33    # "passwordHistory":Ljava/lang/String;
    .end local v34    # "passwordHistoryLength":I
    :cond_126
    :goto_126
    invoke-direct/range {p0 .. p0}, onAfterChangingPassword()V

    .line 1363
    if-nez p5, :cond_b8

    invoke-static {}, Landroid/dirEncryption/DirEncryptionManager;->isEncryptionFeatureEnabled()Z

    move-result v5

    if-eqz v5, :cond_b8

    .line 1364
    new-instance v27, Landroid/dirEncryption/DirEncryptionManager;

    move-object/from16 v0, p0

    iget-object v5, v0, mContext:Landroid/content/Context;

    move-object/from16 v0, v27

    invoke-direct {v0, v5}, Landroid/dirEncryption/DirEncryptionManager;-><init>(Landroid/content/Context;)V

    .line 1365
    .local v27, "dem":Landroid/dirEncryption/DirEncryptionManager;
    const/4 v5, 0x1

    move-object/from16 v0, v27

    invoke-virtual {v0, v5}, Landroid/dirEncryption/DirEncryptionManager;->setNeedToCreateKey(Z)V

    .line 1366
    move-object/from16 v0, v27

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Landroid/dirEncryption/DirEncryptionManager;->setPassword(Ljava/lang/String;)I

    goto/16 :goto_b8

    .line 1297
    .end local v27    # "dem":Landroid/dirEncryption/DirEncryptionManager;
    .restart local v26    # "computedQuality":I
    :cond_14b
    const/4 v14, 0x0

    const/4 v15, 0x0

    const/16 v16, 0x0

    const/16 v17, 0x0

    const/16 v18, 0x0

    const/16 v19, 0x0

    const/16 v20, 0x0

    const/16 v21, 0x0

    move-object v13, v4

    move/from16 v22, p5

    invoke-virtual/range {v13 .. v22}, Landroid/app/admin/DevicePolicyManager;->setActivePasswordState(IIIIIIIII)V

    goto :goto_fa

    .line 1302
    :cond_160
    const v14, 0x8000

    .line 1303
    .local v14, "passwordQuality":I
    if-eqz p4, :cond_1a6

    .line 1304
    const v14, 0x9000

    .line 1305
    invoke-direct/range {p0 .. p0}, finishSignature()V

    .line 1312
    :goto_16b
    const-string/jumbo v5, "lockscreen.password_type"

    int-to-long v0, v14

    move-wide/from16 v16, v0

    move-object/from16 v0, p0

    move-wide/from16 v1, v16

    move/from16 v3, p5

    invoke-direct {v0, v5, v1, v2, v3}, setLong(Ljava/lang/String;JI)V

    .line 1314
    const-string/jumbo v5, "lockscreen.password_type_alternate"

    move/from16 v0, p2

    move/from16 v1, v26

    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result v6

    int-to-long v0, v6

    move-wide/from16 v16, v0

    move-object/from16 v0, p0

    move-wide/from16 v1, v16

    move/from16 v3, p5

    invoke-direct {v0, v5, v1, v2, v3}, setLong(Ljava/lang/String;JI)V

    .line 1317
    const/4 v15, 0x0

    const/16 v16, 0x0

    const/16 v17, 0x0

    const/16 v18, 0x0

    const/16 v19, 0x0

    const/16 v20, 0x0

    const/16 v21, 0x0

    move-object v13, v4

    move/from16 v22, p5

    invoke-virtual/range {v13 .. v22}, Landroid/app/admin/DevicePolicyManager;->setActivePasswordState(IIIIIIIII)V

    goto/16 :goto_fa

    .line 1308
    :cond_1a6
    const v14, 0x8000

    .line 1309
    invoke-direct/range {p0 .. p0}, finishBiometricWeak()V

    goto :goto_16b

    .line 1335
    .end local v14    # "passwordQuality":I
    .restart local v33    # "passwordHistory":Ljava/lang/String;
    .restart local v34    # "passwordHistoryLength":I
    :cond_1ad
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move/from16 v2, p5

    invoke-virtual {v0, v1, v2}, passwordToHash(Ljava/lang/String;I)[B

    move-result-object v28

    .line 1336
    .local v28, "hash":[B
    new-instance v29, Ljava/lang/String;

    move-object/from16 v0, v29

    move-object/from16 v1, v28

    invoke-direct {v0, v1}, Ljava/lang/String;-><init>([B)V

    .line 1337
    .local v29, "hashString":Ljava/lang/String;
    move-object/from16 v0, v33

    move-object/from16 v1, v29

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_1ea

    .line 1338
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    new-instance v6, Ljava/lang/String;

    move-object/from16 v0, v28

    invoke-direct {v6, v0}, Ljava/lang/String;-><init>([B)V

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ","

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object/from16 v0, v33

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v33

    .line 1342
    :cond_1ea
    const/4 v5, 0x0

    move-object/from16 v0, v28

    array-length v6, v0

    mul-int v6, v6, v34

    add-int v6, v6, v34

    add-int/lit8 v6, v6, -0x1

    invoke-virtual/range {v33 .. v33}, Ljava/lang/String;->length()I

    move-result v13

    invoke-static {v6, v13}, Ljava/lang/Math;->min(II)I

    move-result v6

    move-object/from16 v0, v33

    invoke-virtual {v0, v5, v6}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v33

    goto/16 :goto_11a

    .line 1350
    .end local v26    # "computedQuality":I
    .end local v28    # "hash":[B
    .end local v29    # "hashString":Ljava/lang/String;
    .end local v33    # "passwordHistory":Ljava/lang/String;
    .end local v34    # "passwordHistoryLength":I
    :cond_204
    invoke-direct/range {p0 .. p0}, getLockSettings()Lcom/android/internal/widget/ILockSettings;

    move-result-object v5

    const/4 v6, 0x0

    move/from16 v0, p5

    invoke-interface {v5, v6, v0}, Lcom/android/internal/widget/ILockSettings;->setLockPassword(Ljava/lang/String;I)V

    .line 1351
    if-nez p5, :cond_217

    .line 1353
    const/4 v5, 0x1

    const/4 v6, 0x0

    move-object/from16 v0, p0

    invoke-direct {v0, v5, v6}, updateEncryptionPassword(ILjava/lang/String;)V

    .line 1356
    :cond_217
    const/16 v16, 0x0

    const/16 v17, 0x0

    const/16 v18, 0x0

    const/16 v19, 0x0

    const/16 v20, 0x0

    const/16 v21, 0x0

    const/16 v22, 0x0

    const/16 v23, 0x0

    move-object v15, v4

    move/from16 v24, p5

    invoke-virtual/range {v15 .. v24}, Landroid/app/admin/DevicePolicyManager;->setActivePasswordState(IIIIIIIII)V
    :try_end_22d
    .catch Landroid/os/RemoteException; {:try_start_e9 .. :try_end_22d} :catch_9d

    goto/16 :goto_126
.end method

.method public saveLockPattern(Ljava/util/List;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/android/internal/widget/LockPatternView$Cell;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 934
    .local p1, "pattern":Ljava/util/List;, "Ljava/util/List<Lcom/android/internal/widget/LockPatternView$Cell;>;"
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, saveLockPattern(Ljava/util/List;Z)V

    .line 935
    return-void
.end method

.method public saveLockPattern(Ljava/util/List;I)V
    .registers 9
    .param p2, "userHandle"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/android/internal/widget/LockPatternView$Cell;",
            ">;I)V"
        }
    .end annotation

    .prologue
    .local p1, "pattern":Ljava/util/List;, "Ljava/util/List<Lcom/android/internal/widget/LockPatternView$Cell;>;"
    const/4 v2, 0x0

    .line 943
    move-object v0, p0

    move-object v1, p1

    move v3, v2

    move v4, v2

    move v5, p2

    invoke-virtual/range {v0 .. v5}, saveLockPattern(Ljava/util/List;ZZZI)V

    .line 944
    return-void
.end method

.method public saveLockPattern(Ljava/util/List;Z)V
    .registers 4
    .param p2, "isFallback"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/android/internal/widget/LockPatternView$Cell;",
            ">;Z)V"
        }
    .end annotation

    .prologue
    .line 952
    .local p1, "pattern":Ljava/util/List;, "Ljava/util/List<Lcom/android/internal/widget/LockPatternView$Cell;>;"
    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, v0}, saveLockPattern(Ljava/util/List;ZZ)V

    .line 953
    return-void
.end method

.method public saveLockPattern(Ljava/util/List;ZZ)V
    .registers 5
    .param p2, "isFallback"    # Z
    .param p3, "isSignature"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/android/internal/widget/LockPatternView$Cell;",
            ">;ZZ)V"
        }
    .end annotation

    .prologue
    .line 962
    .local p1, "pattern":Ljava/util/List;, "Ljava/util/List<Lcom/android/internal/widget/LockPatternView$Cell;>;"
    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, p3, v0}, saveLockPattern(Ljava/util/List;ZZZ)V

    .line 963
    return-void
.end method

.method public saveLockPattern(Ljava/util/List;ZZZ)V
    .registers 11
    .param p2, "isFallback"    # Z
    .param p3, "isSignature"    # Z
    .param p4, "isSmartUnlock"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/android/internal/widget/LockPatternView$Cell;",
            ">;ZZZ)V"
        }
    .end annotation

    .prologue
    .line 973
    .local p1, "pattern":Ljava/util/List;, "Ljava/util/List<Lcom/android/internal/widget/LockPatternView$Cell;>;"
    invoke-direct {p0}, getCurrentOrCallingUserId()I

    move-result v5

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    invoke-virtual/range {v0 .. v5}, saveLockPattern(Ljava/util/List;ZZZI)V

    .line 974
    return-void
.end method

.method public saveLockPattern(Ljava/util/List;ZZZI)V
    .registers 23
    .param p2, "isFallback"    # Z
    .param p3, "isSignature"    # Z
    .param p4, "isSmartUnlock"    # Z
    .param p5, "userHandle"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/android/internal/widget/LockPatternView$Cell;",
            ">;ZZZI)V"
        }
    .end annotation

    .prologue
    .line 985
    .local p1, "pattern":Ljava/util/List;, "Ljava/util/List<Lcom/android/internal/widget/LockPatternView$Cell;>;"
    const-string v4, "LockPatternUtils"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "LockPatternUtils.saveLockPattern() isFallback: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move/from16 v0, p2

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " isSignature: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move/from16 v0, p3

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " isSmartUnlock: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move/from16 v0, p4

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " userHandle: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move/from16 v0, p5

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 987
    :try_start_3e
    invoke-direct/range {p0 .. p0}, getLockSettings()Lcom/android/internal/widget/ILockSettings;

    move-result-object v4

    invoke-static/range {p1 .. p1}, patternToString(Ljava/util/List;)Ljava/lang/String;

    move-result-object v5

    move/from16 v0, p5

    invoke-interface {v4, v5, v0}, Lcom/android/internal/widget/ILockSettings;->setLockPattern(Ljava/lang/String;I)V

    .line 988
    invoke-virtual/range {p0 .. p0}, getDevicePolicyManager()Landroid/app/admin/DevicePolicyManager;

    move-result-object v2

    .line 989
    .local v2, "dpm":Landroid/app/admin/DevicePolicyManager;
    if-eqz p1, :cond_100

    .line 991
    if-nez p5, :cond_65

    invoke-static {}, isDeviceEncryptionEnabled()Z

    move-result v4

    if-eqz v4, :cond_65

    .line 993
    const/4 v4, 0x1

    move-object/from16 v0, p0

    invoke-virtual {v0, v4}, isCredentialRequiredToDecrypt(Z)Z

    move-result v15

    .line 994
    .local v15, "required":Z
    if-nez v15, :cond_9c

    .line 995
    invoke-virtual/range {p0 .. p0}, clearEncryptionPassword()V

    .line 1002
    .end local v15    # "required":Z
    :cond_65
    :goto_65
    const-string/jumbo v4, "lockscreen.patterneverchosen"

    const/4 v5, 0x1

    move-object/from16 v0, p0

    invoke-direct {v0, v4, v5}, setBoolean(Ljava/lang/String;Z)V

    .line 1003
    const/high16 v4, 0x10000

    move-object/from16 v0, p0

    invoke-direct {v0, v4}, updateCACAuthentication(I)V

    .line 1004
    if-nez p2, :cond_c3

    .line 1005
    invoke-virtual/range {p0 .. p0}, deleteGallery()V

    .line 1006
    const-string/jumbo v4, "lockscreen.password_type"

    const-wide/32 v6, 0x10000

    move-object/from16 v0, p0

    move/from16 v1, p5

    invoke-direct {v0, v4, v6, v7, v1}, setLong(Ljava/lang/String;JI)V

    .line 1007
    const/high16 v3, 0x10000

    invoke-interface/range {p1 .. p1}, Ljava/util/List;->size()I

    move-result v4

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    move/from16 v11, p5

    invoke-virtual/range {v2 .. v11}, Landroid/app/admin/DevicePolicyManager;->setActivePasswordState(IIIIIIIII)V

    .line 1028
    :goto_98
    invoke-direct/range {p0 .. p0}, onAfterChangingPassword()V

    .line 1032
    .end local v2    # "dpm":Landroid/app/admin/DevicePolicyManager;
    :goto_9b
    return-void

    .line 997
    .restart local v2    # "dpm":Landroid/app/admin/DevicePolicyManager;
    .restart local v15    # "required":Z
    :cond_9c
    invoke-static/range {p1 .. p1}, patternToString(Ljava/util/List;)Ljava/lang/String;

    move-result-object v16

    .line 998
    .local v16, "stringPattern":Ljava/lang/String;
    const/4 v4, 0x2

    move-object/from16 v0, p0

    move-object/from16 v1, v16

    invoke-direct {v0, v4, v1}, updateEncryptionPassword(ILjava/lang/String;)V
    :try_end_a8
    .catch Landroid/os/RemoteException; {:try_start_3e .. :try_end_a8} :catch_a9

    goto :goto_65

    .line 1029
    .end local v2    # "dpm":Landroid/app/admin/DevicePolicyManager;
    .end local v15    # "required":Z
    .end local v16    # "stringPattern":Ljava/lang/String;
    :catch_a9
    move-exception v14

    .line 1030
    .local v14, "re":Landroid/os/RemoteException;
    const-string v4, "LockPatternUtils"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Couldn\'t save lock pattern "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_9b

    .line 1010
    .end local v14    # "re":Landroid/os/RemoteException;
    .restart local v2    # "dpm":Landroid/app/admin/DevicePolicyManager;
    :cond_c3
    const v3, 0x8000

    .line 1011
    .local v3, "passwordQuality":I
    if-eqz p4, :cond_f0

    .line 1012
    const v3, 0x9100

    .line 1020
    :goto_cb
    :try_start_cb
    const-string/jumbo v4, "lockscreen.password_type"

    int-to-long v6, v3

    move-object/from16 v0, p0

    move/from16 v1, p5

    invoke-direct {v0, v4, v6, v7, v1}, setLong(Ljava/lang/String;JI)V

    .line 1021
    const-string/jumbo v4, "lockscreen.password_type_alternate"

    const-wide/32 v6, 0x10000

    move-object/from16 v0, p0

    move/from16 v1, p5

    invoke-direct {v0, v4, v6, v7, v1}, setLong(Ljava/lang/String;JI)V

    .line 1022
    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    move/from16 v11, p5

    invoke-virtual/range {v2 .. v11}, Landroid/app/admin/DevicePolicyManager;->setActivePasswordState(IIIIIIIII)V

    goto :goto_98

    .line 1013
    :cond_f0
    if-eqz p3, :cond_f9

    .line 1014
    const v3, 0x9000

    .line 1015
    invoke-direct/range {p0 .. p0}, finishSignature()V

    goto :goto_cb

    .line 1017
    :cond_f9
    const v3, 0x8000

    .line 1018
    invoke-direct/range {p0 .. p0}, finishBiometricWeak()V

    goto :goto_cb

    .line 1025
    .end local v3    # "passwordQuality":I
    :cond_100
    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x0

    const/4 v12, 0x0

    move-object v4, v2

    move/from16 v13, p5

    invoke-virtual/range {v4 .. v13}, Landroid/app/admin/DevicePolicyManager;->setActivePasswordState(IIIIIIIII)V
    :try_end_10e
    .catch Landroid/os/RemoteException; {:try_start_cb .. :try_end_10e} :catch_a9

    goto :goto_98
.end method

.method public saveLockSmartUnlock()V
    .registers 11

    .prologue
    const/4 v2, 0x0

    .line 3361
    invoke-virtual {p0}, getDevicePolicyManager()Landroid/app/admin/DevicePolicyManager;

    move-result-object v0

    .line 3362
    .local v0, "dpm":Landroid/app/admin/DevicePolicyManager;
    const-string/jumbo v1, "lockscreen.password_type"

    const-wide/32 v4, 0x9100

    invoke-direct {p0, v1, v4, v5}, setLong(Ljava/lang/String;J)V

    .line 3363
    const v1, 0x9100

    invoke-direct {p0}, getCurrentOrCallingUserId()I

    move-result v9

    move v3, v2

    move v4, v2

    move v5, v2

    move v6, v2

    move v7, v2

    move v8, v2

    invoke-virtual/range {v0 .. v9}, Landroid/app/admin/DevicePolicyManager;->setActivePasswordState(IIIIIIIII)V

    .line 3365
    return-void
.end method

.method public savePersonalModeFingerPrintPassword(Ljava/lang/String;)V
    .registers 7
    .param p1, "password"    # Ljava/lang/String;

    .prologue
    .line 2709
    invoke-direct {p0}, getCurrentOrCallingUserId()I

    move-result v1

    .line 2711
    .local v1, "userId":I
    :try_start_4
    invoke-direct {p0}, getLockSettings()Lcom/android/internal/widget/ILockSettings;

    move-result-object v2

    invoke-interface {v2, p1, v1}, Lcom/android/internal/widget/ILockSettings;->setPersonalModeFingerprintPassword(Ljava/lang/String;I)V
    :try_end_b
    .catch Landroid/os/RemoteException; {:try_start_4 .. :try_end_b} :catch_c

    .line 2716
    :goto_b
    return-void

    .line 2712
    :catch_c
    move-exception v0

    .line 2714
    .local v0, "re":Landroid/os/RemoteException;
    const-string v2, "LockPatternUtils"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Unable to save lock password "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_b
.end method

.method public savePersonalModeLockBackupPin(Ljava/lang/String;)V
    .registers 7
    .param p1, "pin"    # Ljava/lang/String;

    .prologue
    .line 2679
    invoke-direct {p0}, getCurrentOrCallingUserId()I

    move-result v1

    .line 2681
    .local v1, "userId":I
    :try_start_4
    invoke-direct {p0}, getLockSettings()Lcom/android/internal/widget/ILockSettings;

    move-result-object v2

    invoke-interface {v2, p1, v1}, Lcom/android/internal/widget/ILockSettings;->setPersonalModeLockBackupPin(Ljava/lang/String;I)V
    :try_end_b
    .catch Landroid/os/RemoteException; {:try_start_4 .. :try_end_b} :catch_c

    .line 2686
    :goto_b
    return-void

    .line 2682
    :catch_c
    move-exception v0

    .line 2684
    .local v0, "re":Landroid/os/RemoteException;
    const-string v2, "LockPatternUtils"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Unable to save lock pin "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_b
.end method

.method public savePersonalModeLockPassword(Ljava/lang/String;)V
    .registers 7
    .param p1, "password"    # Ljava/lang/String;

    .prologue
    .line 2623
    invoke-direct {p0}, getCurrentOrCallingUserId()I

    move-result v1

    .line 2625
    .local v1, "userId":I
    :try_start_4
    invoke-direct {p0}, getLockSettings()Lcom/android/internal/widget/ILockSettings;

    move-result-object v2

    invoke-interface {v2, p1, v1}, Lcom/android/internal/widget/ILockSettings;->setPersonalModeLockPassword(Ljava/lang/String;I)V
    :try_end_b
    .catch Landroid/os/RemoteException; {:try_start_4 .. :try_end_b} :catch_c

    .line 2630
    :goto_b
    return-void

    .line 2626
    :catch_c
    move-exception v0

    .line 2628
    .local v0, "re":Landroid/os/RemoteException;
    const-string v2, "LockPatternUtils"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Unable to save lock password "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_b
.end method

.method public savePersonalModeLockPattern(Ljava/util/List;)V
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/android/internal/widget/LockPatternView$Cell;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 2651
    .local p1, "pattern":Ljava/util/List;, "Ljava/util/List<Lcom/android/internal/widget/LockPatternView$Cell;>;"
    invoke-direct {p0}, getCurrentOrCallingUserId()I

    move-result v1

    .line 2653
    .local v1, "userId":I
    :try_start_4
    invoke-direct {p0}, getLockSettings()Lcom/android/internal/widget/ILockSettings;

    move-result-object v2

    invoke-static {p1}, patternToString(Ljava/util/List;)Ljava/lang/String;

    move-result-object v3

    invoke-interface {v2, v3, v1}, Lcom/android/internal/widget/ILockSettings;->setPersonalModeLockPattern(Ljava/lang/String;I)V
    :try_end_f
    .catch Landroid/os/RemoteException; {:try_start_4 .. :try_end_f} :catch_10

    .line 2657
    :goto_f
    return-void

    .line 2654
    :catch_10
    move-exception v0

    .line 2655
    .local v0, "re":Landroid/os/RemoteException;
    const-string v2, "LockPatternUtils"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Unable to save lock pattern "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_f
.end method

.method public savePersonalModeLockPin(Ljava/lang/String;)V
    .registers 7
    .param p1, "pin"    # Ljava/lang/String;

    .prologue
    .line 2594
    invoke-direct {p0}, getCurrentOrCallingUserId()I

    move-result v1

    .line 2596
    .local v1, "userId":I
    :try_start_4
    invoke-direct {p0}, getLockSettings()Lcom/android/internal/widget/ILockSettings;

    move-result-object v2

    invoke-interface {v2, p1, v1}, Lcom/android/internal/widget/ILockSettings;->setPersonalModeLockPin(Ljava/lang/String;I)V
    :try_end_b
    .catch Landroid/os/RemoteException; {:try_start_4 .. :try_end_b} :catch_c

    .line 2601
    :goto_b
    return-void

    .line 2597
    :catch_c
    move-exception v0

    .line 2599
    .local v0, "re":Landroid/os/RemoteException;
    const-string v2, "LockPatternUtils"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Unable to save lock pin "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_b
.end method

.method public saveRemoteLockPassword(ILjava/lang/String;)V
    .registers 4
    .param p1, "whichlock"    # I
    .param p2, "password"    # Ljava/lang/String;

    .prologue
    .line 3306
    invoke-direct {p0}, getCurrentOrCallingUserId()I

    move-result v0

    invoke-virtual {p0, p1, p2, v0}, saveRemoteLockPassword(ILjava/lang/String;I)V

    .line 3307
    return-void
.end method

.method public saveRemoteLockPassword(ILjava/lang/String;I)V
    .registers 8
    .param p1, "whichlock"    # I
    .param p2, "password"    # Ljava/lang/String;
    .param p3, "userHandle"    # I

    .prologue
    .line 3311
    packed-switch p1, :pswitch_data_4a

    .line 3334
    :goto_3
    return-void

    .line 3315
    :pswitch_4
    :try_start_4
    invoke-direct {p0}, getLockSettings()Lcom/android/internal/widget/ILockSettings;

    move-result-object v1

    const/4 v2, 0x0

    invoke-interface {v1, p2, v2}, Lcom/android/internal/widget/ILockSettings;->setLockFMMPassword(Ljava/lang/String;I)V
    :try_end_c
    .catch Landroid/os/RemoteException; {:try_start_4 .. :try_end_c} :catch_d

    goto :goto_3

    .line 3316
    :catch_d
    move-exception v0

    .line 3318
    .local v0, "re":Landroid/os/RemoteException;
    const-string v1, "LockPatternUtils"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Unable to save lock FMM Password "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_3

    .line 3324
    .end local v0    # "re":Landroid/os/RemoteException;
    :pswitch_27
    :try_start_27
    invoke-direct {p0}, getLockSettings()Lcom/android/internal/widget/ILockSettings;

    move-result-object v1

    invoke-interface {v1, p2, p3}, Lcom/android/internal/widget/ILockSettings;->setLockCarrierPassword(Ljava/lang/String;I)V
    :try_end_2e
    .catch Landroid/os/RemoteException; {:try_start_27 .. :try_end_2e} :catch_2f

    goto :goto_3

    .line 3325
    :catch_2f
    move-exception v0

    .line 3327
    .restart local v0    # "re":Landroid/os/RemoteException;
    const-string v1, "LockPatternUtils"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Unable to save lock Carrier Password "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_3

    .line 3311
    nop

    :pswitch_data_4a
    .packed-switch 0x0
        :pswitch_4
        :pswitch_27
    .end packed-switch
.end method

.method public saveSignatureBackupPin(Ljava/lang/String;)V
    .registers 3
    .param p1, "password"    # Ljava/lang/String;

    .prologue
    .line 2321
    invoke-direct {p0}, getCurrentOrCallingUserId()I

    move-result v0

    invoke-virtual {p0, p1, v0}, saveSignatureBackupPin(Ljava/lang/String;I)V

    .line 2322
    return-void
.end method

.method public saveSignatureBackupPin(Ljava/lang/String;I)V
    .registers 8
    .param p1, "password"    # Ljava/lang/String;
    .param p2, "userHandle"    # I

    .prologue
    .line 2325
    invoke-virtual {p0, p1, p2}, passwordToHash(Ljava/lang/String;I)[B

    move-result-object v0

    .line 2327
    .local v0, "hash":[B
    :try_start_4
    invoke-direct {p0}, getLockSettings()Lcom/android/internal/widget/ILockSettings;

    move-result-object v2

    invoke-interface {v2, v0, p2}, Lcom/android/internal/widget/ILockSettings;->setSignatureBackupPin([BI)V
    :try_end_b
    .catch Landroid/os/RemoteException; {:try_start_4 .. :try_end_b} :catch_c

    .line 2331
    :goto_b
    return-void

    .line 2328
    :catch_c
    move-exception v1

    .line 2329
    .local v1, "re":Landroid/os/RemoteException;
    const-string v2, "LockPatternUtils"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Unable to save signature lock Backup PIN "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_b
.end method

.method public saveSignatureLockInfo([B)V
    .registers 6
    .param p1, "info"    # [B

    .prologue
    .line 2294
    :try_start_0
    invoke-direct {p0}, getLockSettings()Lcom/android/internal/widget/ILockSettings;

    move-result-object v1

    invoke-direct {p0}, getCurrentOrCallingUserId()I

    move-result v2

    invoke-interface {v1, p1, v2}, Lcom/android/internal/widget/ILockSettings;->setSignatureInfo([BI)V
    :try_end_b
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_b} :catch_c

    .line 2298
    :goto_b
    return-void

    .line 2295
    :catch_c
    move-exception v0

    .line 2296
    .local v0, "re":Landroid/os/RemoteException;
    const-string v1, "LockPatternUtils"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Couldn\'t save lock signature "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_b
.end method

.method public savedBackupPinExists()Z
    .registers 4

    .prologue
    .line 2541
    :try_start_0
    invoke-direct {p0}, getLockSettings()Lcom/android/internal/widget/ILockSettings;

    move-result-object v1

    invoke-direct {p0}, getCurrentOrCallingUserId()I

    move-result v2

    invoke-interface {v1, v2}, Lcom/android/internal/widget/ILockSettings;->haveBackupPin(I)Z
    :try_end_b
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_b} :catch_d

    move-result v1

    .line 2543
    :goto_c
    return v1

    .line 2542
    :catch_d
    move-exception v0

    .line 2543
    .local v0, "re":Landroid/os/RemoteException;
    const/4 v1, 0x0

    goto :goto_c
.end method

.method public savedFingerprintPasswordExists()Z
    .registers 2

    .prologue
    .line 2978
    invoke-direct {p0}, getCurrentOrCallingUserId()I

    move-result v0

    invoke-virtual {p0, v0}, savedFingerprintPasswordExists(I)Z

    move-result v0

    return v0
.end method

.method public savedFingerprintPasswordExists(I)Z
    .registers 4
    .param p1, "userId"    # I

    .prologue
    .line 2983
    :try_start_0
    invoke-direct {p0}, getLockSettings()Lcom/android/internal/widget/ILockSettings;

    move-result-object v1

    invoke-interface {v1, p1}, Lcom/android/internal/widget/ILockSettings;->haveFingerprintPassword(I)Z
    :try_end_7
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_7} :catch_9

    move-result v1

    .line 2985
    :goto_8
    return v1

    .line 2984
    :catch_9
    move-exception v0

    .line 2985
    .local v0, "re":Landroid/os/RemoteException;
    const/4 v1, 0x0

    goto :goto_8
.end method

.method public savedParentControlPasswordExists()Z
    .registers 4

    .prologue
    .line 2744
    :try_start_0
    invoke-direct {p0}, getLockSettings()Lcom/android/internal/widget/ILockSettings;

    move-result-object v1

    invoke-direct {p0}, getCurrentOrCallingUserId()I

    move-result v2

    invoke-interface {v1, v2}, Lcom/android/internal/widget/ILockSettings;->haveParentControlPassword(I)Z
    :try_end_b
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_b} :catch_d

    move-result v1

    .line 2746
    :goto_c
    return v1

    .line 2745
    :catch_d
    move-exception v0

    .line 2746
    .local v0, "re":Landroid/os/RemoteException;
    const/4 v1, 0x0

    goto :goto_c
.end method

.method public savedPasswordExists()Z
    .registers 4

    .prologue
    .line 735
    :try_start_0
    invoke-direct {p0}, getLockSettings()Lcom/android/internal/widget/ILockSettings;

    move-result-object v1

    invoke-direct {p0}, getCurrentOrCallingUserId()I

    move-result v2

    invoke-interface {v1, v2}, Lcom/android/internal/widget/ILockSettings;->havePassword(I)Z
    :try_end_b
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_b} :catch_d

    move-result v1

    .line 737
    :goto_c
    return v1

    .line 736
    :catch_d
    move-exception v0

    .line 737
    .local v0, "re":Landroid/os/RemoteException;
    const/4 v1, 0x0

    goto :goto_c
.end method

.method public savedPatternExists()Z
    .registers 4

    .prologue
    .line 723
    :try_start_0
    invoke-direct {p0}, getLockSettings()Lcom/android/internal/widget/ILockSettings;

    move-result-object v1

    invoke-direct {p0}, getCurrentOrCallingUserId()I

    move-result v2

    invoke-interface {v1, v2}, Lcom/android/internal/widget/ILockSettings;->havePattern(I)Z
    :try_end_b
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_b} :catch_d

    move-result v1

    .line 725
    :goto_c
    return v1

    .line 724
    :catch_d
    move-exception v0

    .line 725
    .local v0, "re":Landroid/os/RemoteException;
    const/4 v1, 0x0

    goto :goto_c
.end method

.method public savedPersonalModeBackupPinExists()Z
    .registers 4

    .prologue
    .line 2699
    invoke-direct {p0}, getCurrentOrCallingUserId()I

    move-result v1

    .line 2701
    .local v1, "userId":I
    :try_start_4
    invoke-direct {p0}, getLockSettings()Lcom/android/internal/widget/ILockSettings;

    move-result-object v2

    invoke-interface {v2, v1}, Lcom/android/internal/widget/ILockSettings;->havePersonalModeBackupPin(I)Z
    :try_end_b
    .catch Landroid/os/RemoteException; {:try_start_4 .. :try_end_b} :catch_d

    move-result v2

    .line 2703
    :goto_c
    return v2

    .line 2702
    :catch_d
    move-exception v0

    .line 2703
    .local v0, "re":Landroid/os/RemoteException;
    const/4 v2, 0x0

    goto :goto_c
.end method

.method public savedPersonalModeFingerPrintPasswordExists()Z
    .registers 4

    .prologue
    .line 2728
    invoke-direct {p0}, getCurrentOrCallingUserId()I

    move-result v1

    .line 2730
    .local v1, "userId":I
    :try_start_4
    invoke-direct {p0}, getLockSettings()Lcom/android/internal/widget/ILockSettings;

    move-result-object v2

    invoke-interface {v2, v1}, Lcom/android/internal/widget/ILockSettings;->havePersonalModeFingerprintPassword(I)Z
    :try_end_b
    .catch Landroid/os/RemoteException; {:try_start_4 .. :try_end_b} :catch_d

    move-result v2

    .line 2732
    :goto_c
    return v2

    .line 2731
    :catch_d
    move-exception v0

    .line 2732
    .local v0, "re":Landroid/os/RemoteException;
    const/4 v2, 0x0

    goto :goto_c
.end method

.method public savedPersonalModePasswordExists()Z
    .registers 4

    .prologue
    .line 2642
    invoke-direct {p0}, getCurrentOrCallingUserId()I

    move-result v1

    .line 2644
    .local v1, "userId":I
    :try_start_4
    invoke-direct {p0}, getLockSettings()Lcom/android/internal/widget/ILockSettings;

    move-result-object v2

    invoke-interface {v2, v1}, Lcom/android/internal/widget/ILockSettings;->havePersonalModePassword(I)Z
    :try_end_b
    .catch Landroid/os/RemoteException; {:try_start_4 .. :try_end_b} :catch_d

    move-result v2

    .line 2646
    :goto_c
    return v2

    .line 2645
    :catch_d
    move-exception v0

    .line 2646
    .local v0, "re":Landroid/os/RemoteException;
    const/4 v2, 0x0

    goto :goto_c
.end method

.method public savedPersonalModePatternExists()Z
    .registers 4

    .prologue
    .line 2669
    invoke-direct {p0}, getCurrentOrCallingUserId()I

    move-result v1

    .line 2671
    .local v1, "userId":I
    :try_start_4
    invoke-direct {p0}, getLockSettings()Lcom/android/internal/widget/ILockSettings;

    move-result-object v2

    invoke-interface {v2, v1}, Lcom/android/internal/widget/ILockSettings;->havePersonalModePattern(I)Z
    :try_end_b
    .catch Landroid/os/RemoteException; {:try_start_4 .. :try_end_b} :catch_d

    move-result v2

    .line 2673
    :goto_c
    return v2

    .line 2672
    :catch_d
    move-exception v0

    .line 2673
    .local v0, "re":Landroid/os/RemoteException;
    const/4 v2, 0x0

    goto :goto_c
.end method

.method public savedPersonalModePinExists()Z
    .registers 4

    .prologue
    .line 2613
    invoke-direct {p0}, getCurrentOrCallingUserId()I

    move-result v1

    .line 2615
    .local v1, "userId":I
    :try_start_4
    invoke-direct {p0}, getLockSettings()Lcom/android/internal/widget/ILockSettings;

    move-result-object v2

    invoke-interface {v2, v1}, Lcom/android/internal/widget/ILockSettings;->havePersonalModePin(I)Z
    :try_end_b
    .catch Landroid/os/RemoteException; {:try_start_4 .. :try_end_b} :catch_d

    move-result v2

    .line 2617
    :goto_c
    return v2

    .line 2616
    :catch_d
    move-exception v0

    .line 2617
    .local v0, "re":Landroid/os/RemoteException;
    const/4 v2, 0x0

    goto :goto_c
.end method

.method public savedSignatureExists()Z
    .registers 5

    .prologue
    const/4 v1, 0x0

    .line 2302
    :try_start_1
    invoke-direct {p0}, getLockSettings()Lcom/android/internal/widget/ILockSettings;

    move-result-object v2

    invoke-direct {p0}, getCurrentOrCallingUserId()I

    move-result v3

    invoke-interface {v2, v3}, Lcom/android/internal/widget/ILockSettings;->haveSignature(I)Z

    move-result v2

    if-eqz v2, :cond_1e

    invoke-direct {p0}, getLockSettings()Lcom/android/internal/widget/ILockSettings;

    move-result-object v2

    invoke-direct {p0}, getCurrentOrCallingUserId()I

    move-result v3

    invoke-interface {v2, v3}, Lcom/android/internal/widget/ILockSettings;->haveSignatureBackupPin(I)Z
    :try_end_1a
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1a} :catch_1f

    move-result v2

    if-eqz v2, :cond_1e

    const/4 v1, 0x1

    .line 2305
    :cond_1e
    :goto_1e
    return v1

    .line 2304
    :catch_1f
    move-exception v0

    .line 2305
    .local v0, "re":Landroid/os/RemoteException;
    goto :goto_1e
.end method

.method public setBiometricWeakLivelinessEnabled(Z)V
    .registers 10
    .param p1, "enabled"    # Z

    .prologue
    .line 1723
    const-string/jumbo v4, "lock_biometric_weak_flags"

    const-wide/16 v6, 0x0

    invoke-direct {p0, v4, v6, v7}, getLong(Ljava/lang/String;J)J

    move-result-wide v0

    .line 1725
    .local v0, "currentFlag":J
    if-eqz p1, :cond_16

    .line 1726
    const-wide/16 v4, 0x1

    or-long v2, v0, v4

    .line 1730
    .local v2, "newFlag":J
    :goto_f
    const-string/jumbo v4, "lock_biometric_weak_flags"

    invoke-direct {p0, v4, v2, v3}, setLong(Ljava/lang/String;J)V

    .line 1731
    return-void

    .line 1728
    .end local v2    # "newFlag":J
    :cond_16
    const-wide/16 v4, -0x2

    and-long v2, v0, v4

    .restart local v2    # "newFlag":J
    goto :goto_f
.end method

.method public setCACPasswordEnabled(Z)Z
    .registers 3
    .param p1, "status"    # Z

    .prologue
    .line 405
    const-string/jumbo v0, "lockscreen.smartcard_type"

    invoke-direct {p0, v0, p1}, setBoolean(Ljava/lang/String;Z)V

    .line 406
    const/4 v0, 0x1

    return v0
.end method

.method public setCarrierLockPlusEnabled(Ljava/lang/String;)V
    .registers 13
    .param p1, "mode"    # Ljava/lang/String;

    .prologue
    .line 3080
    const/4 v0, 0x0

    .line 3082
    .local v0, "bufW":Ljava/io/BufferedWriter;
    :try_start_1
    new-instance v6, Ljava/io/File;

    const-string v8, "/efs/sktdm_mem"

    invoke-direct {v6, v8}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 3084
    .local v6, "folder":Ljava/io/File;
    invoke-virtual {v6}, Ljava/io/File;->exists()Z

    move-result v8

    if-nez v8, :cond_3a

    .line 3085
    invoke-virtual {v6}, Ljava/io/File;->mkdirs()Z

    move-result v7

    .line 3087
    .local v7, "status":Z
    const/4 v8, 0x1

    const/4 v9, 0x0

    invoke-virtual {v6, v8, v9}, Ljava/io/File;->setReadable(ZZ)Z

    .line 3088
    const/4 v8, 0x1

    const/4 v9, 0x1

    invoke-virtual {v6, v8, v9}, Ljava/io/File;->setWritable(ZZ)Z

    .line 3089
    const/4 v8, 0x1

    const/4 v9, 0x0

    invoke-virtual {v6, v8, v9}, Ljava/io/File;->setExecutable(ZZ)Z

    .line 3090
    const-string v8, "LockPatternUtils"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v10, "make folder /efs/sms  directory creation status: "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v7}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3093
    .end local v7    # "status":Z
    :cond_3a
    new-instance v5, Ljava/io/File;

    const-string v8, "/efs/sktdm_mem/lawlockmsg.txt"

    invoke-direct {v5, v8}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 3094
    .local v5, "f":Ljava/io/File;
    invoke-virtual {v5}, Ljava/io/File;->exists()Z

    move-result v8

    if-nez v8, :cond_57

    .line 3095
    invoke-virtual {v5}, Ljava/io/File;->createNewFile()Z

    .line 3096
    const-string v8, "LockPatternUtils"

    const-string/jumbo v9, "make /efs/sms/sktcarrierlockmode"

    invoke-static {v8, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3097
    const/4 v8, 0x1

    const/4 v9, 0x0

    invoke-virtual {v5, v8, v9}, Ljava/io/File;->setReadable(ZZ)Z
    :try_end_57
    .catch Ljava/io/FileNotFoundException; {:try_start_1 .. :try_end_57} :catch_86
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_57} :catch_a0

    .line 3106
    .end local v5    # "f":Ljava/io/File;
    .end local v6    # "folder":Ljava/io/File;
    :cond_57
    :goto_57
    :try_start_57
    new-instance v1, Ljava/io/BufferedWriter;

    new-instance v8, Ljava/io/FileWriter;

    const-string v9, "/efs/sktdm_mem/lawlockmsg.txt"

    invoke-direct {v8, v9}, Ljava/io/FileWriter;-><init>(Ljava/lang/String;)V

    invoke-direct {v1, v8}, Ljava/io/BufferedWriter;-><init>(Ljava/io/Writer;)V
    :try_end_63
    .catch Ljava/io/FileNotFoundException; {:try_start_57 .. :try_end_63} :catch_ba
    .catch Ljava/io/IOException; {:try_start_57 .. :try_end_63} :catch_de

    .line 3107
    .end local v0    # "bufW":Ljava/io/BufferedWriter;
    .local v1, "bufW":Ljava/io/BufferedWriter;
    :try_start_63
    invoke-virtual {v1, p1}, Ljava/io/BufferedWriter;->write(Ljava/lang/String;)V

    .line 3108
    invoke-virtual {v1}, Ljava/io/BufferedWriter;->flush()V

    .line 3109
    const-string v8, "LockPatternUtils"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "bufW.write + "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3110
    invoke-virtual {v1}, Ljava/io/BufferedWriter;->close()V
    :try_end_84
    .catch Ljava/io/FileNotFoundException; {:try_start_63 .. :try_end_84} :catch_105
    .catch Ljava/io/IOException; {:try_start_63 .. :try_end_84} :catch_102

    move-object v0, v1

    .line 3130
    .end local v1    # "bufW":Ljava/io/BufferedWriter;
    .restart local v0    # "bufW":Ljava/io/BufferedWriter;
    :goto_85
    return-void

    .line 3099
    :catch_86
    move-exception v4

    .line 3100
    .local v4, "ex":Ljava/io/FileNotFoundException;
    const-string v8, "LockPatternUtils"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "FileNotFoundException : "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_57

    .line 3101
    .end local v4    # "ex":Ljava/io/FileNotFoundException;
    :catch_a0
    move-exception v2

    .line 3102
    .local v2, "e":Ljava/io/IOException;
    const-string v8, "LockPatternUtils"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "IOException : "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_57

    .line 3111
    .end local v2    # "e":Ljava/io/IOException;
    :catch_ba
    move-exception v4

    .line 3112
    .restart local v4    # "ex":Ljava/io/FileNotFoundException;
    :goto_bb
    if-eqz v0, :cond_c0

    .line 3114
    :try_start_bd
    invoke-virtual {v0}, Ljava/io/BufferedWriter;->close()V
    :try_end_c0
    .catch Ljava/io/IOException; {:try_start_bd .. :try_end_c0} :catch_d9

    .line 3119
    :cond_c0
    :goto_c0
    const-string v8, "LockPatternUtils"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "FileNotFoundException : "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_85

    .line 3115
    :catch_d9
    move-exception v3

    .line 3116
    .local v3, "e1":Ljava/io/IOException;
    invoke-virtual {v3}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_c0

    .line 3120
    .end local v3    # "e1":Ljava/io/IOException;
    .end local v4    # "ex":Ljava/io/FileNotFoundException;
    :catch_de
    move-exception v2

    .line 3121
    .restart local v2    # "e":Ljava/io/IOException;
    :goto_df
    if-eqz v0, :cond_e4

    .line 3123
    :try_start_e1
    invoke-virtual {v0}, Ljava/io/BufferedWriter;->close()V
    :try_end_e4
    .catch Ljava/io/IOException; {:try_start_e1 .. :try_end_e4} :catch_fd

    .line 3128
    :cond_e4
    :goto_e4
    const-string v8, "LockPatternUtils"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "IOException : "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_85

    .line 3124
    :catch_fd
    move-exception v3

    .line 3125
    .restart local v3    # "e1":Ljava/io/IOException;
    invoke-virtual {v3}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_e4

    .line 3120
    .end local v0    # "bufW":Ljava/io/BufferedWriter;
    .end local v2    # "e":Ljava/io/IOException;
    .end local v3    # "e1":Ljava/io/IOException;
    .restart local v1    # "bufW":Ljava/io/BufferedWriter;
    :catch_102
    move-exception v2

    move-object v0, v1

    .end local v1    # "bufW":Ljava/io/BufferedWriter;
    .restart local v0    # "bufW":Ljava/io/BufferedWriter;
    goto :goto_df

    .line 3111
    .end local v0    # "bufW":Ljava/io/BufferedWriter;
    .restart local v1    # "bufW":Ljava/io/BufferedWriter;
    :catch_105
    move-exception v4

    move-object v0, v1

    .end local v1    # "bufW":Ljava/io/BufferedWriter;
    .restart local v0    # "bufW":Ljava/io/BufferedWriter;
    goto :goto_bb
.end method

.method public setCarrierLockPlusOnOff(Ljava/lang/String;)V
    .registers 13
    .param p1, "mode"    # Ljava/lang/String;

    .prologue
    .line 3133
    const/4 v0, 0x0

    .line 3135
    .local v0, "bufW":Ljava/io/BufferedWriter;
    :try_start_1
    new-instance v6, Ljava/io/File;

    const-string v8, "/efs/sktdm_mem"

    invoke-direct {v6, v8}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 3137
    .local v6, "folder":Ljava/io/File;
    invoke-virtual {v6}, Ljava/io/File;->exists()Z

    move-result v8

    if-nez v8, :cond_3a

    .line 3138
    invoke-virtual {v6}, Ljava/io/File;->mkdirs()Z

    move-result v7

    .line 3140
    .local v7, "status":Z
    const/4 v8, 0x1

    const/4 v9, 0x0

    invoke-virtual {v6, v8, v9}, Ljava/io/File;->setReadable(ZZ)Z

    .line 3141
    const/4 v8, 0x1

    const/4 v9, 0x1

    invoke-virtual {v6, v8, v9}, Ljava/io/File;->setWritable(ZZ)Z

    .line 3142
    const/4 v8, 0x1

    const/4 v9, 0x0

    invoke-virtual {v6, v8, v9}, Ljava/io/File;->setExecutable(ZZ)Z

    .line 3143
    const-string v8, "LockPatternUtils"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v10, "make folder /efs/sms  directory creation status: "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v7}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3146
    .end local v7    # "status":Z
    :cond_3a
    new-instance v5, Ljava/io/File;

    const-string v8, "/efs/sktdm_mem/lawlock.txt"

    invoke-direct {v5, v8}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 3147
    .local v5, "f":Ljava/io/File;
    invoke-virtual {v5}, Ljava/io/File;->exists()Z

    move-result v8

    if-nez v8, :cond_57

    .line 3148
    invoke-virtual {v5}, Ljava/io/File;->createNewFile()Z

    .line 3149
    const-string v8, "LockPatternUtils"

    const-string/jumbo v9, "make /efs/sms/sktcarrierlockmode"

    invoke-static {v8, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3150
    const/4 v8, 0x1

    const/4 v9, 0x0

    invoke-virtual {v5, v8, v9}, Ljava/io/File;->setReadable(ZZ)Z
    :try_end_57
    .catch Ljava/io/FileNotFoundException; {:try_start_1 .. :try_end_57} :catch_86
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_57} :catch_a0

    .line 3159
    .end local v5    # "f":Ljava/io/File;
    .end local v6    # "folder":Ljava/io/File;
    :cond_57
    :goto_57
    :try_start_57
    new-instance v1, Ljava/io/BufferedWriter;

    new-instance v8, Ljava/io/FileWriter;

    const-string v9, "/efs/sktdm_mem/lawlock.txt"

    invoke-direct {v8, v9}, Ljava/io/FileWriter;-><init>(Ljava/lang/String;)V

    invoke-direct {v1, v8}, Ljava/io/BufferedWriter;-><init>(Ljava/io/Writer;)V
    :try_end_63
    .catch Ljava/io/FileNotFoundException; {:try_start_57 .. :try_end_63} :catch_ba
    .catch Ljava/io/IOException; {:try_start_57 .. :try_end_63} :catch_de

    .line 3160
    .end local v0    # "bufW":Ljava/io/BufferedWriter;
    .local v1, "bufW":Ljava/io/BufferedWriter;
    :try_start_63
    invoke-virtual {v1, p1}, Ljava/io/BufferedWriter;->write(Ljava/lang/String;)V

    .line 3161
    invoke-virtual {v1}, Ljava/io/BufferedWriter;->flush()V

    .line 3162
    const-string v8, "LockPatternUtils"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "bufW.write + "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3163
    invoke-virtual {v1}, Ljava/io/BufferedWriter;->close()V
    :try_end_84
    .catch Ljava/io/FileNotFoundException; {:try_start_63 .. :try_end_84} :catch_105
    .catch Ljava/io/IOException; {:try_start_63 .. :try_end_84} :catch_102

    move-object v0, v1

    .line 3183
    .end local v1    # "bufW":Ljava/io/BufferedWriter;
    .restart local v0    # "bufW":Ljava/io/BufferedWriter;
    :goto_85
    return-void

    .line 3152
    :catch_86
    move-exception v4

    .line 3153
    .local v4, "ex":Ljava/io/FileNotFoundException;
    const-string v8, "LockPatternUtils"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "FileNotFoundException : "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_57

    .line 3154
    .end local v4    # "ex":Ljava/io/FileNotFoundException;
    :catch_a0
    move-exception v2

    .line 3155
    .local v2, "e":Ljava/io/IOException;
    const-string v8, "LockPatternUtils"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "IOException : "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_57

    .line 3164
    .end local v2    # "e":Ljava/io/IOException;
    :catch_ba
    move-exception v4

    .line 3165
    .restart local v4    # "ex":Ljava/io/FileNotFoundException;
    :goto_bb
    if-eqz v0, :cond_c0

    .line 3167
    :try_start_bd
    invoke-virtual {v0}, Ljava/io/BufferedWriter;->close()V
    :try_end_c0
    .catch Ljava/io/IOException; {:try_start_bd .. :try_end_c0} :catch_d9

    .line 3172
    :cond_c0
    :goto_c0
    const-string v8, "LockPatternUtils"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "FileNotFoundException : "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_85

    .line 3168
    :catch_d9
    move-exception v3

    .line 3169
    .local v3, "e1":Ljava/io/IOException;
    invoke-virtual {v3}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_c0

    .line 3173
    .end local v3    # "e1":Ljava/io/IOException;
    .end local v4    # "ex":Ljava/io/FileNotFoundException;
    :catch_de
    move-exception v2

    .line 3174
    .restart local v2    # "e":Ljava/io/IOException;
    :goto_df
    if-eqz v0, :cond_e4

    .line 3176
    :try_start_e1
    invoke-virtual {v0}, Ljava/io/BufferedWriter;->close()V
    :try_end_e4
    .catch Ljava/io/IOException; {:try_start_e1 .. :try_end_e4} :catch_fd

    .line 3181
    :cond_e4
    :goto_e4
    const-string v8, "LockPatternUtils"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "IOException : "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_85

    .line 3177
    :catch_fd
    move-exception v3

    .line 3178
    .restart local v3    # "e1":Ljava/io/IOException;
    invoke-virtual {v3}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_e4

    .line 3173
    .end local v0    # "bufW":Ljava/io/BufferedWriter;
    .end local v2    # "e":Ljava/io/IOException;
    .end local v3    # "e1":Ljava/io/IOException;
    .restart local v1    # "bufW":Ljava/io/BufferedWriter;
    :catch_102
    move-exception v2

    move-object v0, v1

    .end local v1    # "bufW":Ljava/io/BufferedWriter;
    .restart local v0    # "bufW":Ljava/io/BufferedWriter;
    goto :goto_df

    .line 3164
    .end local v0    # "bufW":Ljava/io/BufferedWriter;
    .restart local v1    # "bufW":Ljava/io/BufferedWriter;
    :catch_105
    move-exception v4

    move-object v0, v1

    .end local v1    # "bufW":Ljava/io/BufferedWriter;
    .restart local v0    # "bufW":Ljava/io/BufferedWriter;
    goto :goto_bb
.end method

.method public setCarrierLockoutAttemptDeadline()J
    .registers 7

    .prologue
    .line 3290
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v2

    const-wide/32 v4, 0x927c0

    add-long v0, v2, v4

    .line 3291
    .local v0, "deadline":J
    const-string/jumbo v2, "sktlockscreen.lockoutdeadline"

    invoke-direct {p0, v2, v0, v1}, setLong(Ljava/lang/String;J)V

    .line 3292
    return-wide v0
.end method

.method public setContainerPasswordState(Ljava/lang/String;I)V
    .registers 14
    .param p1, "password"    # Ljava/lang/String;
    .param p2, "containerId"    # I

    .prologue
    .line 2799
    invoke-virtual {p0}, getDevicePolicyManager()Landroid/app/admin/DevicePolicyManager;

    move-result-object v0

    .line 2800
    .local v0, "dpm":Landroid/app/admin/DevicePolicyManager;
    const/4 v2, 0x0

    .line 2801
    .local v2, "letters":I
    const/4 v3, 0x0

    .line 2802
    .local v3, "uppercase":I
    const/4 v4, 0x0

    .line 2803
    .local v4, "lowercase":I
    const/4 v5, 0x0

    .line 2804
    .local v5, "numbers":I
    const/4 v6, 0x0

    .line 2805
    .local v6, "symbols":I
    const/4 v7, 0x0

    .line 2807
    .local v7, "nonletter":I
    const/4 v10, 0x0

    .local v10, "i":I
    :goto_b
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v1

    if-ge v10, v1, :cond_43

    .line 2808
    invoke-virtual {p1, v10}, Ljava/lang/String;->charAt(I)C

    move-result v9

    .line 2809
    .local v9, "c":C
    const/16 v1, 0x41

    if-lt v9, v1, :cond_24

    const/16 v1, 0x5a

    if-gt v9, v1, :cond_24

    .line 2810
    add-int/lit8 v2, v2, 0x1

    .line 2811
    add-int/lit8 v3, v3, 0x1

    .line 2807
    :goto_21
    add-int/lit8 v10, v10, 0x1

    goto :goto_b

    .line 2812
    :cond_24
    const/16 v1, 0x61

    if-lt v9, v1, :cond_31

    const/16 v1, 0x7a

    if-gt v9, v1, :cond_31

    .line 2813
    add-int/lit8 v2, v2, 0x1

    .line 2814
    add-int/lit8 v4, v4, 0x1

    goto :goto_21

    .line 2815
    :cond_31
    const/16 v1, 0x30

    if-lt v9, v1, :cond_3e

    const/16 v1, 0x39

    if-gt v9, v1, :cond_3e

    .line 2816
    add-int/lit8 v5, v5, 0x1

    .line 2817
    add-int/lit8 v7, v7, 0x1

    goto :goto_21

    .line 2819
    :cond_3e
    add-int/lit8 v6, v6, 0x1

    .line 2820
    add-int/lit8 v7, v7, 0x1

    goto :goto_21

    .line 2823
    .end local v9    # "c":C
    :cond_43
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v1

    move v8, p2

    invoke-virtual/range {v0 .. v8}, Landroid/app/admin/DevicePolicyManager;->setAlternativePasswordState(IIIIIIII)V

    .line 2825
    invoke-virtual {p0}, getActivePasswordQuality()I

    move-result v1

    const v8, 0x61000

    if-ne v1, v8, :cond_57

    .line 2826
    invoke-virtual {v0, p2}, Landroid/app/admin/DevicePolicyManager;->copyAlternativeToActivePasswordState(I)V

    .line 2828
    :cond_57
    return-void
.end method

.method public setCredentialRequiredToDecrypt(Z)V
    .registers 5
    .param p1, "required"    # Z

    .prologue
    .line 2503
    invoke-virtual {p0}, getCurrentUser()I

    move-result v0

    if-eqz v0, :cond_e

    .line 2504
    const-string v0, "LockPatternUtils"

    const-string v1, "Only device owner may call setCredentialRequiredForDecrypt()"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 2509
    :goto_d
    return-void

    .line 2507
    :cond_e
    iget-object v0, p0, mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string/jumbo v2, "require_password_to_decrypt"

    if-eqz p1, :cond_1e

    const/4 v0, 0x1

    :goto_1a
    invoke-static {v1, v2, v0}, Landroid/provider/Settings$Global;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    goto :goto_d

    :cond_1e
    const/4 v0, 0x0

    goto :goto_1a
.end method

.method public setCurrentUser(I)V
    .registers 2
    .param p1, "userId"    # I

    .prologue
    .line 591
    sput p1, sCurrentUserId:I

    .line 592
    return-void
.end method

.method public setEnabledTrustAgents(Ljava/util/Collection;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection",
            "<",
            "Landroid/content/ComponentName;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 2451
    .local p1, "activeTrustAgents":Ljava/util/Collection;, "Ljava/util/Collection<Landroid/content/ComponentName;>;"
    invoke-direct {p0}, getCurrentOrCallingUserId()I

    move-result v0

    invoke-virtual {p0, p1, v0}, setEnabledTrustAgents(Ljava/util/Collection;I)V

    .line 2452
    return-void
.end method

.method public setEnabledTrustAgents(Ljava/util/Collection;I)V
    .registers 8
    .param p2, "userId"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection",
            "<",
            "Landroid/content/ComponentName;",
            ">;I)V"
        }
    .end annotation

    .prologue
    .line 2459
    .local p1, "activeTrustAgents":Ljava/util/Collection;, "Ljava/util/Collection<Landroid/content/ComponentName;>;"
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 2460
    .local v2, "sb":Ljava/lang/StringBuilder;
    invoke-interface {p1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :goto_9
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_28

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/ComponentName;

    .line 2461
    .local v0, "cn":Landroid/content/ComponentName;
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->length()I

    move-result v3

    if-lez v3, :cond_20

    .line 2462
    const/16 v3, 0x2c

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 2464
    :cond_20
    invoke-virtual {v0}, Landroid/content/ComponentName;->flattenToShortString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_9

    .line 2466
    .end local v0    # "cn":Landroid/content/ComponentName;
    :cond_28
    const-string/jumbo v3, "lockscreen.enabledtrustagents"

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {p0, v3, v4, p2}, setString(Ljava/lang/String;Ljava/lang/String;I)V

    .line 2467
    invoke-direct {p0}, getTrustManager()Landroid/app/trust/TrustManager;

    move-result-object v3

    invoke-direct {p0}, getCurrentOrCallingUserId()I

    move-result v4

    invoke-virtual {v3, v4}, Landroid/app/trust/TrustManager;->reportEnabledTrustAgentsChanged(I)V

    .line 2468
    return-void
.end method

.method public setLockAsSignature(Z)V
    .registers 12
    .param p1, "showFinishScreen"    # Z

    .prologue
    const/4 v2, 0x0

    .line 2310
    invoke-virtual {p0}, getDevicePolicyManager()Landroid/app/admin/DevicePolicyManager;

    move-result-object v0

    .line 2311
    .local v0, "dpm":Landroid/app/admin/DevicePolicyManager;
    const-string/jumbo v1, "lockscreen.password_type"

    const-wide/32 v4, 0x9000

    invoke-direct {p0, v1, v4, v5}, setLong(Ljava/lang/String;J)V

    .line 2312
    const v1, 0x9000

    invoke-direct {p0}, getCurrentOrCallingUserId()I

    move-result v9

    move v3, v2

    move v4, v2

    move v5, v2

    move v6, v2

    move v7, v2

    move v8, v2

    invoke-virtual/range {v0 .. v9}, Landroid/app/admin/DevicePolicyManager;->setActivePasswordState(IIIIIIIII)V

    .line 2315
    if-eqz p1, :cond_23

    .line 2316
    invoke-direct {p0}, finishSignature()V

    .line 2318
    :cond_23
    return-void
.end method

.method public setLockFingerprintEnabled(Z)V
    .registers 4
    .param p1, "enabled"    # Z

    .prologue
    .line 3000
    const-string/jumbo v0, "lock_fingerprint_autolock"

    invoke-direct {p0}, getCurrentOrCallingUserId()I

    move-result v1

    invoke-direct {p0, v0, p1, v1}, setBoolean(Ljava/lang/String;ZI)V

    .line 3001
    return-void
.end method

.method public setLockFingerprintEnabled(ZI)V
    .registers 4
    .param p1, "enabled"    # Z
    .param p2, "userId"    # I

    .prologue
    .line 3004
    const-string/jumbo v0, "lock_fingerprint_autolock"

    invoke-direct {p0, v0, p1, p2}, setBoolean(Ljava/lang/String;ZI)V

    .line 3005
    return-void
.end method

.method public setLockPatternEnabled(Z)V
    .registers 3
    .param p1, "enabled"    # Z

    .prologue
    .line 1767
    const-string/jumbo v0, "lock_pattern_autolock"

    invoke-direct {p0, v0, p1}, setBoolean(Ljava/lang/String;Z)V

    .line 1768
    return-void
.end method

.method public setLockPatternEnabled(ZI)V
    .registers 4
    .param p1, "enabled"    # Z
    .param p2, "userHandle"    # I

    .prologue
    .line 1774
    const-string/jumbo v0, "lock_pattern_autolock"

    invoke-direct {p0, v0, p1, p2}, setBoolean(Ljava/lang/String;ZI)V

    .line 1775
    return-void
.end method

.method public setLockScreenDisabled(Z)V
    .registers 5
    .param p1, "disable"    # Z

    .prologue
    .line 884
    const-string/jumbo v2, "lockscreen.disabled"

    if-eqz p1, :cond_b

    const-wide/16 v0, 0x1

    :goto_7
    invoke-direct {p0, v2, v0, v1}, setLong(Ljava/lang/String;J)V

    .line 885
    return-void

    .line 884
    :cond_b
    const-wide/16 v0, 0x0

    goto :goto_7
.end method

.method public setLockoutAttemptDeadline()J
    .registers 7

    .prologue
    .line 1882
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v2

    const-wide/16 v4, 0x7530

    add-long v0, v2, v4

    .line 1883
    .local v0, "deadline":J
    const-string/jumbo v2, "lockscreen.lockoutattemptdeadline"

    invoke-direct {p0, v2, v0, v1}, setLong(Ljava/lang/String;J)V

    .line 1884
    return-wide v0
.end method

.method public setOwnerInfo(Ljava/lang/String;I)V
    .registers 4
    .param p1, "info"    # Ljava/lang/String;
    .param p2, "userId"    # I

    .prologue
    .line 1058
    const-string/jumbo v0, "lock_screen_owner_info"

    invoke-direct {p0, v0, p1, p2}, setString(Ljava/lang/String;Ljava/lang/String;I)V

    .line 1059
    invoke-direct {p0}, updateCryptoUserInfo()V

    .line 1060
    return-void
.end method

.method public setOwnerInfoEnabled(Z)V
    .registers 3
    .param p1, "enabled"    # Z

    .prologue
    .line 1063
    const-string/jumbo v0, "lock_screen_owner_info_enabled"

    invoke-direct {p0, v0, p1}, setBoolean(Ljava/lang/String;Z)V

    .line 1064
    invoke-direct {p0}, updateCryptoUserInfo()V

    .line 1065
    return-void
.end method

.method public setPermanentlyLocked(Z)V
    .registers 3
    .param p1, "locked"    # Z

    .prologue
    .line 1923
    const-string/jumbo v0, "lockscreen.lockedoutpermanently"

    invoke-direct {p0, v0, p1}, setBoolean(Ljava/lang/String;Z)V

    .line 1924
    return-void
.end method

.method public setPowerButtonInstantlyLocks(Z)V
    .registers 3
    .param p1, "enabled"    # Z

    .prologue
    .line 2348
    const-string/jumbo v0, "lockscreen.power_button_instantly_locks"

    invoke-direct {p0, v0, p1}, setBoolean(Ljava/lang/String;Z)V

    .line 2349
    return-void
.end method

.method public setPrevLockFingerprintEnabled(ZI)V
    .registers 4
    .param p1, "enabled"    # Z
    .param p2, "userId"    # I

    .prologue
    .line 3012
    const-string/jumbo v0, "prev_lock_type"

    invoke-direct {p0, v0, p1, p2}, setBoolean(Ljava/lang/String;ZI)V

    .line 3013
    return-void
.end method

.method public setRecoveryScreenLocked(Z)V
    .registers 3
    .param p1, "locked"    # Z

    .prologue
    .line 2568
    const-string/jumbo v0, "lockscreen.lockedoutRecovery"

    invoke-direct {p0, v0, p1}, setBoolean(Ljava/lang/String;Z)V

    .line 2569
    return-void
.end method

.method public setSmartUnlockEnabled(Z)V
    .registers 3
    .param p1, "enabled"    # Z

    .prologue
    .line 1851
    const-string/jumbo v0, "lock_smart_unlock_enabled"

    invoke-direct {p0, v0, p1}, setBoolean(Ljava/lang/String;Z)V

    .line 1852
    return-void
.end method

.method public setSwipeSmartLock(Z)V
    .registers 2
    .param p1, "enabled"    # Z

    .prologue
    .line 3368
    sput-boolean p1, mSwipeSmartLock:Z

    .line 3369
    return-void
.end method

.method public setVisiblePatternEnabled(Z)V
    .registers 8
    .param p1, "enabled"    # Z

    .prologue
    .line 1806
    invoke-virtual {p0}, isVisiblePatternDisabledByMDM()Z

    move-result v4

    if-eqz v4, :cond_9

    if-eqz p1, :cond_9

    .line 1830
    :cond_8
    :goto_8
    return-void

    .line 1810
    :cond_9
    const-string/jumbo v4, "lock_pattern_visible_pattern"

    invoke-direct {p0, v4, p1}, setBoolean(Ljava/lang/String;Z)V

    .line 1813
    invoke-direct {p0}, getCurrentOrCallingUserId()I

    move-result v3

    .line 1814
    .local v3, "userId":I
    if-nez v3, :cond_8

    .line 1818
    const-string/jumbo v4, "mount"

    invoke-static {v4}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v2

    .line 1819
    .local v2, "service":Landroid/os/IBinder;
    if-nez v2, :cond_26

    .line 1820
    const-string v4, "LockPatternUtils"

    const-string v5, "Could not find the mount service to update the user info"

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_8

    .line 1824
    :cond_26
    invoke-static {v2}, Landroid/os/storage/IMountService$Stub;->asInterface(Landroid/os/IBinder;)Landroid/os/storage/IMountService;

    move-result-object v1

    .line 1826
    .local v1, "mountService":Landroid/os/storage/IMountService;
    :try_start_2a
    const-string v5, "PatternVisible"

    if-eqz p1, :cond_3d

    const-string v4, "1"

    :goto_30
    invoke-interface {v1, v5, v4}, Landroid/os/storage/IMountService;->setField(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_33
    .catch Landroid/os/RemoteException; {:try_start_2a .. :try_end_33} :catch_34

    goto :goto_8

    .line 1827
    :catch_34
    move-exception v0

    .line 1828
    .local v0, "e":Landroid/os/RemoteException;
    const-string v4, "LockPatternUtils"

    const-string v5, "Error changing pattern visible state"

    invoke-static {v4, v5, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_8

    .line 1826
    .end local v0    # "e":Landroid/os/RemoteException;
    :cond_3d
    :try_start_3d
    const-string v4, "0"
    :try_end_3f
    .catch Landroid/os/RemoteException; {:try_start_3d .. :try_end_3f} :catch_34

    goto :goto_30
.end method

.method public setVisibleSignatureEnabled(Z)V
    .registers 3
    .param p1, "enabled"    # Z

    .prologue
    .line 1836
    const-string/jumbo v0, "lock_signature_visible_pattern"

    invoke-direct {p0, v0, p1}, setBoolean(Ljava/lang/String;Z)V

    .line 1837
    return-void
.end method

.method public setWidgetsEnabled(Z)V
    .registers 3
    .param p1, "enabled"    # Z

    .prologue
    .line 2389
    invoke-direct {p0}, getCurrentOrCallingUserId()I

    move-result v0

    invoke-virtual {p0, p1, v0}, setWidgetsEnabled(ZI)V

    .line 2390
    return-void
.end method

.method public setWidgetsEnabled(ZI)V
    .registers 4
    .param p1, "enabled"    # Z
    .param p2, "userId"    # I

    .prologue
    .line 2393
    const-string/jumbo v0, "lockscreen.widgets_enabled"

    invoke-direct {p0, v0, p1, p2}, setBoolean(Ljava/lang/String;ZI)V

    .line 2394
    return-void
.end method

.method public showCardNotRegisteredDialog()V
    .registers 4

    .prologue
    .line 481
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.sec.smartcard.pinservice.CARD_NOT_REGISTERED_ERROR_DIALOG"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 482
    .local v0, "intent":Landroid/content/Intent;
    const/high16 v1, 0x10000000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 483
    iget-object v1, p0, mContext:Landroid/content/Context;

    invoke-virtual {v1, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 484
    const-string v1, "LockPatternUtils"

    const-string/jumbo v2, "showCardNotRegisteredDialog called "

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 485
    return-void
.end method

.method public updateEmergencyCallButtonState(Landroid/widget/Button;ZZ)V
    .registers 9
    .param p1, "button"    # Landroid/widget/Button;
    .param p2, "shown"    # Z
    .param p3, "showIcon"    # Z

    .prologue
    const/4 v3, 0x0

    .line 2208
    invoke-virtual {p0}, isEmergencyCallCapable()Z

    move-result v4

    if-eqz v4, :cond_21

    if-eqz p2, :cond_21

    .line 2209
    invoke-virtual {p1, v3}, Landroid/widget/Button;->setVisibility(I)V

    .line 2216
    invoke-virtual {p0}, isInCall()Z

    move-result v4

    if-eqz v4, :cond_29

    .line 2218
    const v2, 0x1040382

    .line 2219
    .local v2, "textId":I
    if-eqz p3, :cond_27

    const v1, 0x1080084

    .line 2220
    .local v1, "phoneCallIcon":I
    :goto_1a
    invoke-virtual {p1, v1, v3, v3, v3}, Landroid/widget/Button;->setCompoundDrawablesWithIntrinsicBounds(IIII)V

    .line 2226
    .end local v1    # "phoneCallIcon":I
    :goto_1d
    invoke-virtual {p1, v2}, Landroid/widget/Button;->setText(I)V

    .line 2227
    .end local v2    # "textId":I
    :goto_20
    return-void

    .line 2211
    :cond_21
    const/16 v3, 0x8

    invoke-virtual {p1, v3}, Landroid/widget/Button;->setVisibility(I)V

    goto :goto_20

    .restart local v2    # "textId":I
    :cond_27
    move v1, v3

    .line 2219
    goto :goto_1a

    .line 2222
    .end local v2    # "textId":I
    :cond_29
    const v2, 0x1040381

    .line 2223
    .restart local v2    # "textId":I
    if-eqz p3, :cond_35

    const v0, 0x108045a

    .line 2224
    .local v0, "emergencyIcon":I
    :goto_31
    invoke-virtual {p1, v0, v3, v3, v3}, Landroid/widget/Button;->setCompoundDrawablesWithIntrinsicBounds(IIII)V

    goto :goto_1d

    .end local v0    # "emergencyIcon":I
    :cond_35
    move v0, v3

    .line 2223
    goto :goto_31
.end method

.method public usingBiometricWeak()Z
    .registers 5

    .prologue
    .line 1450
    const-string/jumbo v1, "lockscreen.password_type"

    const-wide/16 v2, 0x0

    invoke-direct {p0, v1, v2, v3}, getLong(Ljava/lang/String;J)J

    move-result-wide v2

    long-to-int v0, v2

    .line 1452
    .local v0, "quality":I
    const v1, 0x8000

    if-ne v0, v1, :cond_11

    const/4 v1, 0x1

    :goto_10
    return v1

    :cond_11
    const/4 v1, 0x0

    goto :goto_10
.end method

.method public usingSignatureUnlock()Z
    .registers 5

    .prologue
    .line 1459
    const-string/jumbo v1, "lockscreen.password_type"

    const-wide/32 v2, 0x10000

    invoke-direct {p0, v1, v2, v3}, getLong(Ljava/lang/String;J)J

    move-result-wide v2

    long-to-int v0, v2

    .line 1461
    .local v0, "quality":I
    const v1, 0x9000

    if-ne v0, v1, :cond_12

    const/4 v1, 0x1

    :goto_11
    return v1

    :cond_12
    const/4 v1, 0x0

    goto :goto_11
.end method

.method public usingSmartUnlock()Z
    .registers 5

    .prologue
    .line 1858
    const-string/jumbo v1, "lockscreen.password_type"

    const-wide/32 v2, 0x10000

    invoke-direct {p0, v1, v2, v3}, getLong(Ljava/lang/String;J)J

    move-result-wide v2

    long-to-int v0, v2

    .line 1860
    .local v0, "quality":I
    const/high16 v1, 0x90000

    if-eq v0, v1, :cond_14

    const v1, 0x9100

    if-ne v0, v1, :cond_16

    .line 1862
    :cond_14
    const/4 v1, 0x1

    .line 1864
    :goto_15
    return v1

    :cond_16
    const/4 v1, 0x0

    goto :goto_15
.end method

.method public writeFallbackAppWidgetId(I)V
    .registers 5
    .param p1, "appWidgetId"    # I

    .prologue
    .line 2039
    iget-object v0, p0, mContentResolver:Landroid/content/ContentResolver;

    const-string/jumbo v1, "lock_screen_fallback_appwidget_id"

    const/4 v2, -0x2

    invoke-static {v0, v1, p1, v2}, Landroid/provider/Settings$Secure;->putIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)Z

    .line 2043
    return-void
.end method
