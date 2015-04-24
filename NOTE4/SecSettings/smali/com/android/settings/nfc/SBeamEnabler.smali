.class public Lcom/android/settings/nfc/SBeamEnabler;
.super Ljava/lang/Object;
.source "SBeamEnabler.java"

# interfaces
.implements Landroid/preference/Preference$OnPreferenceChangeListener;
.implements Landroid/widget/CompoundButton$OnCheckedChangeListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/settings/nfc/SBeamEnabler$ISBeamHelpController;
    }
.end annotation


# static fields
.field private static mbSupport:I


# instance fields
.field private mAndroidBeam:Landroid/preference/SwitchPreferenceScreen;

.field private mContext:Landroid/content/Context;

.field private mHelpCtrl:Lcom/android/settings/nfc/SBeamEnabler$ISBeamHelpController;

.field private mIntentFilter:Landroid/content/IntentFilter;

.field private mIsAllowed:I

.field private mNfcAdapter:Landroid/nfc/NfcAdapter;

.field private mReceiver:Landroid/content/BroadcastReceiver;

.field private mReqNfcTurnOn:Z

.field private mSbeamPref:Landroid/preference/SwitchPreferenceScreen;

.field private mSbeamScreen:Landroid/preference/PreferenceScreen;

.field private mSbeamSwitch:Landroid/widget/Switch;

.field private mStateOfReceiver:Z

.field private mbOn:Z

.field private mbOnLastState:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 991
    const/4 v0, -0x1

    sput v0, Lcom/android/settings/nfc/SBeamEnabler;->mbSupport:I

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/preference/SwitchPreferenceScreen;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "sbeam"    # Landroid/preference/SwitchPreferenceScreen;

    .prologue
    const/4 v1, 0x0

    const/4 v0, 0x0

    .line 141
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 74
    iput-object v0, p0, Lcom/android/settings/nfc/SBeamEnabler;->mContext:Landroid/content/Context;

    .line 76
    iput-object v0, p0, Lcom/android/settings/nfc/SBeamEnabler;->mSbeamPref:Landroid/preference/SwitchPreferenceScreen;

    .line 78
    iput-object v0, p0, Lcom/android/settings/nfc/SBeamEnabler;->mSbeamScreen:Landroid/preference/PreferenceScreen;

    .line 80
    iput-object v0, p0, Lcom/android/settings/nfc/SBeamEnabler;->mSbeamSwitch:Landroid/widget/Switch;

    .line 82
    iput-object v0, p0, Lcom/android/settings/nfc/SBeamEnabler;->mHelpCtrl:Lcom/android/settings/nfc/SBeamEnabler$ISBeamHelpController;

    .line 84
    iput-object v0, p0, Lcom/android/settings/nfc/SBeamEnabler;->mNfcAdapter:Landroid/nfc/NfcAdapter;

    .line 86
    iput-object v0, p0, Lcom/android/settings/nfc/SBeamEnabler;->mIntentFilter:Landroid/content/IntentFilter;

    .line 88
    iput-boolean v1, p0, Lcom/android/settings/nfc/SBeamEnabler;->mbOn:Z

    .line 90
    iput-boolean v1, p0, Lcom/android/settings/nfc/SBeamEnabler;->mbOnLastState:Z

    .line 92
    iput-boolean v1, p0, Lcom/android/settings/nfc/SBeamEnabler;->mReqNfcTurnOn:Z

    .line 94
    iput-boolean v1, p0, Lcom/android/settings/nfc/SBeamEnabler;->mStateOfReceiver:Z

    .line 96
    iput-object v0, p0, Lcom/android/settings/nfc/SBeamEnabler;->mAndroidBeam:Landroid/preference/SwitchPreferenceScreen;

    .line 106
    iput v1, p0, Lcom/android/settings/nfc/SBeamEnabler;->mIsAllowed:I

    .line 649
    new-instance v0, Lcom/android/settings/nfc/SBeamEnabler$1;

    invoke-direct {v0, p0}, Lcom/android/settings/nfc/SBeamEnabler$1;-><init>(Lcom/android/settings/nfc/SBeamEnabler;)V

    iput-object v0, p0, Lcom/android/settings/nfc/SBeamEnabler;->mReceiver:Landroid/content/BroadcastReceiver;

    .line 142
    iput-object p1, p0, Lcom/android/settings/nfc/SBeamEnabler;->mContext:Landroid/content/Context;

    .line 143
    iput-object p2, p0, Lcom/android/settings/nfc/SBeamEnabler;->mSbeamPref:Landroid/preference/SwitchPreferenceScreen;

    .line 145
    invoke-direct {p0}, Lcom/android/settings/nfc/SBeamEnabler;->initEnabler()V

    .line 146
    iget-object v1, p0, Lcom/android/settings/nfc/SBeamEnabler;->mSbeamPref:Landroid/preference/SwitchPreferenceScreen;

    invoke-static {}, Lcom/android/settings/Utils;->isSupportMenuTreeForK()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-static {}, Lcom/android/settings/Utils;->isSupportNfcCardMode()Z

    move-result v0

    if-nez v0, :cond_1

    :cond_0
    iget-boolean v0, p0, Lcom/android/settings/nfc/SBeamEnabler;->mbOnLastState:Z

    :goto_0
    invoke-virtual {v1, v0}, Landroid/preference/SwitchPreferenceScreen;->setChecked(Z)V

    .line 147
    return-void

    .line 146
    :cond_1
    iget-boolean v0, p0, Lcom/android/settings/nfc/SBeamEnabler;->mbOn:Z

    goto :goto_0
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/preference/SwitchPreferenceScreen;Landroid/preference/SwitchPreferenceScreen;)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "sbeam"    # Landroid/preference/SwitchPreferenceScreen;
    .param p3, "abeam"    # Landroid/preference/SwitchPreferenceScreen;

    .prologue
    const/4 v0, 0x0

    const/4 v1, 0x0

    .line 123
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 74
    iput-object v1, p0, Lcom/android/settings/nfc/SBeamEnabler;->mContext:Landroid/content/Context;

    .line 76
    iput-object v1, p0, Lcom/android/settings/nfc/SBeamEnabler;->mSbeamPref:Landroid/preference/SwitchPreferenceScreen;

    .line 78
    iput-object v1, p0, Lcom/android/settings/nfc/SBeamEnabler;->mSbeamScreen:Landroid/preference/PreferenceScreen;

    .line 80
    iput-object v1, p0, Lcom/android/settings/nfc/SBeamEnabler;->mSbeamSwitch:Landroid/widget/Switch;

    .line 82
    iput-object v1, p0, Lcom/android/settings/nfc/SBeamEnabler;->mHelpCtrl:Lcom/android/settings/nfc/SBeamEnabler$ISBeamHelpController;

    .line 84
    iput-object v1, p0, Lcom/android/settings/nfc/SBeamEnabler;->mNfcAdapter:Landroid/nfc/NfcAdapter;

    .line 86
    iput-object v1, p0, Lcom/android/settings/nfc/SBeamEnabler;->mIntentFilter:Landroid/content/IntentFilter;

    .line 88
    iput-boolean v0, p0, Lcom/android/settings/nfc/SBeamEnabler;->mbOn:Z

    .line 90
    iput-boolean v0, p0, Lcom/android/settings/nfc/SBeamEnabler;->mbOnLastState:Z

    .line 92
    iput-boolean v0, p0, Lcom/android/settings/nfc/SBeamEnabler;->mReqNfcTurnOn:Z

    .line 94
    iput-boolean v0, p0, Lcom/android/settings/nfc/SBeamEnabler;->mStateOfReceiver:Z

    .line 96
    iput-object v1, p0, Lcom/android/settings/nfc/SBeamEnabler;->mAndroidBeam:Landroid/preference/SwitchPreferenceScreen;

    .line 106
    iput v0, p0, Lcom/android/settings/nfc/SBeamEnabler;->mIsAllowed:I

    .line 649
    new-instance v0, Lcom/android/settings/nfc/SBeamEnabler$1;

    invoke-direct {v0, p0}, Lcom/android/settings/nfc/SBeamEnabler$1;-><init>(Lcom/android/settings/nfc/SBeamEnabler;)V

    iput-object v0, p0, Lcom/android/settings/nfc/SBeamEnabler;->mReceiver:Landroid/content/BroadcastReceiver;

    .line 124
    iput-object p1, p0, Lcom/android/settings/nfc/SBeamEnabler;->mContext:Landroid/content/Context;

    .line 125
    iput-object p2, p0, Lcom/android/settings/nfc/SBeamEnabler;->mSbeamPref:Landroid/preference/SwitchPreferenceScreen;

    .line 126
    iput-object p3, p0, Lcom/android/settings/nfc/SBeamEnabler;->mAndroidBeam:Landroid/preference/SwitchPreferenceScreen;

    .line 128
    invoke-direct {p0}, Lcom/android/settings/nfc/SBeamEnabler;->initEnabler()V

    .line 130
    invoke-static {}, Lcom/android/settings/Utils;->isSupportMenuTreeForK()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 131
    iget-object v0, p0, Lcom/android/settings/nfc/SBeamEnabler;->mSbeamPref:Landroid/preference/SwitchPreferenceScreen;

    iget-object v1, p0, Lcom/android/settings/nfc/SBeamEnabler;->mContext:Landroid/content/Context;

    const v2, 0x7f0a0396

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/preference/SwitchPreferenceScreen;->setSummaryOn(Ljava/lang/CharSequence;)V

    .line 132
    iget-object v0, p0, Lcom/android/settings/nfc/SBeamEnabler;->mSbeamPref:Landroid/preference/SwitchPreferenceScreen;

    iget-object v1, p0, Lcom/android/settings/nfc/SBeamEnabler;->mContext:Landroid/content/Context;

    const v2, 0x7f0a0397

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/preference/SwitchPreferenceScreen;->setSummaryOff(Ljava/lang/CharSequence;)V

    .line 137
    :cond_0
    :goto_0
    iget-object v1, p0, Lcom/android/settings/nfc/SBeamEnabler;->mSbeamPref:Landroid/preference/SwitchPreferenceScreen;

    invoke-static {}, Lcom/android/settings/Utils;->isSupportMenuTreeForK()Z

    move-result v0

    if-nez v0, :cond_1

    invoke-static {}, Lcom/android/settings/Utils;->isSupportNfcCardMode()Z

    move-result v0

    if-nez v0, :cond_3

    :cond_1
    iget-boolean v0, p0, Lcom/android/settings/nfc/SBeamEnabler;->mbOnLastState:Z

    :goto_1
    invoke-virtual {v1, v0}, Landroid/preference/SwitchPreferenceScreen;->setChecked(Z)V

    .line 138
    return-void

    .line 133
    :cond_2
    invoke-static {}, Lcom/android/settings/Utils;->isSupportNfcCardMode()Z

    move-result v0

    if-nez v0, :cond_0

    .line 134
    iget-object v0, p0, Lcom/android/settings/nfc/SBeamEnabler;->mSbeamPref:Landroid/preference/SwitchPreferenceScreen;

    invoke-virtual {v0, v1}, Landroid/preference/SwitchPreferenceScreen;->setSummary(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 137
    :cond_3
    iget-boolean v0, p0, Lcom/android/settings/nfc/SBeamEnabler;->mbOn:Z

    goto :goto_1
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/widget/Switch;Lcom/android/settings/nfc/SBeamEnabler$ISBeamHelpController;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "sbeamSwitch"    # Landroid/widget/Switch;
    .param p3, "helpCtrl"    # Lcom/android/settings/nfc/SBeamEnabler$ISBeamHelpController;

    .prologue
    const/4 v1, 0x0

    const/4 v0, 0x0

    .line 150
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 74
    iput-object v0, p0, Lcom/android/settings/nfc/SBeamEnabler;->mContext:Landroid/content/Context;

    .line 76
    iput-object v0, p0, Lcom/android/settings/nfc/SBeamEnabler;->mSbeamPref:Landroid/preference/SwitchPreferenceScreen;

    .line 78
    iput-object v0, p0, Lcom/android/settings/nfc/SBeamEnabler;->mSbeamScreen:Landroid/preference/PreferenceScreen;

    .line 80
    iput-object v0, p0, Lcom/android/settings/nfc/SBeamEnabler;->mSbeamSwitch:Landroid/widget/Switch;

    .line 82
    iput-object v0, p0, Lcom/android/settings/nfc/SBeamEnabler;->mHelpCtrl:Lcom/android/settings/nfc/SBeamEnabler$ISBeamHelpController;

    .line 84
    iput-object v0, p0, Lcom/android/settings/nfc/SBeamEnabler;->mNfcAdapter:Landroid/nfc/NfcAdapter;

    .line 86
    iput-object v0, p0, Lcom/android/settings/nfc/SBeamEnabler;->mIntentFilter:Landroid/content/IntentFilter;

    .line 88
    iput-boolean v1, p0, Lcom/android/settings/nfc/SBeamEnabler;->mbOn:Z

    .line 90
    iput-boolean v1, p0, Lcom/android/settings/nfc/SBeamEnabler;->mbOnLastState:Z

    .line 92
    iput-boolean v1, p0, Lcom/android/settings/nfc/SBeamEnabler;->mReqNfcTurnOn:Z

    .line 94
    iput-boolean v1, p0, Lcom/android/settings/nfc/SBeamEnabler;->mStateOfReceiver:Z

    .line 96
    iput-object v0, p0, Lcom/android/settings/nfc/SBeamEnabler;->mAndroidBeam:Landroid/preference/SwitchPreferenceScreen;

    .line 106
    iput v1, p0, Lcom/android/settings/nfc/SBeamEnabler;->mIsAllowed:I

    .line 649
    new-instance v0, Lcom/android/settings/nfc/SBeamEnabler$1;

    invoke-direct {v0, p0}, Lcom/android/settings/nfc/SBeamEnabler$1;-><init>(Lcom/android/settings/nfc/SBeamEnabler;)V

    iput-object v0, p0, Lcom/android/settings/nfc/SBeamEnabler;->mReceiver:Landroid/content/BroadcastReceiver;

    .line 151
    iput-object p1, p0, Lcom/android/settings/nfc/SBeamEnabler;->mContext:Landroid/content/Context;

    .line 152
    iput-object p2, p0, Lcom/android/settings/nfc/SBeamEnabler;->mSbeamSwitch:Landroid/widget/Switch;

    .line 153
    iput-object p3, p0, Lcom/android/settings/nfc/SBeamEnabler;->mHelpCtrl:Lcom/android/settings/nfc/SBeamEnabler$ISBeamHelpController;

    .line 155
    invoke-direct {p0}, Lcom/android/settings/nfc/SBeamEnabler;->initEnabler()V

    .line 156
    iget-object v1, p0, Lcom/android/settings/nfc/SBeamEnabler;->mSbeamSwitch:Landroid/widget/Switch;

    invoke-static {}, Lcom/android/settings/Utils;->isSupportMenuTreeForK()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-static {}, Lcom/android/settings/Utils;->isSupportNfcCardMode()Z

    move-result v0

    if-nez v0, :cond_1

    :cond_0
    iget-boolean v0, p0, Lcom/android/settings/nfc/SBeamEnabler;->mbOnLastState:Z

    :goto_0
    invoke-virtual {v1, v0}, Landroid/widget/Switch;->setChecked(Z)V

    .line 157
    return-void

    .line 156
    :cond_1
    iget-boolean v0, p0, Lcom/android/settings/nfc/SBeamEnabler;->mbOn:Z

    goto :goto_0
.end method

.method static synthetic access$002(Lcom/android/settings/nfc/SBeamEnabler;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/android/settings/nfc/SBeamEnabler;
    .param p1, "x1"    # Z

    .prologue
    .line 50
    iput-boolean p1, p0, Lcom/android/settings/nfc/SBeamEnabler;->mbOn:Z

    return p1
.end method

.method static synthetic access$100(Lcom/android/settings/nfc/SBeamEnabler;Z)V
    .locals 0
    .param p0, "x0"    # Lcom/android/settings/nfc/SBeamEnabler;
    .param p1, "x1"    # Z

    .prologue
    .line 50
    invoke-direct {p0, p1}, Lcom/android/settings/nfc/SBeamEnabler;->updateUiPref(Z)V

    return-void
.end method

.method static synthetic access$200(Lcom/android/settings/nfc/SBeamEnabler;Z)V
    .locals 0
    .param p0, "x0"    # Lcom/android/settings/nfc/SBeamEnabler;
    .param p1, "x1"    # Z

    .prologue
    .line 50
    invoke-direct {p0, p1}, Lcom/android/settings/nfc/SBeamEnabler;->updateUiSwitch(Z)V

    return-void
.end method

.method static synthetic access$302(Lcom/android/settings/nfc/SBeamEnabler;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/android/settings/nfc/SBeamEnabler;
    .param p1, "x1"    # Z

    .prologue
    .line 50
    iput-boolean p1, p0, Lcom/android/settings/nfc/SBeamEnabler;->mbOnLastState:Z

    return p1
.end method

.method static synthetic access$400(Lcom/android/settings/nfc/SBeamEnabler;)Landroid/nfc/NfcAdapter;
    .locals 1
    .param p0, "x0"    # Lcom/android/settings/nfc/SBeamEnabler;

    .prologue
    .line 50
    iget-object v0, p0, Lcom/android/settings/nfc/SBeamEnabler;->mNfcAdapter:Landroid/nfc/NfcAdapter;

    return-object v0
.end method

.method static synthetic access$500(Lcom/android/settings/nfc/SBeamEnabler;ILandroid/content/Intent;Z)V
    .locals 0
    .param p0, "x0"    # Lcom/android/settings/nfc/SBeamEnabler;
    .param p1, "x1"    # I
    .param p2, "x2"    # Landroid/content/Intent;
    .param p3, "x3"    # Z

    .prologue
    .line 50
    invoke-direct {p0, p1, p2, p3}, Lcom/android/settings/nfc/SBeamEnabler;->changedNfcState(ILandroid/content/Intent;Z)V

    return-void
.end method

.method private changedNfcState(ILandroid/content/Intent;Z)V
    .locals 5
    .param p1, "newState"    # I
    .param p2, "intent"    # Landroid/content/Intent;
    .param p3, "bFromNFC"    # Z

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x1

    .line 426
    const-string v0, "[SBeam]"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "SBeamEnabler.changedNfcState : REQ ["

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-boolean v4, p0, Lcom/android/settings/nfc/SBeamEnabler;->mReqNfcTurnOn:Z

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "] CUR ["

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-boolean v4, p0, Lcom/android/settings/nfc/SBeamEnabler;->mbOn:Z

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "]"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 430
    if-ne v1, p1, :cond_7

    .line 431
    const-string v0, "[SBeam]"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "SBeamEnabler.changedNfcState : STATE_OFF ("

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ")"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 433
    if-eqz p3, :cond_1

    .line 434
    iget-boolean v0, p0, Lcom/android/settings/nfc/SBeamEnabler;->mReqNfcTurnOn:Z

    if-eqz v0, :cond_0

    .line 435
    iput-boolean v2, p0, Lcom/android/settings/nfc/SBeamEnabler;->mReqNfcTurnOn:Z

    .line 438
    :cond_0
    iput-boolean v2, p0, Lcom/android/settings/nfc/SBeamEnabler;->mbOn:Z

    .line 441
    :cond_1
    invoke-static {}, Lcom/android/settings/Utils;->isSupportMenuTreeForK()Z

    move-result v0

    if-nez v0, :cond_2

    invoke-static {}, Lcom/android/settings/Utils;->isSupportNfcCardMode()Z

    move-result v0

    if-nez v0, :cond_6

    :cond_2
    move v0, v2

    :goto_0
    invoke-direct {p0, v0}, Lcom/android/settings/nfc/SBeamEnabler;->updateUiPref(Z)V

    .line 442
    invoke-static {}, Lcom/android/settings/Utils;->isSupportMenuTreeForK()Z

    move-result v0

    if-nez v0, :cond_3

    invoke-static {}, Lcom/android/settings/Utils;->isSupportNfcCardMode()Z

    move-result v0

    if-nez v0, :cond_4

    :cond_3
    move v1, v2

    :cond_4
    invoke-direct {p0, v1}, Lcom/android/settings/nfc/SBeamEnabler;->updateUiSwitch(Z)V

    .line 545
    :cond_5
    :goto_1
    return-void

    :cond_6
    move v0, v1

    .line 441
    goto :goto_0

    .line 444
    :cond_7
    const/4 v0, 0x3

    if-ne v0, p1, :cond_9

    .line 445
    const-string v0, "[SBeam]"

    const-string v3, "SBeamEnabler.changedNfcState : STATE_ON"

    invoke-static {v0, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 447
    invoke-direct {p0}, Lcom/android/settings/nfc/SBeamEnabler;->validateNfcAdapter()Z

    move-result v0

    if-eqz v0, :cond_5

    .line 451
    const-string v0, "[SBeam]"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "SBeamEnabler.changedNfcState : Ndef push > "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/android/settings/nfc/SBeamEnabler;->mNfcAdapter:Landroid/nfc/NfcAdapter;

    invoke-virtual {v4}, Landroid/nfc/NfcAdapter;->isNdefPushEnabled()Z

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 453
    iget-object v0, p0, Lcom/android/settings/nfc/SBeamEnabler;->mNfcAdapter:Landroid/nfc/NfcAdapter;

    invoke-virtual {v0}, Landroid/nfc/NfcAdapter;->isNdefPushEnabled()Z

    move-result v0

    if-nez v0, :cond_8

    .line 455
    iget-boolean v0, p0, Lcom/android/settings/nfc/SBeamEnabler;->mReqNfcTurnOn:Z

    if-eqz v0, :cond_8

    .line 456
    iget-object v0, p0, Lcom/android/settings/nfc/SBeamEnabler;->mNfcAdapter:Landroid/nfc/NfcAdapter;

    invoke-virtual {v0}, Landroid/nfc/NfcAdapter;->enableNdefPush()Z

    .line 460
    invoke-static {}, Lcom/sec/android/app/CscFeature;->getInstance()Lcom/sec/android/app/CscFeature;

    move-result-object v0

    const-string v3, "CscFeature_NFC_EnableFelica"

    invoke-virtual {v0, v3}, Lcom/sec/android/app/CscFeature;->getEnableStatus(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_8

    .line 462
    invoke-direct {p0, v1, v1, v1}, Lcom/android/settings/nfc/SBeamEnabler;->setABeamSwitchStatus(ZZZ)V

    .line 468
    :cond_8
    invoke-direct {p0, v1}, Lcom/android/settings/nfc/SBeamEnabler;->updateUiPref(Z)V

    .line 469
    invoke-direct {p0, v1}, Lcom/android/settings/nfc/SBeamEnabler;->updateUiSwitch(Z)V

    .line 470
    iput-boolean v2, p0, Lcom/android/settings/nfc/SBeamEnabler;->mReqNfcTurnOn:Z

    goto :goto_1

    .line 471
    :cond_9
    const/4 v0, 0x5

    if-ne v0, p1, :cond_10

    .line 472
    const-string v0, "[SBeam]"

    const-string v3, "SBeamEnabler.changedNfcState : STATE_CARD_MODE_ON"

    invoke-static {v0, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 473
    invoke-direct {p0}, Lcom/android/settings/nfc/SBeamEnabler;->validateNfcAdapter()Z

    move-result v0

    if-eqz v0, :cond_5

    .line 479
    iget-boolean v0, p0, Lcom/android/settings/nfc/SBeamEnabler;->mReqNfcTurnOn:Z

    if-eqz v0, :cond_e

    .line 480
    iget-object v0, p0, Lcom/android/settings/nfc/SBeamEnabler;->mNfcAdapter:Landroid/nfc/NfcAdapter;

    invoke-virtual {v0}, Landroid/nfc/NfcAdapter;->readerEnable()Z

    .line 481
    invoke-static {}, Lcom/android/settings/Utils;->isSupportMenuTreeForK()Z

    move-result v0

    if-nez v0, :cond_a

    invoke-static {}, Lcom/android/settings/Utils;->isSupportNfcCardMode()Z

    move-result v0

    if-eqz v0, :cond_a

    .line 482
    iput-boolean v1, p0, Lcom/android/settings/nfc/SBeamEnabler;->mbOn:Z

    .line 483
    iget-object v0, p0, Lcom/android/settings/nfc/SBeamEnabler;->mContext:Landroid/content/Context;

    invoke-static {v0, v1, v2}, Lcom/android/settings/nfc/SBeamEnabler;->saveStatus(Landroid/content/Context;ZZ)V

    .line 489
    :cond_a
    :goto_2
    invoke-static {}, Lcom/android/settings/Utils;->isSupportMenuTreeForK()Z

    move-result v0

    if-nez v0, :cond_b

    invoke-static {}, Lcom/android/settings/Utils;->isSupportNfcCardMode()Z

    move-result v0

    if-nez v0, :cond_f

    :cond_b
    move v0, v2

    :goto_3
    invoke-direct {p0, v0}, Lcom/android/settings/nfc/SBeamEnabler;->updateUiPref(Z)V

    .line 490
    invoke-static {}, Lcom/android/settings/Utils;->isSupportMenuTreeForK()Z

    move-result v0

    if-nez v0, :cond_c

    invoke-static {}, Lcom/android/settings/Utils;->isSupportNfcCardMode()Z

    move-result v0

    if-nez v0, :cond_d

    :cond_c
    move v1, v2

    :cond_d
    invoke-direct {p0, v1}, Lcom/android/settings/nfc/SBeamEnabler;->updateUiSwitch(Z)V

    goto/16 :goto_1

    .line 486
    :cond_e
    iput-boolean v2, p0, Lcom/android/settings/nfc/SBeamEnabler;->mbOn:Z

    goto :goto_2

    :cond_f
    move v0, v1

    .line 489
    goto :goto_3

    .line 491
    :cond_10
    const/4 v0, 0x4

    if-eq v0, p1, :cond_11

    const/4 v0, 0x2

    if-ne v0, p1, :cond_5

    .line 493
    :cond_11
    invoke-static {}, Lcom/sec/android/app/CscFeature;->getInstance()Lcom/sec/android/app/CscFeature;

    move-result-object v0

    const-string v1, "CscFeature_NFC_EnableFelica"

    invoke-virtual {v0, v1}, Lcom/sec/android/app/CscFeature;->getEnableStatus(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_5

    .line 494
    invoke-direct {p0}, Lcom/android/settings/nfc/SBeamEnabler;->disableButton()V

    goto/16 :goto_1
.end method

.method private static checkEnablePopupForChinaNalSecurity()Z
    .locals 3

    .prologue
    .line 1054
    const/4 v0, 0x0

    .line 1056
    .local v0, "ret":Z
    invoke-static {}, Lcom/android/settings/Utils;->isChinaNAL()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1057
    const-string v1, "[SBeam]"

    const-string v2, "ChinaNalSecurity enable"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1058
    const/4 v0, 0x1

    .line 1061
    :cond_0
    return v0
.end method

.method private disableButton()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 548
    iget-object v0, p0, Lcom/android/settings/nfc/SBeamEnabler;->mSbeamPref:Landroid/preference/SwitchPreferenceScreen;

    if-eqz v0, :cond_0

    .line 549
    iget-object v0, p0, Lcom/android/settings/nfc/SBeamEnabler;->mSbeamPref:Landroid/preference/SwitchPreferenceScreen;

    invoke-virtual {v0, v1}, Landroid/preference/SwitchPreferenceScreen;->setEnabled(Z)V

    .line 552
    :cond_0
    iget-object v0, p0, Lcom/android/settings/nfc/SBeamEnabler;->mSbeamSwitch:Landroid/widget/Switch;

    if-eqz v0, :cond_1

    .line 553
    iget-object v0, p0, Lcom/android/settings/nfc/SBeamEnabler;->mSbeamSwitch:Landroid/widget/Switch;

    invoke-virtual {v0, v1}, Landroid/widget/Switch;->setEnabled(Z)V

    .line 555
    :cond_1
    return-void
.end method

.method public static getSBeamAllowCondition(Landroid/content/Context;)I
    .locals 1
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 806
    invoke-static {p0}, Lcom/android/settings/nfc/SBeamEnabler;->isEdmSbeamAllowed(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 807
    const/4 v0, 0x1

    .line 813
    :goto_0
    return v0

    .line 808
    :cond_0
    invoke-static {p0}, Lcom/android/settings/nfc/SBeamEnabler;->isAllowWifiByDevicePolicy(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 809
    const/4 v0, 0x2

    goto :goto_0

    .line 810
    :cond_1
    invoke-static {p0}, Lcom/android/settings/nfc/SBeamEnabler;->isAllowSBeamOnOperatorAirplaneMode(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 811
    const/4 v0, 0x3

    goto :goto_0

    .line 813
    :cond_2
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private initEnabler()V
    .locals 3

    .prologue
    .line 289
    iget-object v0, p0, Lcom/android/settings/nfc/SBeamEnabler;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/settings/nfc/SBeamEnabler;->initPreferenceForSbeam(Landroid/content/Context;)V

    .line 291
    iget-object v0, p0, Lcom/android/settings/nfc/SBeamEnabler;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/settings/nfc/SBeamEnabler;->isSBeamOn(Landroid/content/Context;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/settings/nfc/SBeamEnabler;->mbOn:Z

    .line 292
    iget-object v0, p0, Lcom/android/settings/nfc/SBeamEnabler;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/settings/nfc/SBeamEnabler;->isSBeamLastStatusOn(Landroid/content/Context;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/settings/nfc/SBeamEnabler;->mbOnLastState:Z

    .line 294
    const-string v0, "[SBeam]"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "SBeamEnabler.initEnabler("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Lcom/android/settings/nfc/SBeamEnabler;->mbOn:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ") Last("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Lcom/android/settings/nfc/SBeamEnabler;->mbOnLastState:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 297
    iget-object v0, p0, Lcom/android/settings/nfc/SBeamEnabler;->mContext:Landroid/content/Context;

    invoke-static {v0}, Landroid/nfc/NfcAdapter;->getDefaultAdapter(Landroid/content/Context;)Landroid/nfc/NfcAdapter;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/nfc/SBeamEnabler;->mNfcAdapter:Landroid/nfc/NfcAdapter;

    .line 301
    new-instance v0, Landroid/content/IntentFilter;

    const-string v1, "com.android.settings.nfc.SBeam.SBEAM_SETTING_CHANGED"

    invoke-direct {v0, v1}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/android/settings/nfc/SBeamEnabler;->mIntentFilter:Landroid/content/IntentFilter;

    .line 302
    iget-object v0, p0, Lcom/android/settings/nfc/SBeamEnabler;->mIntentFilter:Landroid/content/IntentFilter;

    const-string v1, "com.android.settings.action.SBEAM_OFF_INTERNAL"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 303
    iget-object v0, p0, Lcom/android/settings/nfc/SBeamEnabler;->mIntentFilter:Landroid/content/IntentFilter;

    const-string v1, "android.nfc.action.ADAPTER_STATE_CHANGED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 308
    iget-object v0, p0, Lcom/android/settings/nfc/SBeamEnabler;->mIntentFilter:Landroid/content/IntentFilter;

    const-string v1, "android.nfc.action.ADAPTER_STATE_CHANGED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 311
    iget-object v0, p0, Lcom/android/settings/nfc/SBeamEnabler;->mIntentFilter:Landroid/content/IntentFilter;

    const-string v1, "android.intent.action.AIRPLANE_MODE"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 312
    return-void
.end method

.method public static initPreferenceForSbeam(Landroid/content/Context;)V
    .locals 8
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    const/4 v4, 0x1

    const/4 v5, 0x0

    .line 818
    const-string v3, "pref_sbeam"

    const/4 v6, 0x5

    invoke-virtual {p0, v3, v6}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v2

    .line 820
    .local v2, "pref":Landroid/content/SharedPreferences;
    invoke-interface {v2}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 822
    .local v0, "editor":Landroid/content/SharedPreferences$Editor;
    const-string v3, "SBeam_support"

    invoke-interface {v2, v3}, Landroid/content/SharedPreferences;->contains(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 826
    const-string v3, "SBeam_support"

    invoke-static {p0}, Lcom/android/settings/nfc/SBeamEnabler;->isSBeamSupported(Landroid/content/Context;)Z

    move-result v6

    invoke-interface {v0, v3, v6}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 827
    const-string v3, "[SBeam]"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "SBeamEnabler.initPreferenceForSbeam : support >"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "SBeam_support"

    invoke-interface {v2, v7, v5}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v3, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 828
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 831
    :cond_0
    const-string v3, "SBeam_support"

    invoke-interface {v2, v3, v5}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v3

    if-eqz v3, :cond_5

    .line 834
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string v6, "sbeam_mode"

    invoke-static {v3, v6, v5}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    .line 835
    .local v1, "modeOn":I
    const-string v3, "[SBeam]"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "SBeamEnabler.initPreferenceForSbeam : "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v3, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 837
    const-string v3, "SBeam_on_off"

    invoke-interface {v2, v3}, Landroid/content/SharedPreferences;->contains(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_1

    .line 838
    const-string v6, "SBeam_on_off"

    if-ne v1, v4, :cond_3

    move v3, v4

    :goto_0
    invoke-interface {v0, v6, v3}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 841
    :cond_1
    const-string v3, "sbeam_last_status"

    invoke-interface {v2, v3}, Landroid/content/SharedPreferences;->contains(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_2

    .line 842
    const-string v3, "sbeam_last_status"

    if-ne v1, v4, :cond_4

    :goto_1
    invoke-interface {v0, v3, v4}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 854
    .end local v1    # "modeOn":I
    :cond_2
    :goto_2
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 855
    return-void

    .restart local v1    # "modeOn":I
    :cond_3
    move v3, v5

    .line 838
    goto :goto_0

    :cond_4
    move v4, v5

    .line 842
    goto :goto_1

    .line 845
    .end local v1    # "modeOn":I
    :cond_5
    const-string v3, "SBeam_on_off"

    invoke-interface {v2, v3}, Landroid/content/SharedPreferences;->contains(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_6

    .line 846
    const-string v3, "SBeam_on_off"

    invoke-interface {v0, v3, v5}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 849
    :cond_6
    const-string v3, "sbeam_last_status"

    invoke-interface {v2, v3}, Landroid/content/SharedPreferences;->contains(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_2

    .line 850
    const-string v3, "sbeam_last_status"

    invoke-interface {v0, v3, v5}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    goto :goto_2
.end method

.method private static isAllowSBeamOnOperatorAirplaneMode(Landroid/content/Context;)Z
    .locals 1
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 1048
    const/4 v0, 0x1

    return v0
.end method

.method public static isAllowWifiByDevicePolicy(Landroid/content/Context;)Z
    .locals 4
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    const/4 v1, 0x1

    .line 923
    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    const-string v3, "device_policy"

    invoke-virtual {v2, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/admin/DevicePolicyManager;

    .line 926
    .local v0, "dpm":Landroid/app/admin/DevicePolicyManager;
    if-nez v0, :cond_1

    .line 933
    :cond_0
    :goto_0
    return v1

    .line 929
    :cond_1
    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Landroid/app/admin/DevicePolicyManager;->getAllowWifi(Landroid/content/ComponentName;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 932
    const-string v1, "[SBeam]"

    const-string v2, "SBeamEnabler.isAllowWifiByDevicePolicy : NOT ALLOWED"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 933
    const/4 v1, 0x0

    goto :goto_0
.end method

.method private static isEdmSbeamAllowed(Landroid/content/Context;)Z
    .locals 16
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 721
    const-string v0, "content://com.sec.knox.provider/RestrictionPolicy3"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    .line 722
    .local v1, "uri":Landroid/net/Uri;
    invoke-virtual/range {p0 .. p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const/4 v2, 0x0

    const-string v3, "isSBeamAllowed"

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v13

    .line 724
    .local v13, "sbeamCr":Landroid/database/Cursor;
    if-eqz v13, :cond_1

    .line 726
    :try_start_0
    invoke-interface {v13}, Landroid/database/Cursor;->moveToFirst()Z

    .line 727
    const-string v0, "isSBeamAllowed"

    invoke-interface {v13, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v13, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    const-string v2, "false"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 728
    const-string v0, "[SBeam]"

    const-string v2, "SBeamEnabler.isEdmSbeamAllowed : RP NOT ALLOWED!"

    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 729
    const/4 v0, 0x0

    .line 732
    invoke-interface {v13}, Landroid/database/Cursor;->close()V

    .line 797
    :goto_0
    return v0

    .line 732
    :cond_0
    invoke-interface {v13}, Landroid/database/Cursor;->close()V

    .line 736
    :cond_1
    const-string v0, "content://com.sec.knox.provider/RestrictionPolicy1"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    .line 737
    invoke-virtual/range {p0 .. p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const/4 v2, 0x0

    const-string v3, "isAndroidBeamAllowed"

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v11

    .line 739
    .local v11, "abeamCr":Landroid/database/Cursor;
    if-eqz v11, :cond_3

    .line 741
    :try_start_1
    invoke-interface {v11}, Landroid/database/Cursor;->moveToFirst()Z

    .line 742
    const-string v0, "isAndroidBeamAllowed"

    invoke-interface {v11, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v11, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    const-string v2, "false"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 743
    const-string v0, "[SBeam]"

    const-string v2, "SBeamEnabler.isEdmSbeamAllowed : RP NOT ALLOWED!"

    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 744
    const/4 v0, 0x0

    .line 747
    invoke-interface {v11}, Landroid/database/Cursor;->close()V

    goto :goto_0

    .line 732
    .end local v11    # "abeamCr":Landroid/database/Cursor;
    :catchall_0
    move-exception v0

    invoke-interface {v13}, Landroid/database/Cursor;->close()V

    throw v0

    .line 747
    .restart local v11    # "abeamCr":Landroid/database/Cursor;
    :cond_2
    invoke-interface {v11}, Landroid/database/Cursor;->close()V

    .line 751
    :cond_3
    const-string v0, "content://com.sec.knox.provider/RestrictionPolicy2"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    .line 752
    invoke-virtual/range {p0 .. p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const/4 v2, 0x0

    const-string v3, "isNFCEnabled"

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v12

    .line 754
    .local v12, "nfcCr":Landroid/database/Cursor;
    if-eqz v12, :cond_5

    .line 756
    :try_start_2
    invoke-interface {v12}, Landroid/database/Cursor;->moveToFirst()Z

    .line 757
    const-string v0, "isNFCEnabled"

    invoke-interface {v12, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v12, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    const-string v2, "false"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 758
    const-string v0, "[SBeam]"

    const-string v2, "SBeamEnabler.isEdmSbeamAllowed : RP NOT ALLOWED!"

    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    .line 759
    const/4 v0, 0x0

    .line 762
    invoke-interface {v12}, Landroid/database/Cursor;->close()V

    goto :goto_0

    .line 747
    .end local v12    # "nfcCr":Landroid/database/Cursor;
    :catchall_1
    move-exception v0

    invoke-interface {v11}, Landroid/database/Cursor;->close()V

    throw v0

    .line 762
    .restart local v12    # "nfcCr":Landroid/database/Cursor;
    :cond_4
    invoke-interface {v12}, Landroid/database/Cursor;->close()V

    .line 766
    :cond_5
    const/4 v0, 0x1

    new-array v4, v0, [Ljava/lang/String;

    const/4 v0, 0x0

    const-string v2, "false"

    aput-object v2, v4, v0

    .line 767
    .local v4, "selectionArgs":[Ljava/lang/String;
    const-string v0, "content://com.sec.knox.provider/RestrictionPolicy4"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    .line 768
    invoke-virtual/range {p0 .. p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const/4 v2, 0x0

    const-string v3, "isWifiEnabled"

    const/4 v5, 0x0

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v14

    .line 770
    .local v14, "wifiCr":Landroid/database/Cursor;
    if-eqz v14, :cond_7

    .line 772
    :try_start_3
    invoke-interface {v14}, Landroid/database/Cursor;->moveToFirst()Z

    .line 773
    const-string v0, "isWifiEnabled"

    invoke-interface {v14, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v14, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    const-string v2, "false"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_6

    .line 774
    const-string v0, "[SBeam]"

    const-string v2, "SBeamEnabler.isEdmSbeamAllowed : RP NOT ALLOWED!"

    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_3

    .line 775
    const/4 v0, 0x0

    .line 778
    invoke-interface {v14}, Landroid/database/Cursor;->close()V

    goto/16 :goto_0

    .line 762
    .end local v4    # "selectionArgs":[Ljava/lang/String;
    .end local v14    # "wifiCr":Landroid/database/Cursor;
    :catchall_2
    move-exception v0

    invoke-interface {v12}, Landroid/database/Cursor;->close()V

    throw v0

    .line 778
    .restart local v4    # "selectionArgs":[Ljava/lang/String;
    .restart local v14    # "wifiCr":Landroid/database/Cursor;
    :cond_6
    invoke-interface {v14}, Landroid/database/Cursor;->close()V

    .line 782
    :cond_7
    const-string v0, "content://com.sec.knox.provider/RestrictionPolicy4"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    .line 783
    invoke-virtual/range {p0 .. p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    const/4 v7, 0x0

    const-string v8, "isWifiDirectAllowed"

    const/4 v9, 0x0

    const/4 v10, 0x0

    move-object v6, v1

    invoke-virtual/range {v5 .. v10}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v15

    .line 785
    .local v15, "wifiDirectCr":Landroid/database/Cursor;
    if-eqz v15, :cond_9

    .line 787
    :try_start_4
    invoke-interface {v15}, Landroid/database/Cursor;->moveToFirst()Z

    .line 788
    const-string v0, "isWifiDirectAllowed"

    invoke-interface {v15, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v15, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    const-string v2, "false"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_8

    .line 789
    const-string v0, "[SBeam]"

    const-string v2, "SBeamEnabler.isEdmSbeamAllowed : RP NOT ALLOWED!"

    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_4

    .line 790
    const/4 v0, 0x0

    .line 793
    invoke-interface {v15}, Landroid/database/Cursor;->close()V

    goto/16 :goto_0

    .line 778
    .end local v15    # "wifiDirectCr":Landroid/database/Cursor;
    :catchall_3
    move-exception v0

    invoke-interface {v14}, Landroid/database/Cursor;->close()V

    throw v0

    .line 793
    .restart local v15    # "wifiDirectCr":Landroid/database/Cursor;
    :cond_8
    invoke-interface {v15}, Landroid/database/Cursor;->close()V

    .line 797
    :cond_9
    const/4 v0, 0x1

    goto/16 :goto_0

    .line 793
    :catchall_4
    move-exception v0

    invoke-interface {v15}, Landroid/database/Cursor;->close()V

    throw v0
.end method

.method public static isPowerOff()Z
    .locals 6

    .prologue
    .line 909
    const/4 v1, 0x0

    .line 910
    .local v1, "retVal":Z
    const-string v3, "sys.deviceOffReq"

    const-string v4, "0"

    invoke-static {v3, v4}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 911
    .local v2, "shutdown":Ljava/lang/String;
    const-string v3, "sys.shutdown.requested"

    const-string v4, "0"

    invoke-static {v3, v4}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 914
    .local v0, "reason":Ljava/lang/String;
    const-string v3, "1"

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 915
    const/4 v1, 0x1

    .line 918
    :cond_0
    const-string v3, "[SBeam]"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "SBeamEnabler.isPowerOff : shutdown - "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ", reason - "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ", retVal - "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 919
    return v1
.end method

.method public static isSBeamLastStatusOn(Landroid/content/Context;)Z
    .locals 7
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    const/4 v3, 0x1

    const/4 v4, 0x0

    .line 890
    invoke-static {}, Lcom/android/settings/Utils;->isSupportMenuTreeForK()Z

    move-result v5

    if-nez v5, :cond_0

    invoke-static {}, Lcom/android/settings/Utils;->isSupportNfcCardMode()Z

    move-result v5

    if-eqz v5, :cond_0

    .line 901
    :goto_0
    return v4

    .line 894
    :cond_0
    const-string v5, "pref_sbeam"

    const/4 v6, 0x5

    invoke-virtual {p0, v5, v6}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v1

    .line 897
    .local v1, "pref":Landroid/content/SharedPreferences;
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    const-string v6, "sbeam_mode"

    invoke-static {v5, v6, v4}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    .line 898
    .local v0, "initVal":I
    const-string v5, "sbeam_last_status"

    if-ne v0, v3, :cond_1

    :goto_1
    invoke-interface {v1, v5, v3}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v2

    .line 899
    .local v2, "retVal":Z
    const-string v3, "[SBeam]"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "SBeamEnabler.isSBeamLastStatusOn > "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "("

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ")"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    move v4, v2

    .line 901
    goto :goto_0

    .end local v2    # "retVal":Z
    :cond_1
    move v3, v4

    .line 898
    goto :goto_1
.end method

.method public static isSBeamOn(Landroid/content/Context;)Z
    .locals 6
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 880
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string v4, "sbeam_mode"

    invoke-static {v3, v4, v2}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    .line 881
    .local v0, "retVal":I
    const-string v3, "[SBeam]"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "SBeamEnabler.isSBeamOn > "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 882
    if-ne v0, v1, :cond_0

    :goto_0
    return v1

    :cond_0
    move v1, v2

    goto :goto_0
.end method

.method public static isSBeamSupported(Landroid/content/Context;)Z
    .locals 6
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x1

    .line 994
    const-string v3, "[SBeam]"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "SBeamEnabler.isSBeamSupported : ["

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    sget v5, Lcom/android/settings/nfc/SBeamEnabler;->mbSupport:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "]"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 995
    sget v3, Lcom/android/settings/nfc/SBeamEnabler;->mbSupport:I

    if-ltz v3, :cond_1

    .line 996
    sget v3, Lcom/android/settings/nfc/SBeamEnabler;->mbSupport:I

    if-ne v3, v1, :cond_0

    .line 1016
    :goto_0
    return v1

    :cond_0
    move v1, v2

    .line 996
    goto :goto_0

    .line 1000
    :cond_1
    invoke-static {}, Lcom/sec/android/app/CscFeature;->getInstance()Lcom/sec/android/app/CscFeature;

    move-result-object v3

    const-string v4, "CscFeature_NFC_EnableFelica"

    invoke-virtual {v3, v4}, Lcom/sec/android/app/CscFeature;->getEnableStatus(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 1001
    sput v1, Lcom/android/settings/nfc/SBeamEnabler;->mbSupport:I

    .line 1002
    const-string v2, "[SBeam]"

    const-string v3, "SBeamEnabler.isSBeamSupported : ENABLEFELICA"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 1007
    :cond_2
    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v3

    const-string v4, "com.sec.android.directshare"

    const/4 v5, 0x0

    invoke-virtual {v3, v4, v5}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1014
    const-string v2, "[SBeam]"

    const-string v3, "SBeamEnabler.isSBeamSupported : EXIST"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1015
    sput v1, Lcom/android/settings/nfc/SBeamEnabler;->mbSupport:I

    goto :goto_0

    .line 1008
    :catch_0
    move-exception v0

    .line 1009
    .local v0, "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    const-string v1, "[SBeam]"

    const-string v3, "SBeamEnabler.isSBeamSupported : NOT EXIST"

    invoke-static {v1, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1010
    sput v2, Lcom/android/settings/nfc/SBeamEnabler;->mbSupport:I

    move v1, v2

    .line 1011
    goto :goto_0
.end method

.method private procHelpCtrl(Z)V
    .locals 3
    .param p1, "bOn"    # Z

    .prologue
    .line 642
    const-string v0, "[SBeam]"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "SBeamEnabler.procHelpCtrl("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 643
    iget-object v0, p0, Lcom/android/settings/nfc/SBeamEnabler;->mHelpCtrl:Lcom/android/settings/nfc/SBeamEnabler$ISBeamHelpController;

    if-nez v0, :cond_0

    .line 647
    :goto_0
    return-void

    .line 646
    :cond_0
    iget-object v0, p0, Lcom/android/settings/nfc/SBeamEnabler;->mHelpCtrl:Lcom/android/settings/nfc/SBeamEnabler$ISBeamHelpController;

    invoke-interface {v0, p1}, Lcom/android/settings/nfc/SBeamEnabler$ISBeamHelpController;->show(Z)V

    goto :goto_0
.end method

.method public static saveSbeamOn(Landroid/content/Context;ZZZ)V
    .locals 3
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "bOn"    # Z
    .param p2, "bSavedLastState"    # Z
    .param p3, "bFromNfc"    # Z

    .prologue
    .line 860
    invoke-static {}, Lcom/android/settings/Utils;->isSupportMenuTreeForK()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-static {}, Lcom/android/settings/Utils;->isSupportNfcCardMode()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 861
    const/4 p2, 0x0

    .line 864
    :cond_0
    const-string v0, "[SBeam]"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "SBeamEnabler.saveSbeamOn : on["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "] save["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "] fromNfc["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "]"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 866
    invoke-static {p0, p1, p2}, Lcom/android/settings/nfc/SBeamEnabler;->saveStatus(Landroid/content/Context;ZZ)V

    .line 867
    invoke-static {p0, p3}, Lcom/android/settings/nfc/SBeamEnabler;->updateState(Landroid/content/Context;Z)V

    .line 868
    return-void
.end method

.method private static saveStatus(Landroid/content/Context;ZZ)V
    .locals 6
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "bOn"    # Z
    .param p2, "bSavedLastState"    # Z

    .prologue
    const/4 v3, 0x0

    .line 1020
    const-string v2, "pref_sbeam"

    const/4 v4, 0x5

    invoke-virtual {p0, v2, v4}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v1

    .line 1023
    .local v1, "pref":Landroid/content/SharedPreferences;
    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 1024
    .local v0, "editor":Landroid/content/SharedPreferences$Editor;
    const-string v2, "SBeam_on_off"

    invoke-interface {v0, v2, p1}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 1025
    if-eqz p2, :cond_0

    .line 1026
    const-string v2, "sbeam_last_status"

    invoke-interface {v0, v2, p1}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 1027
    :cond_0
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 1029
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    const-string v5, "sbeam_mode"

    if-eqz p1, :cond_1

    const/4 v2, 0x1

    :goto_0
    invoke-static {v4, v5, v2}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 1030
    const-string v2, "[SBeam]"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "SBeamEnabler.saveStatus : on["

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "SBeam_on_off"

    invoke-interface {v1, v5, v3}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "] last["

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "sbeam_last_status"

    invoke-interface {v1, v5, v3}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v3

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "] "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1031
    return-void

    :cond_1
    move v2, v3

    .line 1029
    goto :goto_0
.end method

.method private sendSBeamOff()V
    .locals 3

    .prologue
    .line 708
    const-string v1, "[SBeam]"

    const-string v2, "SBeamEnabler.sendSBeamOff"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 709
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.android.settings.action.SBEAM_OFF_INTERNAL"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 710
    .local v0, "i":Landroid/content/Intent;
    const-string v1, "turn_on"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 711
    iget-object v1, p0, Lcom/android/settings/nfc/SBeamEnabler;->mContext:Landroid/content/Context;

    invoke-virtual {v1, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 712
    return-void
.end method

.method private setABeamSwitchStatus(ZZZ)V
    .locals 1
    .param p1, "bEnable"    # Z
    .param p2, "bCheck"    # Z
    .param p3, "bSummary"    # Z

    .prologue
    .line 1076
    iget-object v0, p0, Lcom/android/settings/nfc/SBeamEnabler;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/settings/nfc/SBeamEnabler;->isEdmSbeamAllowed(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 1077
    const/4 p1, 0x0

    .line 1078
    const/4 p2, 0x0

    .line 1079
    const/4 p3, 0x0

    .line 1082
    :cond_0
    iget-object v0, p0, Lcom/android/settings/nfc/SBeamEnabler;->mAndroidBeam:Landroid/preference/SwitchPreferenceScreen;

    if-nez v0, :cond_2

    .line 1097
    :cond_1
    :goto_0
    return-void

    .line 1085
    :cond_2
    iget-object v0, p0, Lcom/android/settings/nfc/SBeamEnabler;->mAndroidBeam:Landroid/preference/SwitchPreferenceScreen;

    invoke-virtual {v0, p1}, Landroid/preference/SwitchPreferenceScreen;->setEnabled(Z)V

    .line 1086
    iget-object v0, p0, Lcom/android/settings/nfc/SBeamEnabler;->mAndroidBeam:Landroid/preference/SwitchPreferenceScreen;

    invoke-virtual {v0}, Landroid/preference/SwitchPreferenceScreen;->isChecked()Z

    move-result v0

    xor-int/2addr v0, p2

    if-eqz v0, :cond_1

    .line 1087
    iget-object v0, p0, Lcom/android/settings/nfc/SBeamEnabler;->mAndroidBeam:Landroid/preference/SwitchPreferenceScreen;

    invoke-virtual {v0, p2}, Landroid/preference/SwitchPreferenceScreen;->setChecked(Z)V

    goto :goto_0
.end method

.method public static showAirplaneMode(Landroid/content/Context;)V
    .locals 2
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 942
    const-string v0, "[SBeam]"

    const-string v1, "SBeamEnabler.showAirplaneMode"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 943
    const v0, 0x7f0a03d0

    const/4 v1, 0x0

    invoke-static {p0, v0, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 944
    return-void
.end method

.method public static showNotAllowWifi(Landroid/content/Context;)V
    .locals 2
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 937
    const-string v0, "[SBeam]"

    const-string v1, "SBeamEnabler.showNotAllowWifi"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 938
    const v0, 0x7f0a03a2

    const/4 v1, 0x1

    invoke-static {p0, v0, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 939
    return-void
.end method

.method public static showTurnOnToast(Landroid/nfc/NfcAdapter;Landroid/content/Context;)V
    .locals 8
    .param p0, "nfcAdapter"    # Landroid/nfc/NfcAdapter;
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    const v7, 0x7f0a03a1

    const/4 v6, 0x3

    const/4 v5, 0x1

    .line 950
    invoke-virtual {p0}, Landroid/nfc/NfcAdapter;->getAdapterState()I

    move-result v1

    .line 951
    .local v1, "nfcState":I
    const-string v2, "[SBeam]"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "SBeamEnabler.showTurnOnToast : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 952
    const/4 v2, 0x5

    if-ne v2, v1, :cond_2

    .line 954
    invoke-static {}, Lcom/android/settings/nfc/SBeamEnabler;->checkEnablePopupForChinaNalSecurity()Z

    move-result v2

    if-nez v2, :cond_1

    .line 955
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2, v7}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 956
    .local v0, "NfcAbeamTurnon":Ljava/lang/String;
    invoke-static {}, Lcom/android/settings/Utils;->isLocaleRTL()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 957
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "\u200f"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 958
    :cond_0
    invoke-static {p1, v0, v5}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/Toast;->show()V

    .line 989
    .end local v0    # "NfcAbeamTurnon":Ljava/lang/String;
    :cond_1
    :goto_0
    return-void

    .line 961
    :cond_2
    if-ne v6, v1, :cond_3

    .line 963
    invoke-virtual {p0}, Landroid/nfc/NfcAdapter;->isNdefPushEnabled()Z

    move-result v2

    if-nez v2, :cond_1

    .line 964
    const v2, 0x7f0a03a4

    invoke-static {p1, v2, v5}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/Toast;->show()V

    goto :goto_0

    .line 966
    :cond_3
    if-eq v6, v1, :cond_1

    const/4 v2, 0x2

    if-eq v2, v1, :cond_1

    .line 968
    invoke-static {}, Lcom/android/settings/nfc/SBeamEnabler;->checkEnablePopupForChinaNalSecurity()Z

    move-result v2

    if-nez v2, :cond_1

    .line 969
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2, v7}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 970
    .restart local v0    # "NfcAbeamTurnon":Ljava/lang/String;
    invoke-static {}, Lcom/android/settings/Utils;->isLocaleRTL()Z

    move-result v2

    if-eqz v2, :cond_4

    .line 971
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "\u200f"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 972
    :cond_4
    invoke-static {p1, v0, v5}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/Toast;->show()V

    goto :goto_0
.end method

.method private turnOn(Z)Z
    .locals 10
    .param p1, "bOn"    # Z

    .prologue
    const v9, 0x7f0a03a1

    const/4 v8, 0x2

    const/4 v7, 0x3

    const/4 v3, 0x0

    const/4 v4, 0x1

    .line 315
    const-string v2, "[SBeam]"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "SBeamEnabler.turnOn("

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ")"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v2, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 317
    invoke-direct {p0}, Lcom/android/settings/nfc/SBeamEnabler;->validateNfcAdapter()Z

    move-result v2

    if-nez v2, :cond_0

    .line 422
    :goto_0
    return v3

    .line 322
    :cond_0
    if-eqz p1, :cond_3

    .line 323
    iget-object v2, p0, Lcom/android/settings/nfc/SBeamEnabler;->mContext:Landroid/content/Context;

    invoke-static {v2}, Lcom/android/settings/nfc/SBeamEnabler;->getSBeamAllowCondition(Landroid/content/Context;)I

    move-result v2

    iput v2, p0, Lcom/android/settings/nfc/SBeamEnabler;->mIsAllowed:I

    .line 325
    iget v2, p0, Lcom/android/settings/nfc/SBeamEnabler;->mIsAllowed:I

    if-ne v8, v2, :cond_1

    .line 326
    iget-object v2, p0, Lcom/android/settings/nfc/SBeamEnabler;->mContext:Landroid/content/Context;

    invoke-static {v2}, Lcom/android/settings/nfc/SBeamEnabler;->showNotAllowWifi(Landroid/content/Context;)V

    .line 329
    :cond_1
    iget v2, p0, Lcom/android/settings/nfc/SBeamEnabler;->mIsAllowed:I

    if-ne v7, v2, :cond_2

    .line 330
    iget-object v2, p0, Lcom/android/settings/nfc/SBeamEnabler;->mContext:Landroid/content/Context;

    invoke-static {v2}, Lcom/android/settings/nfc/SBeamEnabler;->showAirplaneMode(Landroid/content/Context;)V

    .line 333
    :cond_2
    iget v2, p0, Lcom/android/settings/nfc/SBeamEnabler;->mIsAllowed:I

    if-eqz v2, :cond_3

    .line 334
    invoke-direct {p0}, Lcom/android/settings/nfc/SBeamEnabler;->sendSBeamOff()V

    move v3, v4

    .line 335
    goto :goto_0

    .line 339
    :cond_3
    invoke-static {}, Lcom/android/settings/Utils;->isSupportMenuTreeForK()Z

    move-result v2

    if-nez v2, :cond_4

    invoke-static {}, Lcom/android/settings/Utils;->isSupportNfcCardMode()Z

    move-result v2

    if-nez v2, :cond_7

    :cond_4
    move v2, p1

    :goto_1
    iput-boolean v2, p0, Lcom/android/settings/nfc/SBeamEnabler;->mbOnLastState:Z

    .line 340
    iput-boolean p1, p0, Lcom/android/settings/nfc/SBeamEnabler;->mbOn:Z

    .line 342
    iget-object v2, p0, Lcom/android/settings/nfc/SBeamEnabler;->mContext:Landroid/content/Context;

    iget-boolean v5, p0, Lcom/android/settings/nfc/SBeamEnabler;->mbOn:Z

    invoke-static {v2, v5, v4, v3}, Lcom/android/settings/nfc/SBeamEnabler;->saveSbeamOn(Landroid/content/Context;ZZZ)V

    .line 343
    iget-boolean v2, p0, Lcom/android/settings/nfc/SBeamEnabler;->mbOn:Z

    invoke-direct {p0, v2}, Lcom/android/settings/nfc/SBeamEnabler;->procHelpCtrl(Z)V

    .line 345
    if-eqz p1, :cond_c

    .line 347
    iget-object v2, p0, Lcom/android/settings/nfc/SBeamEnabler;->mNfcAdapter:Landroid/nfc/NfcAdapter;

    invoke-virtual {v2}, Landroid/nfc/NfcAdapter;->getAdapterState()I

    move-result v1

    .line 348
    .local v1, "nState":I
    const-string v2, "[SBeam]"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "SBeamEnabler.turnOn : Current("

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v5, ")"

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 350
    const/4 v2, 0x5

    if-ne v2, v1, :cond_8

    .line 351
    invoke-static {}, Lcom/android/settings/nfc/SBeamEnabler;->checkEnablePopupForChinaNalSecurity()Z

    move-result v2

    if-nez v2, :cond_6

    .line 352
    iget-object v2, p0, Lcom/android/settings/nfc/SBeamEnabler;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2, v9}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 353
    .local v0, "NfcAbeamTurnon":Ljava/lang/String;
    invoke-static {}, Lcom/android/settings/Utils;->isLocaleRTL()Z

    move-result v2

    if-eqz v2, :cond_5

    .line 354
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "\u200f"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 355
    :cond_5
    iget-object v2, p0, Lcom/android/settings/nfc/SBeamEnabler;->mContext:Landroid/content/Context;

    invoke-static {v2, v0, v4}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/Toast;->show()V

    .line 357
    .end local v0    # "NfcAbeamTurnon":Ljava/lang/String;
    :cond_6
    iput-boolean v4, p0, Lcom/android/settings/nfc/SBeamEnabler;->mReqNfcTurnOn:Z

    .line 358
    iget-object v2, p0, Lcom/android/settings/nfc/SBeamEnabler;->mNfcAdapter:Landroid/nfc/NfcAdapter;

    invoke-virtual {v2}, Landroid/nfc/NfcAdapter;->readerEnable()Z

    move v3, v4

    .line 359
    goto/16 :goto_0

    .end local v1    # "nState":I
    :cond_7
    move v2, v3

    .line 339
    goto :goto_1

    .line 360
    .restart local v1    # "nState":I
    :cond_8
    if-eq v7, v1, :cond_b

    if-eq v8, v1, :cond_b

    .line 361
    invoke-static {}, Lcom/android/settings/nfc/SBeamEnabler;->checkEnablePopupForChinaNalSecurity()Z

    move-result v2

    if-nez v2, :cond_a

    .line 362
    iget-object v2, p0, Lcom/android/settings/nfc/SBeamEnabler;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2, v9}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 363
    .restart local v0    # "NfcAbeamTurnon":Ljava/lang/String;
    invoke-static {}, Lcom/android/settings/Utils;->isLocaleRTL()Z

    move-result v2

    if-eqz v2, :cond_9

    .line 364
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "\u200f"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 365
    :cond_9
    iget-object v2, p0, Lcom/android/settings/nfc/SBeamEnabler;->mContext:Landroid/content/Context;

    invoke-static {v2, v0, v4}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/Toast;->show()V

    .line 367
    .end local v0    # "NfcAbeamTurnon":Ljava/lang/String;
    :cond_a
    iput-boolean v4, p0, Lcom/android/settings/nfc/SBeamEnabler;->mReqNfcTurnOn:Z

    .line 368
    iget-object v2, p0, Lcom/android/settings/nfc/SBeamEnabler;->mNfcAdapter:Landroid/nfc/NfcAdapter;

    invoke-virtual {v2}, Landroid/nfc/NfcAdapter;->enable()Z

    move v3, v4

    .line 369
    goto/16 :goto_0

    .line 372
    :cond_b
    if-ne v7, v1, :cond_c

    .line 373
    iget-object v2, p0, Lcom/android/settings/nfc/SBeamEnabler;->mNfcAdapter:Landroid/nfc/NfcAdapter;

    invoke-virtual {v2}, Landroid/nfc/NfcAdapter;->isNdefPushEnabled()Z

    move-result v2

    if-nez v2, :cond_c

    .line 374
    iget-object v2, p0, Lcom/android/settings/nfc/SBeamEnabler;->mContext:Landroid/content/Context;

    const v3, 0x7f0a03a4

    invoke-static {v2, v3, v4}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/Toast;->show()V

    .line 375
    iget-object v2, p0, Lcom/android/settings/nfc/SBeamEnabler;->mNfcAdapter:Landroid/nfc/NfcAdapter;

    invoke-virtual {v2}, Landroid/nfc/NfcAdapter;->enableNdefPush()Z

    .line 383
    invoke-static {}, Lcom/sec/android/app/CscFeature;->getInstance()Lcom/sec/android/app/CscFeature;

    move-result-object v2

    const-string v3, "CscFeature_NFC_EnableFelica"

    invoke-virtual {v2, v3}, Lcom/sec/android/app/CscFeature;->getEnableStatus(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_c

    .line 385
    invoke-direct {p0, v4, v4, v4}, Lcom/android/settings/nfc/SBeamEnabler;->setABeamSwitchStatus(ZZZ)V

    .end local v1    # "nState":I
    :cond_c
    move v3, v4

    .line 422
    goto/16 :goto_0
.end method

.method public static updateState(Landroid/content/Context;Z)V
    .locals 3
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "bFromNfc"    # Z

    .prologue
    .line 871
    const-string v1, "[SBeam]"

    const-string v2, "SBeamEnabler.updateState"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 872
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.android.settings.nfc.SBeam.SBEAM_SETTING_CHANGED"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 873
    .local v0, "i":Landroid/content/Intent;
    const-string v1, "SBeam_on_off"

    invoke-static {p0}, Lcom/android/settings/nfc/SBeamEnabler;->isSBeamOn(Landroid/content/Context;)Z

    move-result v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 874
    const-string v1, "sbeam_last_status"

    invoke-static {p0}, Lcom/android/settings/nfc/SBeamEnabler;->isSBeamLastStatusOn(Landroid/content/Context;)Z

    move-result v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 875
    const-string v1, "from_nfc"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 876
    invoke-virtual {p0, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 877
    return-void
.end method

.method private updateUiPref(Z)V
    .locals 4
    .param p1, "bSwitchEnable"    # Z

    .prologue
    const/4 v3, 0x1

    .line 559
    const-string v0, "[SBeam]"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "SBeamEnabler.updateUiPref > enable("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 561
    iget v0, p0, Lcom/android/settings/nfc/SBeamEnabler;->mIsAllowed:I

    if-ne v0, v3, :cond_0

    .line 562
    const/4 p1, 0x0

    .line 565
    :cond_0
    iget-object v0, p0, Lcom/android/settings/nfc/SBeamEnabler;->mSbeamScreen:Landroid/preference/PreferenceScreen;

    if-eqz v0, :cond_1

    .line 567
    iget-object v0, p0, Lcom/android/settings/nfc/SBeamEnabler;->mSbeamScreen:Landroid/preference/PreferenceScreen;

    invoke-virtual {v0, p1}, Landroid/preference/PreferenceScreen;->setEnabled(Z)V

    .line 571
    :cond_1
    iget-object v0, p0, Lcom/android/settings/nfc/SBeamEnabler;->mSbeamPref:Landroid/preference/SwitchPreferenceScreen;

    if-eqz v0, :cond_3

    .line 574
    invoke-static {}, Lcom/sec/android/app/CscFeature;->getInstance()Lcom/sec/android/app/CscFeature;

    move-result-object v0

    const-string v1, "CscFeature_NFC_EnableFelica"

    invoke-virtual {v0, v1}, Lcom/sec/android/app/CscFeature;->getEnableStatus(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_5

    .line 576
    const-string v0, "[SBeam]"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "updateUiPref -Global- ("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 580
    iget-object v0, p0, Lcom/android/settings/nfc/SBeamEnabler;->mSbeamPref:Landroid/preference/SwitchPreferenceScreen;

    invoke-virtual {v0, p1}, Landroid/preference/SwitchPreferenceScreen;->setEnabled(Z)V

    .line 596
    :goto_0
    invoke-static {}, Lcom/android/settings/Utils;->isSupportMenuTreeForK()Z

    move-result v0

    if-nez v0, :cond_2

    invoke-static {}, Lcom/android/settings/Utils;->isSupportNfcCardMode()Z

    move-result v0

    if-nez v0, :cond_6

    .line 597
    :cond_2
    iget-object v0, p0, Lcom/android/settings/nfc/SBeamEnabler;->mSbeamPref:Landroid/preference/SwitchPreferenceScreen;

    invoke-virtual {v0}, Landroid/preference/SwitchPreferenceScreen;->isChecked()Z

    move-result v0

    iget-boolean v1, p0, Lcom/android/settings/nfc/SBeamEnabler;->mbOnLastState:Z

    xor-int/2addr v0, v1

    if-eqz v0, :cond_3

    .line 598
    iget-object v0, p0, Lcom/android/settings/nfc/SBeamEnabler;->mSbeamPref:Landroid/preference/SwitchPreferenceScreen;

    iget-boolean v1, p0, Lcom/android/settings/nfc/SBeamEnabler;->mbOnLastState:Z

    invoke-virtual {v0, v1}, Landroid/preference/SwitchPreferenceScreen;->setChecked(Z)V

    .line 607
    :cond_3
    :goto_1
    iget-object v0, p0, Lcom/android/settings/nfc/SBeamEnabler;->mAndroidBeam:Landroid/preference/SwitchPreferenceScreen;

    if-eqz v0, :cond_4

    .line 609
    iget-boolean v0, p0, Lcom/android/settings/nfc/SBeamEnabler;->mbOn:Z

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/android/settings/nfc/SBeamEnabler;->mAndroidBeam:Landroid/preference/SwitchPreferenceScreen;

    invoke-virtual {v0}, Landroid/preference/SwitchPreferenceScreen;->isChecked()Z

    move-result v0

    if-nez v0, :cond_4

    .line 610
    iget-object v0, p0, Lcom/android/settings/nfc/SBeamEnabler;->mAndroidBeam:Landroid/preference/SwitchPreferenceScreen;

    invoke-virtual {v0, v3}, Landroid/preference/SwitchPreferenceScreen;->setChecked(Z)V

    .line 614
    :cond_4
    return-void

    .line 583
    :cond_5
    const-string v0, "[SBeam]"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "updateUiPref -Japan- ("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 589
    iget-object v0, p0, Lcom/android/settings/nfc/SBeamEnabler;->mSbeamPref:Landroid/preference/SwitchPreferenceScreen;

    invoke-virtual {v0, p1}, Landroid/preference/SwitchPreferenceScreen;->setEnabled(Z)V

    goto :goto_0

    .line 601
    :cond_6
    iget-object v0, p0, Lcom/android/settings/nfc/SBeamEnabler;->mSbeamPref:Landroid/preference/SwitchPreferenceScreen;

    invoke-virtual {v0}, Landroid/preference/SwitchPreferenceScreen;->isChecked()Z

    move-result v0

    iget-boolean v1, p0, Lcom/android/settings/nfc/SBeamEnabler;->mbOn:Z

    xor-int/2addr v0, v1

    if-eqz v0, :cond_3

    .line 602
    iget-object v0, p0, Lcom/android/settings/nfc/SBeamEnabler;->mSbeamPref:Landroid/preference/SwitchPreferenceScreen;

    iget-boolean v1, p0, Lcom/android/settings/nfc/SBeamEnabler;->mbOn:Z

    invoke-virtual {v0, v1}, Landroid/preference/SwitchPreferenceScreen;->setChecked(Z)V

    goto :goto_1
.end method

.method private updateUiSwitch(Z)V
    .locals 3
    .param p1, "bSwitchEnable"    # Z

    .prologue
    .line 617
    iget-object v0, p0, Lcom/android/settings/nfc/SBeamEnabler;->mSbeamSwitch:Landroid/widget/Switch;

    if-nez v0, :cond_0

    .line 638
    :goto_0
    return-void

    .line 619
    :cond_0
    const-string v0, "[SBeam]"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "SBeamEnabler.updateUiSwitch : on("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Lcom/android/settings/nfc/SBeamEnabler;->mbOn:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ") enable("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 621
    iget v0, p0, Lcom/android/settings/nfc/SBeamEnabler;->mIsAllowed:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_1

    .line 622
    const/4 p1, 0x0

    .line 625
    :cond_1
    invoke-static {}, Lcom/android/settings/Utils;->isSupportMenuTreeForK()Z

    move-result v0

    if-nez v0, :cond_2

    invoke-static {}, Lcom/android/settings/Utils;->isSupportNfcCardMode()Z

    move-result v0

    if-nez v0, :cond_4

    .line 626
    :cond_2
    iget-object v0, p0, Lcom/android/settings/nfc/SBeamEnabler;->mSbeamSwitch:Landroid/widget/Switch;

    invoke-virtual {v0}, Landroid/widget/Switch;->isChecked()Z

    move-result v0

    iget-boolean v1, p0, Lcom/android/settings/nfc/SBeamEnabler;->mbOnLastState:Z

    xor-int/2addr v0, v1

    if-eqz v0, :cond_3

    .line 627
    iget-object v0, p0, Lcom/android/settings/nfc/SBeamEnabler;->mSbeamSwitch:Landroid/widget/Switch;

    iget-boolean v1, p0, Lcom/android/settings/nfc/SBeamEnabler;->mbOnLastState:Z

    invoke-virtual {v0, v1}, Landroid/widget/Switch;->setChecked(Z)V

    .line 635
    :cond_3
    :goto_1
    iget-boolean v0, p0, Lcom/android/settings/nfc/SBeamEnabler;->mbOn:Z

    invoke-direct {p0, v0}, Lcom/android/settings/nfc/SBeamEnabler;->procHelpCtrl(Z)V

    .line 636
    iget-object v0, p0, Lcom/android/settings/nfc/SBeamEnabler;->mSbeamSwitch:Landroid/widget/Switch;

    invoke-virtual {v0, p1}, Landroid/widget/Switch;->setEnabled(Z)V

    goto :goto_0

    .line 630
    :cond_4
    iget-object v0, p0, Lcom/android/settings/nfc/SBeamEnabler;->mSbeamSwitch:Landroid/widget/Switch;

    invoke-virtual {v0}, Landroid/widget/Switch;->isChecked()Z

    move-result v0

    iget-boolean v1, p0, Lcom/android/settings/nfc/SBeamEnabler;->mbOn:Z

    xor-int/2addr v0, v1

    if-eqz v0, :cond_3

    .line 631
    iget-object v0, p0, Lcom/android/settings/nfc/SBeamEnabler;->mSbeamSwitch:Landroid/widget/Switch;

    iget-boolean v1, p0, Lcom/android/settings/nfc/SBeamEnabler;->mbOn:Z

    invoke-virtual {v0, v1}, Landroid/widget/Switch;->setChecked(Z)V

    goto :goto_1
.end method

.method private validateNfcAdapter()Z
    .locals 3

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 690
    iget-object v2, p0, Lcom/android/settings/nfc/SBeamEnabler;->mNfcAdapter:Landroid/nfc/NfcAdapter;

    if-eqz v2, :cond_1

    .line 704
    :cond_0
    :goto_0
    return v0

    .line 693
    :cond_1
    iget-object v2, p0, Lcom/android/settings/nfc/SBeamEnabler;->mContext:Landroid/content/Context;

    if-nez v2, :cond_2

    .line 694
    const-string v0, "[SBeam]"

    const-string v2, "SBeamEnabler.validateNfcAdapter : context is null"

    invoke-static {v0, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    move v0, v1

    .line 695
    goto :goto_0

    .line 698
    :cond_2
    iget-object v2, p0, Lcom/android/settings/nfc/SBeamEnabler;->mContext:Landroid/content/Context;

    invoke-static {v2}, Landroid/nfc/NfcAdapter;->getDefaultAdapter(Landroid/content/Context;)Landroid/nfc/NfcAdapter;

    move-result-object v2

    iput-object v2, p0, Lcom/android/settings/nfc/SBeamEnabler;->mNfcAdapter:Landroid/nfc/NfcAdapter;

    .line 699
    iget-object v2, p0, Lcom/android/settings/nfc/SBeamEnabler;->mNfcAdapter:Landroid/nfc/NfcAdapter;

    if-nez v2, :cond_0

    .line 700
    const-string v0, "[SBeam]"

    const-string v2, "SBeamEnabler.validateNfcAdapter : fail to get"

    invoke-static {v0, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    move v0, v1

    .line 701
    goto :goto_0
.end method


# virtual methods
.method public onCheckedChanged(Landroid/widget/CompoundButton;Z)V
    .locals 2
    .param p1, "btnView"    # Landroid/widget/CompoundButton;
    .param p2, "bOn"    # Z

    .prologue
    const/4 v1, 0x0

    .line 249
    iget-object v0, p0, Lcom/android/settings/nfc/SBeamEnabler;->mSbeamSwitch:Landroid/widget/Switch;

    invoke-virtual {v0, v1}, Landroid/widget/Switch;->setEnabled(Z)V

    .line 250
    invoke-direct {p0, p2}, Lcom/android/settings/nfc/SBeamEnabler;->turnOn(Z)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 251
    iget-object v0, p0, Lcom/android/settings/nfc/SBeamEnabler;->mSbeamSwitch:Landroid/widget/Switch;

    invoke-virtual {v0, p2}, Landroid/widget/Switch;->setChecked(Z)V

    .line 254
    :goto_0
    iget-object v0, p0, Lcom/android/settings/nfc/SBeamEnabler;->mSbeamSwitch:Landroid/widget/Switch;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/widget/Switch;->setEnabled(Z)V

    .line 255
    return-void

    .line 253
    :cond_0
    iget-object v0, p0, Lcom/android/settings/nfc/SBeamEnabler;->mSbeamSwitch:Landroid/widget/Switch;

    invoke-virtual {v0, v1}, Landroid/widget/Switch;->setChecked(Z)V

    goto :goto_0
.end method

.method public onPreferenceChange(Landroid/preference/Preference;Ljava/lang/Object;)Z
    .locals 3
    .param p1, "preference"    # Landroid/preference/Preference;
    .param p2, "value"    # Ljava/lang/Object;

    .prologue
    const/4 v1, 0x1

    .line 231
    iget-object v2, p0, Lcom/android/settings/nfc/SBeamEnabler;->mSbeamPref:Landroid/preference/SwitchPreferenceScreen;

    invoke-virtual {p1, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_1

    .line 232
    const/4 v1, 0x0

    .line 245
    .end local p2    # "value":Ljava/lang/Object;
    :cond_0
    :goto_0
    return v1

    .line 234
    .restart local p2    # "value":Ljava/lang/Object;
    :cond_1
    check-cast p2, Ljava/lang/Boolean;

    .end local p2    # "value":Ljava/lang/Object;
    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    .line 236
    .local v0, "bOn":Z
    iget-object v2, p0, Lcom/android/settings/nfc/SBeamEnabler;->mSbeamPref:Landroid/preference/SwitchPreferenceScreen;

    invoke-virtual {v2}, Landroid/preference/SwitchPreferenceScreen;->isChecked()Z

    move-result v2

    if-eq v2, v0, :cond_0

    .line 240
    invoke-direct {p0, v0}, Lcom/android/settings/nfc/SBeamEnabler;->turnOn(Z)Z

    move-result v2

    if-nez v2, :cond_0

    .line 242
    invoke-direct {p0}, Lcom/android/settings/nfc/SBeamEnabler;->sendSBeamOff()V

    goto :goto_0
.end method

.method public procOnPause()V
    .locals 4

    .prologue
    const/4 v1, 0x0

    const/4 v3, 0x0

    const/4 v2, 0x1

    .line 201
    iget-object v0, p0, Lcom/android/settings/nfc/SBeamEnabler;->mSbeamPref:Landroid/preference/SwitchPreferenceScreen;

    if-eqz v0, :cond_0

    .line 202
    iget-object v0, p0, Lcom/android/settings/nfc/SBeamEnabler;->mSbeamPref:Landroid/preference/SwitchPreferenceScreen;

    invoke-virtual {v0, v1}, Landroid/preference/SwitchPreferenceScreen;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    .line 205
    :cond_0
    iget-object v0, p0, Lcom/android/settings/nfc/SBeamEnabler;->mSbeamSwitch:Landroid/widget/Switch;

    if-eqz v0, :cond_1

    .line 206
    iget-object v0, p0, Lcom/android/settings/nfc/SBeamEnabler;->mSbeamSwitch:Landroid/widget/Switch;

    invoke-virtual {v0, v1}, Landroid/widget/Switch;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    .line 208
    :cond_1
    iget-boolean v0, p0, Lcom/android/settings/nfc/SBeamEnabler;->mStateOfReceiver:Z

    if-ne v0, v2, :cond_2

    .line 209
    iput-boolean v3, p0, Lcom/android/settings/nfc/SBeamEnabler;->mStateOfReceiver:Z

    .line 210
    iget-object v0, p0, Lcom/android/settings/nfc/SBeamEnabler;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/android/settings/nfc/SBeamEnabler;->mReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 214
    :cond_2
    iget-object v0, p0, Lcom/android/settings/nfc/SBeamEnabler;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/settings/nfc/SBeamEnabler;->isSBeamOn(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 215
    iget-object v0, p0, Lcom/android/settings/nfc/SBeamEnabler;->mNfcAdapter:Landroid/nfc/NfcAdapter;

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/android/settings/nfc/SBeamEnabler;->mNfcAdapter:Landroid/nfc/NfcAdapter;

    invoke-virtual {v0}, Landroid/nfc/NfcAdapter;->isNdefPushEnabled()Z

    move-result v0

    if-nez v0, :cond_3

    .line 216
    iget-object v0, p0, Lcom/android/settings/nfc/SBeamEnabler;->mNfcAdapter:Landroid/nfc/NfcAdapter;

    invoke-virtual {v0}, Landroid/nfc/NfcAdapter;->enableNdefPush()Z

    .line 220
    :cond_3
    invoke-static {}, Lcom/android/settings/Utils;->isSupportMenuTreeForK()Z

    move-result v0

    if-nez v0, :cond_4

    .line 221
    const/4 v0, 0x3

    iget-object v1, p0, Lcom/android/settings/nfc/SBeamEnabler;->mNfcAdapter:Landroid/nfc/NfcAdapter;

    invoke-virtual {v1}, Landroid/nfc/NfcAdapter;->getAdapterState()I

    move-result v1

    if-ne v0, v1, :cond_4

    .line 222
    iget-object v0, p0, Lcom/android/settings/nfc/SBeamEnabler;->mNfcAdapter:Landroid/nfc/NfcAdapter;

    invoke-virtual {v0}, Landroid/nfc/NfcAdapter;->isNdefPushEnabled()Z

    move-result v0

    if-nez v0, :cond_4

    .line 223
    iget-object v0, p0, Lcom/android/settings/nfc/SBeamEnabler;->mContext:Landroid/content/Context;

    invoke-static {v0, v3, v2, v2}, Lcom/android/settings/nfc/SBeamEnabler;->saveSbeamOn(Landroid/content/Context;ZZZ)V

    .line 227
    :cond_4
    return-void
.end method

.method public procOnResume()V
    .locals 5

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 163
    iget-object v0, p0, Lcom/android/settings/nfc/SBeamEnabler;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/android/settings/nfc/SBeamEnabler;->mReceiver:Landroid/content/BroadcastReceiver;

    iget-object v2, p0, Lcom/android/settings/nfc/SBeamEnabler;->mIntentFilter:Landroid/content/IntentFilter;

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 164
    iput-boolean v4, p0, Lcom/android/settings/nfc/SBeamEnabler;->mStateOfReceiver:Z

    .line 165
    iget-object v0, p0, Lcom/android/settings/nfc/SBeamEnabler;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/settings/nfc/SBeamEnabler;->isSBeamOn(Landroid/content/Context;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/settings/nfc/SBeamEnabler;->mbOn:Z

    .line 166
    iget-object v0, p0, Lcom/android/settings/nfc/SBeamEnabler;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/settings/nfc/SBeamEnabler;->isSBeamLastStatusOn(Landroid/content/Context;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/settings/nfc/SBeamEnabler;->mbOnLastState:Z

    .line 167
    iget-object v0, p0, Lcom/android/settings/nfc/SBeamEnabler;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/settings/nfc/SBeamEnabler;->getSBeamAllowCondition(Landroid/content/Context;)I

    move-result v0

    iput v0, p0, Lcom/android/settings/nfc/SBeamEnabler;->mIsAllowed:I

    .line 169
    iget-object v0, p0, Lcom/android/settings/nfc/SBeamEnabler;->mSbeamPref:Landroid/preference/SwitchPreferenceScreen;

    if-eqz v0, :cond_0

    .line 170
    iget-object v0, p0, Lcom/android/settings/nfc/SBeamEnabler;->mSbeamPref:Landroid/preference/SwitchPreferenceScreen;

    invoke-virtual {v0, p0}, Landroid/preference/SwitchPreferenceScreen;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    .line 173
    :cond_0
    iget-object v0, p0, Lcom/android/settings/nfc/SBeamEnabler;->mSbeamSwitch:Landroid/widget/Switch;

    if-eqz v0, :cond_1

    .line 174
    iget-object v0, p0, Lcom/android/settings/nfc/SBeamEnabler;->mSbeamSwitch:Landroid/widget/Switch;

    invoke-virtual {v0, p0}, Landroid/widget/Switch;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    .line 177
    :cond_1
    iget-boolean v0, p0, Lcom/android/settings/nfc/SBeamEnabler;->mbOn:Z

    if-eqz v0, :cond_3

    iget v0, p0, Lcom/android/settings/nfc/SBeamEnabler;->mIsAllowed:I

    if-eqz v0, :cond_3

    .line 178
    iget-object v0, p0, Lcom/android/settings/nfc/SBeamEnabler;->mContext:Landroid/content/Context;

    invoke-static {v0, v3, v4, v3}, Lcom/android/settings/nfc/SBeamEnabler;->saveSbeamOn(Landroid/content/Context;ZZZ)V

    .line 197
    :cond_2
    :goto_0
    return-void

    .line 182
    :cond_3
    iget-object v0, p0, Lcom/android/settings/nfc/SBeamEnabler;->mNfcAdapter:Landroid/nfc/NfcAdapter;

    if-eqz v0, :cond_4

    .line 184
    iget-object v0, p0, Lcom/android/settings/nfc/SBeamEnabler;->mNfcAdapter:Landroid/nfc/NfcAdapter;

    invoke-virtual {v0}, Landroid/nfc/NfcAdapter;->getAdapterState()I

    move-result v0

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1, v3}, Lcom/android/settings/nfc/SBeamEnabler;->changedNfcState(ILandroid/content/Intent;Z)V

    .line 190
    :cond_4
    invoke-static {}, Lcom/android/settings/Utils;->isSupportMenuTreeForK()Z

    move-result v0

    if-nez v0, :cond_2

    .line 191
    const/4 v0, 0x3

    iget-object v1, p0, Lcom/android/settings/nfc/SBeamEnabler;->mNfcAdapter:Landroid/nfc/NfcAdapter;

    invoke-virtual {v1}, Landroid/nfc/NfcAdapter;->getAdapterState()I

    move-result v1

    if-ne v0, v1, :cond_2

    .line 192
    iget-object v0, p0, Lcom/android/settings/nfc/SBeamEnabler;->mNfcAdapter:Landroid/nfc/NfcAdapter;

    invoke-virtual {v0}, Landroid/nfc/NfcAdapter;->isNdefPushEnabled()Z

    move-result v0

    if-nez v0, :cond_2

    .line 193
    iget-object v0, p0, Lcom/android/settings/nfc/SBeamEnabler;->mContext:Landroid/content/Context;

    invoke-static {v0, v3, v4, v4}, Lcom/android/settings/nfc/SBeamEnabler;->saveSbeamOn(Landroid/content/Context;ZZZ)V

    goto :goto_0
.end method

.method public setSwitch(Landroid/widget/Switch;)V
    .locals 3
    .param p1, "switch_"    # Landroid/widget/Switch;

    .prologue
    const/4 v2, 0x0

    .line 258
    const-string v0, "[SBeam]"

    const-string v1, "setSwitch !"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 260
    iget-object v0, p0, Lcom/android/settings/nfc/SBeamEnabler;->mSbeamSwitch:Landroid/widget/Switch;

    if-ne v0, p1, :cond_0

    .line 284
    :goto_0
    return-void

    .line 262
    :cond_0
    iget-object v0, p0, Lcom/android/settings/nfc/SBeamEnabler;->mSbeamSwitch:Landroid/widget/Switch;

    invoke-virtual {v0, v2}, Landroid/widget/Switch;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    .line 263
    iput-object p1, p0, Lcom/android/settings/nfc/SBeamEnabler;->mSbeamSwitch:Landroid/widget/Switch;

    .line 265
    invoke-static {}, Lcom/android/settings/Utils;->isSupportMenuTreeForK()Z

    move-result v0

    if-nez v0, :cond_1

    invoke-static {}, Lcom/android/settings/Utils;->isSupportNfcCardMode()Z

    move-result v0

    if-nez v0, :cond_4

    .line 266
    :cond_1
    iget-object v0, p0, Lcom/android/settings/nfc/SBeamEnabler;->mSbeamSwitch:Landroid/widget/Switch;

    invoke-virtual {v0}, Landroid/widget/Switch;->isChecked()Z

    move-result v0

    iget-boolean v1, p0, Lcom/android/settings/nfc/SBeamEnabler;->mbOnLastState:Z

    xor-int/2addr v0, v1

    if-eqz v0, :cond_2

    .line 267
    iget-object v0, p0, Lcom/android/settings/nfc/SBeamEnabler;->mSbeamSwitch:Landroid/widget/Switch;

    iget-boolean v1, p0, Lcom/android/settings/nfc/SBeamEnabler;->mbOnLastState:Z

    invoke-virtual {v0, v1}, Landroid/widget/Switch;->setChecked(Z)V

    .line 275
    :cond_2
    :goto_1
    iget-object v0, p0, Lcom/android/settings/nfc/SBeamEnabler;->mNfcAdapter:Landroid/nfc/NfcAdapter;

    if-eqz v0, :cond_3

    .line 277
    iget-object v0, p0, Lcom/android/settings/nfc/SBeamEnabler;->mNfcAdapter:Landroid/nfc/NfcAdapter;

    invoke-virtual {v0}, Landroid/nfc/NfcAdapter;->getAdapterState()I

    move-result v0

    const/4 v1, 0x0

    invoke-direct {p0, v0, v2, v1}, Lcom/android/settings/nfc/SBeamEnabler;->changedNfcState(ILandroid/content/Intent;Z)V

    .line 283
    :cond_3
    iget-object v0, p0, Lcom/android/settings/nfc/SBeamEnabler;->mSbeamSwitch:Landroid/widget/Switch;

    invoke-virtual {v0, p0}, Landroid/widget/Switch;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    goto :goto_0

    .line 270
    :cond_4
    iget-object v0, p0, Lcom/android/settings/nfc/SBeamEnabler;->mSbeamSwitch:Landroid/widget/Switch;

    invoke-virtual {v0}, Landroid/widget/Switch;->isChecked()Z

    move-result v0

    iget-boolean v1, p0, Lcom/android/settings/nfc/SBeamEnabler;->mbOn:Z

    xor-int/2addr v0, v1

    if-eqz v0, :cond_2

    .line 271
    iget-object v0, p0, Lcom/android/settings/nfc/SBeamEnabler;->mSbeamSwitch:Landroid/widget/Switch;

    iget-boolean v1, p0, Lcom/android/settings/nfc/SBeamEnabler;->mbOn:Z

    invoke-virtual {v0, v1}, Landroid/widget/Switch;->setChecked(Z)V

    goto :goto_1
.end method
