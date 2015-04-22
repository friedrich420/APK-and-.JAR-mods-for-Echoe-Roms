.class public Lcom/android/systemui/qs/tiles/SmartPauseTile;
.super Lcom/android/systemui/qs/QSTile;
.source "SmartPauseTile.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/android/systemui/qs/QSTile",
        "<",
        "Lcom/android/systemui/qs/QSTile$MultiState;",
        ">;"
    }
.end annotation


# static fields
.field private static final DB_SMART_PAUSE_ON:Ljava/lang/String; = "smart_pause"

.field private static final TAG:Ljava/lang/String; = "SmartPauseTile"


# instance fields
.field private mConfirmDialog:Landroid/app/AlertDialog;

.field private mIsProcessing:Z

.field private mMasterState:Z

.field private mMotionMergedMutePauseSettings:Lcom/android/systemui/qs/SystemSetting;

.field private mSmartPauseSettings:Lcom/android/systemui/qs/SystemSetting;


# direct methods
.method public constructor <init>(Lcom/android/systemui/qs/QSTile$Host;)V
    .locals 5
    .param p1, "host"    # Lcom/android/systemui/qs/QSTile$Host;

    .prologue
    const/4 v0, 0x1

    .line 50
    invoke-direct {p0, p1}, Lcom/android/systemui/qs/QSTile;-><init>(Lcom/android/systemui/qs/QSTile$Host;)V

    .line 42
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/android/systemui/qs/tiles/SmartPauseTile;->mIsProcessing:Z

    .line 43
    iput-boolean v0, p0, Lcom/android/systemui/qs/tiles/SmartPauseTile;->mMasterState:Z

    .line 52
    new-instance v1, Lcom/android/systemui/qs/tiles/SmartPauseTile$1;

    iget-object v2, p0, Lcom/android/systemui/qs/tiles/SmartPauseTile;->mContext:Landroid/content/Context;

    iget-object v3, p0, Lcom/android/systemui/qs/tiles/SmartPauseTile;->mHandler:Lcom/android/systemui/qs/QSTile$H;

    const-string v4, "smart_pause"

    invoke-direct {v1, p0, v2, v3, v4}, Lcom/android/systemui/qs/tiles/SmartPauseTile$1;-><init>(Lcom/android/systemui/qs/tiles/SmartPauseTile;Landroid/content/Context;Landroid/os/Handler;Ljava/lang/String;)V

    iput-object v1, p0, Lcom/android/systemui/qs/tiles/SmartPauseTile;->mSmartPauseSettings:Lcom/android/systemui/qs/SystemSetting;

    .line 62
    new-instance v1, Lcom/android/systemui/qs/tiles/SmartPauseTile$2;

    iget-object v2, p0, Lcom/android/systemui/qs/tiles/SmartPauseTile;->mContext:Landroid/content/Context;

    iget-object v3, p0, Lcom/android/systemui/qs/tiles/SmartPauseTile;->mHandler:Lcom/android/systemui/qs/QSTile$H;

    const-string v4, "motion_merged_mute_pause"

    invoke-direct {v1, p0, v2, v3, v4}, Lcom/android/systemui/qs/tiles/SmartPauseTile$2;-><init>(Lcom/android/systemui/qs/tiles/SmartPauseTile;Landroid/content/Context;Landroid/os/Handler;Ljava/lang/String;)V

    iput-object v1, p0, Lcom/android/systemui/qs/tiles/SmartPauseTile;->mMotionMergedMutePauseSettings:Lcom/android/systemui/qs/SystemSetting;

    .line 71
    iget-object v1, p0, Lcom/android/systemui/qs/tiles/SmartPauseTile;->mSmartPauseSettings:Lcom/android/systemui/qs/SystemSetting;

    invoke-virtual {v1, v0}, Lcom/android/systemui/qs/SystemSetting;->setListening(Z)V

    .line 72
    invoke-direct {p0}, Lcom/android/systemui/qs/tiles/SmartPauseTile;->getSmartPauseMode()I

    move-result v1

    if-ne v1, v0, :cond_0

    :goto_0
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/systemui/qs/tiles/SmartPauseTile;->refreshState(Ljava/lang/Object;)V

    .line 80
    return-void

    .line 72
    :cond_0
    const/4 v0, 0x2

    goto :goto_0
.end method

.method static synthetic access$000(Lcom/android/systemui/qs/tiles/SmartPauseTile;Ljava/lang/Object;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/systemui/qs/tiles/SmartPauseTile;
    .param p1, "x1"    # Ljava/lang/Object;

    .prologue
    .line 38
    invoke-virtual {p0, p1}, Lcom/android/systemui/qs/tiles/SmartPauseTile;->refreshState(Ljava/lang/Object;)V

    return-void
.end method

.method static synthetic access$102(Lcom/android/systemui/qs/tiles/SmartPauseTile;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/android/systemui/qs/tiles/SmartPauseTile;
    .param p1, "x1"    # Z

    .prologue
    .line 38
    iput-boolean p1, p0, Lcom/android/systemui/qs/tiles/SmartPauseTile;->mIsProcessing:Z

    return p1
.end method

.method static synthetic access$200(Lcom/android/systemui/qs/tiles/SmartPauseTile;)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/systemui/qs/tiles/SmartPauseTile;

    .prologue
    .line 38
    iget-boolean v0, p0, Lcom/android/systemui/qs/tiles/SmartPauseTile;->mMasterState:Z

    return v0
.end method

.method static synthetic access$202(Lcom/android/systemui/qs/tiles/SmartPauseTile;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/android/systemui/qs/tiles/SmartPauseTile;
    .param p1, "x1"    # Z

    .prologue
    .line 38
    iput-boolean p1, p0, Lcom/android/systemui/qs/tiles/SmartPauseTile;->mMasterState:Z

    return p1
.end method

.method static synthetic access$300(Lcom/android/systemui/qs/tiles/SmartPauseTile;)Lcom/android/systemui/qs/QSTile$State;
    .locals 1
    .param p0, "x0"    # Lcom/android/systemui/qs/tiles/SmartPauseTile;

    .prologue
    .line 38
    iget-object v0, p0, Lcom/android/systemui/qs/tiles/SmartPauseTile;->mState:Lcom/android/systemui/qs/QSTile$State;

    return-object v0
.end method

.method static synthetic access$400(Lcom/android/systemui/qs/tiles/SmartPauseTile;)I
    .locals 1
    .param p0, "x0"    # Lcom/android/systemui/qs/tiles/SmartPauseTile;

    .prologue
    .line 38
    invoke-direct {p0}, Lcom/android/systemui/qs/tiles/SmartPauseTile;->getSmartPauseMode()I

    move-result v0

    return v0
.end method

.method static synthetic access$500(Lcom/android/systemui/qs/tiles/SmartPauseTile;Ljava/lang/Object;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/systemui/qs/tiles/SmartPauseTile;
    .param p1, "x1"    # Ljava/lang/Object;

    .prologue
    .line 38
    invoke-virtual {p0, p1}, Lcom/android/systemui/qs/tiles/SmartPauseTile;->refreshState(Ljava/lang/Object;)V

    return-void
.end method

.method static synthetic access$600(Lcom/android/systemui/qs/tiles/SmartPauseTile;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/systemui/qs/tiles/SmartPauseTile;
    .param p1, "x1"    # Ljava/lang/String;
    .param p2, "x2"    # Ljava/lang/String;

    .prologue
    .line 38
    invoke-virtual {p0, p1, p2}, Lcom/android/systemui/qs/tiles/SmartPauseTile;->startSettingsActivity(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method private getMasterMode()I
    .locals 1

    .prologue
    .line 282
    iget-object v0, p0, Lcom/android/systemui/qs/tiles/SmartPauseTile;->mMotionMergedMutePauseSettings:Lcom/android/systemui/qs/SystemSetting;

    invoke-virtual {v0}, Lcom/android/systemui/qs/SystemSetting;->getValue()I

    move-result v0

    return v0
.end method

.method private getSmartPauseMode()I
    .locals 1

    .prologue
    .line 278
    iget-object v0, p0, Lcom/android/systemui/qs/tiles/SmartPauseTile;->mSmartPauseSettings:Lcom/android/systemui/qs/SystemSetting;

    invoke-virtual {v0}, Lcom/android/systemui/qs/SystemSetting;->getValue()I

    move-result v0

    return v0
.end method

.method private setSmartPauseMode(I)V
    .locals 5
    .param p1, "mode"    # I

    .prologue
    const/4 v1, 0x1

    .line 269
    const-string v2, "SmartPauseTile"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "set S.P.M - "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 271
    iget-object v2, p0, Lcom/android/systemui/qs/tiles/SmartPauseTile;->mSmartPauseSettings:Lcom/android/systemui/qs/SystemSetting;

    invoke-virtual {v2, p1}, Lcom/android/systemui/qs/SystemSetting;->setValue(I)V

    .line 272
    new-instance v0, Landroid/content/Intent;

    const-string v2, "com.sec.SMART_PAUSE_CHANGED"

    invoke-direct {v0, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 273
    .local v0, "i":Landroid/content/Intent;
    const-string v2, "isEnable"

    if-ne p1, v1, :cond_0

    :goto_0
    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 274
    iget-object v1, p0, Lcom/android/systemui/qs/tiles/SmartPauseTile;->mContext:Landroid/content/Context;

    sget-object v2, Landroid/os/UserHandle;->CURRENT:Landroid/os/UserHandle;

    invoke-virtual {v1, v0, v2}, Landroid/content/Context;->sendBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V

    .line 275
    return-void

    .line 273
    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method private showConfirmPopup()V
    .locals 4

    .prologue
    .line 217
    new-instance v1, Landroid/app/AlertDialog$Builder;

    iget-object v2, p0, Lcom/android/systemui/qs/tiles/SmartPauseTile;->mContext:Landroid/content/Context;

    invoke-direct {v1, v2}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v2, 0x1040014

    invoke-virtual {v1, v2}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    const v2, 0x7f0d03a7

    invoke-virtual {v1, v2}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    const v2, 0x104000a

    new-instance v3, Lcom/android/systemui/qs/tiles/SmartPauseTile$4;

    invoke-direct {v3, p0}, Lcom/android/systemui/qs/tiles/SmartPauseTile$4;-><init>(Lcom/android/systemui/qs/tiles/SmartPauseTile;)V

    invoke-virtual {v1, v2, v3}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    const/high16 v2, 0x1040000

    new-instance v3, Lcom/android/systemui/qs/tiles/SmartPauseTile$3;

    invoke-direct {v3, p0}, Lcom/android/systemui/qs/tiles/SmartPauseTile$3;-><init>(Lcom/android/systemui/qs/tiles/SmartPauseTile;)V

    invoke-virtual {v1, v2, v3}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v1

    iput-object v1, p0, Lcom/android/systemui/qs/tiles/SmartPauseTile;->mConfirmDialog:Landroid/app/AlertDialog;

    .line 247
    iget-object v1, p0, Lcom/android/systemui/qs/tiles/SmartPauseTile;->mHost:Lcom/android/systemui/qs/QSTile$Host;

    invoke-interface {v1}, Lcom/android/systemui/qs/QSTile$Host;->collapsePanels()V

    .line 250
    iget-object v1, p0, Lcom/android/systemui/qs/tiles/SmartPauseTile;->mContext:Landroid/content/Context;

    const-string v2, "keyguard"

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/KeyguardManager;

    .line 251
    .local v0, "kgm":Landroid/app/KeyguardManager;
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/app/KeyguardManager;->isKeyguardLocked()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 252
    iget-object v1, p0, Lcom/android/systemui/qs/tiles/SmartPauseTile;->mConfirmDialog:Landroid/app/AlertDialog;

    invoke-virtual {v1}, Landroid/app/AlertDialog;->getWindow()Landroid/view/Window;

    move-result-object v1

    const/16 v2, 0x7d9

    invoke-virtual {v1, v2}, Landroid/view/Window;->setType(I)V

    .line 257
    :goto_0
    iget-object v1, p0, Lcom/android/systemui/qs/tiles/SmartPauseTile;->mConfirmDialog:Landroid/app/AlertDialog;

    invoke-virtual {v1}, Landroid/app/AlertDialog;->show()V

    .line 258
    return-void

    .line 254
    :cond_0
    iget-object v1, p0, Lcom/android/systemui/qs/tiles/SmartPauseTile;->mConfirmDialog:Landroid/app/AlertDialog;

    invoke-virtual {v1}, Landroid/app/AlertDialog;->getWindow()Landroid/view/Window;

    move-result-object v1

    const/16 v2, 0x7d8

    invoke-virtual {v1, v2}, Landroid/view/Window;->setType(I)V

    goto :goto_0
.end method


# virtual methods
.method public doNext()V
    .locals 1

    .prologue
    .line 145
    invoke-virtual {p0}, Lcom/android/systemui/qs/tiles/SmartPauseTile;->removeEnabledScreenReaderValue()V

    .line 146
    const/4 v0, 0x3

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/systemui/qs/tiles/SmartPauseTile;->refreshState(Ljava/lang/Object;)V

    .line 147
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/android/systemui/qs/tiles/SmartPauseTile;->setSmartPauseMode(I)V

    .line 148
    return-void
.end method

.method public doPrevious()V
    .locals 0

    .prologue
    .line 151
    return-void
.end method

.method protected handleClick()V
    .locals 8

    .prologue
    const/4 v5, 0x0

    const/4 v4, 0x1

    .line 103
    iget-object v3, p0, Lcom/android/systemui/qs/tiles/SmartPauseTile;->mState:Lcom/android/systemui/qs/QSTile$State;

    check-cast v3, Lcom/android/systemui/qs/QSTile$MultiState;

    iget v3, v3, Lcom/android/systemui/qs/QSTile$MultiState;->value:I

    const/4 v6, 0x2

    if-ne v3, v6, :cond_0

    move v2, v4

    .line 104
    .local v2, "state":Z
    :goto_0
    const-string v3, "SmartPauseTile"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "handleClick : "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v3, v6}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 107
    new-array v1, v4, [Ljava/lang/String;

    const-string v3, "false"

    aput-object v3, v1, v5

    .line 108
    .local v1, "selectionArgs":[Ljava/lang/String;
    iget-object v3, p0, Lcom/android/systemui/qs/tiles/SmartPauseTile;->mContext:Landroid/content/Context;

    const-string v6, "content://com.sec.knox.provider/RestrictionPolicy3"

    const-string v7, "isSettingsChangesAllowed"

    invoke-static {v3, v6, v7, v1}, Lcom/android/systemui/qs/tiles/SmartPauseTile;->getEnterprisePolicyEnabled(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v0

    .line 110
    .local v0, "isSettingsChangesAllowed":I
    const/4 v3, -0x1

    if-eq v0, v3, :cond_1

    .line 111
    if-nez v0, :cond_1

    .line 112
    const-string v3, "SmartPauseTile"

    const-string v4, "S.C.A - F"

    invoke-static {v3, v4}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 142
    :goto_1
    return-void

    .end local v0    # "isSettingsChangesAllowed":I
    .end local v1    # "selectionArgs":[Ljava/lang/String;
    .end local v2    # "state":Z
    :cond_0
    move v2, v5

    .line 103
    goto :goto_0

    .line 118
    .restart local v0    # "isSettingsChangesAllowed":I
    .restart local v1    # "selectionArgs":[Ljava/lang/String;
    .restart local v2    # "state":Z
    :cond_1
    iget-boolean v3, p0, Lcom/android/systemui/qs/tiles/SmartPauseTile;->mMasterState:Z

    if-nez v3, :cond_2

    .line 119
    const-string v3, "SmartPauseTile"

    const-string v4, "M.S - F"

    invoke-static {v3, v4}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 120
    invoke-direct {p0}, Lcom/android/systemui/qs/tiles/SmartPauseTile;->showConfirmPopup()V

    goto :goto_1

    .line 125
    :cond_2
    iget-boolean v3, p0, Lcom/android/systemui/qs/tiles/SmartPauseTile;->mIsProcessing:Z

    if-eqz v3, :cond_3

    .line 126
    const-string v3, "SmartPauseTile"

    const-string v4, "Processing..."

    invoke-static {v3, v4}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 131
    :cond_3
    if-eqz v2, :cond_4

    .line 132
    invoke-virtual {p0}, Lcom/android/systemui/qs/tiles/SmartPauseTile;->isEnabledScreenReaderService()Z

    move-result v3

    if-eqz v3, :cond_4

    .line 133
    const v3, 0x7f0d044d

    const v4, 0x7f0d044e

    invoke-virtual {p0, v3, v4}, Lcom/android/systemui/qs/tiles/SmartPauseTile;->showTalkBackDisablePopup(II)V

    goto :goto_1

    .line 138
    :cond_4
    iput-boolean v4, p0, Lcom/android/systemui/qs/tiles/SmartPauseTile;->mIsProcessing:Z

    .line 140
    const/4 v3, 0x3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {p0, v3}, Lcom/android/systemui/qs/tiles/SmartPauseTile;->refreshState(Ljava/lang/Object;)V

    .line 141
    if-eqz v2, :cond_5

    :goto_2
    invoke-direct {p0, v4}, Lcom/android/systemui/qs/tiles/SmartPauseTile;->setSmartPauseMode(I)V

    goto :goto_1

    :cond_5
    move v4, v5

    goto :goto_2
.end method

.method protected handleDestroy()V
    .locals 2

    .prologue
    .line 84
    invoke-super {p0}, Lcom/android/systemui/qs/QSTile;->handleDestroy()V

    .line 86
    iget-object v0, p0, Lcom/android/systemui/qs/tiles/SmartPauseTile;->mSmartPauseSettings:Lcom/android/systemui/qs/SystemSetting;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/systemui/qs/SystemSetting;->setListening(Z)V

    .line 90
    return-void
.end method

.method protected handleLongClick()V
    .locals 5

    .prologue
    .line 161
    const-string v2, "SmartPauseTile"

    const-string v3, "handleLongClick"

    invoke-static {v2, v3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 164
    const/4 v2, 0x1

    new-array v1, v2, [Ljava/lang/String;

    const/4 v2, 0x0

    const-string v3, "true"

    aput-object v3, v1, v2

    .line 165
    .local v1, "selectionArgs":[Ljava/lang/String;
    iget-object v2, p0, Lcom/android/systemui/qs/tiles/SmartPauseTile;->mContext:Landroid/content/Context;

    const-string v3, "content://com.sec.knox.provider/RestrictionPolicy3"

    const-string v4, "isSettingsChangesAllowed"

    invoke-static {v2, v3, v4, v1}, Lcom/android/systemui/qs/tiles/SmartPauseTile;->getEnterprisePolicyEnabled(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v0

    .line 167
    .local v0, "isSettingsChangesAllowed":I
    const/4 v2, -0x1

    if-eq v0, v2, :cond_0

    .line 168
    if-nez v0, :cond_0

    .line 169
    const-string v2, "SmartPauseTile"

    const-string v3, "S.C.A - F"

    invoke-static {v2, v3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 186
    :goto_0
    return-void

    .line 184
    :cond_0
    const-string v2, "com.android.settings"

    const-string v3, "com.android.settings.Settings$SmartScreenSettingsActivity"

    invoke-virtual {p0, v2, v3}, Lcom/android/systemui/qs/tiles/SmartPauseTile;->startSettingsActivity(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public handleSecondaryClick()V
    .locals 0

    .prologue
    .line 156
    invoke-virtual {p0}, Lcom/android/systemui/qs/tiles/SmartPauseTile;->handleLongClick()V

    .line 157
    return-void
.end method

.method protected handleUpdateState(Lcom/android/systemui/qs/QSTile$MultiState;Ljava/lang/Object;)V
    .locals 4
    .param p1, "state"    # Lcom/android/systemui/qs/QSTile$MultiState;
    .param p2, "arg"    # Ljava/lang/Object;

    .prologue
    const v3, 0x7f0d0355

    .line 190
    instance-of v1, p2, Ljava/lang/Integer;

    if-eqz v1, :cond_0

    check-cast p2, Ljava/lang/Integer;

    .end local p2    # "arg":Ljava/lang/Object;
    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result v0

    .line 191
    .local v0, "value":I
    :goto_0
    iput v0, p1, Lcom/android/systemui/qs/QSTile$MultiState;->value:I

    .line 192
    const/4 v1, 0x1

    iput-boolean v1, p1, Lcom/android/systemui/qs/QSTile$MultiState;->visible:Z

    .line 193
    iget-object v1, p0, Lcom/android/systemui/qs/tiles/SmartPauseTile;->mContext:Landroid/content/Context;

    const v2, 0x7f0d0376

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p1, Lcom/android/systemui/qs/QSTile$MultiState;->label:Ljava/lang/String;

    .line 194
    packed-switch v0, :pswitch_data_0

    .line 214
    :goto_1
    return-void

    .line 190
    .end local v0    # "value":I
    .restart local p2    # "arg":Ljava/lang/Object;
    :cond_0
    iget-object v1, p0, Lcom/android/systemui/qs/tiles/SmartPauseTile;->mState:Lcom/android/systemui/qs/QSTile$State;

    check-cast v1, Lcom/android/systemui/qs/QSTile$MultiState;

    iget v0, v1, Lcom/android/systemui/qs/QSTile$MultiState;->value:I

    goto :goto_0

    .line 196
    .end local p2    # "arg":Ljava/lang/Object;
    .restart local v0    # "value":I
    :pswitch_0
    const v1, 0x7f0205aa

    iput v1, p1, Lcom/android/systemui/qs/QSTile$MultiState;->iconId:I

    .line 197
    const v1, 0x7f0d0338

    invoke-virtual {p0, v3, v1}, Lcom/android/systemui/qs/tiles/SmartPauseTile;->makeContentDescription(II)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p1, Lcom/android/systemui/qs/QSTile$MultiState;->contentDescription:Ljava/lang/String;

    goto :goto_1

    .line 202
    :pswitch_1
    const v1, 0x7f0205a9

    iput v1, p1, Lcom/android/systemui/qs/QSTile$MultiState;->iconId:I

    .line 203
    const v1, 0x7f0d0339

    invoke-virtual {p0, v3, v1}, Lcom/android/systemui/qs/tiles/SmartPauseTile;->makeContentDescription(II)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p1, Lcom/android/systemui/qs/QSTile$MultiState;->contentDescription:Ljava/lang/String;

    goto :goto_1

    .line 208
    :pswitch_2
    const v1, 0x7f0205a8

    iput v1, p1, Lcom/android/systemui/qs/QSTile$MultiState;->iconId:I

    .line 209
    const v1, 0x7f0d033a

    invoke-virtual {p0, v3, v1}, Lcom/android/systemui/qs/tiles/SmartPauseTile;->makeContentDescription(II)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p1, Lcom/android/systemui/qs/QSTile$MultiState;->contentDescription:Ljava/lang/String;

    goto :goto_1

    .line 194
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method protected bridge synthetic handleUpdateState(Lcom/android/systemui/qs/QSTile$State;Ljava/lang/Object;)V
    .locals 0
    .param p1, "x0"    # Lcom/android/systemui/qs/QSTile$State;
    .param p2, "x1"    # Ljava/lang/Object;

    .prologue
    .line 38
    check-cast p1, Lcom/android/systemui/qs/QSTile$MultiState;

    .end local p1    # "x0":Lcom/android/systemui/qs/QSTile$State;
    invoke-virtual {p0, p1, p2}, Lcom/android/systemui/qs/tiles/SmartPauseTile;->handleUpdateState(Lcom/android/systemui/qs/QSTile$MultiState;Ljava/lang/Object;)V

    return-void
.end method

.method protected newTileState()Lcom/android/systemui/qs/QSTile$MultiState;
    .locals 1

    .prologue
    .line 98
    new-instance v0, Lcom/android/systemui/qs/QSTile$MultiState;

    invoke-direct {v0}, Lcom/android/systemui/qs/QSTile$MultiState;-><init>()V

    return-object v0
.end method

.method protected bridge synthetic newTileState()Lcom/android/systemui/qs/QSTile$State;
    .locals 1

    .prologue
    .line 38
    invoke-virtual {p0}, Lcom/android/systemui/qs/tiles/SmartPauseTile;->newTileState()Lcom/android/systemui/qs/QSTile$MultiState;

    move-result-object v0

    return-object v0
.end method

.method public setListening(Z)V
    .locals 0
    .param p1, "listening"    # Z

    .prologue
    .line 94
    return-void
.end method

.method public userSwitch(I)V
    .locals 2
    .param p1, "newUserId"    # I

    .prologue
    .line 262
    iget-object v0, p0, Lcom/android/systemui/qs/tiles/SmartPauseTile;->mSmartPauseSettings:Lcom/android/systemui/qs/SystemSetting;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/systemui/qs/SystemSetting;->onChange(Z)V

    .line 266
    return-void
.end method
