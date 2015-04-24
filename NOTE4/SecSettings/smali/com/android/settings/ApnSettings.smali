.class public Lcom/android/settings/ApnSettings;
.super Lcom/android/settings/SettingsPreferenceFragment;
.source "ApnSettings.java"

# interfaces
.implements Landroid/preference/Preference$OnPreferenceChangeListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/settings/ApnSettings$5;,
        Lcom/android/settings/ApnSettings$RestoreApnProcessHandler;,
        Lcom/android/settings/ApnSettings$RestoreApnUiHandler;
    }
.end annotation


# static fields
.field private static final DEFAULTAPN_URI:Landroid/net/Uri;

.field private static final PREFERAPN_URI:Landroid/net/Uri;

.field private static final PREFERAPN_URI_USING_SUBID:Landroid/net/Uri;

.field private static final VZW_DEFAULTAPN_URI:Landroid/net/Uri;

.field private static mRestoreDefaultApnMode:Z


# instance fields
.field apnList:Landroid/preference/PreferenceGroup;

.field private hideApnList:[Ljava/lang/String;

.field private isEmptyApnlist:Z

.field private isSpr:Z

.field private isSprEditable:Z

.field private isSprSimEnable:Z

.field private isVzw:Z

.field private isVzwEditable:Z

.field private isVzwSimEnable:Z

.field private mActivePhone:I

.field private mContentResolver:Landroid/content/ContentResolver;

.field private mDelayHandler:Landroid/os/Handler;

.field private mDelayRunnable:Ljava/lang/Runnable;

.field private mMobileStateFilter:Landroid/content/IntentFilter;

.field private final mMobileStateReceiver:Landroid/content/BroadcastReceiver;

.field private mRestoreApnProcessHandler:Lcom/android/settings/ApnSettings$RestoreApnProcessHandler;

.field private mRestoreApnUiHandler:Lcom/android/settings/ApnSettings$RestoreApnUiHandler;

.field private mRestoreDefaultApnThread:Landroid/os/HandlerThread;

.field private mRestoreDlg:Landroid/app/AlertDialog;

.field private mSelectedCTNETKey:Ljava/lang/String;

.field private mSelectedKey:Ljava/lang/String;

.field private final mTetherChangeReceiver:Landroid/content/BroadcastReceiver;

.field private mTetherStateFilter:Landroid/content/IntentFilter;

.field private mUm:Landroid/os/UserManager;

.field private mUnavailable:Z

.field private mUseNvOperatorForEhrpd:Z

.field pref_vzwdefault:Lcom/android/settings/ApnPreference;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 122
    const-string v0, "content://telephony/carriers/restore"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/android/settings/ApnSettings;->DEFAULTAPN_URI:Landroid/net/Uri;

    .line 123
    const-string v0, "content://telephony/carriers/preferapn"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/android/settings/ApnSettings;->PREFERAPN_URI:Landroid/net/Uri;

    .line 124
    const-string v0, "content://telephony/carriers/preferapn/subId/"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/android/settings/ApnSettings;->PREFERAPN_URI_USING_SUBID:Landroid/net/Uri;

    .line 160
    const-string v0, "content://telephony/carriers/31"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/android/settings/ApnSettings;->VZW_DEFAULTAPN_URI:Landroid/net/Uri;

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 95
    invoke-direct {p0}, Lcom/android/settings/SettingsPreferenceFragment;-><init>()V

    .line 138
    const-string v0, "persist.radio.use_nv_for_ehrpd"

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/settings/ApnSettings;->mUseNvOperatorForEhrpd:Z

    .line 146
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/android/settings/ApnSettings;->mDelayHandler:Landroid/os/Handler;

    .line 149
    iput-boolean v1, p0, Lcom/android/settings/ApnSettings;->isSpr:Z

    .line 150
    iput-boolean v1, p0, Lcom/android/settings/ApnSettings;->isSprSimEnable:Z

    .line 152
    iput-boolean v1, p0, Lcom/android/settings/ApnSettings;->isVzw:Z

    .line 154
    iput-boolean v1, p0, Lcom/android/settings/ApnSettings;->isVzwSimEnable:Z

    .line 156
    iput-boolean v1, p0, Lcom/android/settings/ApnSettings;->isEmptyApnlist:Z

    .line 167
    iput v1, p0, Lcom/android/settings/ApnSettings;->mActivePhone:I

    .line 170
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/settings/ApnSettings;->hideApnList:[Ljava/lang/String;

    .line 175
    new-instance v0, Lcom/android/settings/ApnSettings$1;

    invoke-direct {v0, p0}, Lcom/android/settings/ApnSettings$1;-><init>(Lcom/android/settings/ApnSettings;)V

    iput-object v0, p0, Lcom/android/settings/ApnSettings;->mMobileStateReceiver:Landroid/content/BroadcastReceiver;

    .line 223
    new-instance v0, Lcom/android/settings/ApnSettings$2;

    invoke-direct {v0, p0}, Lcom/android/settings/ApnSettings$2;-><init>(Lcom/android/settings/ApnSettings;)V

    iput-object v0, p0, Lcom/android/settings/ApnSettings;->mTetherChangeReceiver:Landroid/content/BroadcastReceiver;

    .line 1330
    return-void
.end method

.method static synthetic access$000(Landroid/content/Intent;)Lcom/android/internal/telephony/PhoneConstants$DataState;
    .locals 1
    .param p0, "x0"    # Landroid/content/Intent;

    .prologue
    .line 95
    invoke-static {p0}, Lcom/android/settings/ApnSettings;->getMobileDataState(Landroid/content/Intent;)Lcom/android/internal/telephony/PhoneConstants$DataState;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$100()Z
    .locals 1

    .prologue
    .line 95
    sget-boolean v0, Lcom/android/settings/ApnSettings;->mRestoreDefaultApnMode:Z

    return v0
.end method

.method static synthetic access$1000(Lcom/android/settings/ApnSettings;)I
    .locals 1
    .param p0, "x0"    # Lcom/android/settings/ApnSettings;

    .prologue
    .line 95
    iget v0, p0, Lcom/android/settings/ApnSettings;->mActivePhone:I

    return v0
.end method

.method static synthetic access$102(Z)Z
    .locals 0
    .param p0, "x0"    # Z

    .prologue
    .line 95
    sput-boolean p0, Lcom/android/settings/ApnSettings;->mRestoreDefaultApnMode:Z

    return p0
.end method

.method static synthetic access$1100()Landroid/net/Uri;
    .locals 1

    .prologue
    .line 95
    sget-object v0, Lcom/android/settings/ApnSettings;->DEFAULTAPN_URI:Landroid/net/Uri;

    return-object v0
.end method

.method static synthetic access$200(Lcom/android/settings/ApnSettings;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/settings/ApnSettings;

    .prologue
    .line 95
    invoke-direct {p0}, Lcom/android/settings/ApnSettings;->fillList()V

    return-void
.end method

.method static synthetic access$300(Lcom/android/settings/ApnSettings;)Lcom/android/settings/ApnSettings$RestoreApnUiHandler;
    .locals 1
    .param p0, "x0"    # Lcom/android/settings/ApnSettings;

    .prologue
    .line 95
    iget-object v0, p0, Lcom/android/settings/ApnSettings;->mRestoreApnUiHandler:Lcom/android/settings/ApnSettings$RestoreApnUiHandler;

    return-object v0
.end method

.method static synthetic access$302(Lcom/android/settings/ApnSettings;Lcom/android/settings/ApnSettings$RestoreApnUiHandler;)Lcom/android/settings/ApnSettings$RestoreApnUiHandler;
    .locals 0
    .param p0, "x0"    # Lcom/android/settings/ApnSettings;
    .param p1, "x1"    # Lcom/android/settings/ApnSettings$RestoreApnUiHandler;

    .prologue
    .line 95
    iput-object p1, p0, Lcom/android/settings/ApnSettings;->mRestoreApnUiHandler:Lcom/android/settings/ApnSettings$RestoreApnUiHandler;

    return-object p1
.end method

.method static synthetic access$500(Lcom/android/settings/ApnSettings;)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/settings/ApnSettings;

    .prologue
    .line 95
    invoke-direct {p0}, Lcom/android/settings/ApnSettings;->restoreDefaultApn()Z

    move-result v0

    return v0
.end method

.method static synthetic access$600(Lcom/android/settings/ApnSettings;)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/settings/ApnSettings;

    .prologue
    .line 95
    invoke-direct {p0}, Lcom/android/settings/ApnSettings;->isTetheringEnabled()Z

    move-result v0

    return v0
.end method

.method static synthetic access$700(Lcom/android/settings/ApnSettings;Ljava/lang/String;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/settings/ApnSettings;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 95
    invoke-direct {p0, p1}, Lcom/android/settings/ApnSettings;->setSelectedApnKey(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$800(Lcom/android/settings/ApnSettings;)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/settings/ApnSettings;

    .prologue
    .line 95
    iget-boolean v0, p0, Lcom/android/settings/ApnSettings;->isVzw:Z

    return v0
.end method

.method static synthetic access$900(Lcom/android/settings/ApnSettings;)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/settings/ApnSettings;

    .prologue
    .line 95
    iget-boolean v0, p0, Lcom/android/settings/ApnSettings;->isVzwSimEnable:Z

    return v0
.end method

.method private addNewApn()V
    .locals 3

    .prologue
    .line 1178
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.INSERT"

    sget-object v2, Landroid/provider/Telephony$Carriers;->CONTENT_URI:Landroid/net/Uri;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 1179
    .local v0, "intent":Landroid/content/Intent;
    const-string v1, "simSlot"

    iget v2, p0, Lcom/android/settings/ApnSettings;->mActivePhone:I

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 1180
    const-string v1, "VZW"

    invoke-static {}, Lcom/android/settings/Utils;->readSalesCode()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 1181
    const-string v1, "vzw"

    const-string v2, "editable"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1186
    :cond_0
    :goto_0
    invoke-virtual {p0, v0}, Lcom/android/settings/ApnSettings;->startActivity(Landroid/content/Intent;)V

    .line 1187
    return-void

    .line 1182
    :cond_1
    const-string v1, "SPR"

    invoke-static {}, Lcom/android/settings/Utils;->readSalesCode()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1183
    const-string v1, "keyString"

    const-string v2, "hidden"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    goto :goto_0
.end method

.method private fillList()V
    .locals 24

    .prologue
    .line 613
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "numeric=\""

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move-object/from16 v0, p0

    iget v3, v0, Lcom/android/settings/ApnSettings;->mActivePhone:I

    invoke-static {v3}, Lcom/samsung/android/telephony/MultiSimManager;->getSimOperator(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "\""

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 634
    .local v5, "where":Ljava/lang/String;
    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/settings/ApnSettings;->mActivePhone:I

    const/4 v3, 0x1

    if-ne v2, v3, :cond_a

    .line 635
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " and current1 = 1"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 641
    :goto_0
    invoke-static {}, Lcom/android/settings/Utils;->isDomesticLGTModel()Z

    move-result v2

    if-eqz v2, :cond_b

    const-string v2, "3"

    const-string v3, "ril.simtype"

    invoke-static {v3}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_b

    .line 642
    const-string v5, "numeric=\"45006\""

    .line 646
    const-string v2, "ApnSettings"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "fillList: where = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 657
    :cond_0
    :goto_1
    invoke-static {}, Lcom/sec/android/app/CscFeature;->getInstance()Lcom/sec/android/app/CscFeature;

    move-result-object v2

    const-string v3, "CscFeature_Setting_FixApn4SpecificMccMnc"

    invoke-virtual {v2, v3}, Lcom/sec/android/app/CscFeature;->getEnableStatus(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 661
    const-string v2, "21405"

    move-object/from16 v0, p0

    iget v3, v0, Lcom/android/settings/ApnSettings;->mActivePhone:I

    invoke-static {v3}, Lcom/samsung/android/telephony/MultiSimManager;->getSimOperator(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_c

    .line 662
    const-string v5, "numeric=\"21405\""

    .line 666
    :cond_1
    :goto_2
    move-object/from16 v0, p0

    iget-boolean v2, v0, Lcom/android/settings/ApnSettings;->isSpr:Z

    if-eqz v2, :cond_2

    move-object/from16 v0, p0

    iget-boolean v2, v0, Lcom/android/settings/ApnSettings;->isSprEditable:Z

    if-eqz v2, :cond_2

    .line 667
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "numeric=\""

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "gsm.sim.operator.numeric"

    const-string v4, ""

    invoke-static {v3, v4}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "\" and type like \'%default%\'"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 671
    :cond_2
    const/4 v10, 0x0

    .line 673
    .local v10, "cursor":Landroid/database/Cursor;
    const-string v2, "45403"

    move-object/from16 v0, p0

    iget v3, v0, Lcom/android/settings/ApnSettings;->mActivePhone:I

    invoke-static {v3}, Lcom/samsung/android/telephony/MultiSimManager;->getSimOperator(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_d

    .line 674
    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/ApnSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    sget-object v3, Landroid/provider/Telephony$Carriers;->CONTENT_URI:Landroid/net/Uri;

    const/4 v4, 0x4

    new-array v4, v4, [Ljava/lang/String;

    const/4 v6, 0x0

    const-string v7, "_id"

    aput-object v7, v4, v6

    const/4 v6, 0x1

    const-string v7, "name"

    aput-object v7, v4, v6

    const/4 v6, 0x2

    const-string v7, "apn"

    aput-object v7, v4, v6

    const/4 v6, 0x3

    const-string v7, "type"

    aput-object v7, v4, v6

    const/4 v6, 0x0

    const-string v7, "_id asc"

    invoke-virtual/range {v2 .. v7}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v10

    .line 683
    :goto_3
    const-string v2, "DCM"

    invoke-static {}, Lcom/android/settings/Utils;->readSalesCode()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_3

    const-string v2, "VAU"

    invoke-static {}, Lcom/android/settings/Utils;->readSalesCode()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_3

    const-string v2, "VHA"

    invoke-static {}, Lcom/android/settings/Utils;->readSalesCode()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_3

    const-string v2, "TGY"

    invoke-static {}, Lcom/android/settings/Utils;->readSalesCode()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_4

    const-string v2, "45403"

    move-object/from16 v0, p0

    iget v3, v0, Lcom/android/settings/ApnSettings;->mActivePhone:I

    invoke-static {v3}, Lcom/samsung/android/telephony/MultiSimManager;->getSimOperator(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_4

    .line 688
    :cond_3
    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/ApnSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    sget-object v3, Landroid/provider/Telephony$Carriers;->CONTENT_URI:Landroid/net/Uri;

    const/4 v4, 0x4

    new-array v4, v4, [Ljava/lang/String;

    const/4 v6, 0x0

    const-string v7, "_id"

    aput-object v7, v4, v6

    const/4 v6, 0x1

    const-string v7, "name"

    aput-object v7, v4, v6

    const/4 v6, 0x2

    const-string v7, "apn"

    aput-object v7, v4, v6

    const/4 v6, 0x3

    const-string v7, "type"

    aput-object v7, v4, v6

    const/4 v6, 0x0

    const-string v7, "_id asc"

    invoke-virtual/range {v2 .. v7}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v10

    .line 693
    :cond_4
    if-eqz v10, :cond_3a

    .line 694
    const-string v2, "apn_list"

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/android/settings/ApnSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v2

    check-cast v2, Landroid/preference/PreferenceGroup;

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/android/settings/ApnSettings;->apnList:Landroid/preference/PreferenceGroup;

    .line 695
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/settings/ApnSettings;->apnList:Landroid/preference/PreferenceGroup;

    invoke-virtual {v2}, Landroid/preference/PreferenceGroup;->removeAll()V

    .line 697
    new-instance v16, Ljava/util/ArrayList;

    invoke-direct/range {v16 .. v16}, Ljava/util/ArrayList;-><init>()V

    .line 699
    .local v16, "mmsApnList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/preference/Preference;>;"
    new-instance v8, Ljava/util/ArrayList;

    invoke-direct {v8}, Ljava/util/ArrayList;-><init>()V

    .line 701
    .local v8, "UnselectableApnList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/preference/Preference;>;"
    move-object/from16 v0, p0

    iget-boolean v2, v0, Lcom/android/settings/ApnSettings;->isVzw:Z

    if-eqz v2, :cond_5

    move-object/from16 v0, p0

    iget-boolean v2, v0, Lcom/android/settings/ApnSettings;->isVzwSimEnable:Z

    if-nez v2, :cond_5

    .line 702
    new-instance v2, Lcom/android/settings/ApnPreference;

    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/ApnSettings;->getActivity()Landroid/app/Activity;

    move-result-object v3

    invoke-direct {v2, v3}, Lcom/android/settings/ApnPreference;-><init>(Landroid/content/Context;)V

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/android/settings/ApnSettings;->pref_vzwdefault:Lcom/android/settings/ApnPreference;

    .line 703
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/settings/ApnSettings;->pref_vzwdefault:Lcom/android/settings/ApnPreference;

    const-string v3, "6"

    invoke-virtual {v2, v3}, Lcom/android/settings/ApnPreference;->setKey(Ljava/lang/String;)V

    .line 704
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/settings/ApnSettings;->pref_vzwdefault:Lcom/android/settings/ApnPreference;

    const-string v3, "LTE - Verizon Internet"

    invoke-virtual {v2, v3}, Lcom/android/settings/ApnPreference;->setTitle(Ljava/lang/CharSequence;)V

    .line 705
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/settings/ApnSettings;->pref_vzwdefault:Lcom/android/settings/ApnPreference;

    const-string v3, "VZWINTERNET"

    invoke-virtual {v2, v3}, Lcom/android/settings/ApnPreference;->setSummary(Ljava/lang/CharSequence;)V

    .line 710
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/settings/ApnSettings;->pref_vzwdefault:Lcom/android/settings/ApnPreference;

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Lcom/android/settings/ApnPreference;->setPersistent(Z)V

    .line 711
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/settings/ApnSettings;->pref_vzwdefault:Lcom/android/settings/ApnPreference;

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Lcom/android/settings/ApnPreference;->setSelectable(Z)V

    .line 712
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/settings/ApnSettings;->pref_vzwdefault:Lcom/android/settings/ApnPreference;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Lcom/android/settings/ApnPreference;->setEnabled(Z)V

    .line 713
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/settings/ApnSettings;->pref_vzwdefault:Lcom/android/settings/ApnPreference;

    move-object/from16 v0, p0

    invoke-virtual {v2, v0}, Lcom/android/settings/ApnPreference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    .line 714
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/settings/ApnSettings;->apnList:Landroid/preference/PreferenceGroup;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/settings/ApnSettings;->pref_vzwdefault:Lcom/android/settings/ApnPreference;

    invoke-virtual {v2, v3}, Landroid/preference/PreferenceGroup;->addPreference(Landroid/preference/Preference;)Z

    .line 717
    :cond_5
    invoke-direct/range {p0 .. p0}, Lcom/android/settings/ApnSettings;->getSelectedApnKey()Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/android/settings/ApnSettings;->mSelectedKey:Ljava/lang/String;

    .line 719
    const-string v2, "DeviceManager3LM"

    invoke-static {v2}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v2

    invoke-static {v2}, Landroid/os/IDeviceManager3LM$Stub;->asInterface(Landroid/os/IBinder;)Landroid/os/IDeviceManager3LM;

    move-result-object v11

    .line 722
    .local v11, "dm":Landroid/os/IDeviceManager3LM;
    invoke-interface {v10}, Landroid/database/Cursor;->moveToFirst()Z

    .line 723
    const-string v2, "ApnSettings"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "fillList: where = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 725
    const-string v2, "ril.ICC_TYPE"

    const-string v3, "0"

    invoke-static {v2, v3}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v13

    .line 726
    .local v13, "iccType":Ljava/lang/String;
    const-string v2, "ril.ICC_TYPE2"

    const-string v3, "0"

    invoke-static {v2, v3}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v14

    .line 727
    .local v14, "iccType2":Ljava/lang/String;
    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/android/settings/ApnSettings;->mSelectedCTNETKey:Ljava/lang/String;

    .line 728
    const-string v2, "ApnSettings"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "fillList: iccType="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", iccType2="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", mSelectedKey="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/settings/ApnSettings;->mSelectedKey:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", mSelectedCTNETKey="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/settings/ApnSettings;->mSelectedCTNETKey:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 731
    :goto_4
    invoke-interface {v10}, Landroid/database/Cursor;->isAfterLast()Z

    move-result v2

    if-nez v2, :cond_36

    .line 732
    const/4 v2, 0x1

    invoke-interface {v10, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v17

    .line 733
    .local v17, "name":Ljava/lang/String;
    const/4 v2, 0x2

    invoke-interface {v10, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v9

    .line 734
    .local v9, "apn":Ljava/lang/String;
    const/4 v2, 0x0

    invoke-interface {v10, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v15

    .line 735
    .local v15, "key":Ljava/lang/String;
    const/4 v2, 0x3

    invoke-interface {v10, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v23

    .line 753
    .local v23, "type":Ljava/lang/String;
    invoke-static {}, Lcom/android/settings/Utils;->isDomesticSKTModel()Z

    move-result v2

    if-eqz v2, :cond_7

    const-string v2, "45005"

    move-object/from16 v0, p0

    iget v3, v0, Lcom/android/settings/ApnSettings;->mActivePhone:I

    invoke-static {v3}, Lcom/samsung/android/telephony/MultiSimManager;->getSimOperator(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_7

    const-string v2, "oversea"

    const-string v3, "ril.currentplmn"

    invoke-static {v3}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_7

    const-string v2, "web.sktelecom.com"

    invoke-virtual {v2, v9}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_6

    const-string v2, "lte.sktelecom.com"

    invoke-virtual {v2, v9}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_7

    .line 757
    :cond_6
    const-string v9, "roaming.sktelecom.com"

    .line 761
    :cond_7
    invoke-static {}, Lcom/android/settings/Utils;->isDomesticLGTModel()Z

    move-result v2

    if-eqz v2, :cond_8

    const-string v2, "internet.lguplus.co.kr"

    invoke-virtual {v9, v2}, Ljava/lang/String;->compareToIgnoreCase(Ljava/lang/String;)I

    move-result v2

    if-nez v2, :cond_8

    .line 762
    const-string v2, "3"

    const-string v3, "ril.simtype"

    invoke-static {v3}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_8

    const-string v2, "oversea"

    const-string v3, "ril.currentplmn"

    invoke-static {v3}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_8

    .line 763
    const-string v17, "LG U+ Roaming"

    .line 764
    const-string v9, "wroaming.lguplus.co.kr"

    .line 788
    :cond_8
    move-object/from16 v0, p0

    invoke-direct {v0, v9}, Lcom/android/settings/ApnSettings;->isHideApn(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_9

    move-object/from16 v0, p0

    move-object/from16 v1, v17

    invoke-direct {v0, v1}, Lcom/android/settings/ApnSettings;->isHideApn(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_e

    .line 789
    :cond_9
    const-string v2, "ApnSettings"

    const-string v3, "HideApnlist is not added"

    invoke-static {v2, v3}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 790
    invoke-interface {v10}, Landroid/database/Cursor;->moveToNext()Z

    goto/16 :goto_4

    .line 637
    .end local v8    # "UnselectableApnList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/preference/Preference;>;"
    .end local v9    # "apn":Ljava/lang/String;
    .end local v10    # "cursor":Landroid/database/Cursor;
    .end local v11    # "dm":Landroid/os/IDeviceManager3LM;
    .end local v13    # "iccType":Ljava/lang/String;
    .end local v14    # "iccType2":Ljava/lang/String;
    .end local v15    # "key":Ljava/lang/String;
    .end local v16    # "mmsApnList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/preference/Preference;>;"
    .end local v17    # "name":Ljava/lang/String;
    .end local v23    # "type":Ljava/lang/String;
    :cond_a
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " and current = 1"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    goto/16 :goto_0

    .line 648
    :cond_b
    invoke-static {}, Lcom/android/settings/Utils;->isDomesticSKTModel()Z

    move-result v2

    if-eqz v2, :cond_0

    const-string v2, "45005"

    move-object/from16 v0, p0

    iget v3, v0, Lcom/android/settings/ApnSettings;->mActivePhone:I

    invoke-static {v3}, Lcom/samsung/android/telephony/MultiSimManager;->getSimOperator(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 651
    const-string v5, "numeric=\"45005\""

    .line 655
    const-string v2, "ApnSettings"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "fillList: where = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_1

    .line 664
    :cond_c
    const-string v5, "numeric=\"21407\""

    goto/16 :goto_2

    .line 678
    .restart local v10    # "cursor":Landroid/database/Cursor;
    :cond_d
    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/ApnSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    sget-object v3, Landroid/provider/Telephony$Carriers;->CONTENT_URI:Landroid/net/Uri;

    const/4 v4, 0x4

    new-array v4, v4, [Ljava/lang/String;

    const/4 v6, 0x0

    const-string v7, "_id"

    aput-object v7, v4, v6

    const/4 v6, 0x1

    const-string v7, "name"

    aput-object v7, v4, v6

    const/4 v6, 0x2

    const-string v7, "apn"

    aput-object v7, v4, v6

    const/4 v6, 0x3

    const-string v7, "type"

    aput-object v7, v4, v6

    const/4 v6, 0x0

    const-string v7, "name ASC"

    invoke-virtual/range {v2 .. v7}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v10

    goto/16 :goto_3

    .line 793
    .restart local v8    # "UnselectableApnList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/preference/Preference;>;"
    .restart local v9    # "apn":Ljava/lang/String;
    .restart local v11    # "dm":Landroid/os/IDeviceManager3LM;
    .restart local v13    # "iccType":Ljava/lang/String;
    .restart local v14    # "iccType2":Ljava/lang/String;
    .restart local v15    # "key":Ljava/lang/String;
    .restart local v16    # "mmsApnList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/preference/Preference;>;"
    .restart local v17    # "name":Ljava/lang/String;
    .restart local v23    # "type":Ljava/lang/String;
    :cond_e
    const-string v2, "ent1"

    move-object/from16 v0, v23

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_f

    const-string v2, "ent2"

    move-object/from16 v0, v23

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_10

    .line 795
    :cond_f
    const-string v2, "ApnSettings"

    const-string v3, "Enterprise apn is not added"

    invoke-static {v2, v3}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 796
    invoke-interface {v10}, Landroid/database/Cursor;->moveToNext()Z

    goto/16 :goto_4

    .line 801
    :cond_10
    const-string v2, "KDI"

    invoke-static {}, Lcom/android/settings/Utils;->readSalesCode()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_15

    .line 802
    const-string v2, "unitrg.au-net.ne.jp"

    invoke-virtual {v2, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_11

    const-string v2, "autrg.au-net.ne.jp"

    invoke-virtual {v2, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_12

    .line 803
    :cond_11
    const-string v2, "ApnSettings"

    const-string v3, "tethering apn is not added"

    invoke-static {v2, v3}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 804
    invoke-interface {v10}, Landroid/database/Cursor;->moveToNext()Z

    goto/16 :goto_4

    .line 807
    :cond_12
    const-string v2, "Manual"

    move-object/from16 v0, v17

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_13

    const-string v2, "5"

    invoke-virtual {v2, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_13

    .line 808
    const-string v2, "ApnSettings"

    const-string v3, "Manual apn is not added"

    invoke-static {v2, v3}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 809
    invoke-interface {v10}, Landroid/database/Cursor;->moveToNext()Z

    goto/16 :goto_4

    .line 812
    :cond_13
    const-string v2, "Manual_for_Navi"

    move-object/from16 v0, v17

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_14

    const-string v2, "6"

    invoke-virtual {v2, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_14

    .line 813
    const-string v2, "ApnSettings"

    const-string v3, "Manual apn for navi is not added"

    invoke-static {v2, v3}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 814
    invoke-interface {v10}, Landroid/database/Cursor;->moveToNext()Z

    goto/16 :goto_4

    .line 817
    :cond_14
    const-string v2, "ims"

    move-object/from16 v0, v23

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_16

    const-string v2, "8"

    invoke-virtual {v2, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_16

    .line 818
    const-string v2, "ApnSettings"

    const-string v3, "ims apn should not be shown"

    invoke-static {v2, v3}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 819
    invoke-interface {v10}, Landroid/database/Cursor;->moveToNext()Z

    goto/16 :goto_4

    .line 822
    :cond_15
    const-string v2, "DCM"

    invoke-static {}, Lcom/android/settings/Utils;->readSalesCode()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_16

    .line 823
    const-string v2, "ims"

    move-object/from16 v0, v23

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_16

    .line 824
    const-string v2, "ApnSettings"

    const-string v3, "ims apn should not be shown"

    invoke-static {v2, v3}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 825
    invoke-interface {v10}, Landroid/database/Cursor;->moveToNext()Z

    goto/16 :goto_4

    .line 831
    :cond_16
    move-object/from16 v0, p0

    iget-boolean v2, v0, Lcom/android/settings/ApnSettings;->isVzwEditable:Z

    if-nez v2, :cond_17

    move-object/from16 v0, p0

    iget-boolean v2, v0, Lcom/android/settings/ApnSettings;->isVzwSimEnable:Z

    if-nez v2, :cond_1d

    move-object/from16 v0, p0

    iget-boolean v2, v0, Lcom/android/settings/ApnSettings;->isVzw:Z

    if-eqz v2, :cond_1d

    .line 832
    :cond_17
    new-instance v19, Lcom/android/settings/ApnPreference;

    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/ApnSettings;->getActivity()Landroid/app/Activity;

    move-result-object v2

    const/4 v3, 0x2

    move-object/from16 v0, v19

    invoke-direct {v0, v2, v3}, Lcom/android/settings/ApnPreference;-><init>(Landroid/content/Context;I)V

    .line 839
    .local v19, "pref":Lcom/android/settings/ApnPreference;
    :goto_5
    move-object/from16 v0, v19

    invoke-virtual {v0, v15}, Lcom/android/settings/ApnPreference;->setKey(Ljava/lang/String;)V

    .line 840
    move-object/from16 v0, v19

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Lcom/android/settings/ApnPreference;->setTitle(Ljava/lang/CharSequence;)V

    .line 841
    const-string v2, "KDI"

    invoke-static {}, Lcom/android/settings/Utils;->readSalesCode()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_18

    .line 842
    move-object/from16 v0, v19

    invoke-virtual {v0, v9}, Lcom/android/settings/ApnPreference;->setSummary(Ljava/lang/CharSequence;)V

    .line 844
    :cond_18
    const/4 v2, 0x0

    move-object/from16 v0, v19

    invoke-virtual {v0, v2}, Lcom/android/settings/ApnPreference;->setPersistent(Z)V

    .line 845
    move-object/from16 v0, v19

    move-object/from16 v1, p0

    invoke-virtual {v0, v1}, Lcom/android/settings/ApnPreference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    .line 847
    const/16 v22, 0x1

    .line 848
    .local v22, "selectable":Z
    invoke-static {}, Lcom/android/settings/Utils;->readSalesCode()Ljava/lang/String;

    move-result-object v21

    .line 850
    .local v21, "sales_code":Ljava/lang/String;
    const-string v2, "KDI"

    move-object/from16 v0, v21

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_19

    .line 851
    invoke-static {v15}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v18

    .line 852
    .local v18, "pos":I
    const/4 v2, 0x6

    move/from16 v0, v18

    if-ge v0, v2, :cond_19

    .line 853
    const/4 v2, 0x0

    move-object/from16 v0, v19

    invoke-virtual {v0, v2}, Lcom/android/settings/ApnPreference;->setEditable(Z)V

    .line 857
    .end local v18    # "pos":I
    :cond_19
    const-string v2, "VZW"

    move-object/from16 v0, v21

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_28

    .line 858
    move-object/from16 v0, p0

    iget-boolean v2, v0, Lcom/android/settings/ApnSettings;->isVzwEditable:Z

    if-eqz v2, :cond_20

    .line 859
    const/16 v22, 0x1

    .line 912
    :goto_6
    const-string v2, "TGY"

    invoke-static {}, Lcom/android/settings/Utils;->readSalesCode()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1a

    if-eqz v23, :cond_1a

    const-string v2, "ims"

    move-object/from16 v0, v23

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1a

    .line 913
    const/16 v22, 0x0

    .line 915
    :cond_1a
    move-object/from16 v0, v19

    move/from16 v1, v22

    invoke-virtual {v0, v1}, Lcom/android/settings/ApnPreference;->setSelectable(Z)V

    .line 916
    const-string v2, "ApnSettings"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "selectable="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move/from16 v0, v22

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", mSelectedKey="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/settings/ApnSettings;->mSelectedKey:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", key="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 917
    if-eqz v22, :cond_34

    .line 918
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/settings/ApnSettings;->mSelectedKey:Ljava/lang/String;

    if-eqz v2, :cond_1b

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/settings/ApnSettings;->mSelectedKey:Ljava/lang/String;

    invoke-virtual {v2, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1b

    .line 919
    invoke-virtual/range {v19 .. v19}, Lcom/android/settings/ApnPreference;->setChecked()V

    .line 922
    :cond_1b
    if-eqz v23, :cond_32

    const-string v2, "cmdm"

    move-object/from16 v0, v23

    invoke-virtual {v0, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_1c

    const-string v2, "cmmm"

    move-object/from16 v0, v23

    invoke-virtual {v0, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_1c

    const-string v2, "cmmb"

    move-object/from16 v0, v23

    invoke-virtual {v0, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_1c

    const-string v2, "cmmail"

    move-object/from16 v0, v23

    invoke-virtual {v0, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_1c

    const-string v2, "cmpim"

    move-object/from16 v0, v23

    invoke-virtual {v0, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_32

    .line 924
    :cond_1c
    invoke-interface {v10}, Landroid/database/Cursor;->moveToNext()Z

    goto/16 :goto_4

    .line 833
    .end local v19    # "pref":Lcom/android/settings/ApnPreference;
    .end local v21    # "sales_code":Ljava/lang/String;
    .end local v22    # "selectable":Z
    :cond_1d
    move-object/from16 v0, p0

    iget-boolean v2, v0, Lcom/android/settings/ApnSettings;->isSprEditable:Z

    if-nez v2, :cond_1e

    move-object/from16 v0, p0

    iget-boolean v2, v0, Lcom/android/settings/ApnSettings;->isSprSimEnable:Z

    if-nez v2, :cond_1f

    move-object/from16 v0, p0

    iget-boolean v2, v0, Lcom/android/settings/ApnSettings;->isSpr:Z

    if-eqz v2, :cond_1f

    .line 834
    :cond_1e
    new-instance v19, Lcom/android/settings/ApnPreference;

    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/ApnSettings;->getActivity()Landroid/app/Activity;

    move-result-object v2

    const/4 v3, 0x1

    move-object/from16 v0, v19

    invoke-direct {v0, v2, v3}, Lcom/android/settings/ApnPreference;-><init>(Landroid/content/Context;I)V

    .restart local v19    # "pref":Lcom/android/settings/ApnPreference;
    goto/16 :goto_5

    .line 836
    .end local v19    # "pref":Lcom/android/settings/ApnPreference;
    :cond_1f
    new-instance v19, Lcom/android/settings/ApnPreference;

    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/ApnSettings;->getActivity()Landroid/app/Activity;

    move-result-object v2

    move-object/from16 v0, v19

    invoke-direct {v0, v2}, Lcom/android/settings/ApnPreference;-><init>(Landroid/content/Context;)V

    .restart local v19    # "pref":Lcom/android/settings/ApnPreference;
    goto/16 :goto_5

    .line 861
    .restart local v21    # "sales_code":Ljava/lang/String;
    .restart local v22    # "selectable":Z
    :cond_20
    move-object/from16 v0, p0

    iget-boolean v2, v0, Lcom/android/settings/ApnSettings;->isVzwSimEnable:Z

    if-eqz v2, :cond_26

    .line 862
    const-string v2, "ApnSettings"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "pref1 "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, v17

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, v23

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 863
    const-string v2, "Verizon Internet"

    move-object/from16 v0, v17

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_21

    const-string v2, "6"

    invoke-virtual {v2, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_21

    const-string v2, "LTE - Verizon Internet"

    move-object/from16 v0, v17

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_21

    const-string v2, "VZW Roaming Internet"

    move-object/from16 v0, v17

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_22

    .line 864
    :cond_21
    const/16 v22, 0x1

    goto/16 :goto_6

    .line 867
    :cond_22
    const-string v2, "35"

    invoke-virtual {v2, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_23

    const-string v2, "34"

    invoke-virtual {v2, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_23

    const-string v2, "32"

    invoke-virtual {v2, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_23

    const-string v2, "33"

    invoke-virtual {v2, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_23

    const-string v2, "31"

    invoke-virtual {v2, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_23

    const-string v2, "10"

    invoke-virtual {v2, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_23

    const-string v2, "9"

    invoke-virtual {v2, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_23

    const-string v2, "7"

    invoke-virtual {v2, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_23

    const-string v2, "8"

    invoke-virtual {v2, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_24

    .line 869
    :cond_23
    invoke-interface {v10}, Landroid/database/Cursor;->moveToNext()Z

    goto/16 :goto_4

    .line 871
    :cond_24
    const-string v2, "20404"

    move-object/from16 v0, p0

    iget v3, v0, Lcom/android/settings/ApnSettings;->mActivePhone:I

    invoke-static {v3}, Lcom/samsung/android/telephony/MultiSimManager;->getSimOperator(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_25

    const-string v2, "default"

    move-object/from16 v0, v23

    invoke-virtual {v0, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_25

    .line 872
    invoke-interface {v10}, Landroid/database/Cursor;->moveToNext()Z

    goto/16 :goto_4

    .line 875
    :cond_25
    const/16 v22, 0x0

    .line 876
    const/4 v2, 0x0

    move-object/from16 v0, v19

    invoke-virtual {v0, v2}, Lcom/android/settings/ApnPreference;->setEnabled(Z)V

    goto/16 :goto_6

    .line 879
    :cond_26
    const-string v2, "ApnSettings"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "pref2 "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, v17

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, v23

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 880
    const-string v2, "LTE - Verizon Internet"

    move-object/from16 v0, v17

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_27

    .line 881
    const/16 v22, 0x0

    .line 882
    const/4 v2, 0x0

    move-object/from16 v0, v19

    invoke-virtual {v0, v2}, Lcom/android/settings/ApnPreference;->setEnabled(Z)V

    goto/16 :goto_6

    .line 888
    :cond_27
    const/16 v22, 0x1

    goto/16 :goto_6

    .line 892
    :cond_28
    const-string v2, "SPR"

    move-object/from16 v0, v21

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2b

    .line 893
    move-object/from16 v0, p0

    iget-boolean v2, v0, Lcom/android/settings/ApnSettings;->isSprEditable:Z

    if-eqz v2, :cond_29

    .line 894
    const/16 v22, 0x1

    goto/16 :goto_6

    .line 896
    :cond_29
    move-object/from16 v0, p0

    iget-boolean v2, v0, Lcom/android/settings/ApnSettings;->isSprSimEnable:Z

    if-eqz v2, :cond_2a

    .line 897
    const-string v2, "ApnSettings"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "pref1 "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, v17

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, v23

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 898
    const/16 v22, 0x1

    .line 899
    const/4 v2, 0x0

    move-object/from16 v0, v19

    invoke-virtual {v0, v2}, Lcom/android/settings/ApnPreference;->setEnabled(Z)V

    goto/16 :goto_6

    .line 901
    :cond_2a
    const-string v2, "ApnSettings"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "pref2 "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, v17

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, v23

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 902
    const/16 v22, 0x1

    goto/16 :goto_6

    .line 905
    :cond_2b
    invoke-static {}, Lcom/sec/android/app/CscFeature;->getInstance()Lcom/sec/android/app/CscFeature;

    move-result-object v2

    const-string v3, "CscFeature_Setting_BlockToSelectDunApnType"

    invoke-virtual {v2, v3}, Lcom/sec/android/app/CscFeature;->getEnableStatus(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_2e

    .line 906
    if-eqz v23, :cond_2c

    const-string v2, "mms"

    move-object/from16 v0, v23

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_2d

    const-string v2, "mms2"

    move-object/from16 v0, v23

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_2d

    const-string v2, "mms,mms2"

    move-object/from16 v0, v23

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_2d

    const-string v2, "dun"

    move-object/from16 v0, v23

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_2d

    :cond_2c
    const/16 v22, 0x1

    :goto_7
    goto/16 :goto_6

    :cond_2d
    const/16 v22, 0x0

    goto :goto_7

    .line 907
    :cond_2e
    const-string v2, "3 share"

    move-object/from16 v0, v17

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2f

    .line 908
    const/16 v22, 0x0

    goto/16 :goto_6

    .line 910
    :cond_2f
    if-eqz v23, :cond_30

    const-string v2, "mms"

    move-object/from16 v0, v23

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_31

    const-string v2, "mms2"

    move-object/from16 v0, v23

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_31

    const-string v2, "mms,mms2"

    move-object/from16 v0, v23

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_31

    :cond_30
    const/16 v22, 0x1

    :goto_8
    goto/16 :goto_6

    :cond_31
    const/16 v22, 0x0

    goto :goto_8

    .line 927
    :cond_32
    const-string v2, "CHM"

    move-object/from16 v0, v21

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_33

    const-string v2, "wap"

    move-object/from16 v0, v23

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_33

    const-string v2, "WAP"

    move-object/from16 v0, v17

    invoke-virtual {v2, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_33

    const-string v2, "cmwap"

    invoke-virtual {v2, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_33

    .line 929
    invoke-interface {v10}, Landroid/database/Cursor;->moveToNext()Z

    goto/16 :goto_4

    .line 946
    :cond_33
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/settings/ApnSettings;->apnList:Landroid/preference/PreferenceGroup;

    move-object/from16 v0, v19

    invoke-virtual {v2, v0}, Landroid/preference/PreferenceGroup;->addPreference(Landroid/preference/Preference;)Z

    .line 958
    :goto_9
    invoke-interface {v10}, Landroid/database/Cursor;->moveToNext()Z

    goto/16 :goto_4

    .line 950
    :cond_34
    const-string v2, "CHM"

    move-object/from16 v0, v21

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_35

    const-string v2, "CMMMS"

    move-object/from16 v0, v17

    invoke-virtual {v2, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_35

    .line 952
    invoke-interface {v10}, Landroid/database/Cursor;->moveToNext()Z

    goto/16 :goto_4

    .line 956
    :cond_35
    move-object/from16 v0, v16

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_9

    .line 960
    .end local v9    # "apn":Ljava/lang/String;
    .end local v15    # "key":Ljava/lang/String;
    .end local v17    # "name":Ljava/lang/String;
    .end local v19    # "pref":Lcom/android/settings/ApnPreference;
    .end local v21    # "sales_code":Ljava/lang/String;
    .end local v22    # "selectable":Z
    .end local v23    # "type":Ljava/lang/String;
    :cond_36
    invoke-interface {v10}, Landroid/database/Cursor;->close()V

    .line 969
    invoke-virtual/range {v16 .. v16}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v12

    .local v12, "i$":Ljava/util/Iterator;
    :goto_a
    invoke-interface {v12}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_37

    invoke-interface {v12}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v20

    check-cast v20, Landroid/preference/Preference;

    .line 970
    .local v20, "preference":Landroid/preference/Preference;
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/settings/ApnSettings;->apnList:Landroid/preference/PreferenceGroup;

    move-object/from16 v0, v20

    invoke-virtual {v2, v0}, Landroid/preference/PreferenceGroup;->addPreference(Landroid/preference/Preference;)Z

    goto :goto_a

    .line 974
    .end local v20    # "preference":Landroid/preference/Preference;
    :cond_37
    move-object/from16 v0, p0

    iget-boolean v2, v0, Lcom/android/settings/ApnSettings;->isVzw:Z

    if-eqz v2, :cond_38

    move-object/from16 v0, p0

    iget-boolean v2, v0, Lcom/android/settings/ApnSettings;->isVzwSimEnable:Z

    if-nez v2, :cond_38

    .line 975
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/settings/ApnSettings;->apnList:Landroid/preference/PreferenceGroup;

    invoke-virtual {v2}, Landroid/preference/PreferenceGroup;->getPreferenceCount()I

    move-result v2

    const/4 v3, 0x1

    if-ne v2, v3, :cond_38

    .line 976
    const/4 v2, 0x1

    move-object/from16 v0, p0

    iput-boolean v2, v0, Lcom/android/settings/ApnSettings;->isEmptyApnlist:Z

    .line 980
    :cond_38
    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/settings/ApnSettings;->mActivePhone:I

    if-nez v2, :cond_3b

    const/4 v2, 0x5

    invoke-static {}, Landroid/telephony/TelephonyManager;->getDefault()Landroid/telephony/TelephonyManager;

    move-result-object v3

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Landroid/telephony/TelephonyManager;->getSimState(I)I

    move-result v3

    if-ne v2, v3, :cond_39

    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/ApnSettings;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/Activity;->getBaseContext()Landroid/content/Context;

    move-result-object v2

    const/4 v3, 0x0

    invoke-static {v2, v3}, Lcom/samsung/android/telephony/MultiSimManager;->isEnabledSim(Landroid/content/Context;I)Z

    move-result v2

    if-nez v2, :cond_3b

    .line 983
    :cond_39
    const-string v2, "ApnSettings"

    const-string v3, "fillList SIMSLOT1 Not Ready"

    invoke-static {v2, v3}, Landroid/util/secutil/Log;->secI(Ljava/lang/String;Ljava/lang/String;)I

    .line 984
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/settings/ApnSettings;->apnList:Landroid/preference/PreferenceGroup;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroid/preference/PreferenceGroup;->setEnabled(Z)V

    .line 994
    .end local v8    # "UnselectableApnList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/preference/Preference;>;"
    .end local v11    # "dm":Landroid/os/IDeviceManager3LM;
    .end local v12    # "i$":Ljava/util/Iterator;
    .end local v13    # "iccType":Ljava/lang/String;
    .end local v14    # "iccType2":Ljava/lang/String;
    .end local v16    # "mmsApnList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/preference/Preference;>;"
    :cond_3a
    :goto_b
    return-void

    .line 985
    .restart local v8    # "UnselectableApnList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/preference/Preference;>;"
    .restart local v11    # "dm":Landroid/os/IDeviceManager3LM;
    .restart local v12    # "i$":Ljava/util/Iterator;
    .restart local v13    # "iccType":Ljava/lang/String;
    .restart local v14    # "iccType2":Ljava/lang/String;
    .restart local v16    # "mmsApnList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/preference/Preference;>;"
    :cond_3b
    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/settings/ApnSettings;->mActivePhone:I

    const/4 v3, 0x1

    if-ne v2, v3, :cond_3d

    const/4 v2, 0x5

    invoke-static {}, Landroid/telephony/TelephonyManager;->getDefault()Landroid/telephony/TelephonyManager;

    move-result-object v3

    const/4 v4, 0x1

    invoke-virtual {v3, v4}, Landroid/telephony/TelephonyManager;->getSimState(I)I

    move-result v3

    if-ne v2, v3, :cond_3c

    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/ApnSettings;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/Activity;->getBaseContext()Landroid/content/Context;

    move-result-object v2

    const/4 v3, 0x1

    invoke-static {v2, v3}, Lcom/samsung/android/telephony/MultiSimManager;->isEnabledSim(Landroid/content/Context;I)Z

    move-result v2

    if-nez v2, :cond_3d

    .line 988
    :cond_3c
    const-string v2, "ApnSettings"

    const-string v3, "fillList SIMSLOT2 Not Ready"

    invoke-static {v2, v3}, Landroid/util/secutil/Log;->secI(Ljava/lang/String;Ljava/lang/String;)I

    .line 989
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/settings/ApnSettings;->apnList:Landroid/preference/PreferenceGroup;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroid/preference/PreferenceGroup;->setEnabled(Z)V

    goto :goto_b

    .line 991
    :cond_3d
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/settings/ApnSettings;->apnList:Landroid/preference/PreferenceGroup;

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Landroid/preference/PreferenceGroup;->setEnabled(Z)V

    goto :goto_b
.end method

.method private static getMobileDataState(Landroid/content/Intent;)Lcom/android/internal/telephony/PhoneConstants$DataState;
    .locals 2
    .param p0, "intent"    # Landroid/content/Intent;

    .prologue
    .line 237
    const-string v1, "state"

    invoke-virtual {p0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 238
    .local v0, "str":Ljava/lang/String;
    if-eqz v0, :cond_0

    .line 239
    const-class v1, Lcom/android/internal/telephony/PhoneConstants$DataState;

    invoke-static {v1, v0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v1

    check-cast v1, Lcom/android/internal/telephony/PhoneConstants$DataState;

    .line 241
    :goto_0
    return-object v1

    :cond_0
    sget-object v1, Lcom/android/internal/telephony/PhoneConstants$DataState;->DISCONNECTED:Lcom/android/internal/telephony/PhoneConstants$DataState;

    goto :goto_0
.end method

.method private getSelectedApnKey()Ljava/lang/String;
    .locals 9

    .prologue
    const/4 v3, 0x0

    const/4 v8, 0x0

    .line 1251
    const/4 v7, 0x0

    .line 1253
    .local v7, "key":Ljava/lang/String;
    invoke-virtual {p0}, Lcom/android/settings/ApnSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v2, Lcom/android/settings/ApnSettings;->PREFERAPN_URI_USING_SUBID:Landroid/net/Uri;

    invoke-virtual {v2}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/android/settings/ApnSettings;->mActivePhone:I

    invoke-static {v2}, Landroid/telephony/SubscriptionManager;->getSubId(I)[J

    move-result-object v2

    aget-wide v4, v2, v8

    invoke-virtual {v1, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/String;

    const-string v4, "_id"

    aput-object v4, v2, v8

    const-string v5, "name ASC"

    move-object v4, v3

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 1255
    .local v6, "cursor":Landroid/database/Cursor;
    invoke-interface {v6}, Landroid/database/Cursor;->getCount()I

    move-result v0

    if-lez v0, :cond_0

    .line 1256
    invoke-interface {v6}, Landroid/database/Cursor;->moveToFirst()Z

    .line 1257
    invoke-interface {v6, v8}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v7

    .line 1259
    :cond_0
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 1260
    return-object v7
.end method

.method private isHideApn(Ljava/lang/String;)Z
    .locals 7
    .param p1, "apn"    # Ljava/lang/String;

    .prologue
    .line 477
    const/4 v4, 0x0

    .line 478
    .local v4, "ret":Z
    iget-object v6, p0, Lcom/android/settings/ApnSettings;->hideApnList:[Ljava/lang/String;

    if-nez v6, :cond_0

    move v5, v4

    .line 486
    .end local v4    # "ret":Z
    .local v5, "ret":I
    :goto_0
    return v5

    .line 480
    .end local v5    # "ret":I
    .restart local v4    # "ret":Z
    :cond_0
    iget-object v0, p0, Lcom/android/settings/ApnSettings;->hideApnList:[Ljava/lang/String;

    .local v0, "arr$":[Ljava/lang/String;
    array-length v3, v0

    .local v3, "len$":I
    const/4 v1, 0x0

    .local v1, "i$":I
    :goto_1
    if-ge v1, v3, :cond_1

    aget-object v2, v0, v1

    .line 481
    .local v2, "item":Ljava/lang/String;
    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_2

    .line 482
    const/4 v4, 0x1

    .end local v2    # "item":Ljava/lang/String;
    :cond_1
    move v5, v4

    .line 486
    .restart local v5    # "ret":I
    goto :goto_0

    .line 480
    .end local v5    # "ret":I
    .restart local v2    # "item":Ljava/lang/String;
    :cond_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_1
.end method

.method private isTetheringEnabled()Z
    .locals 18

    .prologue
    .line 1422
    const/4 v15, 0x0

    .line 1423
    .local v15, "usbTethered":Z
    const/4 v3, 0x0

    .line 1424
    .local v3, "btTethered":Z
    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/ApnSettings;->getActivity()Landroid/app/Activity;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Landroid/app/Activity;->getBaseContext()Landroid/content/Context;

    move-result-object v5

    .line 1425
    .local v5, "context":Landroid/content/Context;
    const-string v17, "connectivity"

    move-object/from16 v0, v17

    invoke-virtual {v5, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/net/ConnectivityManager;

    .line 1426
    .local v4, "cm":Landroid/net/ConnectivityManager;
    invoke-virtual {v4}, Landroid/net/ConnectivityManager;->getTetheredIfaces()[Ljava/lang/String;

    move-result-object v14

    .line 1427
    .local v14, "tethered":[Ljava/lang/String;
    invoke-virtual {v4}, Landroid/net/ConnectivityManager;->getTetherableUsbRegexs()[Ljava/lang/String;

    move-result-object v11

    .line 1428
    .local v11, "mUsbRegexs":[Ljava/lang/String;
    invoke-virtual {v4}, Landroid/net/ConnectivityManager;->getTetherableBluetoothRegexs()[Ljava/lang/String;

    move-result-object v10

    .line 1429
    .local v10, "mBluetoothRegexs":[Ljava/lang/String;
    move-object v1, v14

    .local v1, "arr$":[Ljava/lang/String;
    array-length v8, v1

    .local v8, "len$":I
    const/4 v6, 0x0

    .local v6, "i$":I
    move v7, v6

    .end local v1    # "arr$":[Ljava/lang/String;
    .end local v6    # "i$":I
    .end local v8    # "len$":I
    .local v7, "i$":I
    :goto_0
    if-ge v7, v8, :cond_4

    aget-object v13, v1, v7

    .line 1430
    .local v13, "s":Ljava/lang/String;
    move-object v2, v11

    .local v2, "arr$":[Ljava/lang/String;
    array-length v9, v2

    .local v9, "len$":I
    const/4 v6, 0x0

    .end local v7    # "i$":I
    .restart local v6    # "i$":I
    :goto_1
    if-ge v6, v9, :cond_1

    aget-object v12, v2, v6

    .line 1431
    .local v12, "regex":Ljava/lang/String;
    invoke-virtual {v13, v12}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    move-result v17

    if-eqz v17, :cond_0

    const/4 v15, 0x1

    .line 1430
    :cond_0
    add-int/lit8 v6, v6, 0x1

    goto :goto_1

    .line 1433
    .end local v12    # "regex":Ljava/lang/String;
    :cond_1
    invoke-static {}, Lcom/android/settings/Utils;->isJapanModel()Z

    move-result v17

    if-eqz v17, :cond_3

    .line 1434
    move-object v2, v10

    array-length v9, v2

    const/4 v6, 0x0

    :goto_2
    if-ge v6, v9, :cond_3

    aget-object v12, v2, v6

    .line 1435
    .restart local v12    # "regex":Ljava/lang/String;
    invoke-virtual {v13, v12}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    move-result v17

    if-eqz v17, :cond_2

    const/4 v3, 0x1

    .line 1434
    :cond_2
    add-int/lit8 v6, v6, 0x1

    goto :goto_2

    .line 1429
    .end local v12    # "regex":Ljava/lang/String;
    :cond_3
    add-int/lit8 v6, v7, 0x1

    move v7, v6

    .end local v6    # "i$":I
    .restart local v7    # "i$":I
    goto :goto_0

    .line 1439
    .end local v2    # "arr$":[Ljava/lang/String;
    .end local v9    # "len$":I
    .end local v13    # "s":Ljava/lang/String;
    :cond_4
    const-string v17, "wifi"

    move-object/from16 v0, v17

    invoke-virtual {v5, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v16

    check-cast v16, Landroid/net/wifi/WifiManager;

    .line 1440
    .local v16, "wifiManager":Landroid/net/wifi/WifiManager;
    invoke-static {}, Lcom/android/settings/Utils;->isJapanModel()Z

    move-result v17

    if-eqz v17, :cond_7

    .line 1441
    if-nez v3, :cond_5

    if-nez v15, :cond_5

    invoke-virtual/range {v16 .. v16}, Landroid/net/wifi/WifiManager;->isWifiApEnabled()Z

    move-result v17

    if-eqz v17, :cond_6

    :cond_5
    const/16 v17, 0x1

    .line 1443
    :goto_3
    return v17

    .line 1441
    :cond_6
    const/16 v17, 0x0

    goto :goto_3

    .line 1443
    :cond_7
    if-nez v15, :cond_8

    invoke-virtual/range {v16 .. v16}, Landroid/net/wifi/WifiManager;->isWifiApEnabled()Z

    move-result v17

    if-eqz v17, :cond_9

    :cond_8
    const/16 v17, 0x1

    goto :goto_3

    :cond_9
    const/16 v17, 0x0

    goto :goto_3
.end method

.method private restoreDefaultApn()Z
    .locals 4

    .prologue
    const/4 v3, 0x1

    .line 1265
    const-string v0, "ApnSettings"

    const-string v1, "run restoreDefaultApn"

    invoke-static {v0, v1}, Landroid/util/secutil/Log;->secI(Ljava/lang/String;Ljava/lang/String;)I

    .line 1266
    const/16 v0, 0x3e9

    invoke-virtual {p0, v0}, Lcom/android/settings/ApnSettings;->showDialog(I)V

    .line 1267
    sput-boolean v3, Lcom/android/settings/ApnSettings;->mRestoreDefaultApnMode:Z

    .line 1269
    iget-object v0, p0, Lcom/android/settings/ApnSettings;->mRestoreApnUiHandler:Lcom/android/settings/ApnSettings$RestoreApnUiHandler;

    if-nez v0, :cond_0

    .line 1270
    new-instance v0, Lcom/android/settings/ApnSettings$RestoreApnUiHandler;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/android/settings/ApnSettings$RestoreApnUiHandler;-><init>(Lcom/android/settings/ApnSettings;Lcom/android/settings/ApnSettings$1;)V

    iput-object v0, p0, Lcom/android/settings/ApnSettings;->mRestoreApnUiHandler:Lcom/android/settings/ApnSettings$RestoreApnUiHandler;

    .line 1273
    :cond_0
    iget-object v0, p0, Lcom/android/settings/ApnSettings;->mRestoreApnProcessHandler:Lcom/android/settings/ApnSettings$RestoreApnProcessHandler;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/settings/ApnSettings;->mRestoreDefaultApnThread:Landroid/os/HandlerThread;

    if-nez v0, :cond_2

    .line 1275
    :cond_1
    new-instance v0, Landroid/os/HandlerThread;

    const-string v1, "Restore default APN Handler: Process Thread"

    invoke-direct {v0, v1}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/android/settings/ApnSettings;->mRestoreDefaultApnThread:Landroid/os/HandlerThread;

    .line 1277
    iget-object v0, p0, Lcom/android/settings/ApnSettings;->mRestoreDefaultApnThread:Landroid/os/HandlerThread;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->start()V

    .line 1278
    new-instance v0, Lcom/android/settings/ApnSettings$RestoreApnProcessHandler;

    iget-object v1, p0, Lcom/android/settings/ApnSettings;->mRestoreDefaultApnThread:Landroid/os/HandlerThread;

    invoke-virtual {v1}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v1

    iget-object v2, p0, Lcom/android/settings/ApnSettings;->mRestoreApnUiHandler:Lcom/android/settings/ApnSettings$RestoreApnUiHandler;

    invoke-direct {v0, p0, v1, v2}, Lcom/android/settings/ApnSettings$RestoreApnProcessHandler;-><init>(Lcom/android/settings/ApnSettings;Landroid/os/Looper;Landroid/os/Handler;)V

    iput-object v0, p0, Lcom/android/settings/ApnSettings;->mRestoreApnProcessHandler:Lcom/android/settings/ApnSettings$RestoreApnProcessHandler;

    .line 1282
    :cond_2
    iget-object v0, p0, Lcom/android/settings/ApnSettings;->mRestoreApnProcessHandler:Lcom/android/settings/ApnSettings$RestoreApnProcessHandler;

    invoke-virtual {v0, v3}, Lcom/android/settings/ApnSettings$RestoreApnProcessHandler;->sendEmptyMessage(I)Z

    .line 1284
    return v3
.end method

.method private setCarrierEnabledStatus(Ljava/lang/String;)V
    .locals 14
    .param p1, "selectedKey"    # Ljava/lang/String;

    .prologue
    .line 1457
    invoke-static {}, Lcom/android/settings/Utils;->readSalesCode()Ljava/lang/String;

    move-result-object v11

    .line 1458
    .local v11, "sales_code":Ljava/lang/String;
    const-string v0, "KDI"

    invoke-virtual {v0, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 1500
    :goto_0
    return-void

    .line 1461
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "numeric=\""

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/android/settings/ApnSettings;->mActivePhone:I

    invoke-static {v1}, Lcom/samsung/android/telephony/MultiSimManager;->getSimOperator(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\""

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 1465
    .local v3, "where":Ljava/lang/String;
    invoke-virtual {p0}, Lcom/android/settings/ApnSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v1, Landroid/provider/Telephony$Carriers;->CONTENT_URI:Landroid/net/Uri;

    const/4 v2, 0x5

    new-array v2, v2, [Ljava/lang/String;

    const/4 v4, 0x0

    const-string v5, "_id"

    aput-object v5, v2, v4

    const/4 v4, 0x1

    const-string v5, "name"

    aput-object v5, v2, v4

    const/4 v4, 0x2

    const-string v5, "apn"

    aput-object v5, v2, v4

    const/4 v4, 0x3

    const-string v5, "type"

    aput-object v5, v2, v4

    const/4 v4, 0x4

    const-string v5, "carrier_enabled"

    aput-object v5, v2, v4

    const/4 v4, 0x0

    const-string v5, "name ASC"

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v8

    .line 1469
    .local v8, "cursor":Landroid/database/Cursor;
    invoke-interface {v8}, Landroid/database/Cursor;->moveToFirst()Z

    .line 1470
    :goto_1
    invoke-interface {v8}, Landroid/database/Cursor;->isAfterLast()Z

    move-result v0

    if-nez v0, :cond_7

    .line 1471
    const/4 v0, 0x0

    invoke-interface {v8, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v9

    .line 1472
    .local v9, "key":Ljava/lang/String;
    const/4 v0, 0x2

    invoke-interface {v8, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v6

    .line 1473
    .local v6, "apn":Ljava/lang/String;
    const/4 v0, 0x3

    invoke-interface {v8, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v12

    .line 1474
    .local v12, "type":Ljava/lang/String;
    const/4 v0, 0x4

    invoke-interface {v8, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v7

    .line 1476
    .local v7, "carrier_enabled":Ljava/lang/String;
    invoke-virtual {p0}, Lcom/android/settings/ApnSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v10

    .line 1477
    .local v10, "resolver":Landroid/content/ContentResolver;
    new-instance v13, Landroid/content/ContentValues;

    invoke-direct {v13}, Landroid/content/ContentValues;-><init>()V

    .line 1478
    .local v13, "values":Landroid/content/ContentValues;
    invoke-virtual {p1, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1479
    const-string v0, "carrier_enabled"

    const-string v1, "1"

    invoke-virtual {v13, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1495
    :goto_2
    invoke-virtual {p0}, Lcom/android/settings/ApnSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v1, Landroid/provider/Telephony$Carriers;->CONTENT_URI:Landroid/net/Uri;

    const-string v2, "_id=?"

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/String;

    const/4 v5, 0x0

    aput-object v9, v4, v5

    invoke-virtual {v0, v1, v13, v2, v4}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    .line 1497
    invoke-interface {v8}, Landroid/database/Cursor;->moveToNext()Z

    goto :goto_1

    .line 1481
    :cond_1
    const-string v0, "1"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    const-string v0, "unitrg.au-net.ne.jp"

    invoke-virtual {v0, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_3

    :cond_2
    const-string v0, "3"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    const-string v0, "autrg.au-net.ne.jp"

    invoke-virtual {v0, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 1483
    :cond_3
    const-string v0, "carrier_enabled"

    const-string v1, "1"

    invoke-virtual {v13, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_2

    .line 1484
    :cond_4
    const-string v0, "ims"

    invoke-virtual {v0, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 1485
    const-string v0, "carrier_enabled"

    const-string v1, "1"

    invoke-virtual {v13, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_2

    .line 1488
    :cond_5
    const-string v0, "0"

    invoke-virtual {v7, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_6

    .line 1489
    invoke-interface {v8}, Landroid/database/Cursor;->moveToNext()Z

    goto/16 :goto_1

    .line 1492
    :cond_6
    const-string v0, "carrier_enabled"

    const-string v1, "0"

    invoke-virtual {v13, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_2

    .line 1499
    .end local v6    # "apn":Ljava/lang/String;
    .end local v7    # "carrier_enabled":Ljava/lang/String;
    .end local v9    # "key":Ljava/lang/String;
    .end local v10    # "resolver":Landroid/content/ContentResolver;
    .end local v12    # "type":Ljava/lang/String;
    .end local v13    # "values":Landroid/content/ContentValues;
    :cond_7
    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    goto/16 :goto_0
.end method

.method private setSelectedApnKey(Ljava/lang/String;)V
    .locals 7
    .param p1, "key"    # Ljava/lang/String;

    .prologue
    const/4 v6, 0x0

    .line 1241
    iput-object p1, p0, Lcom/android/settings/ApnSettings;->mSelectedKey:Ljava/lang/String;

    .line 1242
    invoke-virtual {p0}, Lcom/android/settings/ApnSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 1244
    .local v0, "resolver":Landroid/content/ContentResolver;
    new-instance v1, Landroid/content/ContentValues;

    invoke-direct {v1}, Landroid/content/ContentValues;-><init>()V

    .line 1246
    .local v1, "values":Landroid/content/ContentValues;
    const-string v2, "apn_id"

    iget-object v3, p0, Lcom/android/settings/ApnSettings;->mSelectedKey:Ljava/lang/String;

    invoke-virtual {v1, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1247
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v3, Lcom/android/settings/ApnSettings;->PREFERAPN_URI_USING_SUBID:Landroid/net/Uri;

    invoke-virtual {v3}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Lcom/android/settings/ApnSettings;->mActivePhone:I

    invoke-static {v3}, Landroid/telephony/SubscriptionManager;->getSubId(I)[J

    move-result-object v3

    const/4 v4, 0x0

    aget-wide v4, v3, v4

    invoke-virtual {v2, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    invoke-virtual {v0, v2, v1, v6, v6}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    .line 1248
    return-void
.end method

.method private showWarning()V
    .locals 3

    .prologue
    .line 1163
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-virtual {p0}, Lcom/android/settings/ApnSettings;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 1164
    .local v0, "mAlertDialog":Landroid/app/AlertDialog$Builder;
    const v1, 0x7f0a07dc

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    .line 1165
    const v1, 0x7f0a0023

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    .line 1166
    const v1, 0x104000a

    new-instance v2, Lcom/android/settings/ApnSettings$3;

    invoke-direct {v2, p0}, Lcom/android/settings/ApnSettings$3;-><init>(Lcom/android/settings/ApnSettings;)V

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 1172
    const/high16 v1, 0x1040000

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 1173
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    move-result-object v1

    iput-object v1, p0, Lcom/android/settings/ApnSettings;->mRestoreDlg:Landroid/app/AlertDialog;

    .line 1174
    return-void
.end method


# virtual methods
.method public onActivityCreated(Landroid/os/Bundle;)V
    .locals 4
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    const/4 v3, 0x1

    .line 350
    invoke-super {p0, p1}, Lcom/android/settings/SettingsPreferenceFragment;->onActivityCreated(Landroid/os/Bundle;)V

    .line 352
    invoke-virtual {p0}, Lcom/android/settings/ApnSettings;->getView()Landroid/view/View;

    move-result-object v1

    const v2, 0x1020004

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 353
    .local v0, "empty":Landroid/widget/TextView;
    if-eqz v0, :cond_0

    .line 354
    const v1, 0x7f0a09a4

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    .line 355
    invoke-virtual {p0}, Lcom/android/settings/ApnSettings;->getListView()Landroid/widget/ListView;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/widget/ListView;->setEmptyView(Landroid/view/View;)V

    .line 358
    :cond_0
    iget-object v1, p0, Lcom/android/settings/ApnSettings;->mUm:Landroid/os/UserManager;

    const-string v2, "no_config_mobile_networks"

    invoke-virtual {v1, v2}, Landroid/os/UserManager;->hasUserRestriction(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 359
    iput-boolean v3, p0, Lcom/android/settings/ApnSettings;->mUnavailable:Z

    .line 360
    new-instance v1, Landroid/preference/PreferenceScreen;

    invoke-virtual {p0}, Lcom/android/settings/ApnSettings;->getActivity()Landroid/app/Activity;

    move-result-object v2

    const/4 v3, 0x0

    invoke-direct {v1, v2, v3}, Landroid/preference/PreferenceScreen;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    invoke-virtual {p0, v1}, Lcom/android/settings/ApnSettings;->setPreferenceScreen(Landroid/preference/PreferenceScreen;)V

    .line 367
    :goto_0
    return-void

    .line 364
    :cond_1
    const v1, 0x7f07001b

    invoke-virtual {p0, v1}, Lcom/android/settings/ApnSettings;->addPreferencesFromResource(I)V

    .line 366
    invoke-virtual {p0}, Lcom/android/settings/ApnSettings;->getListView()Landroid/widget/ListView;

    move-result-object v1

    invoke-virtual {v1, v3}, Landroid/widget/ListView;->setItemsCanFocus(Z)V

    goto :goto_0
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 14
    .param p1, "icicle"    # Landroid/os/Bundle;

    .prologue
    const/4 v13, 0x0

    const/4 v12, 0x1

    .line 247
    invoke-super {p0, p1}, Lcom/android/settings/SettingsPreferenceFragment;->onCreate(Landroid/os/Bundle;)V

    .line 249
    invoke-static {}, Lcom/android/settings/Utils;->isFullScreenSupported()Z

    move-result v9

    if-eqz v9, :cond_0

    .line 250
    invoke-virtual {p0}, Lcom/android/settings/ApnSettings;->getActivity()Landroid/app/Activity;

    move-result-object v9

    invoke-virtual {v9}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v8

    .line 251
    .local v8, "window":Landroid/view/Window;
    if-eqz v8, :cond_0

    .line 252
    invoke-virtual {v8}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v2

    .line 253
    .local v2, "lp":Landroid/view/WindowManager$LayoutParams;
    iget v9, v2, Landroid/view/WindowManager$LayoutParams;->flags:I

    or-int/lit16 v9, v9, 0x400

    iput v9, v2, Landroid/view/WindowManager$LayoutParams;->flags:I

    .line 254
    iget v9, v2, Landroid/view/WindowManager$LayoutParams;->samsungFlags:I

    or-int/lit8 v9, v9, 0x2

    iput v9, v2, Landroid/view/WindowManager$LayoutParams;->samsungFlags:I

    .line 255
    invoke-virtual {v8, v2}, Landroid/view/Window;->setAttributes(Landroid/view/WindowManager$LayoutParams;)V

    .line 259
    .end local v2    # "lp":Landroid/view/WindowManager$LayoutParams;
    .end local v8    # "window":Landroid/view/Window;
    :cond_0
    const-string v9, "user"

    invoke-virtual {p0, v9}, Lcom/android/settings/ApnSettings;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Landroid/os/UserManager;

    iput-object v9, p0, Lcom/android/settings/ApnSettings;->mUm:Landroid/os/UserManager;

    .line 261
    iget-object v9, p0, Lcom/android/settings/ApnSettings;->mUm:Landroid/os/UserManager;

    const-string v10, "no_config_mobile_networks"

    invoke-virtual {v9, v10}, Landroid/os/UserManager;->hasUserRestriction(Ljava/lang/String;)Z

    move-result v9

    if-nez v9, :cond_1

    .line 262
    invoke-virtual {p0, v12}, Lcom/android/settings/ApnSettings;->setHasOptionsMenu(Z)V

    .line 265
    :cond_1
    invoke-virtual {p0}, Lcom/android/settings/ApnSettings;->getActivity()Landroid/app/Activity;

    move-result-object v9

    invoke-virtual {v9}, Landroid/app/Activity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v0

    .line 266
    .local v0, "actionBar":Landroid/app/ActionBar;
    if-eqz v0, :cond_2

    .line 267
    invoke-virtual {v0, v12}, Landroid/app/ActionBar;->setDisplayHomeAsUpEnabled(Z)V

    .line 269
    :cond_2
    invoke-virtual {p0}, Lcom/android/settings/ApnSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v9

    iput-object v9, p0, Lcom/android/settings/ApnSettings;->mContentResolver:Landroid/content/ContentResolver;

    .line 271
    new-instance v9, Landroid/content/IntentFilter;

    const-string v10, "android.intent.action.ANY_DATA_STATE"

    invoke-direct {v9, v10}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    iput-object v9, p0, Lcom/android/settings/ApnSettings;->mMobileStateFilter:Landroid/content/IntentFilter;

    .line 273
    invoke-virtual {p0}, Lcom/android/settings/ApnSettings;->getActivity()Landroid/app/Activity;

    move-result-object v9

    invoke-virtual {v9}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v7

    .line 274
    .local v7, "tempIntent":Landroid/content/Intent;
    const-string v9, "simSlot"

    invoke-virtual {v7, v9}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    move-result v9

    if-eqz v9, :cond_9

    .line 275
    const-string v9, "simSlot"

    invoke-virtual {v7, v9, v13}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v9

    iput v9, p0, Lcom/android/settings/ApnSettings;->mActivePhone:I

    .line 280
    :cond_3
    :goto_0
    const-string v9, "ApnSettings"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "mActivePhone : ["

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    iget v11, p0, Lcom/android/settings/ApnSettings;->mActivePhone:I

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, "]"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/secutil/Log;->secI(Ljava/lang/String;Ljava/lang/String;)I

    .line 282
    invoke-static {}, Lcom/android/settings/Utils;->readSalesCode()Ljava/lang/String;

    move-result-object v3

    .line 283
    .local v3, "sales_code":Ljava/lang/String;
    const-string v9, "VZW"

    invoke-virtual {v9, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_a

    .line 284
    iput-boolean v12, p0, Lcom/android/settings/ApnSettings;->isVzw:Z

    .line 291
    :cond_4
    :goto_1
    iget-object v9, p0, Lcom/android/settings/ApnSettings;->mMobileStateFilter:Landroid/content/IntentFilter;

    const-string v10, "android.intent.action.SIM_PROFILE_UPDATE_DONE"

    invoke-virtual {v9, v10}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 292
    iget-object v9, p0, Lcom/android/settings/ApnSettings;->mMobileStateFilter:Landroid/content/IntentFilter;

    const-string v10, "android.intent.action.ACTION_RESTORE_DEFAULT_APN"

    invoke-virtual {v9, v10}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 298
    iget-object v9, p0, Lcom/android/settings/ApnSettings;->mMobileStateFilter:Landroid/content/IntentFilter;

    const-string v10, "android.intent.action.CSC_CONNECTION_RESET_DONE"

    invoke-virtual {v9, v10}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 300
    new-instance v9, Landroid/content/IntentFilter;

    const-string v10, "android.net.conn.TETHER_STATE_CHANGED"

    invoke-direct {v9, v10}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    iput-object v9, p0, Lcom/android/settings/ApnSettings;->mTetherStateFilter:Landroid/content/IntentFilter;

    .line 303
    const-string v9, "vzw"

    invoke-virtual {v7, v9}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 304
    .local v6, "strNameVzw":Ljava/lang/String;
    if-nez v6, :cond_c

    .line 305
    iput-boolean v13, p0, Lcom/android/settings/ApnSettings;->isVzwEditable:Z

    .line 309
    :goto_2
    const-string v9, "keyString"

    invoke-virtual {v7, v9}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 310
    .local v5, "strNameSpr":Ljava/lang/String;
    if-nez v5, :cond_d

    .line 311
    const-string v9, "ApnSettings"

    const-string v10, "strNameSpr = null"

    invoke-static {v9, v10}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 316
    :goto_3
    if-eqz v5, :cond_e

    const-string v9, "hidden"

    invoke-virtual {v5, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_e

    .line 317
    iput-boolean v12, p0, Lcom/android/settings/ApnSettings;->isSprEditable:Z

    .line 321
    :goto_4
    const-string v9, "LTE_TEST"

    invoke-virtual {v7, v9}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 322
    .local v4, "strFromHidden":Ljava/lang/String;
    if-eqz v4, :cond_5

    const-string v9, "editable"

    invoke-virtual {v4, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_5

    .line 323
    iput-boolean v12, p0, Lcom/android/settings/ApnSettings;->isVzwEditable:Z

    .line 324
    iput-boolean v12, p0, Lcom/android/settings/ApnSettings;->isSprEditable:Z

    .line 327
    :cond_5
    const-string v9, "311480"

    iget v10, p0, Lcom/android/settings/ApnSettings;->mActivePhone:I

    invoke-static {v10}, Lcom/samsung/android/telephony/MultiSimManager;->getSimOperator(I)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-nez v9, :cond_6

    const-string v9, "20404"

    iget v10, p0, Lcom/android/settings/ApnSettings;->mActivePhone:I

    invoke-static {v10}, Lcom/samsung/android/telephony/MultiSimManager;->getSimOperator(I)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_f

    .line 329
    :cond_6
    iput-boolean v12, p0, Lcom/android/settings/ApnSettings;->isVzwSimEnable:Z

    .line 333
    :cond_7
    :goto_5
    const-string v9, "ApnSettings"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "TelephonyProperties "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    iget v11, p0, Lcom/android/settings/ApnSettings;->mActivePhone:I

    invoke-static {v11}, Lcom/samsung/android/telephony/MultiSimManager;->getSimOperator(I)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    iget-boolean v11, p0, Lcom/android/settings/ApnSettings;->isSpr:Z

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v10

    iget-boolean v11, p0, Lcom/android/settings/ApnSettings;->isSprSimEnable:Z

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v10

    iget-boolean v11, p0, Lcom/android/settings/ApnSettings;->isSprEditable:Z

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 334
    const-string v9, "ApnSettings"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "TelephonyProperties "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    iget v11, p0, Lcom/android/settings/ApnSettings;->mActivePhone:I

    invoke-static {v11}, Lcom/samsung/android/telephony/MultiSimManager;->getSimOperator(I)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    iget-boolean v11, p0, Lcom/android/settings/ApnSettings;->isVzw:Z

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v10

    iget-boolean v11, p0, Lcom/android/settings/ApnSettings;->isVzwSimEnable:Z

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v10

    iget-boolean v11, p0, Lcom/android/settings/ApnSettings;->isVzwEditable:Z

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 337
    invoke-static {}, Lcom/sec/android/app/CscFeature;->getInstance()Lcom/sec/android/app/CscFeature;

    move-result-object v9

    const-string v10, "CscFeature_Setting_HideApnList"

    invoke-virtual {v9, v10}, Lcom/sec/android/app/CscFeature;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/String;->isEmpty()Z

    move-result v9

    if-nez v9, :cond_8

    .line 338
    invoke-static {}, Lcom/sec/android/app/CscFeature;->getInstance()Lcom/sec/android/app/CscFeature;

    move-result-object v9

    const-string v10, "CscFeature_Setting_HideApnList"

    invoke-virtual {v9, v10}, Lcom/sec/android/app/CscFeature;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 339
    .local v1, "hideApnString":Ljava/lang/String;
    const-string v9, ","

    invoke-virtual {v1, v9}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v9

    iput-object v9, p0, Lcom/android/settings/ApnSettings;->hideApnList:[Ljava/lang/String;

    .line 340
    iget-object v9, p0, Lcom/android/settings/ApnSettings;->hideApnList:[Ljava/lang/String;

    if-nez v9, :cond_8

    .line 341
    new-array v9, v12, [Ljava/lang/String;

    iput-object v9, p0, Lcom/android/settings/ApnSettings;->hideApnList:[Ljava/lang/String;

    .line 342
    iget-object v9, p0, Lcom/android/settings/ApnSettings;->hideApnList:[Ljava/lang/String;

    aput-object v1, v9, v13

    .line 346
    .end local v1    # "hideApnString":Ljava/lang/String;
    :cond_8
    return-void

    .line 276
    .end local v3    # "sales_code":Ljava/lang/String;
    .end local v4    # "strFromHidden":Ljava/lang/String;
    .end local v5    # "strNameSpr":Ljava/lang/String;
    .end local v6    # "strNameVzw":Ljava/lang/String;
    :cond_9
    invoke-static {}, Lcom/samsung/android/telephony/MultiSimManager;->getInsertedSimCount()I

    move-result v9

    if-ne v9, v12, :cond_3

    const-string v9, "READY"

    const-string v10, "gsm.sim.state"

    const-string v11, "UNKNOWN"

    invoke-static {v10, v12, v11}, Lcom/samsung/android/telephony/MultiSimManager;->getTelephonyProperty(Ljava/lang/String;ILjava/lang/String;)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_3

    .line 278
    iput v12, p0, Lcom/android/settings/ApnSettings;->mActivePhone:I

    goto/16 :goto_0

    .line 285
    .restart local v3    # "sales_code":Ljava/lang/String;
    :cond_a
    const-string v9, "SPR"

    invoke-virtual {v9, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-nez v9, :cond_b

    const-string v9, "BST"

    invoke-virtual {v9, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-nez v9, :cond_b

    const-string v9, "XAS"

    invoke-virtual {v9, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-nez v9, :cond_b

    const-string v9, "VMU"

    invoke-virtual {v9, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-nez v9, :cond_b

    const-string v9, "SPRPRE"

    invoke-virtual {v9, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_4

    .line 287
    :cond_b
    iput-boolean v12, p0, Lcom/android/settings/ApnSettings;->isSpr:Z

    goto/16 :goto_1

    .line 307
    .restart local v6    # "strNameVzw":Ljava/lang/String;
    :cond_c
    iput-boolean v12, p0, Lcom/android/settings/ApnSettings;->isVzwEditable:Z

    goto/16 :goto_2

    .line 314
    .restart local v5    # "strNameSpr":Ljava/lang/String;
    :cond_d
    const-string v9, "ApnSettings"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "strNameSpr = "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_3

    .line 319
    :cond_e
    iput-boolean v13, p0, Lcom/android/settings/ApnSettings;->isSprEditable:Z

    goto/16 :goto_4

    .line 330
    .restart local v4    # "strFromHidden":Ljava/lang/String;
    :cond_f
    const-string v9, "310120"

    iget v10, p0, Lcom/android/settings/ApnSettings;->mActivePhone:I

    invoke-static {v10}, Lcom/samsung/android/telephony/MultiSimManager;->getSimOperator(I)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_7

    .line 331
    iput-boolean v12, p0, Lcom/android/settings/ApnSettings;->isSprSimEnable:Z

    goto/16 :goto_5
.end method

.method public onCreateDialog(I)Landroid/app/Dialog;
    .locals 3
    .param p1, "id"    # I

    .prologue
    .line 1379
    const/16 v1, 0x3e9

    if-ne p1, v1, :cond_0

    .line 1380
    new-instance v0, Landroid/app/ProgressDialog;

    invoke-virtual {p0}, Lcom/android/settings/ApnSettings;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/app/ProgressDialog;-><init>(Landroid/content/Context;)V

    .line 1381
    .local v0, "dialog":Landroid/app/ProgressDialog;
    invoke-virtual {p0}, Lcom/android/settings/ApnSettings;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0a07db

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/ProgressDialog;->setMessage(Ljava/lang/CharSequence;)V

    .line 1382
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/app/ProgressDialog;->setCancelable(Z)V

    .line 1385
    .end local v0    # "dialog":Landroid/app/ProgressDialog;
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;Landroid/view/MenuInflater;)V
    .locals 8
    .param p1, "menu"    # Landroid/view/Menu;
    .param p2, "inflater"    # Landroid/view/MenuInflater;

    .prologue
    const/4 v7, 0x2

    const v6, 0x7f0a07cf

    const v5, 0x7f020221

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 999
    iget-boolean v1, p0, Lcom/android/settings/ApnSettings;->mUnavailable:Z

    if-nez v1, :cond_5

    .line 1000
    invoke-static {}, Lcom/android/settings/Utils;->readSalesCode()Ljava/lang/String;

    move-result-object v0

    .line 1002
    .local v0, "sales_code":Ljava/lang/String;
    sget-boolean v1, Lcom/android/settings/ApnSettingsTabActivity;->isMenuOptionsAdded:Z

    if-eqz v1, :cond_0

    .line 1084
    .end local v0    # "sales_code":Ljava/lang/String;
    :goto_0
    return-void

    .line 1004
    .restart local v0    # "sales_code":Ljava/lang/String;
    :cond_0
    const-string v1, "VZW"

    invoke-static {}, Lcom/android/settings/Utils;->readSalesCode()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_9

    .line 1005
    iget-boolean v1, p0, Lcom/android/settings/ApnSettings;->isVzwEditable:Z

    if-eqz v1, :cond_6

    .line 1006
    invoke-virtual {p0}, Lcom/android/settings/ApnSettings;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0a07d0

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-interface {p1, v3, v4, v3, v1}, Landroid/view/Menu;->add(IIILjava/lang/CharSequence;)Landroid/view/MenuItem;

    move-result-object v1

    invoke-interface {v1, v5}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    move-result-object v1

    invoke-interface {v1, v4}, Landroid/view/MenuItem;->setShowAsAction(I)V

    .line 1068
    :cond_1
    :goto_1
    iget-boolean v1, p0, Lcom/android/settings/ApnSettings;->isEmptyApnlist:Z

    if-eqz v1, :cond_2

    iget-boolean v1, p0, Lcom/android/settings/ApnSettings;->isVzw:Z

    if-nez v1, :cond_4

    :cond_2
    iget-boolean v1, p0, Lcom/android/settings/ApnSettings;->isVzwSimEnable:Z

    if-eqz v1, :cond_3

    iget-boolean v1, p0, Lcom/android/settings/ApnSettings;->isVzw:Z

    if-nez v1, :cond_4

    :cond_3
    iget-boolean v1, p0, Lcom/android/settings/ApnSettings;->isVzwEditable:Z

    if-eqz v1, :cond_f

    iget-boolean v1, p0, Lcom/android/settings/ApnSettings;->isVzw:Z

    if-eqz v1, :cond_f

    .line 1069
    :cond_4
    invoke-virtual {p0}, Lcom/android/settings/ApnSettings;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0a07dc

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-interface {p1, v3, v7, v3, v1}, Landroid/view/Menu;->add(IIILjava/lang/CharSequence;)Landroid/view/MenuItem;

    move-result-object v1

    const v2, 0x7f020224

    invoke-interface {v1, v2}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    move-result-object v1

    invoke-interface {v1, v3}, Landroid/view/MenuItem;->setEnabled(Z)Landroid/view/MenuItem;

    .line 1083
    .end local v0    # "sales_code":Ljava/lang/String;
    :cond_5
    :goto_2
    invoke-super {p0, p1, p2}, Lcom/android/settings/SettingsPreferenceFragment;->onCreateOptionsMenu(Landroid/view/Menu;Landroid/view/MenuInflater;)V

    goto :goto_0

    .line 1011
    .restart local v0    # "sales_code":Ljava/lang/String;
    :cond_6
    iget-boolean v1, p0, Lcom/android/settings/ApnSettings;->isVzwSimEnable:Z

    if-eqz v1, :cond_7

    .line 1012
    invoke-virtual {p0}, Lcom/android/settings/ApnSettings;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0a07d0

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-interface {p1, v3, v4, v3, v1}, Landroid/view/Menu;->add(IIILjava/lang/CharSequence;)Landroid/view/MenuItem;

    move-result-object v1

    const v2, 0x7f020222

    invoke-interface {v1, v2}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    move-result-object v1

    invoke-interface {v1, v3}, Landroid/view/MenuItem;->setEnabled(Z)Landroid/view/MenuItem;

    move-result-object v1

    invoke-interface {v1, v4}, Landroid/view/MenuItem;->setShowAsAction(I)V

    goto :goto_1

    .line 1016
    :cond_7
    invoke-virtual {p0}, Lcom/android/settings/ApnSettings;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-static {v1}, Lcom/android/settings/Utils;->isSimMissing(Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_8

    .line 1017
    invoke-virtual {p0}, Lcom/android/settings/ApnSettings;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0a07d0

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-interface {p1, v3, v4, v3, v1}, Landroid/view/Menu;->add(IIILjava/lang/CharSequence;)Landroid/view/MenuItem;

    move-result-object v1

    const v2, 0x7f020222

    invoke-interface {v1, v2}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    move-result-object v1

    invoke-interface {v1, v3}, Landroid/view/MenuItem;->setEnabled(Z)Landroid/view/MenuItem;

    move-result-object v1

    invoke-interface {v1, v4}, Landroid/view/MenuItem;->setShowAsAction(I)V

    goto :goto_1

    .line 1023
    :cond_8
    invoke-virtual {p0}, Lcom/android/settings/ApnSettings;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0a07d0

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-interface {p1, v3, v4, v3, v1}, Landroid/view/Menu;->add(IIILjava/lang/CharSequence;)Landroid/view/MenuItem;

    move-result-object v1

    invoke-interface {v1, v5}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    move-result-object v1

    invoke-interface {v1, v4}, Landroid/view/MenuItem;->setShowAsAction(I)V

    goto/16 :goto_1

    .line 1029
    :cond_9
    invoke-static {}, Lcom/android/settings/Utils;->isDomesticLGTModel()Z

    move-result v1

    if-eqz v1, :cond_a

    .line 1030
    const-string v1, "3"

    const-string v2, "ril.simtype"

    invoke-static {v2}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 1031
    invoke-virtual {p0}, Lcom/android/settings/ApnSettings;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, v6}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-interface {p1, v3, v4, v3, v1}, Landroid/view/Menu;->add(IIILjava/lang/CharSequence;)Landroid/view/MenuItem;

    move-result-object v1

    invoke-interface {v1, v5}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    move-result-object v1

    invoke-interface {v1, v4}, Landroid/view/MenuItem;->setShowAsAction(I)V

    goto/16 :goto_1

    .line 1036
    :cond_a
    const-string v1, "SPR"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_d

    .line 1037
    iget-boolean v1, p0, Lcom/android/settings/ApnSettings;->isSprEditable:Z

    if-eqz v1, :cond_b

    .line 1038
    invoke-virtual {p0}, Lcom/android/settings/ApnSettings;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, v6}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-interface {p1, v3, v4, v3, v1}, Landroid/view/Menu;->add(IIILjava/lang/CharSequence;)Landroid/view/MenuItem;

    move-result-object v1

    invoke-interface {v1, v5}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    move-result-object v1

    invoke-interface {v1, v4}, Landroid/view/MenuItem;->setShowAsAction(I)V

    goto/16 :goto_1

    .line 1043
    :cond_b
    iget-boolean v1, p0, Lcom/android/settings/ApnSettings;->isSprSimEnable:Z

    if-eqz v1, :cond_c

    .line 1044
    invoke-virtual {p0}, Lcom/android/settings/ApnSettings;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, v6}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-interface {p1, v3, v4, v3, v1}, Landroid/view/Menu;->add(IIILjava/lang/CharSequence;)Landroid/view/MenuItem;

    move-result-object v1

    const v2, 0x7f020222

    invoke-interface {v1, v2}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    move-result-object v1

    invoke-interface {v1, v3}, Landroid/view/MenuItem;->setEnabled(Z)Landroid/view/MenuItem;

    move-result-object v1

    invoke-interface {v1, v4}, Landroid/view/MenuItem;->setShowAsAction(I)V

    goto/16 :goto_1

    .line 1049
    :cond_c
    invoke-virtual {p0}, Lcom/android/settings/ApnSettings;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, v6}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-interface {p1, v3, v4, v3, v1}, Landroid/view/Menu;->add(IIILjava/lang/CharSequence;)Landroid/view/MenuItem;

    move-result-object v1

    invoke-interface {v1, v5}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    move-result-object v1

    invoke-interface {v1, v4}, Landroid/view/MenuItem;->setShowAsAction(I)V

    goto/16 :goto_1

    .line 1056
    :cond_d
    invoke-virtual {p0}, Lcom/android/settings/ApnSettings;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-static {v1}, Lcom/android/settings/Utils;->isTablet(Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_e

    .line 1057
    invoke-virtual {p0}, Lcom/android/settings/ApnSettings;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, v6}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-interface {p1, v3, v4, v3, v1}, Landroid/view/Menu;->add(IIILjava/lang/CharSequence;)Landroid/view/MenuItem;

    move-result-object v1

    invoke-interface {v1, v7}, Landroid/view/MenuItem;->setShowAsAction(I)V

    goto/16 :goto_1

    .line 1061
    :cond_e
    invoke-virtual {p0}, Lcom/android/settings/ApnSettings;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, v6}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-interface {p1, v3, v4, v3, v1}, Landroid/view/Menu;->add(IIILjava/lang/CharSequence;)Landroid/view/MenuItem;

    move-result-object v1

    invoke-interface {v1, v5}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    move-result-object v1

    invoke-interface {v1, v4}, Landroid/view/MenuItem;->setShowAsAction(I)V

    goto/16 :goto_1

    .line 1072
    :cond_f
    iget-boolean v1, p0, Lcom/android/settings/ApnSettings;->isSpr:Z

    if-eqz v1, :cond_10

    iget-boolean v1, p0, Lcom/android/settings/ApnSettings;->isSprSimEnable:Z

    if-eqz v1, :cond_10

    .line 1073
    invoke-virtual {p0}, Lcom/android/settings/ApnSettings;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0a07dc

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-interface {p1, v3, v7, v3, v1}, Landroid/view/Menu;->add(IIILjava/lang/CharSequence;)Landroid/view/MenuItem;

    move-result-object v1

    const v2, 0x7f020224

    invoke-interface {v1, v2}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    move-result-object v1

    invoke-interface {v1, v3}, Landroid/view/MenuItem;->setEnabled(Z)Landroid/view/MenuItem;

    goto/16 :goto_2

    .line 1077
    :cond_10
    invoke-virtual {p0}, Lcom/android/settings/ApnSettings;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0a07dc

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-interface {p1, v3, v7, v3, v1}, Landroid/view/Menu;->add(IIILjava/lang/CharSequence;)Landroid/view/MenuItem;

    move-result-object v1

    const v2, 0x7f020223

    invoke-interface {v1, v2}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    goto/16 :goto_2
.end method

.method public onDestroy()V
    .locals 1

    .prologue
    .line 453
    invoke-super {p0}, Lcom/android/settings/SettingsPreferenceFragment;->onDestroy()V

    .line 455
    iget-object v0, p0, Lcom/android/settings/ApnSettings;->mRestoreDlg:Landroid/app/AlertDialog;

    if-eqz v0, :cond_0

    .line 456
    iget-object v0, p0, Lcom/android/settings/ApnSettings;->mRestoreDlg:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/AlertDialog;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 457
    iget-object v0, p0, Lcom/android/settings/ApnSettings;->mRestoreDlg:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/AlertDialog;->dismiss()V

    .line 461
    :cond_0
    iget-object v0, p0, Lcom/android/settings/ApnSettings;->mRestoreDefaultApnThread:Landroid/os/HandlerThread;

    if-eqz v0, :cond_1

    .line 462
    iget-object v0, p0, Lcom/android/settings/ApnSettings;->mRestoreDefaultApnThread:Landroid/os/HandlerThread;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->quit()Z

    .line 464
    :cond_1
    return-void
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 2
    .param p1, "item"    # Landroid/view/MenuItem;

    .prologue
    const/4 v0, 0x1

    .line 1144
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v1

    sparse-switch v1, :sswitch_data_0

    .line 1159
    invoke-super {p0, p1}, Lcom/android/settings/SettingsPreferenceFragment;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result v0

    :goto_0
    return v0

    .line 1146
    :sswitch_0
    invoke-direct {p0}, Lcom/android/settings/ApnSettings;->addNewApn()V

    goto :goto_0

    .line 1151
    :sswitch_1
    invoke-direct {p0}, Lcom/android/settings/ApnSettings;->showWarning()V

    goto :goto_0

    .line 1155
    :sswitch_2
    invoke-virtual {p0}, Lcom/android/settings/ApnSettings;->finish()V

    goto :goto_0

    .line 1144
    nop

    :sswitch_data_0
    .sparse-switch
        0x1 -> :sswitch_0
        0x2 -> :sswitch_1
        0x102002c -> :sswitch_2
    .end sparse-switch
.end method

.method public onPause()V
    .locals 2

    .prologue
    .line 436
    invoke-super {p0}, Lcom/android/settings/SettingsPreferenceFragment;->onPause()V

    .line 438
    iget-boolean v0, p0, Lcom/android/settings/ApnSettings;->mUnavailable:Z

    if-eqz v0, :cond_1

    .line 449
    :cond_0
    :goto_0
    return-void

    .line 442
    :cond_1
    invoke-virtual {p0}, Lcom/android/settings/ApnSettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    iget-object v1, p0, Lcom/android/settings/ApnSettings;->mMobileStateReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1}, Landroid/app/Activity;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 443
    invoke-virtual {p0}, Lcom/android/settings/ApnSettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    iget-object v1, p0, Lcom/android/settings/ApnSettings;->mTetherChangeReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1}, Landroid/app/Activity;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 445
    iget-object v0, p0, Lcom/android/settings/ApnSettings;->mDelayRunnable:Ljava/lang/Runnable;

    if-eqz v0, :cond_0

    .line 446
    iget-object v0, p0, Lcom/android/settings/ApnSettings;->mDelayHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/android/settings/ApnSettings;->mDelayRunnable:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 447
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/settings/ApnSettings;->mDelayRunnable:Ljava/lang/Runnable;

    goto :goto_0
.end method

.method public onPreferenceChange(Landroid/preference/Preference;Ljava/lang/Object;)Z
    .locals 3
    .param p1, "preference"    # Landroid/preference/Preference;
    .param p2, "newValue"    # Ljava/lang/Object;

    .prologue
    .line 1206
    const-string v0, "ApnSettings"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onPreferenceChange(): Preference - "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", newValue - "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", newValue type - "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 1209
    instance-of v0, p2, Ljava/lang/String;

    if-eqz v0, :cond_1

    .line 1210
    const-string v0, "KDI"

    invoke-static {}, Lcom/android/settings/Utils;->readSalesCode()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    move-object v0, p2

    .line 1211
    check-cast v0, Ljava/lang/String;

    invoke-direct {p0, v0}, Lcom/android/settings/ApnSettings;->setCarrierEnabledStatus(Ljava/lang/String;)V

    .line 1214
    :cond_0
    check-cast p2, Ljava/lang/String;

    .end local p2    # "newValue":Ljava/lang/Object;
    invoke-direct {p0, p2}, Lcom/android/settings/ApnSettings;->setSelectedApnKey(Ljava/lang/String;)V

    .line 1237
    :cond_1
    const/4 v0, 0x1

    return v0
.end method

.method public onPreferenceTreeClick(Landroid/preference/PreferenceScreen;Landroid/preference/Preference;)Z
    .locals 6
    .param p1, "preferenceScreen"    # Landroid/preference/PreferenceScreen;
    .param p2, "preference"    # Landroid/preference/Preference;

    .prologue
    .line 1199
    invoke-virtual {p2}, Landroid/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    .line 1200
    .local v0, "pos":I
    sget-object v2, Landroid/provider/Telephony$Carriers;->CONTENT_URI:Landroid/net/Uri;

    int-to-long v4, v0

    invoke-static {v2, v4, v5}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v1

    .line 1201
    .local v1, "url":Landroid/net/Uri;
    new-instance v2, Landroid/content/Intent;

    const-string v3, "android.intent.action.EDIT"

    invoke-direct {v2, v3, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    invoke-virtual {p0, v2}, Lcom/android/settings/ApnSettings;->startActivity(Landroid/content/Intent;)V

    .line 1202
    const/4 v2, 0x1

    return v2
.end method

.method public onResume()V
    .locals 7

    .prologue
    const/4 v3, 0x0

    const/4 v2, 0x1

    .line 371
    invoke-super {p0}, Lcom/android/settings/SettingsPreferenceFragment;->onResume()V

    .line 373
    iget-boolean v4, p0, Lcom/android/settings/ApnSettings;->mUnavailable:Z

    if-eqz v4, :cond_1

    .line 408
    :cond_0
    :goto_0
    return-void

    .line 377
    :cond_1
    invoke-virtual {p0}, Lcom/android/settings/ApnSettings;->getActivity()Landroid/app/Activity;

    move-result-object v4

    invoke-virtual {v4}, Landroid/app/Activity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v0

    .line 378
    .local v0, "actionBar":Landroid/app/ActionBar;
    if-eqz v0, :cond_2

    .line 379
    invoke-virtual {v0, v2}, Landroid/app/ActionBar;->setDisplayHomeAsUpEnabled(Z)V

    .line 381
    :cond_2
    invoke-virtual {p0}, Lcom/android/settings/ApnSettings;->getActivity()Landroid/app/Activity;

    move-result-object v4

    iget-object v5, p0, Lcom/android/settings/ApnSettings;->mMobileStateReceiver:Landroid/content/BroadcastReceiver;

    iget-object v6, p0, Lcom/android/settings/ApnSettings;->mMobileStateFilter:Landroid/content/IntentFilter;

    invoke-virtual {v4, v5, v6}, Landroid/app/Activity;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 382
    invoke-virtual {p0}, Lcom/android/settings/ApnSettings;->getActivity()Landroid/app/Activity;

    move-result-object v4

    iget-object v5, p0, Lcom/android/settings/ApnSettings;->mTetherChangeReceiver:Landroid/content/BroadcastReceiver;

    iget-object v6, p0, Lcom/android/settings/ApnSettings;->mTetherStateFilter:Landroid/content/IntentFilter;

    invoke-virtual {v4, v5, v6}, Landroid/app/Activity;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 384
    sget-boolean v4, Lcom/android/settings/ApnSettings;->mRestoreDefaultApnMode:Z

    if-nez v4, :cond_4

    .line 385
    invoke-direct {p0}, Lcom/android/settings/ApnSettings;->fillList()V

    .line 394
    :goto_1
    const-string v4, "KDI"

    invoke-static {}, Lcom/android/settings/Utils;->readSalesCode()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_3

    .line 395
    invoke-virtual {p0}, Lcom/android/settings/ApnSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    const-string v5, "kddi_cpa_on"

    invoke-static {v4, v5, v3}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v4

    if-eqz v4, :cond_5

    move v1, v2

    .line 396
    .local v1, "cpaEnabled":Z
    :goto_2
    invoke-virtual {p0}, Lcom/android/settings/ApnSettings;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v5

    if-nez v1, :cond_6

    move v4, v2

    :goto_3
    invoke-virtual {v5, v4}, Landroid/preference/PreferenceScreen;->setEnabled(Z)V

    .line 400
    .end local v1    # "cpaEnabled":Z
    :cond_3
    iget-boolean v4, p0, Lcom/android/settings/ApnSettings;->isVzw:Z

    if-eqz v4, :cond_0

    iget-boolean v4, p0, Lcom/android/settings/ApnSettings;->isVzwSimEnable:Z

    if-nez v4, :cond_0

    .line 401
    iget-object v4, p0, Lcom/android/settings/ApnSettings;->apnList:Landroid/preference/PreferenceGroup;

    invoke-virtual {v4}, Landroid/preference/PreferenceGroup;->getPreferenceCount()I

    move-result v4

    if-ne v4, v2, :cond_7

    .line 402
    iput-boolean v2, p0, Lcom/android/settings/ApnSettings;->isEmptyApnlist:Z

    goto :goto_0

    .line 387
    :cond_4
    const/16 v4, 0x3e9

    invoke-virtual {p0, v4}, Lcom/android/settings/ApnSettings;->showDialog(I)V

    goto :goto_1

    :cond_5
    move v1, v3

    .line 395
    goto :goto_2

    .restart local v1    # "cpaEnabled":Z
    :cond_6
    move v4, v3

    .line 396
    goto :goto_3

    .line 405
    .end local v1    # "cpaEnabled":Z
    :cond_7
    iput-boolean v3, p0, Lcom/android/settings/ApnSettings;->isEmptyApnlist:Z

    goto :goto_0
.end method

.method protected showDialog(I)V
    .locals 2
    .param p1, "id"    # I

    .prologue
    const/4 v1, 0x0

    .line 1390
    const/16 v0, 0x3e9

    if-ne p1, v0, :cond_0

    .line 1391
    invoke-virtual {p0}, Lcom/android/settings/ApnSettings;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceScreen;->setEnabled(Z)V

    .line 1393
    :cond_0
    invoke-super {p0, p1, v1}, Lcom/android/settings/SettingsPreferenceFragment;->showDialog(IZ)V

    .line 1394
    return-void
.end method
