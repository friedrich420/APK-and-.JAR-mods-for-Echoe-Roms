.class public Lcom/android/settings/DeviceInfoSettings;
.super Lcom/android/settings/SettingsPreferenceFragment;
.source "DeviceInfoSettings.java"

# interfaces
.implements Lcom/android/settings/DeviceNameSettings$ConfirmationDialogFragmentListener;
.implements Lcom/android/settings/search/Indexable;


# static fields
.field public static final SEARCH_INDEX_DATA_PROVIDER:Lcom/android/settings/search/Indexable$SearchIndexProvider;

.field private static mBoundRunnable:Ljava/lang/Runnable;

.field private static mIsSMServiceBound:Z

.field private static mSecurityManager:Lcom/sec/android/service/sm/aidl/ISecurityManager;

.field private static securitySWVersion:Ljava/lang/String;


# instance fields
.field mDevHitCountdown:I

.field mDevHitToast:Landroid/widget/Toast;

.field private mDeviceName:Landroid/preference/Preference;

.field private mDeviceNameFragment:Lcom/android/settings/DeviceNameSettings;

.field private mDiagnosticInfo:Landroid/preference/CheckBoxPreference;

.field mHits:[J

.field private mUserManager:Landroid/os/UserManager;

.field private srvConn:Landroid/content/ServiceConnection;

.field variantName:[[Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 1364
    sput-object v1, Lcom/android/settings/DeviceInfoSettings;->mSecurityManager:Lcom/sec/android/service/sm/aidl/ISecurityManager;

    .line 1365
    const/4 v0, 0x0

    sput-boolean v0, Lcom/android/settings/DeviceInfoSettings;->mIsSMServiceBound:Z

    .line 1366
    sput-object v1, Lcom/android/settings/DeviceInfoSettings;->mBoundRunnable:Ljava/lang/Runnable;

    .line 1367
    const-string v0, ""

    sput-object v0, Lcom/android/settings/DeviceInfoSettings;->securitySWVersion:Ljava/lang/String;

    .line 1670
    new-instance v0, Lcom/android/settings/DeviceInfoSettings$5;

    invoke-direct {v0}, Lcom/android/settings/DeviceInfoSettings$5;-><init>()V

    sput-object v0, Lcom/android/settings/DeviceInfoSettings;->SEARCH_INDEX_DATA_PROVIDER:Lcom/android/settings/search/Indexable$SearchIndexProvider;

    return-void
.end method

.method public constructor <init>()V
    .locals 7

    .prologue
    const/4 v3, 0x3

    const/4 v6, 0x2

    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 116
    invoke-direct {p0}, Lcom/android/settings/SettingsPreferenceFragment;-><init>()V

    .line 183
    new-array v0, v3, [J

    iput-object v0, p0, Lcom/android/settings/DeviceInfoSettings;->mHits:[J

    .line 194
    const/16 v0, 0xf

    new-array v0, v0, [[Ljava/lang/String;

    new-array v1, v6, [Ljava/lang/String;

    const-string v2, "ATL"

    aput-object v2, v1, v4

    const-string v2, "Spain"

    aput-object v2, v1, v5

    aput-object v1, v0, v4

    new-array v1, v6, [Ljava/lang/String;

    const-string v2, "VDI"

    aput-object v2, v1, v4

    const-string v2, "Ireland"

    aput-object v2, v1, v5

    aput-object v1, v0, v5

    new-array v1, v6, [Ljava/lang/String;

    const-string v2, "VDE"

    aput-object v2, v1, v4

    const-string v2, "Ireland(Prepaid)"

    aput-object v2, v1, v5

    aput-object v1, v0, v6

    new-array v1, v6, [Ljava/lang/String;

    const-string v2, "CNX"

    aput-object v2, v1, v4

    const-string v2, "Romania"

    aput-object v2, v1, v5

    aput-object v1, v0, v3

    const/4 v1, 0x4

    new-array v2, v6, [Ljava/lang/String;

    const-string v3, "VD2"

    aput-object v3, v2, v4

    const-string v3, "Germany"

    aput-object v3, v2, v5

    aput-object v2, v0, v1

    const/4 v1, 0x5

    new-array v2, v6, [Ljava/lang/String;

    const-string v3, "VDR"

    aput-object v3, v2, v4

    const-string v3, "Germany(Prepaid)"

    aput-object v3, v2, v5

    aput-object v2, v0, v1

    const/4 v1, 0x6

    new-array v2, v6, [Ljava/lang/String;

    const-string v3, "VDC"

    aput-object v3, v2, v4

    const-string v3, "Czech Republic"

    aput-object v3, v2, v5

    aput-object v2, v0, v1

    const/4 v1, 0x7

    new-array v2, v6, [Ljava/lang/String;

    const-string v3, "VOD"

    aput-object v3, v2, v4

    const-string v3, "UK"

    aput-object v3, v2, v5

    aput-object v2, v0, v1

    const/16 v1, 0x8

    new-array v2, v6, [Ljava/lang/String;

    const-string v3, "VOP"

    aput-object v3, v2, v4

    const-string v3, "UK(Prepaid)"

    aput-object v3, v2, v5

    aput-object v2, v0, v1

    const/16 v1, 0x9

    new-array v2, v6, [Ljava/lang/String;

    const-string v3, "TCL"

    aput-object v3, v2, v4

    const-string v3, "Portugal"

    aput-object v3, v2, v5

    aput-object v2, v0, v1

    const/16 v1, 0xa

    new-array v2, v6, [Ljava/lang/String;

    const-string v3, "VDH"

    aput-object v3, v2, v4

    const-string v3, "Hungary"

    aput-object v3, v2, v5

    aput-object v2, v0, v1

    const/16 v1, 0xb

    new-array v2, v6, [Ljava/lang/String;

    const-string v3, "VDF"

    aput-object v3, v2, v4

    const-string v3, "The Netherlands"

    aput-object v3, v2, v5

    aput-object v2, v0, v1

    const/16 v1, 0xc

    new-array v2, v6, [Ljava/lang/String;

    const-string v3, "VDP"

    aput-object v3, v2, v4

    const-string v3, "The Netherlands(Prepaid)"

    aput-object v3, v2, v5

    aput-object v2, v0, v1

    const/16 v1, 0xd

    new-array v2, v6, [Ljava/lang/String;

    const-string v3, "VGR"

    aput-object v3, v2, v4

    const-string v3, "Greece"

    aput-object v3, v2, v5

    aput-object v2, v0, v1

    const/16 v1, 0xe

    new-array v2, v6, [Ljava/lang/String;

    const-string v3, "OMN"

    aput-object v3, v2, v4

    const-string v3, "ITALY"

    aput-object v3, v2, v5

    aput-object v2, v0, v1

    iput-object v0, p0, Lcom/android/settings/DeviceInfoSettings;->variantName:[[Ljava/lang/String;

    .line 1473
    new-instance v0, Lcom/android/settings/DeviceInfoSettings$4;

    invoke-direct {v0, p0}, Lcom/android/settings/DeviceInfoSettings$4;-><init>(Lcom/android/settings/DeviceInfoSettings;)V

    iput-object v0, p0, Lcom/android/settings/DeviceInfoSettings;->srvConn:Landroid/content/ServiceConnection;

    return-void
.end method

.method private _startBoundIfPossible()V
    .locals 1

    .prologue
    .line 1467
    sget-object v0, Lcom/android/settings/DeviceInfoSettings;->mBoundRunnable:Ljava/lang/Runnable;

    if-eqz v0, :cond_0

    sget-object v0, Lcom/android/settings/DeviceInfoSettings;->mSecurityManager:Lcom/sec/android/service/sm/aidl/ISecurityManager;

    if-eqz v0, :cond_0

    .line 1468
    sget-object v0, Lcom/android/settings/DeviceInfoSettings;->mBoundRunnable:Ljava/lang/Runnable;

    invoke-interface {v0}, Ljava/lang/Runnable;->run()V

    .line 1469
    const/4 v0, 0x0

    sput-object v0, Lcom/android/settings/DeviceInfoSettings;->mBoundRunnable:Ljava/lang/Runnable;

    .line 1471
    :cond_0
    return-void
.end method

.method static synthetic access$000(Lcom/android/settings/DeviceInfoSettings;)Landroid/preference/CheckBoxPreference;
    .locals 1
    .param p0, "x0"    # Lcom/android/settings/DeviceInfoSettings;

    .prologue
    .line 116
    iget-object v0, p0, Lcom/android/settings/DeviceInfoSettings;->mDiagnosticInfo:Landroid/preference/CheckBoxPreference;

    return-object v0
.end method

.method static synthetic access$100()Z
    .locals 1

    .prologue
    .line 116
    sget-boolean v0, Lcom/android/settings/DeviceInfoSettings;->mIsSMServiceBound:Z

    return v0
.end method

.method static synthetic access$200()Lcom/sec/android/service/sm/aidl/ISecurityManager;
    .locals 1

    .prologue
    .line 116
    sget-object v0, Lcom/android/settings/DeviceInfoSettings;->mSecurityManager:Lcom/sec/android/service/sm/aidl/ISecurityManager;

    return-object v0
.end method

.method static synthetic access$202(Lcom/sec/android/service/sm/aidl/ISecurityManager;)Lcom/sec/android/service/sm/aidl/ISecurityManager;
    .locals 0
    .param p0, "x0"    # Lcom/sec/android/service/sm/aidl/ISecurityManager;

    .prologue
    .line 116
    sput-object p0, Lcom/android/settings/DeviceInfoSettings;->mSecurityManager:Lcom/sec/android/service/sm/aidl/ISecurityManager;

    return-object p0
.end method

.method static synthetic access$300(Lcom/android/settings/DeviceInfoSettings;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/settings/DeviceInfoSettings;

    .prologue
    .line 116
    invoke-direct {p0}, Lcom/android/settings/DeviceInfoSettings;->showSecuritySWVersion()V

    return-void
.end method

.method private applySoftwareUpdatePolicy(Ljava/lang/String;)V
    .locals 10
    .param p1, "key"    # Ljava/lang/String;

    .prologue
    const/4 v9, -0x1

    .line 1345
    const/4 v5, 0x1

    new-array v4, v5, [Ljava/lang/String;

    const/4 v5, 0x0

    const-string v6, "false"

    aput-object v6, v4, v5

    .line 1346
    .local v4, "selectionArgs":[Ljava/lang/String;
    invoke-virtual {p0}, Lcom/android/settings/DeviceInfoSettings;->getActivity()Landroid/app/Activity;

    move-result-object v5

    const-string v6, "content://com.sec.knox.provider/RestrictionPolicy3"

    const-string v7, "isOTAUpgradeAllowed"

    const/4 v8, 0x0

    invoke-static {v5, v6, v7, v8}, Lcom/android/settings/Utils;->getEnterprisePolicyEnabled(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v2

    .line 1348
    .local v2, "isOTAUpgradeAllowed":I
    invoke-virtual {p0}, Lcom/android/settings/DeviceInfoSettings;->getActivity()Landroid/app/Activity;

    move-result-object v5

    const-string v6, "content://com.sec.knox.provider/RestrictionPolicy2"

    const-string v7, "isFirmwareRecoveryAllowed"

    invoke-static {v5, v6, v7, v4}, Lcom/android/settings/Utils;->getEnterprisePolicyEnabled(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v1

    .line 1351
    .local v1, "isFirmwareRecoveryAllowed":I
    const/4 v0, 0x1

    .line 1353
    .local v0, "bOTAEnabled":Z
    if-eq v2, v9, :cond_0

    if-eqz v2, :cond_1

    :cond_0
    if-eq v1, v9, :cond_2

    if-nez v1, :cond_2

    .line 1355
    :cond_1
    const/4 v0, 0x0

    .line 1358
    :cond_2
    invoke-virtual {p0, p1}, Lcom/android/settings/DeviceInfoSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v3

    .line 1359
    .local v3, "p":Landroid/preference/Preference;
    if-eqz v3, :cond_3

    .line 1360
    invoke-virtual {v3, v0}, Landroid/preference/Preference;->setEnabled(Z)V

    .line 1361
    :cond_3
    return-void
.end method

.method private doBindService()V
    .locals 4

    .prologue
    .line 1416
    sget-boolean v1, Lcom/android/settings/DeviceInfoSettings;->mIsSMServiceBound:Z

    if-nez v1, :cond_0

    .line 1417
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.SECURITY_MANAGER_SERVICE"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 1418
    .local v0, "serviceIntent":Landroid/content/Intent;
    const-string v1, "com.sec.android.service.sm"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 1419
    invoke-virtual {p0}, Lcom/android/settings/DeviceInfoSettings;->getActivity()Landroid/app/Activity;

    move-result-object v1

    iget-object v2, p0, Lcom/android/settings/DeviceInfoSettings;->srvConn:Landroid/content/ServiceConnection;

    const/4 v3, 0x1

    invoke-virtual {v1, v0, v2, v3}, Landroid/content/Context;->bindService(Landroid/content/Intent;Landroid/content/ServiceConnection;I)Z

    move-result v1

    sput-boolean v1, Lcom/android/settings/DeviceInfoSettings;->mIsSMServiceBound:Z

    .line 1421
    .end local v0    # "serviceIntent":Landroid/content/Intent;
    :cond_0
    return-void
.end method

.method private doUnbindService()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    .prologue
    .line 1424
    sget-boolean v0, Lcom/android/settings/DeviceInfoSettings;->mIsSMServiceBound:Z

    if-eqz v0, :cond_0

    .line 1425
    iget-object v0, p0, Lcom/android/settings/DeviceInfoSettings;->srvConn:Landroid/content/ServiceConnection;

    if-eqz v0, :cond_0

    .line 1426
    invoke-virtual {p0}, Lcom/android/settings/DeviceInfoSettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    iget-object v1, p0, Lcom/android/settings/DeviceInfoSettings;->srvConn:Landroid/content/ServiceConnection;

    invoke-virtual {v0, v1}, Landroid/app/Activity;->unbindService(Landroid/content/ServiceConnection;)V

    .line 1427
    const/4 v0, 0x0

    sput-boolean v0, Lcom/android/settings/DeviceInfoSettings;->mIsSMServiceBound:Z

    .line 1430
    :cond_0
    return-void
.end method

.method public static formatKernelVersion(Ljava/lang/String;)Ljava/lang/String;
    .locals 5
    .param p0, "rawKernelVersion"    # Ljava/lang/String;

    .prologue
    const/4 v4, 0x4

    .line 1122
    const-string v0, "Linux version (\\S+) \\((\\S+?)\\) (?:\\(gcc.+? \\)) (#\\d+) (?:.*?)?((Sun|Mon|Tue|Wed|Thu|Fri|Sat).+)"

    .line 1130
    .local v0, "PROC_VERSION_REGEX":Ljava/lang/String;
    const-string v2, "Linux version (\\S+) \\((\\S+?)\\) (?:\\(gcc.+? \\)) (#\\d+) (?:.*?)?((Sun|Mon|Tue|Wed|Thu|Fri|Sat).+)"

    invoke-static {v2}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v2

    invoke-virtual {v2, p0}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v1

    .line 1131
    .local v1, "m":Ljava/util/regex/Matcher;
    invoke-virtual {v1}, Ljava/util/regex/Matcher;->matches()Z

    move-result v2

    if-nez v2, :cond_0

    .line 1132
    const-string v2, "DeviceInfoSettings"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Regex did not match on /proc/version: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/secutil/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1133
    const-string v2, "Unavailable"

    .line 1139
    :goto_0
    return-object v2

    .line 1134
    :cond_0
    invoke-virtual {v1}, Ljava/util/regex/Matcher;->groupCount()I

    move-result v2

    if-ge v2, v4, :cond_1

    .line 1135
    const-string v2, "DeviceInfoSettings"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Regex match on /proc/version only returned "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v1}, Ljava/util/regex/Matcher;->groupCount()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " groups"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/secutil/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1137
    const-string v2, "Unavailable"

    goto :goto_0

    .line 1139
    :cond_1
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const/4 v3, 0x1

    invoke-virtual {v1, v3}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "\n"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const/4 v3, 0x2

    invoke-virtual {v1, v3}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const/4 v3, 0x3

    invoke-virtual {v1, v3}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "\n"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v1, v4}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    goto :goto_0
.end method

.method private static formatKernelVersionVZW(Ljava/lang/String;)Ljava/lang/String;
    .locals 11
    .param p0, "rawKernelVersion"    # Ljava/lang/String;

    .prologue
    const/4 v10, 0x4

    const/4 v9, 0x3

    const/4 v8, 0x2

    const/4 v7, 0x0

    .line 1055
    const-string v0, "Linux version (\\S+) \\((\\S+?)\\) (?:\\(gcc.+? \\)) (#\\d+) (?:.*?)?((Sun|Mon|Tue|Wed|Thu|Fri|Sat).+)"

    .line 1068
    .local v0, "PROC_VERSION_REGEX":Ljava/lang/String;
    const-string v4, "Linux version (\\S+) \\((\\S+?)\\) (?:\\(gcc.+? \\)) (#\\d+) (?:.*?)?((Sun|Mon|Tue|Wed|Thu|Fri|Sat).+)"

    invoke-static {v4}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v4

    invoke-virtual {v4, p0}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v2

    .line 1070
    .local v2, "m":Ljava/util/regex/Matcher;
    invoke-virtual {v2}, Ljava/util/regex/Matcher;->matches()Z

    move-result v4

    if-nez v4, :cond_2

    .line 1071
    const-string v4, "DeviceInfoSettings"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Regex did not match on /proc/version: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/secutil/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1080
    :cond_0
    const/4 v4, 0x1

    invoke-virtual {v2, v4}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v3

    .line 1081
    .local v3, "s":Ljava/lang/String;
    const-string v4, "-"

    invoke-virtual {v3, v4}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    .line 1082
    .local v1, "before":[Ljava/lang/String;
    array-length v4, v1

    if-ne v4, v9, :cond_1

    .line 1083
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    aget-object v5, v1, v7

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "-"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    aget-object v5, v1, v8

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v1, v7

    .line 1085
    :cond_1
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    aget-object v5, v1, v7

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "\n"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v2, v8}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v2, v9}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "\n"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v2, v10}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .end local v1    # "before":[Ljava/lang/String;
    .end local v3    # "s":Ljava/lang/String;
    :goto_0
    return-object v4

    .line 1073
    :cond_2
    invoke-virtual {v2}, Ljava/util/regex/Matcher;->groupCount()I

    move-result v4

    if-ge v4, v10, :cond_0

    .line 1074
    const-string v4, "LOG_TAG"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Regex match on /proc/version only returned "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v2}, Ljava/util/regex/Matcher;->groupCount()I

    move-result v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " groups"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/secutil/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1077
    const-string v4, "Unavailable"

    goto :goto_0
.end method

.method private getCMCCBuildNumberSummary(Ljava/lang/String;)Ljava/lang/String;
    .locals 10
    .param p1, "value"    # Ljava/lang/String;

    .prologue
    const/4 v9, 0x1

    .line 1300
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0, p1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 1301
    .local v0, "buildNumber":Ljava/lang/StringBuilder;
    const-string v6, "ro.build.date"

    invoke-virtual {p0}, Lcom/android/settings/DeviceInfoSettings;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    const v8, 0x7f0a00c1

    invoke-virtual {v7, v8}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 1306
    .local v1, "buildTime":Ljava/lang/String;
    :try_start_0
    new-instance v4, Ljava/util/StringTokenizer;

    const-string v6, " "

    invoke-direct {v4, v1, v6}, Ljava/util/StringTokenizer;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 1307
    .local v4, "stBuildTime":Ljava/util/StringTokenizer;
    invoke-virtual {v4}, Ljava/util/StringTokenizer;->countTokens()I

    move-result v6

    new-array v2, v6, [Ljava/lang/String;

    .line 1310
    .local v2, "date":[Ljava/lang/String;
    const/4 v5, 0x0

    .local v5, "stCount":I
    :goto_0
    invoke-virtual {v4}, Ljava/util/StringTokenizer;->hasMoreElements()Z

    move-result v6

    if-eqz v6, :cond_0

    .line 1311
    invoke-virtual {v4}, Ljava/util/StringTokenizer;->nextToken()Ljava/lang/String;

    move-result-object v6

    aput-object v6, v2, v5

    .line 1310
    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    .line 1315
    :cond_0
    const/4 v6, 0x6

    if-eq v5, v6, :cond_1

    .line 1316
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    .line 1340
    .end local v2    # "date":[Ljava/lang/String;
    .end local v4    # "stBuildTime":Ljava/util/StringTokenizer;
    .end local v5    # "stCount":I
    :goto_1
    return-object v6

    .line 1318
    .restart local v2    # "date":[Ljava/lang/String;
    .restart local v4    # "stBuildTime":Ljava/util/StringTokenizer;
    .restart local v5    # "stCount":I
    :cond_1
    const/4 v6, 0x1

    aget-object v6, v2, v6

    const-string v7, "Jan"

    invoke-virtual {v6, v7}, Ljava/lang/String;->compareToIgnoreCase(Ljava/lang/String;)I

    move-result v6

    if-nez v6, :cond_2

    const/4 v6, 0x1

    const-string v7, "01"

    aput-object v7, v2, v6

    .line 1332
    :goto_2
    const/4 v6, 0x2

    aget-object v6, v2, v6

    invoke-virtual {v6}, Ljava/lang/String;->length()I

    move-result v6

    if-ne v6, v9, :cond_d

    .line 1333
    const-string v6, "\n"

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const/4 v7, 0x5

    aget-object v7, v2, v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "-"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const/4 v7, 0x1

    aget-object v7, v2, v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "-"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "0"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const/4 v7, 0x2

    aget-object v7, v2, v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    goto :goto_1

    .line 1319
    :cond_2
    const/4 v6, 0x1

    aget-object v6, v2, v6

    const-string v7, "Feb"

    invoke-virtual {v6, v7}, Ljava/lang/String;->compareToIgnoreCase(Ljava/lang/String;)I

    move-result v6

    if-nez v6, :cond_3

    const/4 v6, 0x1

    const-string v7, "02"

    aput-object v7, v2, v6
    :try_end_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_2

    .line 1339
    .end local v2    # "date":[Ljava/lang/String;
    .end local v4    # "stBuildTime":Ljava/util/StringTokenizer;
    .end local v5    # "stCount":I
    :catch_0
    move-exception v3

    .line 1340
    .local v3, "e":Ljava/lang/NullPointerException;
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    goto :goto_1

    .line 1320
    .end local v3    # "e":Ljava/lang/NullPointerException;
    .restart local v2    # "date":[Ljava/lang/String;
    .restart local v4    # "stBuildTime":Ljava/util/StringTokenizer;
    .restart local v5    # "stCount":I
    :cond_3
    const/4 v6, 0x1

    :try_start_1
    aget-object v6, v2, v6

    const-string v7, "Mar"

    invoke-virtual {v6, v7}, Ljava/lang/String;->compareToIgnoreCase(Ljava/lang/String;)I

    move-result v6

    if-nez v6, :cond_4

    const/4 v6, 0x1

    const-string v7, "03"

    aput-object v7, v2, v6

    goto :goto_2

    .line 1321
    :cond_4
    const/4 v6, 0x1

    aget-object v6, v2, v6

    const-string v7, "Apr"

    invoke-virtual {v6, v7}, Ljava/lang/String;->compareToIgnoreCase(Ljava/lang/String;)I

    move-result v6

    if-nez v6, :cond_5

    const/4 v6, 0x1

    const-string v7, "04"

    aput-object v7, v2, v6

    goto :goto_2

    .line 1322
    :cond_5
    const/4 v6, 0x1

    aget-object v6, v2, v6

    const-string v7, "May"

    invoke-virtual {v6, v7}, Ljava/lang/String;->compareToIgnoreCase(Ljava/lang/String;)I

    move-result v6

    if-nez v6, :cond_6

    const/4 v6, 0x1

    const-string v7, "05"

    aput-object v7, v2, v6

    goto/16 :goto_2

    .line 1323
    :cond_6
    const/4 v6, 0x1

    aget-object v6, v2, v6

    const-string v7, "Jun"

    invoke-virtual {v6, v7}, Ljava/lang/String;->compareToIgnoreCase(Ljava/lang/String;)I

    move-result v6

    if-nez v6, :cond_7

    const/4 v6, 0x1

    const-string v7, "06"

    aput-object v7, v2, v6

    goto/16 :goto_2

    .line 1324
    :cond_7
    const/4 v6, 0x1

    aget-object v6, v2, v6

    const-string v7, "Jul"

    invoke-virtual {v6, v7}, Ljava/lang/String;->compareToIgnoreCase(Ljava/lang/String;)I

    move-result v6

    if-nez v6, :cond_8

    const/4 v6, 0x1

    const-string v7, "07"

    aput-object v7, v2, v6

    goto/16 :goto_2

    .line 1325
    :cond_8
    const/4 v6, 0x1

    aget-object v6, v2, v6

    const-string v7, "Aug"

    invoke-virtual {v6, v7}, Ljava/lang/String;->compareToIgnoreCase(Ljava/lang/String;)I

    move-result v6

    if-nez v6, :cond_9

    const/4 v6, 0x1

    const-string v7, "08"

    aput-object v7, v2, v6

    goto/16 :goto_2

    .line 1326
    :cond_9
    const/4 v6, 0x1

    aget-object v6, v2, v6

    const-string v7, "Sep"

    invoke-virtual {v6, v7}, Ljava/lang/String;->compareToIgnoreCase(Ljava/lang/String;)I

    move-result v6

    if-nez v6, :cond_a

    const/4 v6, 0x1

    const-string v7, "09"

    aput-object v7, v2, v6

    goto/16 :goto_2

    .line 1327
    :cond_a
    const/4 v6, 0x1

    aget-object v6, v2, v6

    const-string v7, "Oct"

    invoke-virtual {v6, v7}, Ljava/lang/String;->compareToIgnoreCase(Ljava/lang/String;)I

    move-result v6

    if-nez v6, :cond_b

    const/4 v6, 0x1

    const-string v7, "10"

    aput-object v7, v2, v6

    goto/16 :goto_2

    .line 1328
    :cond_b
    const/4 v6, 0x1

    aget-object v6, v2, v6

    const-string v7, "Nov"

    invoke-virtual {v6, v7}, Ljava/lang/String;->compareToIgnoreCase(Ljava/lang/String;)I

    move-result v6

    if-nez v6, :cond_c

    const/4 v6, 0x1

    const-string v7, "11"

    aput-object v7, v2, v6

    goto/16 :goto_2

    .line 1329
    :cond_c
    const/4 v6, 0x1

    const-string v7, "12"

    aput-object v7, v2, v6

    goto/16 :goto_2

    .line 1336
    :cond_d
    const-string v6, "\n"

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const/4 v7, 0x5

    aget-object v7, v2, v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "-"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const/4 v7, 0x1

    aget-object v7, v2, v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "-"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const/4 v7, 0x2

    aget-object v7, v2, v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    :try_end_1
    .catch Ljava/lang/NullPointerException; {:try_start_1 .. :try_end_1} :catch_0

    move-result-object v6

    goto/16 :goto_1
.end method

.method public static getFeedbackReporterPackage(Landroid/content/Context;)Ljava/lang/String;
    .locals 9
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 1633
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    const v8, 0x7f0a0f29

    invoke-virtual {v7, v8}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 1635
    .local v1, "feedbackReporter":Ljava/lang/String;
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v7

    if-eqz v7, :cond_0

    .line 1664
    .end local v1    # "feedbackReporter":Ljava/lang/String;
    :goto_0
    return-object v1

    .line 1641
    .restart local v1    # "feedbackReporter":Ljava/lang/String;
    :cond_0
    new-instance v4, Landroid/content/Intent;

    const-string v7, "android.intent.action.BUG_REPORT"

    invoke-direct {v4, v7}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 1643
    .local v4, "intent":Landroid/content/Intent;
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v5

    .line 1644
    .local v5, "pm":Landroid/content/pm/PackageManager;
    const/16 v7, 0x40

    invoke-virtual {v5, v4, v7}, Landroid/content/pm/PackageManager;->queryIntentActivities(Landroid/content/Intent;I)Ljava/util/List;

    move-result-object v6

    .line 1646
    .local v6, "resolvedPackages":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    invoke-interface {v6}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, "i$":Ljava/util/Iterator;
    :cond_1
    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_2

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/content/pm/ResolveInfo;

    .line 1647
    .local v3, "info":Landroid/content/pm/ResolveInfo;
    iget-object v7, v3, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    if-eqz v7, :cond_1

    .line 1648
    iget-object v7, v3, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v7, v7, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    invoke-static {v7}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v7

    if-nez v7, :cond_1

    .line 1650
    :try_start_0
    iget-object v7, v3, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v7, v7, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    const/4 v8, 0x0

    invoke-virtual {v5, v7, v8}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    move-result-object v0

    .line 1651
    .local v0, "ai":Landroid/content/pm/ApplicationInfo;
    iget v7, v0, Landroid/content/pm/ApplicationInfo;->flags:I

    and-int/lit8 v7, v7, 0x1

    if-eqz v7, :cond_1

    .line 1653
    iget-object v7, v3, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v7, v7, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    invoke-static {v7, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v7

    if-eqz v7, :cond_1

    goto :goto_0

    .line 1664
    .end local v0    # "ai":Landroid/content/pm/ApplicationInfo;
    .end local v3    # "info":Landroid/content/pm/ResolveInfo;
    :cond_2
    const/4 v1, 0x0

    goto :goto_0

    .line 1658
    .restart local v3    # "info":Landroid/content/pm/ResolveInfo;
    :catch_0
    move-exception v7

    goto :goto_1
.end method

.method public static getFormattedKernelVersion()Ljava/lang/String;
    .locals 3

    .prologue
    .line 1105
    :try_start_0
    const-string v1, "/proc/version"

    invoke-static {v1}, Lcom/android/settings/DeviceInfoSettings;->readLine(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/android/settings/DeviceInfoSettings;->formatKernelVersion(Ljava/lang/String;)Ljava/lang/String;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 1112
    .local v0, "e":Ljava/io/IOException;
    :goto_0
    return-object v1

    .line 1107
    .end local v0    # "e":Ljava/io/IOException;
    :catch_0
    move-exception v0

    .line 1108
    .restart local v0    # "e":Ljava/io/IOException;
    const-string v1, "DeviceInfoSettings"

    const-string v2, "IO Exception when getting kernel version for Device Info screen"

    invoke-static {v1, v2, v0}, Landroid/util/secutil/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1112
    const-string v1, "Unavailable"

    goto :goto_0
.end method

.method public static getFormattedKernelVersionVZW()Ljava/lang/String;
    .locals 3

    .prologue
    .line 1037
    :try_start_0
    const-string v1, "/proc/version"

    invoke-static {v1}, Lcom/android/settings/DeviceInfoSettings;->readLine(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/android/settings/DeviceInfoSettings;->formatKernelVersionVZW(Ljava/lang/String;)Ljava/lang/String;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 1043
    .local v0, "e":Ljava/io/IOException;
    :goto_0
    return-object v1

    .line 1038
    .end local v0    # "e":Ljava/io/IOException;
    :catch_0
    move-exception v0

    .line 1039
    .restart local v0    # "e":Ljava/io/IOException;
    const-string v1, "DeviceInfoSettings"

    const-string v2, "IO Exception when getting kernel version for Device Info screen"

    invoke-static {v1, v2, v0}, Landroid/util/secutil/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1043
    const-string v1, "Unavailable"

    goto :goto_0
.end method

.method private getMsvSuffix()Ljava/lang/String;
    .locals 6

    .prologue
    .line 1152
    :try_start_0
    const-string v1, "/sys/board_properties/soc/msv"

    invoke-static {v1}, Lcom/android/settings/DeviceInfoSettings;->readLine(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 1154
    .local v0, "msv":Ljava/lang/String;
    const/16 v1, 0x10

    invoke-static {v0, v1}, Ljava/lang/Long;->parseLong(Ljava/lang/String;I)J

    move-result-wide v2

    const-wide/16 v4, 0x0

    cmp-long v1, v2, v4

    if-nez v1, :cond_0

    .line 1155
    const-string v1, " (ENGINEERING)"
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1162
    .end local v0    # "msv":Ljava/lang/String;
    :goto_0
    return-object v1

    .line 1159
    :catch_0
    move-exception v1

    .line 1162
    :cond_0
    :goto_1
    const-string v1, ""

    goto :goto_0

    .line 1157
    :catch_1
    move-exception v1

    goto :goto_1
.end method

.method private getSDMConfigVersion()Ljava/lang/String;
    .locals 3

    .prologue
    .line 1092
    :try_start_0
    const-string v1, "/efs/otadm/sdm_config_content"

    invoke-static {v1}, Lcom/android/settings/DeviceInfoSettings;->readLine(Ljava/lang/String;)Ljava/lang/String;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 1099
    :goto_0
    return-object v1

    .line 1094
    :catch_0
    move-exception v0

    .line 1095
    .local v0, "e":Ljava/io/IOException;
    const-string v1, "DeviceInfoSettings"

    const-string v2, "getSDMConfigVersion Exception when getting SDM configuration version for Device Info screen"

    invoke-static {v1, v2, v0}, Landroid/util/secutil/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1099
    invoke-virtual {p0}, Lcom/android/settings/DeviceInfoSettings;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0a0749

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    goto :goto_0
.end method

.method private initCCMode()V
    .locals 4

    .prologue
    .line 1433
    sget-boolean v1, Lcom/android/settings/DeviceInfoSettings;->mIsSMServiceBound:Z

    if-nez v1, :cond_0

    .line 1434
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.SECURITY_MANAGER_SERVICE"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 1435
    .local v0, "serviceIntent":Landroid/content/Intent;
    const-string v1, "com.sec.android.service.sm"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 1436
    invoke-virtual {p0}, Lcom/android/settings/DeviceInfoSettings;->getActivity()Landroid/app/Activity;

    move-result-object v1

    iget-object v2, p0, Lcom/android/settings/DeviceInfoSettings;->srvConn:Landroid/content/ServiceConnection;

    const/4 v3, 0x1

    invoke-virtual {v1, v0, v2, v3}, Landroid/content/Context;->bindService(Landroid/content/Intent;Landroid/content/ServiceConnection;I)Z

    move-result v1

    sput-boolean v1, Lcom/android/settings/DeviceInfoSettings;->mIsSMServiceBound:Z

    .line 1438
    .end local v0    # "serviceIntent":Landroid/content/Intent;
    :cond_0
    new-instance v1, Lcom/android/settings/DeviceInfoSettings$3;

    invoke-direct {v1, p0}, Lcom/android/settings/DeviceInfoSettings$3;-><init>(Lcom/android/settings/DeviceInfoSettings;)V

    invoke-direct {p0, v1}, Lcom/android/settings/DeviceInfoSettings;->initSecuritySWVersion(Ljava/lang/Runnable;)V

    .line 1459
    return-void
.end method

.method private initSecuritySWVersion(Ljava/lang/Runnable;)V
    .locals 0
    .param p1, "r"    # Ljava/lang/Runnable;

    .prologue
    .line 1462
    sput-object p1, Lcom/android/settings/DeviceInfoSettings;->mBoundRunnable:Ljava/lang/Runnable;

    .line 1463
    invoke-direct {p0}, Lcom/android/settings/DeviceInfoSettings;->_startBoundIfPossible()V

    .line 1464
    return-void
.end method

.method private isPackageLoaded(Ljava/lang/String;)Z
    .locals 6
    .param p1, "packagename"    # Ljava/lang/String;

    .prologue
    const/4 v2, 0x0

    .line 1283
    invoke-virtual {p0}, Lcom/android/settings/DeviceInfoSettings;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    .line 1285
    .local v1, "packMgr":Landroid/content/pm/PackageManager;
    if-eqz v1, :cond_0

    .line 1286
    const/4 v3, 0x0

    :try_start_0
    invoke-virtual {v1, p1, v3}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    .line 1287
    const-string v3, "DeviceInfoSettings"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " is Installed"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1288
    const/4 v2, 0x1

    .line 1293
    :cond_0
    :goto_0
    return v2

    .line 1290
    :catch_0
    move-exception v0

    .line 1291
    .local v0, "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    const-string v3, "DeviceInfoSettings"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " is not Installed"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method private static readLine(Ljava/lang/String;)Ljava/lang/String;
    .locals 3
    .param p0, "filename"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 1027
    new-instance v0, Ljava/io/BufferedReader;

    new-instance v1, Ljava/io/FileReader;

    invoke-direct {v1, p0}, Ljava/io/FileReader;-><init>(Ljava/lang/String;)V

    const/16 v2, 0x100

    invoke-direct {v0, v1, v2}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;I)V

    .line 1029
    .local v0, "reader":Ljava/io/BufferedReader;
    :try_start_0
    invoke-virtual {v0}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v1

    .line 1031
    invoke-virtual {v0}, Ljava/io/BufferedReader;->close()V

    return-object v1

    :catchall_0
    move-exception v1

    invoke-virtual {v0}, Ljava/io/BufferedReader;->close()V

    throw v1
.end method

.method private readSalesCode()Ljava/lang/String;
    .locals 4

    .prologue
    .line 1266
    const-string v1, ""

    .line 1268
    .local v1, "sales_code":Ljava/lang/String;
    :try_start_0
    const-string v2, "ro.csc.sales_code"

    invoke-static {v2}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 1269
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 1270
    const-string v2, "ril.sales_code"

    invoke-static {v2}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 1275
    :cond_0
    :goto_0
    return-object v1

    .line 1272
    :catch_0
    move-exception v0

    .line 1273
    .local v0, "e":Ljava/lang/Exception;
    const-string v2, "DeviceInfoSettings"

    const-string v3, "readSalesCode failed"

    invoke-static {v2, v3}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method private readSoftwareUpdateType()Ljava/lang/String;
    .locals 5

    .prologue
    .line 1170
    const-string v1, "system_update_settings"

    .line 1171
    .local v1, "updateType":Ljava/lang/String;
    invoke-direct {p0}, Lcom/android/settings/DeviceInfoSettings;->readSalesCode()Ljava/lang/String;

    move-result-object v0

    .line 1172
    .local v0, "sales_code":Ljava/lang/String;
    const-string v2, "ATT"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    const-string v2, "AIO"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 1173
    :cond_0
    const-string v2, "com.sec.android.fotaclient"

    invoke-direct {p0, v2}, Lcom/android/settings/DeviceInfoSettings;->isPackageLoaded(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 1174
    const-string v1, "software_update_settings_no_subtree"

    .line 1203
    :cond_1
    :goto_0
    const-string v2, "DeviceInfoSettings"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " FOTA"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 1204
    return-object v1

    .line 1176
    :cond_2
    const-string v1, "system_update_settings_na_gsm"

    goto :goto_0

    .line 1178
    :cond_3
    const-string v2, "TMB"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_5

    .line 1179
    const-string v2, "com.sec.android.fotaclient"

    invoke-direct {p0, v2}, Lcom/android/settings/DeviceInfoSettings;->isPackageLoaded(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_4

    .line 1180
    const-string v1, "software_update_settings_no_subtree"

    goto :goto_0

    .line 1182
    :cond_4
    const-string v1, "system_update_settings_na_gsm"

    goto :goto_0

    .line 1184
    :cond_5
    const-string v2, "USC"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_6

    const-string v2, "CRI"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_6

    const-string v2, "LRA"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_7

    .line 1185
    :cond_6
    const-string v1, "software_update_settings_no_subtree"

    goto :goto_0

    .line 1186
    :cond_7
    const-string v2, "VZW"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_9

    .line 1187
    const-string v2, "com.sec.android.fotaclient"

    invoke-direct {p0, v2}, Lcom/android/settings/DeviceInfoSettings;->isPackageLoaded(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_8

    .line 1188
    const-string v1, "software_update_settings"

    goto :goto_0

    .line 1190
    :cond_8
    const-string v1, "no_software_update_settings"

    goto :goto_0

    .line 1192
    :cond_9
    const-string v2, "SPR"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_a

    const-string v2, "BST"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_a

    invoke-static {}, Lcom/sec/android/app/CscFeature;->getInstance()Lcom/sec/android/app/CscFeature;

    move-result-object v2

    const-string v3, "CscFeature_Common_EnableSprintExtension"

    invoke-virtual {v2, v3}, Lcom/sec/android/app/CscFeature;->getEnableStatus(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_b

    .line 1193
    :cond_a
    const-string v1, "system_update_settings_spr"

    goto/16 :goto_0

    .line 1194
    :cond_b
    const-string v2, "N03"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_c

    .line 1195
    const-string v1, "no_software_update_settings_open"

    goto/16 :goto_0

    .line 1196
    :cond_c
    const-string v2, "com.sec.android.fotaclient"

    invoke-direct {p0, v2}, Lcom/android/settings/DeviceInfoSettings;->isPackageLoaded(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 1197
    const-string v2, "TFN"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_d

    const-string v2, "CSP"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_e

    .line 1198
    :cond_d
    const-string v1, "software_update_settings_no_subtree"

    goto/16 :goto_0

    .line 1200
    :cond_e
    const-string v1, "software_update_settings"

    goto/16 :goto_0
.end method

.method private removePreferenceIfBoolFalse(Ljava/lang/String;I)V
    .locals 2
    .param p1, "preference"    # Ljava/lang/String;
    .param p2, "resId"    # I

    .prologue
    .line 983
    invoke-virtual {p0}, Lcom/android/settings/DeviceInfoSettings;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, p2}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v1

    if-nez v1, :cond_0

    .line 984
    invoke-virtual {p0, p1}, Lcom/android/settings/DeviceInfoSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    .line 985
    .local v0, "pref":Landroid/preference/Preference;
    if-eqz v0, :cond_0

    .line 986
    invoke-virtual {p0}, Lcom/android/settings/DeviceInfoSettings;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    .line 989
    .end local v0    # "pref":Landroid/preference/Preference;
    :cond_0
    return-void
.end method

.method private removePreferenceIfPropertyMissing(Landroid/preference/PreferenceGroup;Ljava/lang/String;Ljava/lang/String;)V
    .locals 4
    .param p1, "preferenceGroup"    # Landroid/preference/PreferenceGroup;
    .param p2, "preference"    # Ljava/lang/String;
    .param p3, "property"    # Ljava/lang/String;

    .prologue
    .line 971
    invoke-static {p3}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v2, ""

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 974
    :try_start_0
    invoke-virtual {p0, p2}, Lcom/android/settings/DeviceInfoSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v1

    invoke-virtual {p1, v1}, Landroid/preference/PreferenceGroup;->removePreference(Landroid/preference/Preference;)Z
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    .line 980
    :cond_0
    :goto_0
    return-void

    .line 975
    :catch_0
    move-exception v0

    .line 976
    .local v0, "e":Ljava/lang/RuntimeException;
    const-string v1, "DeviceInfoSettings"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Property \'"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "\' missing and no \'"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "\' preference"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/secutil/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method private removeSoftwareUpdatePreference(Ljava/lang/String;)V
    .locals 4
    .param p1, "updateType"    # Ljava/lang/String;

    .prologue
    .line 1212
    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "no_software_update_settings_open"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1214
    :cond_0
    const-string v0, "software_update_settings"

    invoke-virtual {p0, v0}, Lcom/android/settings/DeviceInfoSettings;->removePreference(Ljava/lang/String;)V

    .line 1215
    const-string v0, "system_update_settings_na_gsm"

    invoke-virtual {p0, v0}, Lcom/android/settings/DeviceInfoSettings;->removePreference(Ljava/lang/String;)V

    .line 1216
    const-string v0, "software_update_settings_no_subtree"

    invoke-virtual {p0, v0}, Lcom/android/settings/DeviceInfoSettings;->removePreference(Ljava/lang/String;)V

    .line 1218
    :cond_1
    const-string v0, "software_update_settings"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 1219
    const-string v0, "software_update_settings"

    invoke-virtual {p0, v0}, Lcom/android/settings/DeviceInfoSettings;->removePreference(Ljava/lang/String;)V

    .line 1221
    :cond_2
    const-string v0, "system_update_settings_na_gsm"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_3

    .line 1222
    const-string v0, "system_update_settings_na_gsm"

    invoke-virtual {p0, v0}, Lcom/android/settings/DeviceInfoSettings;->removePreference(Ljava/lang/String;)V

    .line 1224
    :cond_3
    const-string v0, "software_update_settings_no_subtree"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_4

    .line 1225
    const-string v0, "software_update_settings_no_subtree"

    invoke-virtual {p0, v0}, Lcom/android/settings/DeviceInfoSettings;->removePreference(Ljava/lang/String;)V

    .line 1227
    :cond_4
    const-string v0, "system_update_settings_vzw"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_5

    .line 1228
    const-string v0, "system_update_settings_vzw"

    invoke-virtual {p0, v0}, Lcom/android/settings/DeviceInfoSettings;->removePreference(Ljava/lang/String;)V

    .line 1230
    :cond_5
    const-string v0, "system_update_settings"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_6

    .line 1231
    const-string v0, "system_update_settings"

    invoke-virtual {p0, v0}, Lcom/android/settings/DeviceInfoSettings;->removePreference(Ljava/lang/String;)V

    .line 1233
    :cond_6
    const-string v0, "system_update_settings_spr"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_7

    .line 1234
    const-string v0, "system_update_settings_spr"

    invoke-virtual {p0, v0}, Lcom/android/settings/DeviceInfoSettings;->removePreference(Ljava/lang/String;)V

    .line 1243
    :goto_0
    return-void

    .line 1236
    :cond_7
    const-string v0, "no_software_update_settings"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_8

    .line 1237
    const-string v0, "DeviceInfoSettings"

    const-string v1, "No update menu"

    invoke-static {v0, v1}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 1240
    :cond_8
    invoke-virtual {p0}, Lcom/android/settings/DeviceInfoSettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {p0}, Lcom/android/settings/DeviceInfoSettings;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v1

    const-string v2, "system_update_settings"

    const/4 v3, 0x1

    invoke-static {v0, v1, v2, v3}, Lcom/android/settings/Utils;->updatePreferenceToSpecificActivityOrRemove(Landroid/content/Context;Landroid/preference/PreferenceGroup;Ljava/lang/String;I)Z

    goto :goto_0
.end method

.method private sendFeedback()V
    .locals 3

    .prologue
    .line 1011
    invoke-virtual {p0}, Lcom/android/settings/DeviceInfoSettings;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-static {v2}, Lcom/android/settings/DeviceInfoSettings;->getFeedbackReporterPackage(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    .line 1012
    .local v1, "reporterPackage":Ljava/lang/String;
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 1018
    :goto_0
    return-void

    .line 1015
    :cond_0
    new-instance v0, Landroid/content/Intent;

    const-string v2, "android.intent.action.BUG_REPORT"

    invoke-direct {v0, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 1016
    .local v0, "intent":Landroid/content/Intent;
    invoke-virtual {v0, v1}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 1017
    const/4 v2, 0x0

    invoke-virtual {p0, v0, v2}, Lcom/android/settings/DeviceInfoSettings;->startActivityForResult(Landroid/content/Intent;I)V

    goto :goto_0
.end method

.method private setStringSummary(Ljava/lang/String;Ljava/lang/String;)V
    .locals 4
    .param p1, "preference"    # Ljava/lang/String;
    .param p2, "value"    # Ljava/lang/String;

    .prologue
    .line 993
    :try_start_0
    invoke-virtual {p0, p1}, Lcom/android/settings/DeviceInfoSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v1

    invoke-virtual {v1, p2}, Landroid/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    .line 998
    :goto_0
    return-void

    .line 994
    :catch_0
    move-exception v0

    .line 995
    .local v0, "e":Ljava/lang/RuntimeException;
    invoke-virtual {p0, p1}, Lcom/android/settings/DeviceInfoSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v1

    invoke-virtual {p0}, Lcom/android/settings/DeviceInfoSettings;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0a00c1

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    goto :goto_0
.end method

.method private setValueSummary(Ljava/lang/String;Ljava/lang/String;)V
    .locals 3
    .param p1, "preference"    # Ljava/lang/String;
    .param p2, "property"    # Ljava/lang/String;

    .prologue
    .line 1002
    :try_start_0
    invoke-virtual {p0, p1}, Lcom/android/settings/DeviceInfoSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    invoke-virtual {p0}, Lcom/android/settings/DeviceInfoSettings;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0a00c1

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {p2, v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1008
    :goto_0
    return-void

    .line 1005
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method private showKnoxVersion()V
    .locals 22

    .prologue
    .line 1487
    const-string v10, ""

    .line 1490
    .local v10, "knoxVersion":Ljava/lang/String;
    :try_start_0
    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/DeviceInfoSettings;->getActivity()Landroid/app/Activity;

    move-result-object v19

    invoke-static/range {v19 .. v19}, Landroid/os/PersonaManager;->getKnoxContainerVersion(Landroid/content/Context;)Landroid/os/PersonaManager$KnoxContainerVersion;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Landroid/os/PersonaManager$KnoxContainerVersion;->toString()Ljava/lang/String;

    move-result-object v19

    if-eqz v19, :cond_0

    .line 1491
    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/DeviceInfoSettings;->getActivity()Landroid/app/Activity;

    move-result-object v19

    invoke-static/range {v19 .. v19}, Landroid/os/PersonaManager;->getKnoxContainerVersion(Landroid/content/Context;)Landroid/os/PersonaManager$KnoxContainerVersion;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Landroid/os/PersonaManager$KnoxContainerVersion;->toString()Ljava/lang/String;

    move-result-object v17

    .line 1492
    .local v17, "version":Ljava/lang/String;
    const-string v19, "."

    move-object/from16 v0, v17

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v8

    .line 1493
    .local v8, "index":I
    const/16 v19, 0x0

    move-object/from16 v0, v17

    move/from16 v1, v19

    invoke-virtual {v0, v1, v8}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v17

    .line 1494
    new-instance v19, Ljava/lang/StringBuilder;

    invoke-direct/range {v19 .. v19}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/DeviceInfoSettings;->getResources()Landroid/content/res/Resources;

    move-result-object v20

    const v21, 0x7f0a073d

    invoke-virtual/range {v20 .. v21}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v20

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    const-string v20, " "

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    move-object/from16 v0, v19

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    .line 1495
    .local v9, "knoxMajorVersion":Ljava/lang/String;
    new-instance v19, Ljava/lang/StringBuilder;

    invoke-direct/range {v19 .. v19}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v19

    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    move-object/from16 v0, v19

    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v10

    .line 1504
    .end local v8    # "index":I
    .end local v9    # "knoxMajorVersion":Ljava/lang/String;
    .end local v17    # "version":Ljava/lang/String;
    :cond_0
    :goto_0
    :try_start_1
    const-string v19, "enterprise_policy"

    move-object/from16 v0, p0

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Lcom/android/settings/DeviceInfoSettings;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/app/enterprise/EnterpriseDeviceManager;

    .line 1505
    .local v5, "edm":Landroid/app/enterprise/EnterpriseDeviceManager;
    invoke-virtual {v5}, Landroid/app/enterprise/EnterpriseDeviceManager;->getEnterpriseSdkVer()Landroid/app/enterprise/EnterpriseDeviceManager$EnterpriseSdkVersion;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Landroid/app/enterprise/EnterpriseDeviceManager$EnterpriseSdkVersion;->getInternalVersion()Ljava/lang/String;

    move-result-object v19

    if-eqz v19, :cond_1

    .line 1506
    new-instance v19, Ljava/lang/StringBuilder;

    invoke-direct/range {v19 .. v19}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/DeviceInfoSettings;->getResources()Landroid/content/res/Resources;

    move-result-object v20

    const v21, 0x7f0a0740

    invoke-virtual/range {v20 .. v21}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v20

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    const-string v20, " "

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual {v5}, Landroid/app/enterprise/EnterpriseDeviceManager;->getEnterpriseSdkVer()Landroid/app/enterprise/EnterpriseDeviceManager$EnterpriseSdkVersion;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Landroid/app/enterprise/EnterpriseDeviceManager$EnterpriseSdkVersion;->getInternalVersion()Ljava/lang/String;

    move-result-object v20

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    .line 1507
    .local v15, "standardVersion":Ljava/lang/String;
    new-instance v19, Ljava/lang/StringBuilder;

    invoke-direct/range {v19 .. v19}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v19

    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    const-string v20, "\n"

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    move-object/from16 v0, v19

    invoke-virtual {v0, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    move-result-object v10

    .line 1516
    .end local v5    # "edm":Landroid/app/enterprise/EnterpriseDeviceManager;
    .end local v15    # "standardVersion":Ljava/lang/String;
    :cond_1
    :goto_1
    :try_start_2
    invoke-static {}, Lcom/sec/enterprise/knox/EnterpriseKnoxManager;->getInstance()Lcom/sec/enterprise/knox/EnterpriseKnoxManager;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Lcom/sec/enterprise/knox/EnterpriseKnoxManager;->getVersion()Lcom/sec/enterprise/knox/EnterpriseKnoxManager$EnterpriseKnoxSdkVersion;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Lcom/sec/enterprise/knox/EnterpriseKnoxManager$EnterpriseKnoxSdkVersion;->getInternalVersion()Ljava/lang/String;

    move-result-object v19

    if-eqz v19, :cond_2

    .line 1517
    new-instance v19, Ljava/lang/StringBuilder;

    invoke-direct/range {v19 .. v19}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/DeviceInfoSettings;->getResources()Landroid/content/res/Resources;

    move-result-object v20

    const v21, 0x7f0a0741

    invoke-virtual/range {v20 .. v21}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v20

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    const-string v20, " "

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-static {}, Lcom/sec/enterprise/knox/EnterpriseKnoxManager;->getInstance()Lcom/sec/enterprise/knox/EnterpriseKnoxManager;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Lcom/sec/enterprise/knox/EnterpriseKnoxManager;->getVersion()Lcom/sec/enterprise/knox/EnterpriseKnoxManager$EnterpriseKnoxSdkVersion;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Lcom/sec/enterprise/knox/EnterpriseKnoxManager$EnterpriseKnoxSdkVersion;->getInternalVersion()Ljava/lang/String;

    move-result-object v20

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    .line 1518
    .local v11, "premiumVersion":Ljava/lang/String;
    new-instance v19, Ljava/lang/StringBuilder;

    invoke-direct/range {v19 .. v19}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v19

    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    const-string v20, "\n"

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    move-object/from16 v0, v19

    invoke-virtual {v0, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2

    move-result-object v10

    .line 1527
    .end local v11    # "premiumVersion":Ljava/lang/String;
    :cond_2
    :goto_2
    :try_start_3
    invoke-static {}, Landroid/app/enterprise/knoxcustom/KnoxCustomManager;->getInstance()Landroid/app/enterprise/knoxcustom/KnoxCustomManager;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Landroid/app/enterprise/knoxcustom/KnoxCustomManager;->getKnoxCustomSdkVer()Landroid/app/enterprise/knoxcustom/KnoxCustomManager$KnoxCustomSdkVersion;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Landroid/app/enterprise/knoxcustom/KnoxCustomManager$KnoxCustomSdkVersion;->getKnoxCustomInternalSdkVer()Ljava/lang/String;

    move-result-object v3

    .line 1528
    .local v3, "customizationVersion":Ljava/lang/String;
    const-string v19, ""

    move-object/from16 v0, v19

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v19

    if-nez v19, :cond_3

    .line 1529
    new-instance v19, Ljava/lang/StringBuilder;

    invoke-direct/range {v19 .. v19}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/DeviceInfoSettings;->getResources()Landroid/content/res/Resources;

    move-result-object v20

    const v21, 0x7f0a0744

    invoke-virtual/range {v20 .. v21}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v20

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    const-string v20, " "

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    move-object/from16 v0, v19

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 1530
    new-instance v19, Ljava/lang/StringBuilder;

    invoke-direct/range {v19 .. v19}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v19

    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    const-string v20, "\n"

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    move-object/from16 v0, v19

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_3

    move-result-object v10

    .line 1539
    .end local v3    # "customizationVersion":Ljava/lang/String;
    :cond_3
    :goto_3
    :try_start_4
    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/DeviceInfoSettings;->getActivity()Landroid/app/Activity;

    move-result-object v19

    invoke-static/range {v19 .. v19}, Landroid/os/PersonaManager;->getKnoxContainerVersion(Landroid/content/Context;)Landroid/os/PersonaManager$KnoxContainerVersion;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Landroid/os/PersonaManager$KnoxContainerVersion;->toString()Ljava/lang/String;

    move-result-object v19

    if-eqz v19, :cond_4

    .line 1540
    new-instance v19, Ljava/lang/StringBuilder;

    invoke-direct/range {v19 .. v19}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/DeviceInfoSettings;->getResources()Landroid/content/res/Resources;

    move-result-object v20

    const v21, 0x7f0a073f

    invoke-virtual/range {v20 .. v21}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v20

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    const-string v20, " "

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/DeviceInfoSettings;->getActivity()Landroid/app/Activity;

    move-result-object v20

    invoke-static/range {v20 .. v20}, Landroid/os/PersonaManager;->getKnoxContainerVersion(Landroid/content/Context;)Landroid/os/PersonaManager$KnoxContainerVersion;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Landroid/os/PersonaManager$KnoxContainerVersion;->toString()Ljava/lang/String;

    move-result-object v20

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 1541
    .local v2, "containerVersion":Ljava/lang/String;
    new-instance v19, Ljava/lang/StringBuilder;

    invoke-direct/range {v19 .. v19}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v19

    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    const-string v20, "\n"

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    move-object/from16 v0, v19

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_4

    move-result-object v10

    .line 1550
    .end local v2    # "containerVersion":Ljava/lang/String;
    :cond_4
    :goto_4
    :try_start_5
    const-string v19, ""

    const-string v20, "net.knoxisl.version"

    const/16 v21, 0x0

    invoke-static/range {v20 .. v21}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v20

    invoke-virtual/range {v19 .. v20}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v19

    if-nez v19, :cond_5

    .line 1551
    new-instance v19, Ljava/lang/StringBuilder;

    invoke-direct/range {v19 .. v19}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/DeviceInfoSettings;->getResources()Landroid/content/res/Resources;

    move-result-object v20

    const v21, 0x7f0a0748

    invoke-virtual/range {v20 .. v21}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v20

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    const-string v20, " "

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    const-string v20, "net.knoxisl.version"

    const/16 v21, 0x0

    invoke-static/range {v20 .. v21}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v20

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    .line 1552
    .local v7, "imVersion":Ljava/lang/String;
    new-instance v19, Ljava/lang/StringBuilder;

    invoke-direct/range {v19 .. v19}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v19

    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    const-string v20, "\n"

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    move-object/from16 v0, v19

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_5

    move-result-object v10

    .line 1561
    .end local v7    # "imVersion":Ljava/lang/String;
    :cond_5
    :goto_5
    :try_start_6
    const-string v19, ""

    const-string v20, "net.knoxscep.version"

    const/16 v21, 0x0

    invoke-static/range {v20 .. v21}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v20

    invoke-virtual/range {v19 .. v20}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v19

    if-nez v19, :cond_6

    .line 1562
    new-instance v19, Ljava/lang/StringBuilder;

    invoke-direct/range {v19 .. v19}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/DeviceInfoSettings;->getResources()Landroid/content/res/Resources;

    move-result-object v20

    const v21, 0x7f0a0747

    invoke-virtual/range {v20 .. v21}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v20

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    const-string v20, " "

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    const-string v20, "net.knoxscep.version"

    const/16 v21, 0x0

    invoke-static/range {v20 .. v21}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v20

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    .line 1563
    .local v12, "scepVersion":Ljava/lang/String;
    new-instance v19, Ljava/lang/StringBuilder;

    invoke-direct/range {v19 .. v19}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v19

    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    const-string v20, "\n"

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    move-object/from16 v0, v19

    invoke-virtual {v0, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_6

    move-result-object v10

    .line 1572
    .end local v12    # "scepVersion":Ljava/lang/String;
    :cond_6
    :goto_6
    :try_start_7
    const-string v19, ""

    const-string v20, "sys.enterprise.billing.version"

    const/16 v21, 0x0

    invoke-static/range {v20 .. v21}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v20

    invoke-virtual/range {v19 .. v20}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v19

    if-nez v19, :cond_7

    .line 1573
    new-instance v19, Ljava/lang/StringBuilder;

    invoke-direct/range {v19 .. v19}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/DeviceInfoSettings;->getResources()Landroid/content/res/Resources;

    move-result-object v20

    const v21, 0x7f0a0743

    invoke-virtual/range {v20 .. v21}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v20

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    const-string v20, " "

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    const-string v20, "sys.enterprise.billing.version"

    const/16 v21, 0x0

    invoke-static/range {v20 .. v21}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v20

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    .line 1574
    .local v6, "enterpriseBillingVersion":Ljava/lang/String;
    new-instance v19, Ljava/lang/StringBuilder;

    invoke-direct/range {v19 .. v19}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v19

    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    const-string v20, "\n"

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    move-object/from16 v0, v19

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    :try_end_7
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_7

    move-result-object v10

    .line 1583
    .end local v6    # "enterpriseBillingVersion":Ljava/lang/String;
    :cond_7
    :goto_7
    :try_start_8
    const-string v19, ""

    invoke-static {}, Landroid/os/SELinux;->getSEAndroidVersion()Ljava/lang/String;

    move-result-object v20

    invoke-virtual/range {v19 .. v20}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v19

    if-nez v19, :cond_8

    .line 1584
    new-instance v19, Ljava/lang/StringBuilder;

    invoke-direct/range {v19 .. v19}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/DeviceInfoSettings;->getResources()Landroid/content/res/Resources;

    move-result-object v20

    const v21, 0x7f0a0745

    invoke-virtual/range {v20 .. v21}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v20

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    const-string v20, " "

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-static {}, Landroid/os/SELinux;->getSEAndroidVersion()Ljava/lang/String;

    move-result-object v20

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    .line 1585
    .local v13, "seAndroidVersion":Ljava/lang/String;
    new-instance v19, Ljava/lang/StringBuilder;

    invoke-direct/range {v19 .. v19}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v19

    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    const-string v20, "\n"

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    move-object/from16 v0, v19

    invoke-virtual {v0, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    :try_end_8
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_8} :catch_8

    move-result-object v10

    .line 1594
    .end local v13    # "seAndroidVersion":Ljava/lang/String;
    :cond_8
    :goto_8
    :try_start_9
    const-string v19, ""

    const-string v20, "net.knoxsso.version"

    const/16 v21, 0x0

    invoke-static/range {v20 .. v21}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v20

    invoke-virtual/range {v19 .. v20}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v19

    if-nez v19, :cond_9

    .line 1595
    new-instance v19, Ljava/lang/StringBuilder;

    invoke-direct/range {v19 .. v19}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/DeviceInfoSettings;->getResources()Landroid/content/res/Resources;

    move-result-object v20

    const v21, 0x7f0a0746

    invoke-virtual/range {v20 .. v21}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v20

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    const-string v20, " "

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    const-string v20, "net.knoxsso.version"

    const/16 v21, 0x0

    invoke-static/range {v20 .. v21}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v20

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    .line 1596
    .local v14, "ssoVersion":Ljava/lang/String;
    new-instance v19, Ljava/lang/StringBuilder;

    invoke-direct/range {v19 .. v19}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v19

    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    const-string v20, "\n"

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    move-object/from16 v0, v19

    invoke-virtual {v0, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    :try_end_9
    .catch Ljava/lang/Exception; {:try_start_9 .. :try_end_9} :catch_9

    move-result-object v10

    .line 1605
    .end local v14    # "ssoVersion":Ljava/lang/String;
    :cond_9
    :goto_9
    :try_start_a
    const-string v19, ""

    const-string v20, "ro.config.timaversion"

    const-string v21, "No Policy Version"

    invoke-static/range {v20 .. v21}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v20

    invoke-virtual/range {v19 .. v20}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v19

    if-nez v19, :cond_a

    .line 1606
    new-instance v19, Ljava/lang/StringBuilder;

    invoke-direct/range {v19 .. v19}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/DeviceInfoSettings;->getResources()Landroid/content/res/Resources;

    move-result-object v20

    const v21, 0x7f0a073e

    invoke-virtual/range {v20 .. v21}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v20

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    const-string v20, " "

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    const-string v20, "ro.config.timaversion"

    const-string v21, "No Policy Version"

    invoke-static/range {v20 .. v21}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v20

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v16

    .line 1607
    .local v16, "timaVersion":Ljava/lang/String;
    new-instance v19, Ljava/lang/StringBuilder;

    invoke-direct/range {v19 .. v19}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v19

    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    const-string v20, "\n"

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    move-object/from16 v0, v19

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    :try_end_a
    .catch Ljava/lang/Exception; {:try_start_a .. :try_end_a} :catch_a

    move-result-object v10

    .line 1616
    .end local v16    # "timaVersion":Ljava/lang/String;
    :cond_a
    :goto_a
    :try_start_b
    const-string v19, ""

    const-string v20, "net.knoxvpn.version"

    const/16 v21, 0x0

    invoke-static/range {v20 .. v21}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v20

    invoke-virtual/range {v19 .. v20}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v19

    if-nez v19, :cond_b

    .line 1617
    new-instance v19, Ljava/lang/StringBuilder;

    invoke-direct/range {v19 .. v19}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/DeviceInfoSettings;->getResources()Landroid/content/res/Resources;

    move-result-object v20

    const v21, 0x7f0a0742

    invoke-virtual/range {v20 .. v21}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v20

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    const-string v20, " "

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    const-string v20, "net.knoxvpn.version"

    const/16 v21, 0x0

    invoke-static/range {v20 .. v21}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v20

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    .line 1618
    .local v18, "vpnVersion":Ljava/lang/String;
    new-instance v19, Ljava/lang/StringBuilder;

    invoke-direct/range {v19 .. v19}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v19

    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    const-string v20, "\n"

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    move-object/from16 v0, v19

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    :try_end_b
    .catch Ljava/lang/Exception; {:try_start_b .. :try_end_b} :catch_b

    move-result-object v10

    .line 1625
    .end local v18    # "vpnVersion":Ljava/lang/String;
    :cond_b
    :goto_b
    invoke-static {v10}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v19

    if-nez v19, :cond_c

    .line 1626
    const-string v19, "knox_version"

    move-object/from16 v0, p0

    move-object/from16 v1, v19

    invoke-direct {v0, v1, v10}, Lcom/android/settings/DeviceInfoSettings;->setStringSummary(Ljava/lang/String;Ljava/lang/String;)V

    .line 1628
    :cond_c
    return-void

    .line 1497
    :catch_0
    move-exception v4

    .line 1498
    .local v4, "e":Ljava/lang/Exception;
    const-string v19, "DeviceInfoSettings"

    new-instance v20, Ljava/lang/StringBuilder;

    invoke-direct/range {v20 .. v20}, Ljava/lang/StringBuilder;-><init>()V

    const-string v21, "KnoxVersion Exception : "

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    invoke-virtual {v4}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v21

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v20

    invoke-static/range {v19 .. v20}, Landroid/util/secutil/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1499
    invoke-virtual {v4}, Ljava/lang/Exception;->printStackTrace()V

    goto/16 :goto_0

    .line 1509
    .end local v4    # "e":Ljava/lang/Exception;
    :catch_1
    move-exception v4

    .line 1510
    .restart local v4    # "e":Ljava/lang/Exception;
    const-string v19, "DeviceInfoSettings"

    new-instance v20, Ljava/lang/StringBuilder;

    invoke-direct/range {v20 .. v20}, Ljava/lang/StringBuilder;-><init>()V

    const-string v21, "KnoxVersion Exception : "

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    invoke-virtual {v4}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v21

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v20

    invoke-static/range {v19 .. v20}, Landroid/util/secutil/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1511
    invoke-virtual {v4}, Ljava/lang/Exception;->printStackTrace()V

    goto/16 :goto_1

    .line 1520
    .end local v4    # "e":Ljava/lang/Exception;
    :catch_2
    move-exception v4

    .line 1521
    .restart local v4    # "e":Ljava/lang/Exception;
    const-string v19, "DeviceInfoSettings"

    new-instance v20, Ljava/lang/StringBuilder;

    invoke-direct/range {v20 .. v20}, Ljava/lang/StringBuilder;-><init>()V

    const-string v21, "KnoxVersion Exception : "

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    invoke-virtual {v4}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v21

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v20

    invoke-static/range {v19 .. v20}, Landroid/util/secutil/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1522
    invoke-virtual {v4}, Ljava/lang/Exception;->printStackTrace()V

    goto/16 :goto_2

    .line 1532
    .end local v4    # "e":Ljava/lang/Exception;
    :catch_3
    move-exception v4

    .line 1533
    .restart local v4    # "e":Ljava/lang/Exception;
    const-string v19, "DeviceInfoSettings"

    new-instance v20, Ljava/lang/StringBuilder;

    invoke-direct/range {v20 .. v20}, Ljava/lang/StringBuilder;-><init>()V

    const-string v21, "KnoxVersion Exception : "

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    invoke-virtual {v4}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v21

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v20

    invoke-static/range {v19 .. v20}, Landroid/util/secutil/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1534
    invoke-virtual {v4}, Ljava/lang/Exception;->printStackTrace()V

    goto/16 :goto_3

    .line 1543
    .end local v4    # "e":Ljava/lang/Exception;
    :catch_4
    move-exception v4

    .line 1544
    .restart local v4    # "e":Ljava/lang/Exception;
    const-string v19, "DeviceInfoSettings"

    new-instance v20, Ljava/lang/StringBuilder;

    invoke-direct/range {v20 .. v20}, Ljava/lang/StringBuilder;-><init>()V

    const-string v21, "KnoxVersion Exception : "

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    invoke-virtual {v4}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v21

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v20

    invoke-static/range {v19 .. v20}, Landroid/util/secutil/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1545
    invoke-virtual {v4}, Ljava/lang/Exception;->printStackTrace()V

    goto/16 :goto_4

    .line 1554
    .end local v4    # "e":Ljava/lang/Exception;
    :catch_5
    move-exception v4

    .line 1555
    .restart local v4    # "e":Ljava/lang/Exception;
    const-string v19, "DeviceInfoSettings"

    new-instance v20, Ljava/lang/StringBuilder;

    invoke-direct/range {v20 .. v20}, Ljava/lang/StringBuilder;-><init>()V

    const-string v21, "KnoxVersion Exception : "

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    invoke-virtual {v4}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v21

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v20

    invoke-static/range {v19 .. v20}, Landroid/util/secutil/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1556
    invoke-virtual {v4}, Ljava/lang/Exception;->printStackTrace()V

    goto/16 :goto_5

    .line 1565
    .end local v4    # "e":Ljava/lang/Exception;
    :catch_6
    move-exception v4

    .line 1566
    .restart local v4    # "e":Ljava/lang/Exception;
    const-string v19, "DeviceInfoSettings"

    new-instance v20, Ljava/lang/StringBuilder;

    invoke-direct/range {v20 .. v20}, Ljava/lang/StringBuilder;-><init>()V

    const-string v21, "KnoxVersion Exception : "

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    invoke-virtual {v4}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v21

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v20

    invoke-static/range {v19 .. v20}, Landroid/util/secutil/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1567
    invoke-virtual {v4}, Ljava/lang/Exception;->printStackTrace()V

    goto/16 :goto_6

    .line 1576
    .end local v4    # "e":Ljava/lang/Exception;
    :catch_7
    move-exception v4

    .line 1577
    .restart local v4    # "e":Ljava/lang/Exception;
    const-string v19, "DeviceInfoSettings"

    new-instance v20, Ljava/lang/StringBuilder;

    invoke-direct/range {v20 .. v20}, Ljava/lang/StringBuilder;-><init>()V

    const-string v21, "KnoxVersion Exception : "

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    invoke-virtual {v4}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v21

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v20

    invoke-static/range {v19 .. v20}, Landroid/util/secutil/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1578
    invoke-virtual {v4}, Ljava/lang/Exception;->printStackTrace()V

    goto/16 :goto_7

    .line 1587
    .end local v4    # "e":Ljava/lang/Exception;
    :catch_8
    move-exception v4

    .line 1588
    .restart local v4    # "e":Ljava/lang/Exception;
    const-string v19, "DeviceInfoSettings"

    new-instance v20, Ljava/lang/StringBuilder;

    invoke-direct/range {v20 .. v20}, Ljava/lang/StringBuilder;-><init>()V

    const-string v21, "KnoxVersion Exception : "

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    invoke-virtual {v4}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v21

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v20

    invoke-static/range {v19 .. v20}, Landroid/util/secutil/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1589
    invoke-virtual {v4}, Ljava/lang/Exception;->printStackTrace()V

    goto/16 :goto_8

    .line 1598
    .end local v4    # "e":Ljava/lang/Exception;
    :catch_9
    move-exception v4

    .line 1599
    .restart local v4    # "e":Ljava/lang/Exception;
    const-string v19, "DeviceInfoSettings"

    new-instance v20, Ljava/lang/StringBuilder;

    invoke-direct/range {v20 .. v20}, Ljava/lang/StringBuilder;-><init>()V

    const-string v21, "KnoxVersion Exception : "

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    invoke-virtual {v4}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v21

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v20

    invoke-static/range {v19 .. v20}, Landroid/util/secutil/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1600
    invoke-virtual {v4}, Ljava/lang/Exception;->printStackTrace()V

    goto/16 :goto_9

    .line 1609
    .end local v4    # "e":Ljava/lang/Exception;
    :catch_a
    move-exception v4

    .line 1610
    .restart local v4    # "e":Ljava/lang/Exception;
    const-string v19, "DeviceInfoSettings"

    new-instance v20, Ljava/lang/StringBuilder;

    invoke-direct/range {v20 .. v20}, Ljava/lang/StringBuilder;-><init>()V

    const-string v21, "KnoxVersion Exception : "

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    invoke-virtual {v4}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v21

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v20

    invoke-static/range {v19 .. v20}, Landroid/util/secutil/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1611
    invoke-virtual {v4}, Ljava/lang/Exception;->printStackTrace()V

    goto/16 :goto_a

    .line 1620
    .end local v4    # "e":Ljava/lang/Exception;
    :catch_b
    move-exception v4

    .line 1621
    .restart local v4    # "e":Ljava/lang/Exception;
    const-string v19, "DeviceInfoSettings"

    new-instance v20, Ljava/lang/StringBuilder;

    invoke-direct/range {v20 .. v20}, Ljava/lang/StringBuilder;-><init>()V

    const-string v21, "KnoxVersion Exception : "

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    invoke-virtual {v4}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v21

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v20

    invoke-static/range {v19 .. v20}, Landroid/util/secutil/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1622
    invoke-virtual {v4}, Ljava/lang/Exception;->printStackTrace()V

    goto/16 :goto_b
.end method

.method private showSecuritySWVersion()V
    .locals 15

    .prologue
    .line 1370
    const-string v0, ""

    .line 1371
    .local v0, "securityMDFPP":Ljava/lang/String;
    const-string v6, ""

    .line 1374
    .local v6, "securityVPNPP":Ljava/lang/String;
    const-string v4, "MDF "

    .line 1375
    .local v4, "securityMDPPType":Ljava/lang/String;
    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "v"

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string v13, "ro.security.mdpp.ver"

    invoke-static {v13}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 1376
    .local v5, "securityMDPPVer":Ljava/lang/String;
    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, " Release "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string v13, "ro.security.mdpp.release"

    invoke-static {v13}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 1377
    .local v2, "securityMDPPRelease":Ljava/lang/String;
    const-string v3, ""

    .line 1378
    .local v3, "securityMDPPStatus":Ljava/lang/String;
    const-string v12, "security.mdpp"

    invoke-static {v12}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 1380
    .local v1, "securityMDPPProperty":Ljava/lang/String;
    const-string v12, "Enabled"

    invoke-virtual {v12, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_3

    .line 1381
    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, " : "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {p0}, Lcom/android/settings/DeviceInfoSettings;->getResources()Landroid/content/res/Resources;

    move-result-object v13

    const v14, 0x7f0a0737

    invoke-virtual {v13, v14}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 1389
    :cond_0
    :goto_0
    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v12, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 1392
    const-string v12, ""

    const-string v13, "ro.security.vpnpp.ver"

    invoke-static {v13}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v12, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-nez v12, :cond_2

    .line 1393
    const-string v10, "VPN "

    .line 1394
    .local v10, "securityVPNPPType":Ljava/lang/String;
    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "v"

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string v13, "ro.security.vpnpp.ver"

    invoke-static {v13}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    .line 1395
    .local v11, "securityVPNPPVer":Ljava/lang/String;
    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, " Release "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string v13, "ro.security.vpnpp.release"

    invoke-static {v13}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    .line 1396
    .local v8, "securityVPNPPRelease":Ljava/lang/String;
    const-string v9, ""

    .line 1397
    .local v9, "securityVPNPPStatus":Ljava/lang/String;
    const-string v12, "security.vpnpp"

    invoke-static {v12}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 1399
    .local v7, "securityVPNPPProperty":Ljava/lang/String;
    const-string v12, "Enabled"

    invoke-virtual {v12, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_6

    .line 1400
    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, " : "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {p0}, Lcom/android/settings/DeviceInfoSettings;->getResources()Landroid/content/res/Resources;

    move-result-object v13

    const v14, 0x7f0a0737

    invoke-virtual {v13, v14}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    .line 1408
    :cond_1
    :goto_1
    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v12, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string v13, "\n"

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    .line 1411
    .end local v7    # "securityVPNPPProperty":Ljava/lang/String;
    .end local v8    # "securityVPNPPRelease":Ljava/lang/String;
    .end local v9    # "securityVPNPPStatus":Ljava/lang/String;
    .end local v10    # "securityVPNPPType":Ljava/lang/String;
    .end local v11    # "securityVPNPPVer":Ljava/lang/String;
    :cond_2
    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v12, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    sput-object v12, Lcom/android/settings/DeviceInfoSettings;->securitySWVersion:Ljava/lang/String;

    .line 1412
    const-string v12, "security_sw_version"

    sget-object v13, Lcom/android/settings/DeviceInfoSettings;->securitySWVersion:Ljava/lang/String;

    invoke-direct {p0, v12, v13}, Lcom/android/settings/DeviceInfoSettings;->setStringSummary(Ljava/lang/String;Ljava/lang/String;)V

    .line 1413
    return-void

    .line 1382
    :cond_3
    const-string v12, "Enforcing"

    invoke-virtual {v12, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_4

    .line 1383
    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, " : "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {p0}, Lcom/android/settings/DeviceInfoSettings;->getResources()Landroid/content/res/Resources;

    move-result-object v13

    const v14, 0x7f0a0738

    invoke-virtual {v13, v14}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    goto/16 :goto_0

    .line 1384
    :cond_4
    const-string v12, "Ready"

    invoke-virtual {v12, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_5

    .line 1385
    const-string v3, ""

    goto/16 :goto_0

    .line 1386
    :cond_5
    const-string v12, "Disabled"

    invoke-virtual {v12, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_0

    .line 1387
    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, " : "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {p0}, Lcom/android/settings/DeviceInfoSettings;->getResources()Landroid/content/res/Resources;

    move-result-object v13

    const v14, 0x7f0a073a

    invoke-virtual {v13, v14}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    goto/16 :goto_0

    .line 1401
    .restart local v7    # "securityVPNPPProperty":Ljava/lang/String;
    .restart local v8    # "securityVPNPPRelease":Ljava/lang/String;
    .restart local v9    # "securityVPNPPStatus":Ljava/lang/String;
    .restart local v10    # "securityVPNPPType":Ljava/lang/String;
    .restart local v11    # "securityVPNPPVer":Ljava/lang/String;
    :cond_6
    const-string v12, "Enforcing"

    invoke-virtual {v12, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_7

    .line 1402
    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, " : "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {p0}, Lcom/android/settings/DeviceInfoSettings;->getResources()Landroid/content/res/Resources;

    move-result-object v13

    const v14, 0x7f0a0738

    invoke-virtual {v13, v14}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    goto/16 :goto_1

    .line 1403
    :cond_7
    const-string v12, "Ready"

    invoke-virtual {v12, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_8

    .line 1404
    const-string v9, ""

    goto/16 :goto_1

    .line 1405
    :cond_8
    const-string v12, "Disabled"

    invoke-virtual {v12, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_1

    .line 1406
    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, " : "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {p0}, Lcom/android/settings/DeviceInfoSettings;->getResources()Landroid/content/res/Resources;

    move-result-object v13

    const v14, 0x7f0a073a

    invoke-virtual {v13, v14}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    goto/16 :goto_1
.end method


# virtual methods
.method public isPackageExists(Ljava/lang/String;)Z
    .locals 6
    .param p1, "targetPackage"    # Ljava/lang/String;

    .prologue
    const/4 v4, 0x0

    .line 1251
    invoke-virtual {p0}, Lcom/android/settings/DeviceInfoSettings;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v3

    .line 1252
    .local v3, "pm":Landroid/content/pm/PackageManager;
    invoke-virtual {v3, v4}, Landroid/content/pm/PackageManager;->getInstalledApplications(I)Ljava/util/List;

    move-result-object v2

    .line 1253
    .local v2, "packages":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ApplicationInfo;>;"
    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/content/pm/ApplicationInfo;

    .line 1254
    .local v1, "packageInfo":Landroid/content/pm/ApplicationInfo;
    iget-object v5, v1, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v5, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 1255
    const/4 v4, 0x1

    .line 1258
    .end local v1    # "packageInfo":Landroid/content/pm/ApplicationInfo;
    :cond_1
    return v4
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 43
    .param p1, "icicle"    # Landroid/os/Bundle;

    .prologue
    .line 216
    invoke-super/range {p0 .. p1}, Lcom/android/settings/SettingsPreferenceFragment;->onCreate(Landroid/os/Bundle;)V

    .line 217
    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/DeviceInfoSettings;->getActivity()Landroid/app/Activity;

    move-result-object v39

    invoke-virtual/range {v39 .. v39}, Landroid/app/Activity;->getBaseContext()Landroid/content/Context;

    move-result-object v27

    .line 219
    .local v27, "mContext":Landroid/content/Context;
    invoke-static {}, Lcom/android/settings/Utils;->isMultisimModel()Z

    move-result v39

    if-eqz v39, :cond_23

    .line 220
    const v39, 0x7f07003f

    move-object/from16 v0, p0

    move/from16 v1, v39

    invoke-virtual {v0, v1}, Lcom/android/settings/DeviceInfoSettings;->addPreferencesFromResource(I)V

    .line 222
    invoke-static/range {v27 .. v27}, Lcom/samsung/android/telephony/MultiSimManager;->getEnabledSimCount(Landroid/content/Context;)I

    move-result v39

    const/16 v40, 0x2

    move/from16 v0, v39

    move/from16 v1, v40

    if-lt v0, v1, :cond_22

    .line 223
    new-instance v22, Landroid/content/Intent;

    invoke-direct/range {v22 .. v22}, Landroid/content/Intent;-><init>()V

    .line 224
    .local v22, "i":Landroid/content/Intent;
    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/DeviceInfoSettings;->getActivity()Landroid/app/Activity;

    move-result-object v39

    const-string v40, "com.android.settings.deviceinfo.DeviceInfoTabActivity"

    move-object/from16 v0, v22

    move-object/from16 v1, v39

    move-object/from16 v2, v40

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->setClassName(Landroid/content/Context;Ljava/lang/String;)Landroid/content/Intent;

    .line 225
    const-string v39, "status_info"

    move-object/from16 v0, p0

    move-object/from16 v1, v39

    invoke-virtual {v0, v1}, Lcom/android/settings/DeviceInfoSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v39

    move-object/from16 v0, v39

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Landroid/preference/Preference;->setIntent(Landroid/content/Intent;)V

    .line 243
    .end local v22    # "i":Landroid/content/Intent;
    :cond_0
    :goto_0
    const-string v39, "Enabled"

    const-string v40, "ro.security.mdpp.ux"

    invoke-static/range {v40 .. v40}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v40

    invoke-virtual/range {v39 .. v40}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v39

    if-eqz v39, :cond_24

    .line 244
    invoke-direct/range {p0 .. p0}, Lcom/android/settings/DeviceInfoSettings;->doBindService()V

    .line 245
    invoke-direct/range {p0 .. p0}, Lcom/android/settings/DeviceInfoSettings;->showSecuritySWVersion()V

    .line 246
    const-string v39, "security_sw_version"

    move-object/from16 v0, p0

    move-object/from16 v1, v39

    invoke-virtual {v0, v1}, Lcom/android/settings/DeviceInfoSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v39

    const/16 v40, 0x1

    invoke-virtual/range {v39 .. v40}, Landroid/preference/Preference;->setEnabled(Z)V

    .line 253
    :goto_1
    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/DeviceInfoSettings;->getActivity()Landroid/app/Activity;

    move-result-object v39

    invoke-static/range {v39 .. v39}, Landroid/os/PersonaManager;->getKnoxContainerVersion(Landroid/content/Context;)Landroid/os/PersonaManager$KnoxContainerVersion;

    move-result-object v16

    .line 254
    .local v16, "currentVersion":Landroid/os/PersonaManager$KnoxContainerVersion;
    sget-object v39, Landroid/os/PersonaManager$KnoxContainerVersion;->KNOX_CONTAINER_VERSION_2_2_0:Landroid/os/PersonaManager$KnoxContainerVersion;

    move-object/from16 v0, v16

    move-object/from16 v1, v39

    invoke-virtual {v0, v1}, Landroid/os/PersonaManager$KnoxContainerVersion;->compareTo(Ljava/lang/Enum;)I

    move-result v39

    if-ltz v39, :cond_25

    .line 255
    const-string v39, "knox_version"

    move-object/from16 v0, p0

    move-object/from16 v1, v39

    invoke-virtual {v0, v1}, Lcom/android/settings/DeviceInfoSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v39

    const/16 v40, 0x1

    invoke-virtual/range {v39 .. v40}, Landroid/preference/Preference;->setEnabled(Z)V

    .line 256
    invoke-direct/range {p0 .. p0}, Lcom/android/settings/DeviceInfoSettings;->showKnoxVersion()V

    .line 262
    :goto_2
    invoke-direct/range {p0 .. p0}, Lcom/android/settings/DeviceInfoSettings;->readSalesCode()Ljava/lang/String;

    move-result-object v34

    .line 264
    .local v34, "sales_code":Ljava/lang/String;
    const-string v39, "key_diagnostics_info"

    move-object/from16 v0, p0

    move-object/from16 v1, v39

    invoke-virtual {v0, v1}, Lcom/android/settings/DeviceInfoSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v39

    check-cast v39, Landroid/preference/CheckBoxPreference;

    move-object/from16 v0, v39

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/settings/DeviceInfoSettings;->mDiagnosticInfo:Landroid/preference/CheckBoxPreference;

    .line 266
    invoke-static {}, Lcom/samsung/android/feature/FloatingFeature;->getInstance()Lcom/samsung/android/feature/FloatingFeature;

    move-result-object v39

    const-string v40, "SEC_FLOATING_FEATURE_CONTEXTSERVICE_ENABLE_SURVEY_MODE"

    invoke-virtual/range {v39 .. v40}, Lcom/samsung/android/feature/FloatingFeature;->getEnableStatus(Ljava/lang/String;)Z

    move-result v39

    if-eqz v39, :cond_1

    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/DeviceInfoSettings;->getActivity()Landroid/app/Activity;

    move-result-object v39

    invoke-static/range {v39 .. v39}, Lcom/android/settings/Utils;->isGuestMode(Landroid/content/Context;)Z

    move-result v39

    if-nez v39, :cond_1

    const-string v39, "VZW"

    move-object/from16 v0, v39

    move-object/from16 v1, v34

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v39

    if-eqz v39, :cond_2

    .line 268
    :cond_1
    const-string v39, "key_diagnostics_info"

    move-object/from16 v0, p0

    move-object/from16 v1, v39

    invoke-virtual {v0, v1}, Lcom/android/settings/DeviceInfoSettings;->removePreference(Ljava/lang/String;)V

    .line 271
    :cond_2
    const-string v39, "firmware_version"

    sget-object v40, Landroid/os/Build$VERSION;->RELEASE:Ljava/lang/String;

    move-object/from16 v0, p0

    move-object/from16 v1, v39

    move-object/from16 v2, v40

    invoke-direct {v0, v1, v2}, Lcom/android/settings/DeviceInfoSettings;->setStringSummary(Ljava/lang/String;Ljava/lang/String;)V

    .line 272
    const-string v39, "firmware_version"

    move-object/from16 v0, p0

    move-object/from16 v1, v39

    invoke-virtual {v0, v1}, Lcom/android/settings/DeviceInfoSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v39

    const/16 v40, 0x1

    invoke-virtual/range {v39 .. v40}, Landroid/preference/Preference;->setEnabled(Z)V

    .line 273
    const-string v39, "device_name"

    move-object/from16 v0, p0

    move-object/from16 v1, v39

    invoke-virtual {v0, v1}, Lcom/android/settings/DeviceInfoSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v39

    move-object/from16 v0, v39

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/settings/DeviceInfoSettings;->mDeviceName:Landroid/preference/Preference;

    .line 274
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/DeviceInfoSettings;->mDeviceName:Landroid/preference/Preference;

    move-object/from16 v39, v0

    const/16 v40, 0x1

    invoke-virtual/range {v39 .. v40}, Landroid/preference/Preference;->setEnabled(Z)V

    .line 275
    const-string v39, "VZW"

    move-object/from16 v0, v39

    move-object/from16 v1, v34

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v39

    if-eqz v39, :cond_3

    const/16 v39, 0x0

    invoke-static/range {v39 .. v39}, Lcom/android/settings/Utils;->isTablet(Landroid/content/Context;)Z

    move-result v39

    if-nez v39, :cond_3

    .line 276
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/DeviceInfoSettings;->mDeviceName:Landroid/preference/Preference;

    move-object/from16 v39, v0

    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/DeviceInfoSettings;->getResources()Landroid/content/res/Resources;

    move-result-object v40

    const v41, 0x7f0a0094

    invoke-virtual/range {v40 .. v41}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v40

    invoke-virtual/range {v39 .. v40}, Landroid/preference/Preference;->setTitle(Ljava/lang/CharSequence;)V

    .line 279
    :cond_3
    const-string v39, "ro.product.model"

    const-string v40, "Unknown"

    invoke-static/range {v39 .. v40}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v28

    .line 281
    .local v28, "model":Ljava/lang/String;
    invoke-static {}, Lcom/sec/android/app/CscFeature;->getInstance()Lcom/sec/android/app/CscFeature;

    move-result-object v39

    const-string v40, "CscFeature_Setting_ChangeApprovedModemVersion"

    invoke-virtual/range {v39 .. v40}, Lcom/sec/android/app/CscFeature;->getEnableStatus(Ljava/lang/String;)Z

    move-result v39

    if-eqz v39, :cond_26

    const-string v39, "none"

    const-string v40, "ril.approved_modemver"

    const-string v41, "none"

    invoke-static/range {v40 .. v41}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v40

    invoke-virtual/range {v39 .. v40}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v39

    if-nez v39, :cond_26

    .line 283
    const-string v39, "baseband_version"

    const-string v40, "ril.approved_modemver"

    move-object/from16 v0, p0

    move-object/from16 v1, v39

    move-object/from16 v2, v40

    invoke-direct {v0, v1, v2}, Lcom/android/settings/DeviceInfoSettings;->setValueSummary(Ljava/lang/String;Ljava/lang/String;)V

    .line 290
    :goto_3
    const-string v39, "SPR"

    move-object/from16 v0, v39

    move-object/from16 v1, v34

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v39

    if-nez v39, :cond_4

    const-string v39, "VMU"

    move-object/from16 v0, v39

    move-object/from16 v1, v34

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v39

    if-nez v39, :cond_4

    const-string v39, "BST"

    move-object/from16 v0, v39

    move-object/from16 v1, v34

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v39

    if-nez v39, :cond_4

    const-string v39, "XAS"

    move-object/from16 v0, v39

    move-object/from16 v1, v34

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v39

    if-eqz v39, :cond_2b

    .line 292
    :cond_4
    invoke-static {}, Lcom/sec/android/app/CscFeature;->getInstance()Lcom/sec/android/app/CscFeature;

    move-result-object v39

    const-string v40, "CscFeature_Setting_ChangeApprovedModemVersion"

    invoke-virtual/range {v39 .. v40}, Lcom/sec/android/app/CscFeature;->getEnableStatus(Ljava/lang/String;)Z

    move-result v39

    if-eqz v39, :cond_29

    const-string v39, "none"

    const-string v40, "ril.approved_modemver"

    const-string v41, "none"

    invoke-static/range {v40 .. v41}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v40

    invoke-virtual/range {v39 .. v40}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v39

    if-nez v39, :cond_29

    .line 294
    const-string v39, "software_version"

    const-string v40, "ril.approved_modemver"

    move-object/from16 v0, p0

    move-object/from16 v1, v39

    move-object/from16 v2, v40

    invoke-direct {v0, v1, v2}, Lcom/android/settings/DeviceInfoSettings;->setValueSummary(Ljava/lang/String;Ljava/lang/String;)V

    .line 304
    :goto_4
    const-string v39, "VZW"

    move-object/from16 v0, v39

    move-object/from16 v1, v34

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v39

    if-eqz v39, :cond_5

    const-string v39, "com.samsung.helphub"

    move-object/from16 v0, p0

    move-object/from16 v1, v39

    invoke-virtual {v0, v1}, Lcom/android/settings/DeviceInfoSettings;->isPackageExists(Ljava/lang/String;)Z

    move-result v39

    if-nez v39, :cond_6

    .line 305
    :cond_5
    const-string v39, "icon_glossary"

    move-object/from16 v0, p0

    move-object/from16 v1, v39

    invoke-virtual {v0, v1}, Lcom/android/settings/DeviceInfoSettings;->removePreference(Ljava/lang/String;)V

    .line 307
    :cond_6
    const-string v39, "VZW"

    move-object/from16 v0, v39

    move-object/from16 v1, v34

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v39

    if-eqz v39, :cond_7

    .line 310
    :try_start_0
    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/DeviceInfoSettings;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v39

    const-string v40, "com.samsung.helphub"

    const/16 v41, 0x0

    invoke-virtual/range {v39 .. v41}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v23

    .line 311
    .local v23, "info":Landroid/content/pm/PackageInfo;
    move-object/from16 v0, v23

    iget v0, v0, Landroid/content/pm/PackageInfo;->versionCode:I

    move/from16 v39, v0

    rem-int/lit8 v39, v39, 0xa

    const/16 v40, 0x2

    move/from16 v0, v39

    move/from16 v1, v40

    if-ge v0, v1, :cond_7

    .line 312
    const-string v39, "icon_glossary"

    move-object/from16 v0, p0

    move-object/from16 v1, v39

    invoke-virtual {v0, v1}, Lcom/android/settings/DeviceInfoSettings;->removePreference(Ljava/lang/String;)V
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 318
    .end local v23    # "info":Landroid/content/pm/PackageInfo;
    :cond_7
    :goto_5
    const-string v39, "ro.product.name"

    invoke-static/range {v39 .. v39}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v39

    const-string v40, "mproject"

    invoke-virtual/range {v39 .. v40}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v39

    if-nez v39, :cond_8

    .line 319
    const-string v39, "label_name"

    move-object/from16 v0, p0

    move-object/from16 v1, v39

    invoke-virtual {v0, v1}, Lcom/android/settings/DeviceInfoSettings;->removePreference(Ljava/lang/String;)V

    .line 322
    :cond_8
    invoke-static {}, Lcom/sec/android/app/CscFeature;->getInstance()Lcom/sec/android/app/CscFeature;

    move-result-object v39

    const-string v40, "CscFeature_Common_EnableRegionalDevice"

    invoke-virtual/range {v39 .. v40}, Lcom/sec/android/app/CscFeature;->getEnableStatus(Ljava/lang/String;)Z

    move-result v39

    if-eqz v39, :cond_2f

    .line 323
    const-string v39, "DEF"

    move-object/from16 v0, v39

    move-object/from16 v1, v34

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v39

    if-eqz v39, :cond_2c

    .line 324
    const-string v39, "installed_variant_version"

    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/DeviceInfoSettings;->getResources()Landroid/content/res/Resources;

    move-result-object v40

    const v41, 0x7f0a0730

    invoke-virtual/range {v40 .. v41}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v40

    move-object/from16 v0, p0

    move-object/from16 v1, v39

    move-object/from16 v2, v40

    invoke-direct {v0, v1, v2}, Lcom/android/settings/DeviceInfoSettings;->setStringSummary(Ljava/lang/String;Ljava/lang/String;)V

    .line 341
    :goto_6
    const-string v39, "device_model"

    new-instance v40, Ljava/lang/StringBuilder;

    invoke-direct/range {v40 .. v40}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v41, Landroid/os/Build;->MODEL:Ljava/lang/String;

    invoke-virtual/range {v40 .. v41}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v40

    invoke-direct/range {p0 .. p0}, Lcom/android/settings/DeviceInfoSettings;->getMsvSuffix()Ljava/lang/String;

    move-result-object v41

    invoke-virtual/range {v40 .. v41}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v40

    invoke-virtual/range {v40 .. v40}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v40

    move-object/from16 v0, p0

    move-object/from16 v1, v39

    move-object/from16 v2, v40

    invoke-direct {v0, v1, v2}, Lcom/android/settings/DeviceInfoSettings;->setStringSummary(Ljava/lang/String;Ljava/lang/String;)V

    .line 342
    const-string v39, "fcc_equipment_id"

    const-string v40, "ro.ril.fccid"

    move-object/from16 v0, p0

    move-object/from16 v1, v39

    move-object/from16 v2, v40

    invoke-direct {v0, v1, v2}, Lcom/android/settings/DeviceInfoSettings;->setValueSummary(Ljava/lang/String;Ljava/lang/String;)V

    .line 343
    invoke-static {}, Lcom/sec/android/app/CscFeature;->getInstance()Lcom/sec/android/app/CscFeature;

    move-result-object v39

    const-string v40, "CscFeature_Setting_ConfigModelNumber"

    invoke-virtual/range {v39 .. v40}, Lcom/sec/android/app/CscFeature;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 344
    .local v4, "ExtraTag":Ljava/lang/String;
    const-string v39, "device_model"

    new-instance v40, Ljava/lang/StringBuilder;

    invoke-direct/range {v40 .. v40}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v41, Landroid/os/Build;->MODEL:Ljava/lang/String;

    invoke-virtual/range {v40 .. v41}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v40

    move-object/from16 v0, v40

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v40

    invoke-virtual/range {v40 .. v40}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v40

    move-object/from16 v0, p0

    move-object/from16 v1, v39

    move-object/from16 v2, v40

    invoke-direct {v0, v1, v2}, Lcom/android/settings/DeviceInfoSettings;->setStringSummary(Ljava/lang/String;Ljava/lang/String;)V

    .line 346
    invoke-static {}, Lcom/android/settings/Utils;->isChinaCMCCModel()Z

    move-result v39

    if-eqz v39, :cond_30

    .line 347
    const-string v39, "build_number"

    sget-object v40, Landroid/os/Build;->DISPLAY:Ljava/lang/String;

    move-object/from16 v0, p0

    move-object/from16 v1, v40

    invoke-direct {v0, v1}, Lcom/android/settings/DeviceInfoSettings;->getCMCCBuildNumberSummary(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v40

    move-object/from16 v0, p0

    move-object/from16 v1, v39

    move-object/from16 v2, v40

    invoke-direct {v0, v1, v2}, Lcom/android/settings/DeviceInfoSettings;->setStringSummary(Ljava/lang/String;Ljava/lang/String;)V

    .line 351
    :goto_7
    const-string v39, "build_number"

    move-object/from16 v0, p0

    move-object/from16 v1, v39

    invoke-virtual {v0, v1}, Lcom/android/settings/DeviceInfoSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v39

    const/16 v40, 0x1

    invoke-virtual/range {v39 .. v40}, Landroid/preference/Preference;->setEnabled(Z)V

    .line 352
    const-string v39, "VZW"

    move-object/from16 v0, v39

    move-object/from16 v1, v34

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v39

    if-eqz v39, :cond_31

    .line 353
    const-string v39, "kernel_version"

    move-object/from16 v0, p0

    move-object/from16 v1, v39

    invoke-virtual {v0, v1}, Lcom/android/settings/DeviceInfoSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v39

    invoke-static {}, Lcom/android/settings/DeviceInfoSettings;->getFormattedKernelVersionVZW()Ljava/lang/String;

    move-result-object v40

    invoke-virtual/range {v39 .. v40}, Landroid/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    .line 357
    :goto_8
    const/16 v35, 0x0

    .line 358
    .local v35, "seStatus":Ljava/lang/String;
    invoke-static {}, Landroid/os/SELinux;->isSELinuxEnabled()Z

    move-result v39

    if-eqz v39, :cond_33

    .line 359
    invoke-static {}, Landroid/os/SELinux;->isSELinuxEnforced()Z

    move-result v39

    if-eqz v39, :cond_32

    .line 360
    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/DeviceInfoSettings;->getResources()Landroid/content/res/Resources;

    move-result-object v39

    const v40, 0x7f0a0def

    invoke-virtual/range {v39 .. v40}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v35

    .line 361
    new-instance v39, Ljava/lang/StringBuilder;

    invoke-direct/range {v39 .. v39}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v39

    move-object/from16 v1, v35

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v39

    const-string v40, "\n"

    invoke-virtual/range {v39 .. v40}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v39

    invoke-virtual/range {v39 .. v39}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v35

    .line 364
    :try_start_1
    const-string v39, ""

    invoke-static {}, Landroid/os/SELinux;->getSEPolicyVersion()Ljava/lang/String;

    move-result-object v40

    invoke-virtual/range {v39 .. v40}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v39

    if-nez v39, :cond_9

    .line 365
    new-instance v39, Ljava/lang/StringBuilder;

    invoke-direct/range {v39 .. v39}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v39

    move-object/from16 v1, v35

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v39

    invoke-static {}, Landroid/os/SELinux;->getSEPolicyVersion()Ljava/lang/String;

    move-result-object v40

    invoke-virtual/range {v39 .. v40}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v39

    invoke-virtual/range {v39 .. v39}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v35

    .line 366
    new-instance v39, Ljava/lang/StringBuilder;

    invoke-direct/range {v39 .. v39}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v39

    move-object/from16 v1, v35

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v39

    const-string v40, "\n"

    invoke-virtual/range {v39 .. v40}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v39

    invoke-virtual/range {v39 .. v39}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    move-result-object v35

    .line 374
    :cond_9
    :goto_9
    :try_start_2
    const-string v39, ""

    invoke-static {}, Landroid/os/SELinux;->getSEPolicyBuildDate()Ljava/lang/String;

    move-result-object v40

    invoke-virtual/range {v39 .. v40}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v39

    if-nez v39, :cond_a

    .line 375
    new-instance v39, Ljava/lang/StringBuilder;

    invoke-direct/range {v39 .. v39}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v39

    move-object/from16 v1, v35

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v39

    invoke-static {}, Landroid/os/SELinux;->getSEPolicyBuildDate()Ljava/lang/String;

    move-result-object v40

    invoke-virtual/range {v39 .. v40}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v39

    invoke-virtual/range {v39 .. v39}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2

    move-result-object v35

    .line 381
    :cond_a
    :goto_a
    const-string v39, "DeviceInfoSettings"

    new-instance v40, Ljava/lang/StringBuilder;

    invoke-direct/range {v40 .. v40}, Ljava/lang/StringBuilder;-><init>()V

    const-string v41, "DeviceInfoSettings seStatus : "

    invoke-virtual/range {v40 .. v41}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v40

    move-object/from16 v0, v40

    move-object/from16 v1, v35

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v40

    invoke-virtual/range {v40 .. v40}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v40

    invoke-static/range {v39 .. v40}, Landroid/util/secutil/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 388
    :goto_b
    const-string v39, "selinux_status"

    move-object/from16 v0, p0

    move-object/from16 v1, v39

    move-object/from16 v2, v35

    invoke-direct {v0, v1, v2}, Lcom/android/settings/DeviceInfoSettings;->setStringSummary(Ljava/lang/String;Ljava/lang/String;)V

    .line 391
    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/DeviceInfoSettings;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v39

    const-string v40, "selinux_status"

    const-string v41, "ro.build.selinux"

    move-object/from16 v0, p0

    move-object/from16 v1, v39

    move-object/from16 v2, v40

    move-object/from16 v3, v41

    invoke-direct {v0, v1, v2, v3}, Lcom/android/settings/DeviceInfoSettings;->removePreferenceIfPropertyMissing(Landroid/preference/PreferenceGroup;Ljava/lang/String;Ljava/lang/String;)V

    .line 395
    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/DeviceInfoSettings;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v39

    const-string v40, "safetylegal"

    const-string v41, "ro.url.safetylegal"

    move-object/from16 v0, p0

    move-object/from16 v1, v39

    move-object/from16 v2, v40

    move-object/from16 v3, v41

    invoke-direct {v0, v1, v2, v3}, Lcom/android/settings/DeviceInfoSettings;->removePreferenceIfPropertyMissing(Landroid/preference/PreferenceGroup;Ljava/lang/String;Ljava/lang/String;)V

    .line 399
    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/DeviceInfoSettings;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v39

    const-string v40, "fcc_equipment_id"

    const-string v41, "ro.ril.fccid"

    move-object/from16 v0, p0

    move-object/from16 v1, v39

    move-object/from16 v2, v40

    move-object/from16 v3, v41

    invoke-direct {v0, v1, v2, v3}, Lcom/android/settings/DeviceInfoSettings;->removePreferenceIfPropertyMissing(Landroid/preference/PreferenceGroup;Ljava/lang/String;Ljava/lang/String;)V

    .line 402
    const-string v39, "selinux.policy_version"

    const-string v40, "No Policy Version"

    invoke-static/range {v39 .. v40}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v30

    .line 403
    .local v30, "policyVersion":Ljava/lang/String;
    const-string v39, "GOOGLE_POLICY"

    move-object/from16 v0, v39

    move-object/from16 v1, v30

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v39

    if-nez v39, :cond_b

    const-string v39, "No Policy Version"

    move-object/from16 v0, v39

    move-object/from16 v1, v30

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v39

    if-eqz v39, :cond_c

    .line 404
    :cond_b
    const-string v39, "selinux_status"

    move-object/from16 v0, p0

    move-object/from16 v1, v39

    invoke-virtual {v0, v1}, Lcom/android/settings/DeviceInfoSettings;->removePreference(Ljava/lang/String;)V

    .line 408
    :cond_c
    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/DeviceInfoSettings;->getActivity()Landroid/app/Activity;

    move-result-object v39

    invoke-static/range {v39 .. v39}, Lcom/android/settings/Utils;->isWifiOnly(Landroid/content/Context;)Z

    move-result v39

    if-eqz v39, :cond_d

    .line 409
    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/DeviceInfoSettings;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v39

    const-string v40, "baseband_version"

    move-object/from16 v0, p0

    move-object/from16 v1, v40

    invoke-virtual {v0, v1}, Lcom/android/settings/DeviceInfoSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v40

    invoke-virtual/range {v39 .. v40}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    .line 414
    :cond_d
    const-string v39, "XSG"

    move-object/from16 v0, v39

    move-object/from16 v1, v34

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v39

    if-nez v39, :cond_e

    const-string v39, "XSD"

    move-object/from16 v0, v39

    move-object/from16 v1, v34

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v39

    if-nez v39, :cond_e

    const-string v39, "XST"

    move-object/from16 v0, v39

    move-object/from16 v1, v34

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v39

    if-nez v39, :cond_e

    const-string v39, "XSZ"

    move-object/from16 v0, v39

    move-object/from16 v1, v34

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v39

    if-nez v39, :cond_e

    const-string v39, "XSM"

    move-object/from16 v0, v39

    move-object/from16 v1, v34

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v39

    if-nez v39, :cond_e

    const-string v39, "XSS"

    move-object/from16 v0, v39

    move-object/from16 v1, v34

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v39

    if-nez v39, :cond_e

    const-string v39, "XSI"

    move-object/from16 v0, v39

    move-object/from16 v1, v34

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v39

    if-eqz v39, :cond_36

    .line 416
    :cond_e
    :try_start_3
    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/DeviceInfoSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v39

    const-string v40, "country_cert_info_enable"

    invoke-static/range {v39 .. v40}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;)I

    move-result v39

    const/16 v40, 0x1

    move/from16 v0, v39

    move/from16 v1, v40

    if-ne v0, v1, :cond_35

    .line 417
    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/DeviceInfoSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v39

    const-string v40, "country_cert_info_traid"

    invoke-static/range {v39 .. v40}, Landroid/provider/Settings$System;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v13

    .line 418
    .local v13, "certTRAID":Ljava/lang/String;
    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/DeviceInfoSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v39

    const-string v40, "country_cert_info_ta"

    invoke-static/range {v39 .. v40}, Landroid/provider/Settings$System;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    .line 419
    .local v12, "certTA":Ljava/lang/String;
    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/DeviceInfoSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v39

    const-string v40, "country_cert_info_name"

    invoke-static/range {v39 .. v40}, Landroid/provider/Settings$System;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    .line 420
    .local v10, "certCountryName":Ljava/lang/String;
    if-eqz v13, :cond_34

    if-eqz v12, :cond_34

    if-eqz v10, :cond_34

    .line 421
    new-instance v39, Ljava/lang/StringBuilder;

    invoke-direct/range {v39 .. v39}, Ljava/lang/StringBuilder;-><init>()V

    const-string v40, "TRA ID : "

    invoke-virtual/range {v39 .. v40}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v39

    move-object/from16 v0, v39

    invoke-virtual {v0, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v39

    const-string v40, "\nTA : "

    invoke-virtual/range {v39 .. v40}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v39

    move-object/from16 v0, v39

    invoke-virtual {v0, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v39

    invoke-virtual/range {v39 .. v39}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    .line 422
    .local v11, "certName":Ljava/lang/String;
    const-string v39, "country_certification_info"

    move-object/from16 v0, p0

    move-object/from16 v1, v39

    invoke-virtual {v0, v1}, Lcom/android/settings/DeviceInfoSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v39

    move-object/from16 v0, v39

    invoke-virtual {v0, v11}, Landroid/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    .line 423
    const-string v39, "country_certification_info"

    move-object/from16 v0, p0

    move-object/from16 v1, v39

    invoke-virtual {v0, v1}, Lcom/android/settings/DeviceInfoSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v39

    move-object/from16 v0, v39

    invoke-virtual {v0, v10}, Landroid/preference/Preference;->setTitle(Ljava/lang/CharSequence;)V
    :try_end_3
    .catch Landroid/provider/Settings$SettingNotFoundException; {:try_start_3 .. :try_end_3} :catch_3

    .line 437
    .end local v10    # "certCountryName":Ljava/lang/String;
    .end local v11    # "certName":Ljava/lang/String;
    .end local v12    # "certTA":Ljava/lang/String;
    .end local v13    # "certTRAID":Ljava/lang/String;
    :goto_c
    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/DeviceInfoSettings;->getActivity()Landroid/app/Activity;

    move-result-object v39

    invoke-static/range {v39 .. v39}, Lcom/android/settings/DeviceInfoSettings;->getFeedbackReporterPackage(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v39

    invoke-static/range {v39 .. v39}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v39

    if-eqz v39, :cond_f

    .line 438
    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/DeviceInfoSettings;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v39

    const-string v40, "device_feedback"

    move-object/from16 v0, p0

    move-object/from16 v1, v40

    invoke-virtual {v0, v1}, Lcom/android/settings/DeviceInfoSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v40

    invoke-virtual/range {v39 .. v40}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    .line 445
    :cond_f
    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/DeviceInfoSettings;->getActivity()Landroid/app/Activity;

    move-result-object v6

    .line 447
    .local v6, "act":Landroid/app/Activity;
    const-string v39, "container"

    move-object/from16 v0, p0

    move-object/from16 v1, v39

    invoke-virtual {v0, v1}, Lcom/android/settings/DeviceInfoSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v29

    check-cast v29, Landroid/preference/PreferenceGroup;

    .line 448
    .local v29, "parentPreference":Landroid/preference/PreferenceGroup;
    const-string v39, "terms"

    const/16 v40, 0x1

    move-object/from16 v0, v29

    move-object/from16 v1, v39

    move/from16 v2, v40

    invoke-static {v6, v0, v1, v2}, Lcom/android/settings/Utils;->updatePreferenceToSpecificActivityOrRemove(Landroid/content/Context;Landroid/preference/PreferenceGroup;Ljava/lang/String;I)Z

    .line 450
    const-string v39, "license"

    const/16 v40, 0x1

    move-object/from16 v0, v29

    move-object/from16 v1, v39

    move/from16 v2, v40

    invoke-static {v6, v0, v1, v2}, Lcom/android/settings/Utils;->updatePreferenceToSpecificActivityOrRemove(Landroid/content/Context;Landroid/preference/PreferenceGroup;Ljava/lang/String;I)Z

    .line 452
    const-string v39, "copyright"

    const/16 v40, 0x1

    move-object/from16 v0, v29

    move-object/from16 v1, v39

    move/from16 v2, v40

    invoke-static {v6, v0, v1, v2}, Lcom/android/settings/Utils;->updatePreferenceToSpecificActivityOrRemove(Landroid/content/Context;Landroid/preference/PreferenceGroup;Ljava/lang/String;I)Z

    .line 454
    const-string v39, "team"

    const/16 v40, 0x1

    move-object/from16 v0, v29

    move-object/from16 v1, v39

    move/from16 v2, v40

    invoke-static {v6, v0, v1, v2}, Lcom/android/settings/Utils;->updatePreferenceToSpecificActivityOrRemove(Landroid/content/Context;Landroid/preference/PreferenceGroup;Ljava/lang/String;I)Z

    .line 463
    const-string v39, "divx_license_settings"

    move-object/from16 v0, p0

    move-object/from16 v1, v39

    invoke-virtual {v0, v1}, Lcom/android/settings/DeviceInfoSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v18

    .line 464
    .local v18, "divxLicenseSetting":Landroid/preference/Preference;
    new-instance v19, Ljava/io/File;

    const-string v39, "/system/lib/drm/libdivxplugin.so"

    move-object/from16 v0, v19

    move-object/from16 v1, v39

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 465
    .local v19, "divxplugin_path":Ljava/io/File;
    invoke-virtual/range {v19 .. v19}, Ljava/io/File;->exists()Z

    move-result v39

    if-nez v39, :cond_10

    .line 466
    if-eqz v18, :cond_10

    .line 467
    move-object/from16 v0, v29

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceGroup;->removePreference(Landroid/preference/Preference;)Z

    .line 470
    :cond_10
    const-string v39, "d2spr"

    const-string v40, "ro.product.device"

    invoke-static/range {v40 .. v40}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v40

    invoke-virtual/range {v39 .. v40}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v39

    if-eqz v39, :cond_11

    .line 471
    move-object/from16 v0, v29

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceGroup;->removePreference(Landroid/preference/Preference;)Z

    .line 475
    :cond_11
    const-string v39, "VMU"

    move-object/from16 v0, v39

    move-object/from16 v1, v34

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v39

    if-nez v39, :cond_12

    const-string v39, "SPR"

    move-object/from16 v0, v39

    move-object/from16 v1, v34

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v39

    if-nez v39, :cond_12

    const-string v39, "BST"

    move-object/from16 v0, v39

    move-object/from16 v1, v34

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v39

    if-nez v39, :cond_12

    const-string v39, "XAR"

    move-object/from16 v0, v39

    move-object/from16 v1, v34

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v39

    if-nez v39, :cond_12

    const-string v39, "XAS"

    move-object/from16 v0, v39

    move-object/from16 v1, v34

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v39

    if-nez v39, :cond_12

    .line 476
    const-string v39, "privacy_alert"

    move-object/from16 v0, p0

    move-object/from16 v1, v39

    invoke-virtual {v0, v1}, Lcom/android/settings/DeviceInfoSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v39

    move-object/from16 v0, v29

    move-object/from16 v1, v39

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceGroup;->removePreference(Landroid/preference/Preference;)Z

    .line 480
    :cond_12
    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/DeviceInfoSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v39

    const-string v40, "samsung_eula_agree"

    const/16 v41, 0x0

    const/16 v42, 0x0

    invoke-static/range {v39 .. v42}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v39

    const/16 v40, 0x1

    move/from16 v0, v39

    move/from16 v1, v40

    if-ne v0, v1, :cond_37

    const/4 v14, 0x1

    .line 481
    .local v14, "confirmed":Z
    :goto_d
    invoke-static {}, Lcom/android/settings/Utils;->isJapanModel()Z

    move-result v39

    if-eqz v39, :cond_13

    .line 483
    const/4 v14, 0x1

    .line 485
    :cond_13
    if-nez v14, :cond_14

    .line 486
    const-string v39, "samsung_legal"

    move-object/from16 v0, p0

    move-object/from16 v1, v39

    invoke-virtual {v0, v1}, Lcom/android/settings/DeviceInfoSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v39

    move-object/from16 v0, v29

    move-object/from16 v1, v39

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceGroup;->removePreference(Landroid/preference/Preference;)Z

    .line 488
    :cond_14
    const-string v39, "com.samsung.safetyinformation"

    move-object/from16 v0, p0

    move-object/from16 v1, v39

    invoke-direct {v0, v1}, Lcom/android/settings/DeviceInfoSettings;->isPackageLoaded(Ljava/lang/String;)Z

    move-result v39

    if-eqz v39, :cond_15

    invoke-static {}, Lcom/android/settings/Utils;->isAllNAVendor()Z

    move-result v39

    if-nez v39, :cond_15

    invoke-static {}, Lcom/android/settings/Utils;->isJapanModel()Z

    move-result v39

    if-eqz v39, :cond_16

    .line 489
    :cond_15
    const-string v39, "safetyinfomation"

    move-object/from16 v0, p0

    move-object/from16 v1, v39

    invoke-virtual {v0, v1}, Lcom/android/settings/DeviceInfoSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v39

    move-object/from16 v0, v29

    move-object/from16 v1, v39

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceGroup;->removePreference(Landroid/preference/Preference;)Z

    .line 493
    :cond_16
    const/16 v39, 0x0

    invoke-static/range {v39 .. v39}, Lcom/android/settings/Utils;->isTablet(Landroid/content/Context;)Z

    move-result v39

    if-nez v39, :cond_38

    invoke-static {}, Lcom/android/settings/Utils;->isAllNAVendor()Z

    move-result v39

    if-eqz v39, :cond_38

    const-string v39, "samsung_legal"

    move-object/from16 v0, p0

    move-object/from16 v1, v39

    invoke-virtual {v0, v1}, Lcom/android/settings/DeviceInfoSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v39

    if-eqz v39, :cond_38

    invoke-static {}, Lcom/android/settings/Utils;->isSupportMenuTreeForK()Z

    move-result v39

    if-eqz v39, :cond_38

    .line 494
    const-string v39, "samsung_legal"

    move-object/from16 v0, p0

    move-object/from16 v1, v39

    invoke-virtual {v0, v1}, Lcom/android/settings/DeviceInfoSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v39

    const/16 v40, 0x0

    invoke-virtual/range {v39 .. v40}, Landroid/preference/Preference;->setIntent(Landroid/content/Intent;)V

    .line 495
    const-string v39, "samsung_legal"

    move-object/from16 v0, p0

    move-object/from16 v1, v39

    invoke-virtual {v0, v1}, Lcom/android/settings/DeviceInfoSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v39

    const-string v40, "com.android.settings.SamsungLegalInfo"

    invoke-virtual/range {v39 .. v40}, Landroid/preference/Preference;->setFragment(Ljava/lang/String;)V

    .line 499
    :cond_17
    :goto_e
    const-string v39, "ro.product.name"

    invoke-static/range {v39 .. v39}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    .line 500
    .local v9, "buildcarrier":Ljava/lang/String;
    const-string v39, "iconvmu"

    move-object/from16 v0, v39

    invoke-virtual {v0, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v39

    if-nez v39, :cond_18

    .line 501
    const-string v39, "telespree_activation"

    move-object/from16 v0, p0

    move-object/from16 v1, v39

    invoke-virtual {v0, v1}, Lcom/android/settings/DeviceInfoSettings;->removePreference(Ljava/lang/String;)V

    .line 504
    :cond_18
    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/DeviceInfoSettings;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v29

    .line 505
    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v39

    if-nez v39, :cond_39

    .line 506
    const-string v39, "system_update_settings"

    const/16 v40, 0x1

    move-object/from16 v0, v29

    move-object/from16 v1, v39

    move/from16 v2, v40

    invoke-static {v6, v0, v1, v2}, Lcom/android/settings/Utils;->updatePreferenceToSpecificActivityOrRemove(Landroid/content/Context;Landroid/preference/PreferenceGroup;Ljava/lang/String;I)Z

    .line 515
    :goto_f
    invoke-direct/range {p0 .. p0}, Lcom/android/settings/DeviceInfoSettings;->readSoftwareUpdateType()Ljava/lang/String;

    move-result-object v38

    .line 516
    .local v38, "updateType":Ljava/lang/String;
    move-object/from16 v0, p0

    move-object/from16 v1, v38

    invoke-direct {v0, v1}, Lcom/android/settings/DeviceInfoSettings;->removeSoftwareUpdatePreference(Ljava/lang/String;)V

    .line 518
    const-string v39, "contributors"

    const/16 v40, 0x1

    move-object/from16 v0, v29

    move-object/from16 v1, v39

    move/from16 v2, v40

    invoke-static {v6, v0, v1, v2}, Lcom/android/settings/Utils;->updatePreferenceToSpecificActivityOrRemove(Landroid/content/Context;Landroid/preference/PreferenceGroup;Ljava/lang/String;I)Z

    .line 522
    const-string v39, "additional_system_update_settings"

    const v40, 0x7f0d0005

    move-object/from16 v0, p0

    move-object/from16 v1, v39

    move/from16 v2, v40

    invoke-direct {v0, v1, v2}, Lcom/android/settings/DeviceInfoSettings;->removePreferenceIfBoolFalse(Ljava/lang/String;I)V

    .line 529
    new-instance v24, Landroid/content/Intent;

    const-string v39, "android.settings.SHOW_REGULATORY_INFO"

    move-object/from16 v0, v24

    move-object/from16 v1, v39

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 530
    .local v24, "intent":Landroid/content/Intent;
    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/DeviceInfoSettings;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v39

    const/16 v40, 0x0

    move-object/from16 v0, v39

    move-object/from16 v1, v24

    move/from16 v2, v40

    invoke-virtual {v0, v1, v2}, Landroid/content/pm/PackageManager;->queryIntentActivities(Landroid/content/Intent;I)Ljava/util/List;

    move-result-object v39

    invoke-interface/range {v39 .. v39}, Ljava/util/List;->isEmpty()Z

    move-result v39

    if-eqz v39, :cond_19

    .line 531
    const-string v39, "regulatory_info"

    move-object/from16 v0, p0

    move-object/from16 v1, v39

    invoke-virtual {v0, v1}, Lcom/android/settings/DeviceInfoSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v31

    .line 532
    .local v31, "pref":Landroid/preference/Preference;
    if-eqz v31, :cond_19

    .line 533
    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/DeviceInfoSettings;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v39

    move-object/from16 v0, v39

    move-object/from16 v1, v31

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    .line 538
    .end local v31    # "pref":Landroid/preference/Preference;
    :cond_19
    const-string v39, "com.samsung.ccr"

    move-object/from16 v0, p0

    move-object/from16 v1, v39

    invoke-direct {v0, v1}, Lcom/android/settings/DeviceInfoSettings;->isPackageLoaded(Ljava/lang/String;)Z

    move-result v39

    if-nez v39, :cond_1a

    .line 540
    const-string v39, "DeviceInfoSettings"

    const-string v40, "remove diagnostics_and_usage"

    invoke-static/range {v39 .. v40}, Landroid/util/secutil/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 541
    const-string v39, "diagnostics_and_usage"

    move-object/from16 v0, p0

    move-object/from16 v1, v39

    invoke-virtual {v0, v1}, Lcom/android/settings/DeviceInfoSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v39

    move-object/from16 v0, v29

    move-object/from16 v1, v39

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceGroup;->removePreference(Landroid/preference/Preference;)Z

    .line 544
    :cond_1a
    invoke-static {}, Lcom/sec/android/app/CscFeature;->getInstance()Lcom/sec/android/app/CscFeature;

    move-result-object v39

    const-string v40, "CscFeature_Setting_EnableHwVersionDisplay"

    invoke-virtual/range {v39 .. v40}, Lcom/sec/android/app/CscFeature;->getEnableStatus(Ljava/lang/String;)Z

    move-result v39

    if-eqz v39, :cond_3c

    .line 546
    const-string v39, "ril.hw_ver"

    invoke-static/range {v39 .. v39}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 547
    .local v5, "HW_version_SysProp":Ljava/lang/String;
    if-eqz v5, :cond_3b

    .line 548
    const-string v39, "SPH-D710"

    move-object/from16 v0, v39

    invoke-virtual {v0, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v39

    if-eqz v39, :cond_3a

    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v39

    const/16 v40, 0xa

    move/from16 v0, v39

    move/from16 v1, v40

    if-lt v0, v1, :cond_3a

    .line 549
    const-string v39, "hardware_version"

    move-object/from16 v0, p0

    move-object/from16 v1, v39

    invoke-virtual {v0, v1}, Lcom/android/settings/DeviceInfoSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v39

    const/16 v40, 0x2

    const/16 v41, 0xa

    move/from16 v0, v40

    move/from16 v1, v41

    invoke-virtual {v5, v0, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v40

    invoke-virtual/range {v39 .. v40}, Landroid/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    .line 561
    .end local v5    # "HW_version_SysProp":Ljava/lang/String;
    :goto_10
    const-string v39, "SPR"

    move-object/from16 v0, v39

    move-object/from16 v1, v34

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v39

    if-nez v39, :cond_1b

    const-string v39, "VMU"

    move-object/from16 v0, v39

    move-object/from16 v1, v34

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v39

    if-nez v39, :cond_1b

    const-string v39, "BST"

    move-object/from16 v0, v39

    move-object/from16 v1, v34

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v39

    if-nez v39, :cond_1b

    const-string v39, "XAS"

    move-object/from16 v0, v39

    move-object/from16 v1, v34

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v39

    if-eqz v39, :cond_3e

    .line 563
    :cond_1b
    const-string v39, "ril.hw_ver"

    invoke-static/range {v39 .. v39}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 564
    .restart local v5    # "HW_version_SysProp":Ljava/lang/String;
    const-string v39, "hardware_version"

    move-object/from16 v0, p0

    move-object/from16 v1, v39

    invoke-virtual {v0, v1}, Lcom/android/settings/DeviceInfoSettings;->removePreference(Ljava/lang/String;)V

    .line 565
    if-eqz v5, :cond_3d

    .line 566
    const-string v39, "hardware_version_spr"

    move-object/from16 v0, p0

    move-object/from16 v1, v39

    invoke-virtual {v0, v1}, Lcom/android/settings/DeviceInfoSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v39

    move-object/from16 v0, v39

    invoke-virtual {v0, v5}, Landroid/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    .line 567
    const-string v39, "DeviceInfoSettings"

    new-instance v40, Ljava/lang/StringBuilder;

    invoke-direct/range {v40 .. v40}, Ljava/lang/StringBuilder;-><init>()V

    const-string v41, "CSCFEATURE_SETTINGS_ENABLEHWVERSIONDISPLAY:"

    invoke-virtual/range {v40 .. v41}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v40

    move-object/from16 v0, v40

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v40

    invoke-virtual/range {v40 .. v40}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v40

    invoke-static/range {v39 .. v40}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 576
    .end local v5    # "HW_version_SysProp":Ljava/lang/String;
    :goto_11
    invoke-static {}, Lcom/sec/android/app/CscFeature;->getInstance()Lcom/sec/android/app/CscFeature;

    move-result-object v39

    const-string v40, "CscFeature_Setting_DisableMenuSoftwareUpdate"

    invoke-virtual/range {v39 .. v40}, Lcom/sec/android/app/CscFeature;->getEnableStatus(Ljava/lang/String;)Z

    move-result v39

    const/16 v40, 0x1

    move/from16 v0, v39

    move/from16 v1, v40

    if-ne v0, v1, :cond_1c

    .line 577
    move-object/from16 v0, p0

    move-object/from16 v1, v38

    invoke-virtual {v0, v1}, Lcom/android/settings/DeviceInfoSettings;->removePreference(Ljava/lang/String;)V

    .line 582
    :cond_1c
    const-string v39, "help"

    move-object/from16 v0, p0

    move-object/from16 v1, v39

    invoke-virtual {v0, v1}, Lcom/android/settings/DeviceInfoSettings;->removePreference(Ljava/lang/String;)V

    .line 585
    const-string v39, ""

    invoke-static/range {v39 .. v39}, Lcom/android/settings/Utils;->isDuosModel(Ljava/lang/String;)Z

    move-result v39

    if-eqz v39, :cond_1d

    .line 586
    new-instance v22, Landroid/content/Intent;

    invoke-direct/range {v22 .. v22}, Landroid/content/Intent;-><init>()V

    .line 587
    .restart local v22    # "i":Landroid/content/Intent;
    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/DeviceInfoSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v39

    const-string v40, "phone1_on"

    const/16 v41, 0x1

    invoke-static/range {v39 .. v41}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v39

    const/16 v40, 0x1

    move/from16 v0, v39

    move/from16 v1, v40

    if-ne v0, v1, :cond_3f

    const/4 v7, 0x1

    .line 588
    .local v7, "bOnSIM1":Z
    :goto_12
    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/DeviceInfoSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v39

    const-string v40, "phone2_on"

    const/16 v41, 0x1

    invoke-static/range {v39 .. v41}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v39

    const/16 v40, 0x1

    move/from16 v0, v39

    move/from16 v1, v40

    if-ne v0, v1, :cond_40

    const/4 v8, 0x1

    .line 590
    .local v8, "bOnSIM2":Z
    :goto_13
    invoke-static/range {v27 .. v27}, Lcom/samsung/android/telephony/MultiSimManager;->getEnabledSimCount(Landroid/content/Context;)I

    move-result v39

    const/16 v40, 0x1

    move/from16 v0, v39

    move/from16 v1, v40

    if-le v0, v1, :cond_41

    if-eqz v7, :cond_41

    if-eqz v8, :cond_41

    .line 591
    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/DeviceInfoSettings;->getActivity()Landroid/app/Activity;

    move-result-object v39

    const-string v40, "com.android.settings.deviceinfo.DeviceInfoTabActivity"

    move-object/from16 v0, v22

    move-object/from16 v1, v39

    move-object/from16 v2, v40

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->setClassName(Landroid/content/Context;Ljava/lang/String;)Landroid/content/Intent;

    .line 600
    :goto_14
    const-string v39, "status_info"

    move-object/from16 v0, p0

    move-object/from16 v1, v39

    invoke-virtual {v0, v1}, Lcom/android/settings/DeviceInfoSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v39

    move-object/from16 v0, v39

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Landroid/preference/Preference;->setIntent(Landroid/content/Intent;)V

    .line 604
    .end local v7    # "bOnSIM1":Z
    .end local v8    # "bOnSIM2":Z
    .end local v22    # "i":Landroid/content/Intent;
    :cond_1d
    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/DeviceInfoSettings;->getActivity()Landroid/app/Activity;

    move-result-object v39

    const-string v40, "com.ctc.epush"

    invoke-static/range {v39 .. v40}, Lcom/android/settings/Utils;->hasPackage(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v39

    if-nez v39, :cond_1e

    .line 605
    const-string v39, "ctc_epush"

    move-object/from16 v0, p0

    move-object/from16 v1, v39

    invoke-virtual {v0, v1}, Lcom/android/settings/DeviceInfoSettings;->removePreference(Ljava/lang/String;)V

    .line 609
    :cond_1e
    const-string v39, "plmn_update_settings"

    move-object/from16 v0, p0

    move-object/from16 v1, v39

    invoke-virtual {v0, v1}, Lcom/android/settings/DeviceInfoSettings;->removePreference(Ljava/lang/String;)V

    .line 613
    const-string v39, "sprint_4g_settings"

    move-object/from16 v0, p0

    move-object/from16 v1, v39

    invoke-virtual {v0, v1}, Lcom/android/settings/DeviceInfoSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v33

    .line 614
    .local v33, "removable":Landroid/preference/Preference;
    if-eqz v33, :cond_1f

    .line 615
    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/DeviceInfoSettings;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v39

    move-object/from16 v0, v39

    move-object/from16 v1, v33

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    .line 619
    :cond_1f
    invoke-static {}, Lcom/android/settings/Utils;->isDomesticModel()Z

    move-result v39

    if-eqz v39, :cond_44

    const/16 v39, 0x0

    invoke-static/range {v39 .. v39}, Lcom/android/settings/Utils;->isTablet(Landroid/content/Context;)Z

    move-result v39

    if-eqz v39, :cond_44

    .line 621
    const-string v39, "key_label_settings"

    move-object/from16 v0, p0

    move-object/from16 v1, v39

    invoke-virtual {v0, v1}, Lcom/android/settings/DeviceInfoSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v26

    .line 622
    .local v26, "labelPref":Landroid/preference/Preference;
    const-string v39, "com.android.settings.deviceinfo.LabelSettings"

    move-object/from16 v0, v26

    move-object/from16 v1, v39

    invoke-virtual {v0, v1}, Landroid/preference/Preference;->setFragment(Ljava/lang/String;)V

    .line 629
    .end local v26    # "labelPref":Landroid/preference/Preference;
    :goto_15
    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/DeviceInfoSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v39

    const-string v40, "device_name"

    invoke-static/range {v39 .. v40}, Landroid/provider/Settings$System;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v17

    .line 630
    .local v17, "deviceName":Ljava/lang/String;
    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/DeviceInfoSettings;->getActivity()Landroid/app/Activity;

    move-result-object v39

    const-string v40, "user"

    invoke-virtual/range {v39 .. v40}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v39

    check-cast v39, Landroid/os/UserManager;

    move-object/from16 v0, v39

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/settings/DeviceInfoSettings;->mUserManager:Landroid/os/UserManager;

    .line 631
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/DeviceInfoSettings;->mUserManager:Landroid/os/UserManager;

    move-object/from16 v39, v0

    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v40

    invoke-virtual/range {v39 .. v40}, Landroid/os/UserManager;->getUserInfo(I)Landroid/content/pm/UserInfo;

    move-result-object v39

    invoke-virtual/range {v39 .. v39}, Landroid/content/pm/UserInfo;->isRestricted()Z

    move-result v39

    if-eqz v39, :cond_20

    if-nez v17, :cond_20

    .line 633
    const-string v39, ""

    const-string v40, "Galaxy Note4"

    invoke-virtual/range {v39 .. v40}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v39

    if-nez v39, :cond_20

    .line 634
    const-string v17, "Galaxy Note4"

    .line 635
    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/DeviceInfoSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v39

    const-string v40, "device_name"

    move-object/from16 v0, v39

    move-object/from16 v1, v40

    move-object/from16 v2, v17

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$System;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z

    .line 638
    :cond_20
    const-string v39, "device_name"

    move-object/from16 v0, p0

    move-object/from16 v1, v39

    move-object/from16 v2, v17

    invoke-direct {v0, v1, v2}, Lcom/android/settings/DeviceInfoSettings;->setStringSummary(Ljava/lang/String;Ljava/lang/String;)V

    .line 641
    const-string v39, "ro.csb_val"

    invoke-static/range {v39 .. v39}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v25

    .line 643
    .local v25, "keyIndex":Ljava/lang/String;
    const-string v39, "DeviceInfoSettings"

    new-instance v40, Ljava/lang/StringBuilder;

    invoke-direct/range {v40 .. v40}, Ljava/lang/StringBuilder;-><init>()V

    const-string v41, "CSB debug keyindex= "

    invoke-virtual/range {v40 .. v41}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v40

    move-object/from16 v0, v40

    move-object/from16 v1, v25

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v40

    invoke-virtual/range {v40 .. v40}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v40

    invoke-static/range {v39 .. v40}, Landroid/util/secutil/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 644
    const-string v39, "unknown"

    move-object/from16 v0, v25

    move-object/from16 v1, v39

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v39

    if-nez v39, :cond_21

    const-string v39, "ABSENT"

    move-object/from16 v0, v25

    move-object/from16 v1, v39

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v39

    if-nez v39, :cond_21

    const-string v39, ""

    move-object/from16 v0, v25

    move-object/from16 v1, v39

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v39

    if-eqz v39, :cond_45

    .line 646
    :cond_21
    const-string v39, "csb_value"

    move-object/from16 v0, p0

    move-object/from16 v1, v39

    invoke-virtual {v0, v1}, Lcom/android/settings/DeviceInfoSettings;->removePreference(Ljava/lang/String;)V

    .line 665
    :goto_16
    const-string v21, ""

    .line 666
    .local v21, "fccId":Ljava/lang/String;
    const-string v32, ""

    .line 667
    .local v32, "ratedValue":Ljava/lang/String;
    const-string v39, ""

    move-object/from16 v0, v39

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v39

    if-eqz v39, :cond_4a

    .line 668
    const-string v39, "fcc_id"

    move-object/from16 v0, p0

    move-object/from16 v1, v39

    invoke-virtual {v0, v1}, Lcom/android/settings/DeviceInfoSettings;->removePreference(Ljava/lang/String;)V

    .line 672
    :goto_17
    const-string v39, ""

    move-object/from16 v0, v39

    move-object/from16 v1, v32

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v39

    if-eqz v39, :cond_4b

    .line 673
    const-string v39, "rated_value"

    move-object/from16 v0, p0

    move-object/from16 v1, v39

    invoke-virtual {v0, v1}, Lcom/android/settings/DeviceInfoSettings;->removePreference(Ljava/lang/String;)V

    .line 680
    :goto_18
    const-string v39, "preload_update"

    move-object/from16 v0, p0

    move-object/from16 v1, v39

    invoke-virtual {v0, v1}, Lcom/android/settings/DeviceInfoSettings;->removePreference(Ljava/lang/String;)V

    .line 682
    const-string v39, "VZW"

    move-object/from16 v0, v39

    move-object/from16 v1, v34

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v39

    if-eqz v39, :cond_4c

    const-string v39, ""

    const-string v40, ""

    invoke-virtual/range {v39 .. v40}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v39

    if-nez v39, :cond_4c

    .line 684
    const-string v39, "sdm_config_version"

    move-object/from16 v0, p0

    move-object/from16 v1, v39

    invoke-virtual {v0, v1}, Lcom/android/settings/DeviceInfoSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v39

    invoke-direct/range {p0 .. p0}, Lcom/android/settings/DeviceInfoSettings;->getSDMConfigVersion()Ljava/lang/String;

    move-result-object v40

    invoke-virtual/range {v39 .. v40}, Landroid/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    .line 688
    :goto_19
    return-void

    .line 226
    .end local v4    # "ExtraTag":Ljava/lang/String;
    .end local v6    # "act":Landroid/app/Activity;
    .end local v9    # "buildcarrier":Ljava/lang/String;
    .end local v14    # "confirmed":Z
    .end local v16    # "currentVersion":Landroid/os/PersonaManager$KnoxContainerVersion;
    .end local v17    # "deviceName":Ljava/lang/String;
    .end local v18    # "divxLicenseSetting":Landroid/preference/Preference;
    .end local v19    # "divxplugin_path":Ljava/io/File;
    .end local v21    # "fccId":Ljava/lang/String;
    .end local v24    # "intent":Landroid/content/Intent;
    .end local v25    # "keyIndex":Ljava/lang/String;
    .end local v28    # "model":Ljava/lang/String;
    .end local v29    # "parentPreference":Landroid/preference/PreferenceGroup;
    .end local v30    # "policyVersion":Ljava/lang/String;
    .end local v32    # "ratedValue":Ljava/lang/String;
    .end local v33    # "removable":Landroid/preference/Preference;
    .end local v34    # "sales_code":Ljava/lang/String;
    .end local v35    # "seStatus":Ljava/lang/String;
    .end local v38    # "updateType":Ljava/lang/String;
    :cond_22
    const-string v39, "READY"

    const-string v40, "gsm.sim.state"

    const/16 v41, 0x1

    const-string v42, "UNKNOWN"

    invoke-static/range {v40 .. v42}, Lcom/samsung/android/telephony/MultiSimManager;->getTelephonyProperty(Ljava/lang/String;ILjava/lang/String;)Ljava/lang/String;

    move-result-object v40

    invoke-virtual/range {v39 .. v40}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v39

    if-eqz v39, :cond_0

    .line 228
    new-instance v22, Landroid/content/Intent;

    invoke-direct/range {v22 .. v22}, Landroid/content/Intent;-><init>()V

    .line 229
    .restart local v22    # "i":Landroid/content/Intent;
    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/DeviceInfoSettings;->getActivity()Landroid/app/Activity;

    move-result-object v39

    const-string v40, "com.android.settings.deviceinfo.Status"

    move-object/from16 v0, v22

    move-object/from16 v1, v39

    move-object/from16 v2, v40

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->setClassName(Landroid/content/Context;Ljava/lang/String;)Landroid/content/Intent;

    .line 230
    const-string v39, "sim Id"

    const/16 v40, 0x1

    move-object/from16 v0, v22

    move-object/from16 v1, v39

    move/from16 v2, v40

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 231
    const-string v39, "status_info"

    move-object/from16 v0, p0

    move-object/from16 v1, v39

    invoke-virtual {v0, v1}, Lcom/android/settings/DeviceInfoSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v39

    move-object/from16 v0, v39

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Landroid/preference/Preference;->setIntent(Landroid/content/Intent;)V

    goto/16 :goto_0

    .line 234
    .end local v22    # "i":Landroid/content/Intent;
    :cond_23
    const v39, 0x7f07003f

    move-object/from16 v0, p0

    move/from16 v1, v39

    invoke-virtual {v0, v1}, Lcom/android/settings/DeviceInfoSettings;->addPreferencesFromResource(I)V

    goto/16 :goto_0

    .line 248
    :cond_24
    const-string v39, "security_sw_version"

    move-object/from16 v0, p0

    move-object/from16 v1, v39

    invoke-virtual {v0, v1}, Lcom/android/settings/DeviceInfoSettings;->removePreference(Ljava/lang/String;)V

    goto/16 :goto_1

    .line 258
    .restart local v16    # "currentVersion":Landroid/os/PersonaManager$KnoxContainerVersion;
    :cond_25
    const-string v39, "knox_version"

    move-object/from16 v0, p0

    move-object/from16 v1, v39

    invoke-virtual {v0, v1}, Lcom/android/settings/DeviceInfoSettings;->removePreference(Ljava/lang/String;)V

    goto/16 :goto_2

    .line 284
    .restart local v28    # "model":Ljava/lang/String;
    .restart local v34    # "sales_code":Ljava/lang/String;
    :cond_26
    const-string v39, "E160L"

    move-object/from16 v0, v28

    move-object/from16 v1, v39

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v39

    if-nez v39, :cond_27

    const-string v39, "E120L"

    move-object/from16 v0, v28

    move-object/from16 v1, v39

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v39

    if-eqz v39, :cond_28

    .line 285
    :cond_27
    const-string v39, "baseband_version"

    const-string v40, "ril.sw_ver"

    move-object/from16 v0, p0

    move-object/from16 v1, v39

    move-object/from16 v2, v40

    invoke-direct {v0, v1, v2}, Lcom/android/settings/DeviceInfoSettings;->setValueSummary(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_3

    .line 287
    :cond_28
    const-string v39, "baseband_version"

    const-string v40, "gsm.version.baseband"

    move-object/from16 v0, p0

    move-object/from16 v1, v39

    move-object/from16 v2, v40

    invoke-direct {v0, v1, v2}, Lcom/android/settings/DeviceInfoSettings;->setValueSummary(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_3

    .line 295
    :cond_29
    const-string v39, "E160L"

    move-object/from16 v0, v28

    move-object/from16 v1, v39

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v39

    if-eqz v39, :cond_2a

    .line 296
    const-string v39, "software_version"

    const-string v40, "ril.sw_ver"

    move-object/from16 v0, p0

    move-object/from16 v1, v39

    move-object/from16 v2, v40

    invoke-direct {v0, v1, v2}, Lcom/android/settings/DeviceInfoSettings;->setValueSummary(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_4

    .line 298
    :cond_2a
    const-string v39, "software_version"

    const-string v40, "gsm.version.baseband"

    move-object/from16 v0, p0

    move-object/from16 v1, v39

    move-object/from16 v2, v40

    invoke-direct {v0, v1, v2}, Lcom/android/settings/DeviceInfoSettings;->setValueSummary(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_4

    .line 301
    :cond_2b
    const-string v39, "software_version"

    move-object/from16 v0, p0

    move-object/from16 v1, v39

    invoke-virtual {v0, v1}, Lcom/android/settings/DeviceInfoSettings;->removePreference(Ljava/lang/String;)V

    goto/16 :goto_4

    .line 314
    :catch_0
    move-exception v20

    .line 315
    .local v20, "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    invoke-virtual/range {v20 .. v20}, Landroid/content/pm/PackageManager$NameNotFoundException;->printStackTrace()V

    goto/16 :goto_5

    .line 326
    .end local v20    # "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    :cond_2c
    const/16 v22, 0x0

    .line 327
    .local v22, "i":I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/DeviceInfoSettings;->variantName:[[Ljava/lang/String;

    move-object/from16 v39, v0

    move-object/from16 v0, v39

    array-length v0, v0

    move/from16 v37, v0

    .line 328
    .local v37, "size":I
    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/DeviceInfoSettings;->getResources()Landroid/content/res/Resources;

    move-result-object v39

    const v40, 0x7f0a08db

    invoke-virtual/range {v39 .. v40}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v15

    .line 329
    .local v15, "countryName":Ljava/lang/String;
    :goto_1a
    move/from16 v0, v22

    move/from16 v1, v37

    if-ge v0, v1, :cond_2e

    .line 330
    if-eqz v34, :cond_2d

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/DeviceInfoSettings;->variantName:[[Ljava/lang/String;

    move-object/from16 v39, v0

    aget-object v39, v39, v22

    const/16 v40, 0x0

    aget-object v39, v39, v40

    move-object/from16 v0, v34

    move-object/from16 v1, v39

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v39

    if-eqz v39, :cond_2d

    .line 331
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/DeviceInfoSettings;->variantName:[[Ljava/lang/String;

    move-object/from16 v39, v0

    aget-object v39, v39, v22

    const/16 v40, 0x1

    aget-object v15, v39, v40

    .line 333
    :cond_2d
    add-int/lit8 v22, v22, 0x1

    goto :goto_1a

    .line 335
    :cond_2e
    const-string v39, "installed_variant_version"

    move-object/from16 v0, p0

    move-object/from16 v1, v39

    invoke-direct {v0, v1, v15}, Lcom/android/settings/DeviceInfoSettings;->setStringSummary(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_6

    .line 338
    .end local v15    # "countryName":Ljava/lang/String;
    .end local v22    # "i":I
    .end local v37    # "size":I
    :cond_2f
    const-string v39, "installed_variant_version"

    move-object/from16 v0, p0

    move-object/from16 v1, v39

    invoke-virtual {v0, v1}, Lcom/android/settings/DeviceInfoSettings;->removePreference(Ljava/lang/String;)V

    goto/16 :goto_6

    .line 349
    .restart local v4    # "ExtraTag":Ljava/lang/String;
    :cond_30
    const-string v39, "build_number"

    sget-object v40, Landroid/os/Build;->DISPLAY:Ljava/lang/String;

    move-object/from16 v0, p0

    move-object/from16 v1, v39

    move-object/from16 v2, v40

    invoke-direct {v0, v1, v2}, Lcom/android/settings/DeviceInfoSettings;->setStringSummary(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_7

    .line 355
    :cond_31
    const-string v39, "kernel_version"

    move-object/from16 v0, p0

    move-object/from16 v1, v39

    invoke-virtual {v0, v1}, Lcom/android/settings/DeviceInfoSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v39

    invoke-static {}, Lcom/android/settings/DeviceInfoSettings;->getFormattedKernelVersion()Ljava/lang/String;

    move-result-object v40

    invoke-virtual/range {v39 .. v40}, Landroid/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    goto/16 :goto_8

    .line 368
    .restart local v35    # "seStatus":Ljava/lang/String;
    :catch_1
    move-exception v20

    .line 369
    .local v20, "e":Ljava/lang/Exception;
    const-string v39, "DeviceInfoSettings"

    new-instance v40, Ljava/lang/StringBuilder;

    invoke-direct/range {v40 .. v40}, Ljava/lang/StringBuilder;-><init>()V

    const-string v41, "KnoxVersion Exception : "

    invoke-virtual/range {v40 .. v41}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v40

    invoke-virtual/range {v20 .. v20}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v41

    invoke-virtual/range {v40 .. v41}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v40

    invoke-virtual/range {v40 .. v40}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v40

    invoke-static/range {v39 .. v40}, Landroid/util/secutil/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 370
    invoke-virtual/range {v20 .. v20}, Ljava/lang/Exception;->printStackTrace()V

    goto/16 :goto_9

    .line 377
    .end local v20    # "e":Ljava/lang/Exception;
    :catch_2
    move-exception v20

    .line 378
    .restart local v20    # "e":Ljava/lang/Exception;
    const-string v39, "DeviceInfoSettings"

    new-instance v40, Ljava/lang/StringBuilder;

    invoke-direct/range {v40 .. v40}, Ljava/lang/StringBuilder;-><init>()V

    const-string v41, "KnoxVersion Exception : "

    invoke-virtual/range {v40 .. v41}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v40

    invoke-virtual/range {v20 .. v20}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v41

    invoke-virtual/range {v40 .. v41}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v40

    invoke-virtual/range {v40 .. v40}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v40

    invoke-static/range {v39 .. v40}, Landroid/util/secutil/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 379
    invoke-virtual/range {v20 .. v20}, Ljava/lang/Exception;->printStackTrace()V

    goto/16 :goto_a

    .line 384
    .end local v20    # "e":Ljava/lang/Exception;
    :cond_32
    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/DeviceInfoSettings;->getResources()Landroid/content/res/Resources;

    move-result-object v39

    const v40, 0x7f0a0dee

    invoke-virtual/range {v39 .. v40}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v35

    goto/16 :goto_b

    .line 386
    :cond_33
    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/DeviceInfoSettings;->getResources()Landroid/content/res/Resources;

    move-result-object v39

    const v40, 0x7f0a0ded

    invoke-virtual/range {v39 .. v40}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v35

    goto/16 :goto_b

    .line 425
    .restart local v10    # "certCountryName":Ljava/lang/String;
    .restart local v12    # "certTA":Ljava/lang/String;
    .restart local v13    # "certTRAID":Ljava/lang/String;
    .restart local v30    # "policyVersion":Ljava/lang/String;
    :cond_34
    :try_start_4
    const-string v39, "country_certification_info"

    move-object/from16 v0, p0

    move-object/from16 v1, v39

    invoke-virtual {v0, v1}, Lcom/android/settings/DeviceInfoSettings;->removePreference(Ljava/lang/String;)V
    :try_end_4
    .catch Landroid/provider/Settings$SettingNotFoundException; {:try_start_4 .. :try_end_4} :catch_3

    goto/16 :goto_c

    .line 430
    .end local v10    # "certCountryName":Ljava/lang/String;
    .end local v12    # "certTA":Ljava/lang/String;
    .end local v13    # "certTRAID":Ljava/lang/String;
    :catch_3
    move-exception v20

    .line 431
    .local v20, "e":Landroid/provider/Settings$SettingNotFoundException;
    invoke-virtual/range {v20 .. v20}, Landroid/provider/Settings$SettingNotFoundException;->printStackTrace()V

    goto/16 :goto_c

    .line 428
    .end local v20    # "e":Landroid/provider/Settings$SettingNotFoundException;
    :cond_35
    :try_start_5
    const-string v39, "country_certification_info"

    move-object/from16 v0, p0

    move-object/from16 v1, v39

    invoke-virtual {v0, v1}, Lcom/android/settings/DeviceInfoSettings;->removePreference(Ljava/lang/String;)V
    :try_end_5
    .catch Landroid/provider/Settings$SettingNotFoundException; {:try_start_5 .. :try_end_5} :catch_3

    goto/16 :goto_c

    .line 434
    :cond_36
    const-string v39, "country_certification_info"

    move-object/from16 v0, p0

    move-object/from16 v1, v39

    invoke-virtual {v0, v1}, Lcom/android/settings/DeviceInfoSettings;->removePreference(Ljava/lang/String;)V

    goto/16 :goto_c

    .line 480
    .restart local v6    # "act":Landroid/app/Activity;
    .restart local v18    # "divxLicenseSetting":Landroid/preference/Preference;
    .restart local v19    # "divxplugin_path":Ljava/io/File;
    .restart local v29    # "parentPreference":Landroid/preference/PreferenceGroup;
    :cond_37
    const/4 v14, 0x0

    goto/16 :goto_d

    .line 496
    .restart local v14    # "confirmed":Z
    :cond_38
    const-string v39, "samsung_legal"

    move-object/from16 v0, p0

    move-object/from16 v1, v39

    invoke-virtual {v0, v1}, Lcom/android/settings/DeviceInfoSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v39

    if-eqz v39, :cond_17

    const-string v39, "VZW"

    move-object/from16 v0, v39

    move-object/from16 v1, v34

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v39

    if-eqz v39, :cond_17

    .line 497
    const-string v39, "samsung_legal"

    move-object/from16 v0, p0

    move-object/from16 v1, v39

    invoke-virtual {v0, v1}, Lcom/android/settings/DeviceInfoSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v39

    new-instance v40, Landroid/content/Intent;

    const-string v41, "com.sec.android.app.setupwizard.EULA_NOTITLE"

    invoke-direct/range {v40 .. v41}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-virtual/range {v39 .. v40}, Landroid/preference/Preference;->setIntent(Landroid/content/Intent;)V

    goto/16 :goto_e

    .line 511
    .restart local v9    # "buildcarrier":Ljava/lang/String;
    :cond_39
    const-string v39, "system_update_settings"

    move-object/from16 v0, p0

    move-object/from16 v1, v39

    invoke-virtual {v0, v1}, Lcom/android/settings/DeviceInfoSettings;->removePreference(Ljava/lang/String;)V

    goto/16 :goto_f

    .line 551
    .restart local v5    # "HW_version_SysProp":Ljava/lang/String;
    .restart local v24    # "intent":Landroid/content/Intent;
    .restart local v38    # "updateType":Ljava/lang/String;
    :cond_3a
    const-string v39, "hardware_version"

    move-object/from16 v0, p0

    move-object/from16 v1, v39

    invoke-virtual {v0, v1}, Lcom/android/settings/DeviceInfoSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v39

    move-object/from16 v0, v39

    invoke-virtual {v0, v5}, Landroid/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    .line 552
    const-string v39, "DeviceInfoSettings"

    new-instance v40, Ljava/lang/StringBuilder;

    invoke-direct/range {v40 .. v40}, Ljava/lang/StringBuilder;-><init>()V

    const-string v41, "CSCFEATURE_SETTINGS_ENABLEHWVERSIONDISPLAY:"

    invoke-virtual/range {v40 .. v41}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v40

    move-object/from16 v0, v40

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v40

    invoke-virtual/range {v40 .. v40}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v40

    invoke-static/range {v39 .. v40}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_10

    .line 555
    :cond_3b
    const-string v39, "hardware_version"

    move-object/from16 v0, p0

    move-object/from16 v1, v39

    invoke-virtual {v0, v1}, Lcom/android/settings/DeviceInfoSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v39

    const v40, 0x7f0a00c1

    move-object/from16 v0, p0

    move/from16 v1, v40

    invoke-virtual {v0, v1}, Lcom/android/settings/DeviceInfoSettings;->getString(I)Ljava/lang/String;

    move-result-object v40

    invoke-virtual/range {v39 .. v40}, Landroid/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    goto/16 :goto_10

    .line 558
    .end local v5    # "HW_version_SysProp":Ljava/lang/String;
    :cond_3c
    const-string v39, "hardware_version"

    move-object/from16 v0, p0

    move-object/from16 v1, v39

    invoke-virtual {v0, v1}, Lcom/android/settings/DeviceInfoSettings;->removePreference(Ljava/lang/String;)V

    goto/16 :goto_10

    .line 569
    .restart local v5    # "HW_version_SysProp":Ljava/lang/String;
    :cond_3d
    const-string v39, "hardware_version_spr"

    move-object/from16 v0, p0

    move-object/from16 v1, v39

    invoke-virtual {v0, v1}, Lcom/android/settings/DeviceInfoSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v39

    const v40, 0x7f0a00c1

    move-object/from16 v0, p0

    move/from16 v1, v40

    invoke-virtual {v0, v1}, Lcom/android/settings/DeviceInfoSettings;->getString(I)Ljava/lang/String;

    move-result-object v40

    invoke-virtual/range {v39 .. v40}, Landroid/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    goto/16 :goto_11

    .line 572
    .end local v5    # "HW_version_SysProp":Ljava/lang/String;
    :cond_3e
    const-string v39, "hardware_version_spr"

    move-object/from16 v0, p0

    move-object/from16 v1, v39

    invoke-virtual {v0, v1}, Lcom/android/settings/DeviceInfoSettings;->removePreference(Ljava/lang/String;)V

    goto/16 :goto_11

    .line 587
    .local v22, "i":Landroid/content/Intent;
    :cond_3f
    const/4 v7, 0x0

    goto/16 :goto_12

    .line 588
    .restart local v7    # "bOnSIM1":Z
    :cond_40
    const/4 v8, 0x0

    goto/16 :goto_13

    .line 592
    .restart local v8    # "bOnSIM2":Z
    :cond_41
    const-string v39, "ABSENT"

    const-string v40, "gsm.sim.state"

    const/16 v41, 0x0

    const-string v42, "UNKNOWN"

    invoke-static/range {v40 .. v42}, Lcom/samsung/android/telephony/MultiSimManager;->getTelephonyProperty(Ljava/lang/String;ILjava/lang/String;)Ljava/lang/String;

    move-result-object v40

    invoke-virtual/range {v39 .. v40}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v39

    if-nez v39, :cond_42

    if-nez v7, :cond_43

    if-eqz v8, :cond_43

    .line 594
    :cond_42
    const-string v39, "sim Id"

    const/16 v40, 0x1

    move-object/from16 v0, v22

    move-object/from16 v1, v39

    move/from16 v2, v40

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 595
    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/DeviceInfoSettings;->getActivity()Landroid/app/Activity;

    move-result-object v39

    const-string v40, "com.android.settings.deviceinfo.Status"

    move-object/from16 v0, v22

    move-object/from16 v1, v39

    move-object/from16 v2, v40

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->setClassName(Landroid/content/Context;Ljava/lang/String;)Landroid/content/Intent;

    goto/16 :goto_14

    .line 597
    :cond_43
    const-string v39, "sim Id"

    const/16 v40, 0x0

    move-object/from16 v0, v22

    move-object/from16 v1, v39

    move/from16 v2, v40

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 598
    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/DeviceInfoSettings;->getActivity()Landroid/app/Activity;

    move-result-object v39

    const-string v40, "com.android.settings.deviceinfo.Status"

    move-object/from16 v0, v22

    move-object/from16 v1, v39

    move-object/from16 v2, v40

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->setClassName(Landroid/content/Context;Ljava/lang/String;)Landroid/content/Intent;

    goto/16 :goto_14

    .line 625
    .end local v7    # "bOnSIM1":Z
    .end local v8    # "bOnSIM2":Z
    .end local v22    # "i":Landroid/content/Intent;
    .restart local v33    # "removable":Landroid/preference/Preference;
    :cond_44
    const-string v39, "key_label_settings"

    move-object/from16 v0, p0

    move-object/from16 v1, v39

    invoke-virtual {v0, v1}, Lcom/android/settings/DeviceInfoSettings;->removePreference(Ljava/lang/String;)V

    goto/16 :goto_15

    .line 649
    .restart local v17    # "deviceName":Ljava/lang/String;
    .restart local v25    # "keyIndex":Ljava/lang/String;
    :cond_45
    const-string v39, "1"

    move-object/from16 v0, v39

    move-object/from16 v1, v25

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v39

    if-eqz v39, :cond_46

    .line 650
    const-string v36, "Type: Samsung"

    .line 661
    .local v36, "secbootStatus":Ljava/lang/String;
    :goto_1b
    const-string v39, "csb_value"

    move-object/from16 v0, p0

    move-object/from16 v1, v39

    move-object/from16 v2, v36

    invoke-direct {v0, v1, v2}, Lcom/android/settings/DeviceInfoSettings;->setStringSummary(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_16

    .line 651
    .end local v36    # "secbootStatus":Ljava/lang/String;
    :cond_46
    const-string v39, "2"

    move-object/from16 v0, v39

    move-object/from16 v1, v25

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v39

    if-eqz v39, :cond_47

    .line 652
    const-string v36, "Type: Knox A"

    .restart local v36    # "secbootStatus":Ljava/lang/String;
    goto :goto_1b

    .line 653
    .end local v36    # "secbootStatus":Ljava/lang/String;
    :cond_47
    const-string v39, "3"

    move-object/from16 v0, v39

    move-object/from16 v1, v25

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v39

    if-eqz v39, :cond_48

    .line 654
    const-string v36, "Type: Knox B"

    .restart local v36    # "secbootStatus":Ljava/lang/String;
    goto :goto_1b

    .line 655
    .end local v36    # "secbootStatus":Ljava/lang/String;
    :cond_48
    const-string v39, "4"

    move-object/from16 v0, v39

    move-object/from16 v1, v25

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v39

    if-eqz v39, :cond_49

    .line 656
    const-string v36, "Type: Knox C"

    .restart local v36    # "secbootStatus":Ljava/lang/String;
    goto :goto_1b

    .line 658
    .end local v36    # "secbootStatus":Ljava/lang/String;
    :cond_49
    const-string v36, "Type: Invalid"

    .restart local v36    # "secbootStatus":Ljava/lang/String;
    goto :goto_1b

    .line 670
    .end local v36    # "secbootStatus":Ljava/lang/String;
    .restart local v21    # "fccId":Ljava/lang/String;
    .restart local v32    # "ratedValue":Ljava/lang/String;
    :cond_4a
    const-string v39, "fcc_id"

    move-object/from16 v0, p0

    move-object/from16 v1, v39

    move-object/from16 v2, v21

    invoke-direct {v0, v1, v2}, Lcom/android/settings/DeviceInfoSettings;->setStringSummary(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_17

    .line 675
    :cond_4b
    const-string v39, "rated_value"

    move-object/from16 v0, p0

    move-object/from16 v1, v39

    move-object/from16 v2, v32

    invoke-direct {v0, v1, v2}, Lcom/android/settings/DeviceInfoSettings;->setStringSummary(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_18

    .line 686
    :cond_4c
    const-string v39, "sdm_config_version"

    move-object/from16 v0, p0

    move-object/from16 v1, v39

    invoke-virtual {v0, v1}, Lcom/android/settings/DeviceInfoSettings;->removePreference(Ljava/lang/String;)V

    goto/16 :goto_19
.end method

.method public onDestroy()V
    .locals 3

    .prologue
    .line 732
    :try_start_0
    invoke-direct {p0}, Lcom/android/settings/DeviceInfoSettings;->doUnbindService()V
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    .line 737
    :goto_0
    invoke-super {p0}, Lcom/android/settings/SettingsPreferenceFragment;->onDestroy()V

    .line 738
    return-void

    .line 733
    :catch_0
    move-exception v0

    .line 734
    .local v0, "e":Ljava/lang/IllegalArgumentException;
    const-string v1, "DeviceInfoSettings"

    const-string v2, "SecurityManagerService : IllegalArgumentException"

    invoke-static {v1, v2}, Landroid/util/secutil/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public onDestroyView()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 722
    iget-object v0, p0, Lcom/android/settings/DeviceInfoSettings;->mDeviceNameFragment:Lcom/android/settings/DeviceNameSettings;

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/android/settings/DeviceInfoSettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/android/settings/DeviceInfoSettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->isFinishing()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-static {v1}, Lcom/android/settings/Utils;->isTablet(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 723
    iget-object v0, p0, Lcom/android/settings/DeviceInfoSettings;->mDeviceNameFragment:Lcom/android/settings/DeviceNameSettings;

    invoke-virtual {v0}, Lcom/android/settings/DeviceNameSettings;->dismiss()V

    .line 724
    iput-object v1, p0, Lcom/android/settings/DeviceInfoSettings;->mDeviceNameFragment:Lcom/android/settings/DeviceNameSettings;

    .line 726
    :cond_0
    invoke-super {p0}, Lcom/android/settings/SettingsPreferenceFragment;->onDestroyView()V

    .line 727
    return-void
.end method

.method public onPause()V
    .locals 0

    .prologue
    .line 712
    invoke-super {p0}, Lcom/android/settings/SettingsPreferenceFragment;->onPause()V

    .line 717
    return-void
.end method

.method public onPositiveClick()V
    .locals 4

    .prologue
    .line 957
    invoke-virtual {p0}, Lcom/android/settings/DeviceInfoSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "device_name"

    invoke-static {v2, v3}, Landroid/provider/Settings$System;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 958
    .local v0, "deviceName":Ljava/lang/String;
    const-string v2, "device_name"

    invoke-direct {p0, v2, v0}, Lcom/android/settings/DeviceInfoSettings;->setStringSummary(Ljava/lang/String;Ljava/lang/String;)V

    .line 960
    new-instance v1, Landroid/content/Intent;

    const-string v2, "com.android.settings.DEVICE_NAME_CHANGED"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 961
    .local v1, "intent":Landroid/content/Intent;
    invoke-virtual {p0}, Lcom/android/settings/DeviceInfoSettings;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-virtual {v2, v1}, Landroid/app/Activity;->sendBroadcast(Landroid/content/Intent;)V

    .line 962
    return-void
.end method

.method public onPreferenceTreeClick(Landroid/preference/PreferenceScreen;Landroid/preference/Preference;)Z
    .locals 30
    .param p1, "preferenceScreen"    # Landroid/preference/PreferenceScreen;
    .param p2, "preference"    # Landroid/preference/Preference;

    .prologue
    .line 742
    invoke-virtual/range {p2 .. p2}, Landroid/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object v16

    .line 743
    .local v16, "key":Ljava/lang/String;
    const-string v3, "firmware_version"

    move-object/from16 v0, v16

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 744
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/settings/DeviceInfoSettings;->mHits:[J

    const/4 v5, 0x1

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/settings/DeviceInfoSettings;->mHits:[J

    const/4 v7, 0x0

    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/android/settings/DeviceInfoSettings;->mHits:[J

    array-length v8, v8

    add-int/lit8 v8, v8, -0x1

    invoke-static {v3, v5, v6, v7, v8}, Ljava/lang/System;->arraycopy([JI[JII)V

    .line 745
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/settings/DeviceInfoSettings;->mHits:[J

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/settings/DeviceInfoSettings;->mHits:[J

    array-length v5, v5

    add-int/lit8 v5, v5, -0x1

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v6

    aput-wide v6, v3, v5

    .line 746
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/settings/DeviceInfoSettings;->mHits:[J

    const/4 v5, 0x0

    aget-wide v6, v3, v5

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v26

    const-wide/16 v28, 0x1f4

    sub-long v26, v26, v28

    cmp-long v3, v6, v26

    if-ltz v3, :cond_0

    .line 747
    new-instance v14, Landroid/content/Intent;

    const-string v3, "android.intent.action.MAIN"

    invoke-direct {v14, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 748
    .local v14, "intent":Landroid/content/Intent;
    const-string v3, "android"

    const-class v5, Lcom/android/internal/app/PlatLogoActivity;

    invoke-virtual {v5}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v14, v3, v5}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 751
    :try_start_0
    move-object/from16 v0, p0

    invoke-virtual {v0, v14}, Lcom/android/settings/DeviceInfoSettings;->startActivity(Landroid/content/Intent;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 923
    .end local v14    # "intent":Landroid/content/Intent;
    :cond_0
    :goto_0
    move-object/from16 v0, p0

    iget-boolean v3, v0, Lcom/android/settings/DeviceInfoSettings;->mOpenDetailMenu:Z

    if-eqz v3, :cond_1

    .line 924
    const-string v3, "container"

    move-object/from16 v0, v16

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 925
    invoke-super/range {p0 .. p0}, Lcom/android/settings/SettingsPreferenceFragment;->getArrayLinkKey()Ljava/util/ArrayList;

    move-result-object v3

    const/4 v5, 0x0

    invoke-virtual {v3, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v21

    check-cast v21, Ljava/lang/String;

    .line 926
    .local v21, "targetKey":Ljava/lang/String;
    const-string v3, "container"

    move-object/from16 v0, p0

    invoke-virtual {v0, v3}, Lcom/android/settings/DeviceInfoSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v18

    check-cast v18, Landroid/preference/PreferenceGroup;

    .line 927
    .local v18, "parentPreference":Landroid/preference/PreferenceGroup;
    new-instance v14, Landroid/content/Intent;

    invoke-direct {v14}, Landroid/content/Intent;-><init>()V

    .line 928
    .restart local v14    # "intent":Landroid/content/Intent;
    const/4 v13, 0x0

    .local v13, "i":I
    :goto_1
    invoke-virtual/range {v18 .. v18}, Landroid/preference/PreferenceGroup;->getPreferenceCount()I

    move-result v3

    if-ge v13, v3, :cond_1

    .line 929
    if-eqz v21, :cond_1c

    move-object/from16 v0, v18

    invoke-virtual {v0, v13}, Landroid/preference/PreferenceGroup;->getPreference(I)Landroid/preference/Preference;

    move-result-object v3

    invoke-virtual {v3}, Landroid/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object v3

    move-object/from16 v0, v21

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1c

    .line 930
    move-object/from16 v0, v18

    invoke-virtual {v0, v13}, Landroid/preference/PreferenceGroup;->getPreference(I)Landroid/preference/Preference;

    move-result-object v3

    invoke-virtual {v3}, Landroid/preference/Preference;->getIntent()Landroid/content/Intent;

    move-result-object v14

    .line 931
    invoke-super/range {p0 .. p0}, Lcom/android/settings/SettingsPreferenceFragment;->initArrayLinkKey()V

    .line 932
    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/DeviceInfoSettings;->getActivity()Landroid/app/Activity;

    move-result-object v3

    invoke-virtual {v3, v14}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    .line 940
    .end local v13    # "i":I
    .end local v14    # "intent":Landroid/content/Intent;
    .end local v18    # "parentPreference":Landroid/preference/PreferenceGroup;
    .end local v21    # "targetKey":Ljava/lang/String;
    :cond_1
    invoke-super/range {p0 .. p2}, Lcom/android/settings/SettingsPreferenceFragment;->onPreferenceTreeClick(Landroid/preference/PreferenceScreen;Landroid/preference/Preference;)Z

    move-result v3

    :goto_2
    return v3

    .line 752
    .restart local v14    # "intent":Landroid/content/Intent;
    :catch_0
    move-exception v11

    .line 753
    .local v11, "e":Ljava/lang/Exception;
    const-string v3, "DeviceInfoSettings"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Unable to start activity "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v14}, Landroid/content/Intent;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v3, v5}, Landroid/util/secutil/Log;->secE(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 756
    .end local v11    # "e":Ljava/lang/Exception;
    .end local v14    # "intent":Landroid/content/Intent;
    :cond_2
    invoke-virtual/range {p2 .. p2}, Landroid/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object v3

    const-string v5, "build_number"

    invoke-virtual {v3, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_a

    .line 758
    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v3

    if-eqz v3, :cond_3

    const/4 v3, 0x1

    goto :goto_2

    .line 760
    :cond_3
    const-string v3, "user"

    move-object/from16 v0, p0

    invoke-virtual {v0, v3}, Lcom/android/settings/DeviceInfoSettings;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v22

    check-cast v22, Landroid/os/UserManager;

    .line 761
    .local v22, "um":Landroid/os/UserManager;
    const-string v3, "no_debugging_features"

    move-object/from16 v0, v22

    invoke-virtual {v0, v3}, Landroid/os/UserManager;->hasUserRestriction(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_4

    const/4 v3, 0x1

    goto :goto_2

    .line 763
    :cond_4
    move-object/from16 v0, p0

    iget v3, v0, Lcom/android/settings/DeviceInfoSettings;->mDevHitCountdown:I

    if-lez v3, :cond_8

    .line 765
    move-object/from16 v0, p0

    iget v3, v0, Lcom/android/settings/DeviceInfoSettings;->mDevHitCountdown:I

    add-int/lit8 v3, v3, -0x1

    move-object/from16 v0, p0

    iput v3, v0, Lcom/android/settings/DeviceInfoSettings;->mDevHitCountdown:I

    .line 766
    move-object/from16 v0, p0

    iget v3, v0, Lcom/android/settings/DeviceInfoSettings;->mDevHitCountdown:I

    if-nez v3, :cond_6

    .line 767
    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/DeviceInfoSettings;->getActivity()Landroid/app/Activity;

    move-result-object v3

    const-string v5, "development"

    const/4 v6, 0x0

    invoke-virtual {v3, v5, v6}, Landroid/app/Activity;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v3

    invoke-interface {v3}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v3

    const-string v5, "show"

    const/4 v6, 0x1

    invoke-interface {v3, v5, v6}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object v3

    invoke-interface {v3}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 770
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/settings/DeviceInfoSettings;->mDevHitToast:Landroid/widget/Toast;

    if-eqz v3, :cond_5

    .line 771
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/settings/DeviceInfoSettings;->mDevHitToast:Landroid/widget/Toast;

    invoke-virtual {v3}, Landroid/widget/Toast;->cancel()V

    .line 773
    :cond_5
    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/DeviceInfoSettings;->getActivity()Landroid/app/Activity;

    move-result-object v3

    const v5, 0x7f0a00c2

    const/4 v6, 0x1

    invoke-static {v3, v5, v6}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v3

    move-object/from16 v0, p0

    iput-object v3, v0, Lcom/android/settings/DeviceInfoSettings;->mDevHitToast:Landroid/widget/Toast;

    .line 775
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/settings/DeviceInfoSettings;->mDevHitToast:Landroid/widget/Toast;

    invoke-virtual {v3}, Landroid/widget/Toast;->show()V

    .line 777
    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/DeviceInfoSettings;->getActivity()Landroid/app/Activity;

    move-result-object v3

    invoke-virtual {v3}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v3

    invoke-static {v3}, Lcom/android/settings/search/Index;->getInstance(Landroid/content/Context;)Lcom/android/settings/search/Index;

    move-result-object v3

    const-class v5, Lcom/android/settings/DevelopmentSettings;

    invoke-virtual {v5}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v5

    const/4 v6, 0x1

    const/4 v7, 0x1

    invoke-virtual {v3, v5, v6, v7}, Lcom/android/settings/search/Index;->updateFromClassNameResource(Ljava/lang/String;ZZ)V

    goto/16 :goto_0

    .line 781
    :cond_6
    move-object/from16 v0, p0

    iget v3, v0, Lcom/android/settings/DeviceInfoSettings;->mDevHitCountdown:I

    if-lez v3, :cond_0

    move-object/from16 v0, p0

    iget v3, v0, Lcom/android/settings/DeviceInfoSettings;->mDevHitCountdown:I

    const/4 v5, 0x5

    if-ge v3, v5, :cond_0

    .line 783
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/settings/DeviceInfoSettings;->mDevHitToast:Landroid/widget/Toast;

    if-eqz v3, :cond_7

    .line 784
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/settings/DeviceInfoSettings;->mDevHitToast:Landroid/widget/Toast;

    invoke-virtual {v3}, Landroid/widget/Toast;->cancel()V

    .line 786
    :cond_7
    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/DeviceInfoSettings;->getActivity()Landroid/app/Activity;

    move-result-object v3

    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/DeviceInfoSettings;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const/high16 v6, 0x7f110000

    move-object/from16 v0, p0

    iget v7, v0, Lcom/android/settings/DeviceInfoSettings;->mDevHitCountdown:I

    const/4 v8, 0x1

    new-array v8, v8, [Ljava/lang/Object;

    const/16 v26, 0x0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/settings/DeviceInfoSettings;->mDevHitCountdown:I

    move/from16 v27, v0

    invoke-static/range {v27 .. v27}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v27

    aput-object v27, v8, v26

    invoke-virtual {v5, v6, v7, v8}, Landroid/content/res/Resources;->getQuantityString(II[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    const/4 v6, 0x0

    invoke-static {v3, v5, v6}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v3

    move-object/from16 v0, p0

    iput-object v3, v0, Lcom/android/settings/DeviceInfoSettings;->mDevHitToast:Landroid/widget/Toast;

    .line 789
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/settings/DeviceInfoSettings;->mDevHitToast:Landroid/widget/Toast;

    invoke-virtual {v3}, Landroid/widget/Toast;->show()V

    goto/16 :goto_0

    .line 791
    :cond_8
    move-object/from16 v0, p0

    iget v3, v0, Lcom/android/settings/DeviceInfoSettings;->mDevHitCountdown:I

    if-gez v3, :cond_0

    .line 792
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/settings/DeviceInfoSettings;->mDevHitToast:Landroid/widget/Toast;

    if-eqz v3, :cond_9

    .line 793
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/settings/DeviceInfoSettings;->mDevHitToast:Landroid/widget/Toast;

    invoke-virtual {v3}, Landroid/widget/Toast;->cancel()V

    .line 795
    :cond_9
    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/DeviceInfoSettings;->getActivity()Landroid/app/Activity;

    move-result-object v3

    const v5, 0x7f0a00c3

    const/4 v6, 0x1

    invoke-static {v3, v5, v6}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v3

    move-object/from16 v0, p0

    iput-object v3, v0, Lcom/android/settings/DeviceInfoSettings;->mDevHitToast:Landroid/widget/Toast;

    .line 797
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/settings/DeviceInfoSettings;->mDevHitToast:Landroid/widget/Toast;

    invoke-virtual {v3}, Landroid/widget/Toast;->show()V

    goto/16 :goto_0

    .line 799
    .end local v22    # "um":Landroid/os/UserManager;
    :cond_a
    const-string v3, "system_update_settings_na_gsm"

    move-object/from16 v0, v16

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_b

    .line 800
    new-instance v14, Landroid/content/Intent;

    const-string v3, "android.intent.action.SOFTWARE_UPDATE_SETTING"

    invoke-direct {v14, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 801
    .restart local v14    # "intent":Landroid/content/Intent;
    const/16 v3, 0x20

    invoke-virtual {v14, v3}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 802
    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/DeviceInfoSettings;->getActivity()Landroid/app/Activity;

    move-result-object v3

    invoke-virtual {v3, v14}, Landroid/app/Activity;->sendBroadcast(Landroid/content/Intent;)V

    .line 803
    const/4 v3, 0x1

    goto/16 :goto_2

    .line 804
    .end local v14    # "intent":Landroid/content/Intent;
    :cond_b
    const-string v3, "preload_update"

    move-object/from16 v0, v16

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_d

    .line 805
    new-instance v4, Landroid/os/Bundle;

    invoke-direct {v4}, Landroid/os/Bundle;-><init>()V

    .line 806
    .local v4, "bundle":Landroid/os/Bundle;
    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/DeviceInfoSettings;->getActivity()Landroid/app/Activity;

    move-result-object v3

    instance-of v3, v3, Landroid/preference/PreferenceActivity;

    if-eqz v3, :cond_c

    .line 807
    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/DeviceInfoSettings;->getActivity()Landroid/app/Activity;

    move-result-object v2

    check-cast v2, Landroid/preference/PreferenceActivity;

    .line 808
    .local v2, "preferenceActivity":Landroid/preference/PreferenceActivity;
    const-string v3, "com.android.settings.PreloadAppUpdate"

    const v5, 0x7f0a1b7c

    const-string v6, ""

    const/4 v8, 0x0

    move-object/from16 v7, p0

    invoke-virtual/range {v2 .. v8}, Landroid/preference/PreferenceActivity;->startPreferencePanel(Ljava/lang/String;Landroid/os/Bundle;ILjava/lang/CharSequence;Landroid/app/Fragment;I)V

    .line 809
    const/4 v3, 0x1

    goto/16 :goto_2

    .line 811
    .end local v2    # "preferenceActivity":Landroid/preference/PreferenceActivity;
    :cond_c
    const/4 v3, 0x1

    goto/16 :goto_2

    .line 812
    .end local v4    # "bundle":Landroid/os/Bundle;
    :cond_d
    const-string v3, "software_update_settings_no_subtree"

    move-object/from16 v0, v16

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_e

    .line 813
    new-instance v14, Landroid/content/Intent;

    const-string v3, "sec.fota.action.SOFTWARE_UPDATE"

    invoke-direct {v14, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 814
    .restart local v14    # "intent":Landroid/content/Intent;
    const/16 v3, 0x20

    invoke-virtual {v14, v3}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 815
    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/DeviceInfoSettings;->getActivity()Landroid/app/Activity;

    move-result-object v3

    invoke-virtual {v3, v14}, Landroid/app/Activity;->sendBroadcast(Landroid/content/Intent;)V

    .line 816
    const/4 v3, 0x1

    goto/16 :goto_2

    .line 817
    .end local v14    # "intent":Landroid/content/Intent;
    :cond_e
    const-string v3, "device_name"

    move-object/from16 v0, p0

    invoke-virtual {v0, v3}, Lcom/android/settings/DeviceInfoSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v3

    move-object/from16 v0, p2

    if-ne v0, v3, :cond_f

    .line 818
    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/DeviceInfoSettings;->showDialog()V

    goto/16 :goto_0

    .line 820
    :cond_f
    const-string v3, "label_name"

    move-object/from16 v0, p0

    invoke-virtual {v0, v3}, Lcom/android/settings/DeviceInfoSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v3

    move-object/from16 v0, p2

    if-ne v0, v3, :cond_10

    .line 821
    new-instance v14, Landroid/content/Intent;

    invoke-direct {v14}, Landroid/content/Intent;-><init>()V

    .line 822
    .restart local v14    # "intent":Landroid/content/Intent;
    const-string v3, "com.android.settings"

    const-string v5, "com.android.settings.LabelName"

    invoke-virtual {v14, v3, v5}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 823
    move-object/from16 v0, p0

    invoke-virtual {v0, v14}, Lcom/android/settings/DeviceInfoSettings;->startActivity(Landroid/content/Intent;)V

    goto/16 :goto_0

    .line 825
    .end local v14    # "intent":Landroid/content/Intent;
    :cond_10
    const-string v3, "icon_glossary"

    move-object/from16 v0, p0

    invoke-virtual {v0, v3}, Lcom/android/settings/DeviceInfoSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v3

    move-object/from16 v0, p2

    if-ne v0, v3, :cond_12

    .line 826
    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/DeviceInfoSettings;->getActivity()Landroid/app/Activity;

    move-result-object v3

    invoke-static {v3}, Lcom/android/settings/Utils;->isSupportOnlineHelpMenu(Landroid/content/Context;)Z

    move-result v3

    if-nez v3, :cond_11

    .line 827
    new-instance v14, Landroid/content/Intent;

    const-string v3, "com.samsung.helphub.HELP"

    invoke-direct {v14, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 828
    .restart local v14    # "intent":Landroid/content/Intent;
    const-string v3, "helphub:category"

    const-string v5, "ICONGL"

    invoke-virtual {v14, v3, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 829
    move-object/from16 v0, p0

    invoke-virtual {v0, v14}, Lcom/android/settings/DeviceInfoSettings;->startActivity(Landroid/content/Intent;)V

    goto/16 :goto_0

    .line 831
    .end local v14    # "intent":Landroid/content/Intent;
    :cond_11
    new-instance v14, Landroid/content/Intent;

    const-string v3, "com.samsung.helphub.HELP"

    invoke-direct {v14, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 832
    .restart local v14    # "intent":Landroid/content/Intent;
    const-string v3, "helphub:categoryid"

    const-string v5, "icon_glossary"

    invoke-virtual {v14, v3, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 833
    move-object/from16 v0, p0

    invoke-virtual {v0, v14}, Lcom/android/settings/DeviceInfoSettings;->startActivity(Landroid/content/Intent;)V

    goto/16 :goto_0

    .line 835
    .end local v14    # "intent":Landroid/content/Intent;
    :cond_12
    invoke-virtual/range {p2 .. p2}, Landroid/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object v3

    const-string v5, "security_sw_version"

    invoke-virtual {v3, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_13

    .line 836
    const-string v3, "DeviceInfoSettings"

    const-string v5, "SecurityManagerService : On Click, Security SW Version"

    invoke-static {v3, v5}, Landroid/util/secutil/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 837
    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/DeviceInfoSettings;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v5, 0x7f0a0736

    invoke-virtual {v3, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    sput-object v3, Lcom/android/settings/DeviceInfoSettings;->securitySWVersion:Ljava/lang/String;

    .line 838
    const-string v3, "security_sw_version"

    sget-object v5, Lcom/android/settings/DeviceInfoSettings;->securitySWVersion:Ljava/lang/String;

    move-object/from16 v0, p0

    invoke-direct {v0, v3, v5}, Lcom/android/settings/DeviceInfoSettings;->setStringSummary(Ljava/lang/String;Ljava/lang/String;)V

    .line 839
    invoke-direct/range {p0 .. p0}, Lcom/android/settings/DeviceInfoSettings;->initCCMode()V

    goto/16 :goto_0

    .line 840
    :cond_13
    invoke-virtual/range {p2 .. p2}, Landroid/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object v3

    const-string v5, "knox_version"

    invoke-virtual {v3, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_14

    .line 841
    const-string v3, "DeviceInfoSettings"

    const-string v5, "KnoxVersion : Clicked"

    invoke-static {v3, v5}, Landroid/util/secutil/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 843
    :cond_14
    const-string v3, "key_diagnostics_info"

    move-object/from16 v0, v16

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1b

    .line 844
    const/4 v9, 0x0

    .line 845
    .local v9, "c":Landroid/content/Context;
    const/16 v19, 0x0

    .line 846
    .local v19, "resources":Landroid/content/res/Resources;
    const/4 v10, 0x0

    .line 848
    .local v10, "collectionString":Ljava/lang/String;
    invoke-direct/range {p0 .. p0}, Lcom/android/settings/DeviceInfoSettings;->readSalesCode()Ljava/lang/String;

    move-result-object v20

    .line 849
    .local v20, "sales_code":Ljava/lang/String;
    const-string v3, "VZW"

    move-object/from16 v0, v20

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_16

    const/4 v15, 0x1

    .line 850
    .local v15, "isVZW":Z
    :goto_3
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/settings/DeviceInfoSettings;->mDiagnosticInfo:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v3}, Landroid/preference/CheckBoxPreference;->isChecked()Z

    move-result v23

    .line 852
    .local v23, "value":Z
    const-string v24, "com.sec.android.app.setupwizard"

    .line 853
    .local v24, "vzwPackageName":Ljava/lang/String;
    const-string v12, "com.sec.android.app.SecSetupWizard"

    .line 857
    .local v12, "globalPackageName":Ljava/lang/String;
    if-eqz v15, :cond_17

    .line 858
    :try_start_1
    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/DeviceInfoSettings;->getActivity()Landroid/app/Activity;

    move-result-object v3

    invoke-virtual {v3}, Landroid/app/Activity;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v3

    move-object/from16 v0, v24

    invoke-virtual {v3, v0}, Landroid/content/pm/PackageManager;->getResourcesForApplication(Ljava/lang/String;)Landroid/content/res/Resources;

    move-result-object v19

    .line 859
    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/DeviceInfoSettings;->getActivity()Landroid/app/Activity;

    move-result-object v3

    const/4 v5, 0x2

    move-object/from16 v0, v24

    invoke-virtual {v3, v0, v5}, Landroid/app/Activity;->createPackageContext(Ljava/lang/String;I)Landroid/content/Context;

    move-result-object v9

    .line 860
    invoke-virtual {v9}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const-string v5, "error_log_collection"

    const-string v6, "string"

    move-object/from16 v0, v19

    move-object/from16 v1, v24

    invoke-virtual {v0, v5, v6, v1}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v5

    invoke-virtual {v3, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;
    :try_end_1
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_1 .. :try_end_1} :catch_1

    move-result-object v10

    .line 877
    :cond_15
    :goto_4
    if-nez v10, :cond_18

    .line 878
    const-string v3, "DeviceInfoSettings"

    const-string v5, "error log collection disclaimer is null"

    invoke-static {v3, v5}, Landroid/util/secutil/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 879
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/settings/DeviceInfoSettings;->mDiagnosticInfo:Landroid/preference/CheckBoxPreference;

    const/4 v5, 0x0

    invoke-virtual {v3, v5}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    .line 880
    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/DeviceInfoSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string v5, "samsung_errorlog_agree"

    const/4 v6, 0x0

    invoke-static {v3, v5, v6}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 881
    new-instance v13, Landroid/content/Intent;

    const-string v3, "android.settings.DIAGNOSTIC_INFO_CHANGED"

    invoke-direct {v13, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 882
    .local v13, "i":Landroid/content/Intent;
    const-string v3, "diagnostic_info_changed"

    const/4 v5, 0x0

    invoke-virtual {v13, v3, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 883
    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/DeviceInfoSettings;->getActivity()Landroid/app/Activity;

    move-result-object v3

    invoke-virtual {v3, v13}, Landroid/app/Activity;->sendBroadcast(Landroid/content/Intent;)V

    goto/16 :goto_0

    .line 849
    .end local v12    # "globalPackageName":Ljava/lang/String;
    .end local v13    # "i":Landroid/content/Intent;
    .end local v15    # "isVZW":Z
    .end local v23    # "value":Z
    .end local v24    # "vzwPackageName":Ljava/lang/String;
    :cond_16
    const/4 v15, 0x0

    goto :goto_3

    .line 863
    .restart local v12    # "globalPackageName":Ljava/lang/String;
    .restart local v15    # "isVZW":Z
    .restart local v23    # "value":Z
    .restart local v24    # "vzwPackageName":Ljava/lang/String;
    :cond_17
    :try_start_2
    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/DeviceInfoSettings;->getActivity()Landroid/app/Activity;

    move-result-object v3

    invoke-virtual {v3}, Landroid/app/Activity;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v3

    invoke-virtual {v3, v12}, Landroid/content/pm/PackageManager;->getResourcesForApplication(Ljava/lang/String;)Landroid/content/res/Resources;

    move-result-object v19

    .line 864
    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/DeviceInfoSettings;->getActivity()Landroid/app/Activity;

    move-result-object v3

    const/4 v5, 0x2

    invoke-virtual {v3, v12, v5}, Landroid/app/Activity;->createPackageContext(Ljava/lang/String;I)Landroid/content/Context;

    move-result-object v9

    .line 865
    invoke-static {}, Lcom/samsung/android/feature/FloatingFeature;->getInstance()Lcom/samsung/android/feature/FloatingFeature;

    move-result-object v3

    const-string v5, "SEC_FLOATING_FEATURE_CONTEXTSERVICE_ENABLE_SURVEY_MODE"

    invoke-virtual {v3, v5}, Lcom/samsung/android/feature/FloatingFeature;->getEnableStatus(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_15

    .line 867
    invoke-virtual {v9}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const-string v5, "error_log_collection_k_serviceinfo"

    const-string v6, "string"

    move-object/from16 v0, v19

    invoke-virtual {v0, v5, v6, v12}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v5

    invoke-virtual {v3, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;
    :try_end_2
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_2 .. :try_end_2} :catch_1

    move-result-object v10

    goto :goto_4

    .line 873
    :catch_1
    move-exception v11

    .line 874
    .local v11, "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    const-string v3, "DeviceInfoSettings"

    const-string v5, "error getting activity of create package context"

    invoke-static {v3, v5, v11}, Landroid/util/secutil/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_4

    .line 886
    .end local v11    # "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    :cond_18
    if-eqz v23, :cond_1a

    .line 887
    const v25, 0x7f0a00bb

    .line 888
    .local v25, "yes_button":I
    const v17, 0x7f0a00bd

    .line 889
    .local v17, "no_thanks_button":I
    invoke-static {}, Lcom/android/settings/Utils;->isJapanModel()Z

    move-result v3

    if-eqz v3, :cond_19

    .line 890
    const v25, 0x104000a

    .line 891
    const/high16 v17, 0x1040000

    .line 893
    :cond_19
    new-instance v3, Landroid/app/AlertDialog$Builder;

    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/DeviceInfoSettings;->getActivity()Landroid/app/Activity;

    move-result-object v5

    invoke-direct {v3, v5}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    invoke-virtual {v3, v10}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v3

    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/DeviceInfoSettings;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v6, 0x7f0a0093

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v3

    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/DeviceInfoSettings;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    move/from16 v0, v25

    invoke-virtual {v5, v0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v5

    new-instance v6, Lcom/android/settings/DeviceInfoSettings$2;

    move-object/from16 v0, p0

    invoke-direct {v6, v0}, Lcom/android/settings/DeviceInfoSettings$2;-><init>(Lcom/android/settings/DeviceInfoSettings;)V

    invoke-virtual {v3, v5, v6}, Landroid/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v3

    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/DeviceInfoSettings;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    move/from16 v0, v17

    invoke-virtual {v5, v0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v5

    new-instance v6, Lcom/android/settings/DeviceInfoSettings$1;

    move-object/from16 v0, p0

    invoke-direct {v6, v0}, Lcom/android/settings/DeviceInfoSettings$1;-><init>(Lcom/android/settings/DeviceInfoSettings;)V

    invoke-virtual {v3, v5, v6}, Landroid/app/AlertDialog$Builder;->setNegativeButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v3

    const/4 v5, 0x0

    invoke-virtual {v3, v5}, Landroid/app/AlertDialog$Builder;->setCancelable(Z)Landroid/app/AlertDialog$Builder;

    move-result-object v3

    invoke-virtual {v3}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    goto/16 :goto_0

    .line 912
    .end local v17    # "no_thanks_button":I
    .end local v25    # "yes_button":I
    :cond_1a
    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/DeviceInfoSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string v5, "samsung_errorlog_agree"

    const/4 v6, 0x0

    invoke-static {v3, v5, v6}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 913
    new-instance v13, Landroid/content/Intent;

    const-string v3, "android.settings.DIAGNOSTIC_INFO_CHANGED"

    invoke-direct {v13, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 914
    .restart local v13    # "i":Landroid/content/Intent;
    const-string v3, "diagnostic_info_changed"

    const/4 v5, 0x0

    invoke-virtual {v13, v3, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 915
    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/DeviceInfoSettings;->getActivity()Landroid/app/Activity;

    move-result-object v3

    invoke-virtual {v3, v13}, Landroid/app/Activity;->sendBroadcast(Landroid/content/Intent;)V

    goto/16 :goto_0

    .line 918
    .end local v9    # "c":Landroid/content/Context;
    .end local v10    # "collectionString":Ljava/lang/String;
    .end local v12    # "globalPackageName":Ljava/lang/String;
    .end local v13    # "i":Landroid/content/Intent;
    .end local v15    # "isVZW":Z
    .end local v19    # "resources":Landroid/content/res/Resources;
    .end local v20    # "sales_code":Ljava/lang/String;
    .end local v23    # "value":Z
    .end local v24    # "vzwPackageName":Ljava/lang/String;
    :cond_1b
    invoke-virtual/range {p2 .. p2}, Landroid/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object v3

    const-string v5, "device_feedback"

    invoke-virtual {v3, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 919
    invoke-direct/range {p0 .. p0}, Lcom/android/settings/DeviceInfoSettings;->sendFeedback()V

    goto/16 :goto_0

    .line 928
    .local v13, "i":I
    .restart local v14    # "intent":Landroid/content/Intent;
    .restart local v18    # "parentPreference":Landroid/preference/PreferenceGroup;
    .restart local v21    # "targetKey":Ljava/lang/String;
    :cond_1c
    add-int/lit8 v13, v13, 0x1

    goto/16 :goto_1
.end method

.method public onResume()V
    .locals 6

    .prologue
    const/4 v0, 0x0

    .line 692
    invoke-super {p0}, Lcom/android/settings/SettingsPreferenceFragment;->onResume()V

    .line 693
    invoke-virtual {p0}, Lcom/android/settings/DeviceInfoSettings;->getActivity()Landroid/app/Activity;

    move-result-object v2

    const-string v3, "development"

    invoke-virtual {v2, v3, v0}, Landroid/app/Activity;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v2

    const-string v3, "show"

    sget-object v4, Landroid/os/Build;->TYPE:Ljava/lang/String;

    const-string v5, "eng"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    invoke-interface {v2, v3, v4}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v2

    if-eqz v2, :cond_2

    const/4 v2, -0x1

    :goto_0
    iput v2, p0, Lcom/android/settings/DeviceInfoSettings;->mDevHitCountdown:I

    .line 696
    const/4 v2, 0x0

    iput-object v2, p0, Lcom/android/settings/DeviceInfoSettings;->mDevHitToast:Landroid/widget/Toast;

    .line 698
    invoke-static {}, Lcom/samsung/android/feature/FloatingFeature;->getInstance()Lcom/samsung/android/feature/FloatingFeature;

    move-result-object v2

    const-string v3, "SEC_FLOATING_FEATURE_CONTEXTSERVICE_ENABLE_SURVEY_MODE"

    invoke-virtual {v2, v3}, Lcom/samsung/android/feature/FloatingFeature;->getEnableStatus(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 699
    invoke-virtual {p0}, Lcom/android/settings/DeviceInfoSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "samsung_errorlog_agree"

    invoke-static {v2, v3, v0}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v2

    if-nez v2, :cond_3

    .line 700
    .local v0, "getDiagInfo":Z
    :goto_1
    iget-object v2, p0, Lcom/android/settings/DeviceInfoSettings;->mDiagnosticInfo:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v2, v0}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    .line 703
    .end local v0    # "getDiagInfo":Z
    :cond_0
    invoke-direct {p0}, Lcom/android/settings/DeviceInfoSettings;->readSoftwareUpdateType()Ljava/lang/String;

    move-result-object v1

    .line 704
    .local v1, "updateType":Ljava/lang/String;
    const-string v2, "system_update_settings_vzw"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_1

    .line 705
    invoke-direct {p0, v1}, Lcom/android/settings/DeviceInfoSettings;->applySoftwareUpdatePolicy(Ljava/lang/String;)V

    .line 707
    :cond_1
    return-void

    .line 693
    .end local v1    # "updateType":Ljava/lang/String;
    :cond_2
    const/4 v2, 0x7

    goto :goto_0

    .line 699
    :cond_3
    const/4 v0, 0x1

    goto :goto_1
.end method

.method showDialog()V
    .locals 4

    .prologue
    .line 945
    const-string v1, "VZW"

    invoke-static {}, Lcom/android/settings/Utils;->readSalesCode()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v1, 0x0

    invoke-static {v1}, Lcom/android/settings/Utils;->isTablet(Landroid/content/Context;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 946
    const v0, 0x7f0a0094

    .line 950
    .local v0, "idTitle":I
    :goto_0
    invoke-static {v0}, Lcom/android/settings/DeviceNameSettings;->newInstance(I)Lcom/android/settings/DeviceNameSettings;

    move-result-object v1

    iput-object v1, p0, Lcom/android/settings/DeviceInfoSettings;->mDeviceNameFragment:Lcom/android/settings/DeviceNameSettings;

    .line 951
    iget-object v1, p0, Lcom/android/settings/DeviceInfoSettings;->mDeviceNameFragment:Lcom/android/settings/DeviceNameSettings;

    invoke-virtual {v1, p0}, Lcom/android/settings/DeviceNameSettings;->setConfirmationDialogFragmentListener(Lcom/android/settings/DeviceNameSettings$ConfirmationDialogFragmentListener;)V

    .line 952
    iget-object v1, p0, Lcom/android/settings/DeviceInfoSettings;->mDeviceNameFragment:Lcom/android/settings/DeviceNameSettings;

    invoke-virtual {p0}, Lcom/android/settings/DeviceInfoSettings;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v2

    const-string v3, "dialog"

    invoke-virtual {v1, v2, v3}, Lcom/android/settings/DeviceNameSettings;->show(Landroid/app/FragmentManager;Ljava/lang/String;)V

    .line 953
    return-void

    .line 948
    .end local v0    # "idTitle":I
    :cond_0
    const v0, 0x7f0a0092

    .restart local v0    # "idTitle":I
    goto :goto_0
.end method
