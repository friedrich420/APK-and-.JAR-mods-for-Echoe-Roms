.class public Lcom/android/settings/settingssearch/SettingsSearchIccLockStateService;
.super Landroid/app/Service;
.source "SettingsSearchIccLockStateService.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 16
    invoke-direct {p0}, Landroid/app/Service;-><init>()V

    return-void
.end method


# virtual methods
.method public SettingsSearchGetIccLock2State()I
    .locals 4

    .prologue
    const/4 v3, 0x1

    .line 36
    const/4 v1, 0x0

    .line 37
    .local v1, "state":I
    invoke-static {v3}, Lcom/android/internal/telephony/PhoneFactory;->getPhone(I)Lcom/android/internal/telephony/Phone;

    move-result-object v0

    .line 38
    .local v0, "mPhone2":Lcom/android/internal/telephony/Phone;
    if-eqz v0, :cond_1

    .line 39
    invoke-interface {v0}, Lcom/android/internal/telephony/Phone;->getIccCard()Lcom/android/internal/telephony/IccCard;

    move-result-object v2

    invoke-interface {v2}, Lcom/android/internal/telephony/IccCard;->getIccLockEnabled()Z

    move-result v2

    if-eq v2, v3, :cond_0

    invoke-static {}, Landroid/telephony/TelephonyManager;->getDefault()Landroid/telephony/TelephonyManager;

    move-result-object v2

    invoke-virtual {v2, v3}, Landroid/telephony/TelephonyManager;->getSimState(I)I

    move-result v2

    const/4 v3, 0x2

    if-ne v2, v3, :cond_1

    .line 41
    :cond_0
    const/4 v1, 0x1

    .line 44
    :cond_1
    return v1
.end method

.method public SettingsSearchGetIccLockState()I
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 24
    const/4 v1, 0x0

    .line 25
    .local v1, "state":I
    invoke-static {v4}, Lcom/android/internal/telephony/PhoneFactory;->getPhone(I)Lcom/android/internal/telephony/Phone;

    move-result-object v0

    .line 26
    .local v0, "mPhone":Lcom/android/internal/telephony/Phone;
    invoke-interface {v0}, Lcom/android/internal/telephony/Phone;->getIccCard()Lcom/android/internal/telephony/IccCard;

    move-result-object v2

    invoke-interface {v2}, Lcom/android/internal/telephony/IccCard;->getIccLockEnabled()Z

    move-result v2

    const/4 v3, 0x1

    if-eq v2, v3, :cond_0

    invoke-static {}, Landroid/telephony/TelephonyManager;->getDefault()Landroid/telephony/TelephonyManager;

    move-result-object v2

    invoke-virtual {v2, v4}, Landroid/telephony/TelephonyManager;->getSimState(I)I

    move-result v2

    const/4 v3, 0x2

    if-ne v2, v3, :cond_1

    .line 28
    :cond_0
    const/4 v1, 0x1

    .line 32
    :goto_0
    return v1

    .line 30
    :cond_1
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public onBind(Landroid/content/Intent;)Landroid/os/IBinder;
    .locals 1
    .param p1, "arg0"    # Landroid/content/Intent;

    .prologue
    .line 69
    const/4 v0, 0x0

    return-object v0
.end method

.method public onStartCommand(Landroid/content/Intent;II)I
    .locals 4
    .param p1, "intent"    # Landroid/content/Intent;
    .param p2, "flags"    # I
    .param p3, "stratId"    # I

    .prologue
    .line 49
    const-string v2, "SettingSearch/SettingsSearchIccLockStateService"

    const-string v3, "onStartCommand"

    invoke-static {v2, v3}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 50
    invoke-virtual {p0}, Lcom/android/settings/settingssearch/SettingsSearchIccLockStateService;->SettingsSearchGetIccLockState()I

    move-result v0

    .line 51
    .local v0, "enable":I
    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    .line 52
    .local v1, "i":Landroid/content/Intent;
    const-string v2, "android.settings.CHANGED_ICC_LOCK_ENABLE"

    invoke-virtual {v1, v2}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 53
    const-string v2, "icc_lock_state"

    invoke-virtual {v1, v2, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 54
    invoke-static {}, Lcom/samsung/android/telephony/MultiSimManager;->getInsertedSimCount()I

    move-result v2

    const/4 v3, 0x1

    if-le v2, v3, :cond_0

    .line 55
    invoke-virtual {p0}, Lcom/android/settings/settingssearch/SettingsSearchIccLockStateService;->SettingsSearchGetIccLock2State()I

    move-result v0

    .line 56
    const-string v2, "icc_lock_state2"

    invoke-virtual {v1, v2, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 58
    :cond_0
    invoke-virtual {p0, v1}, Lcom/android/settings/settingssearch/SettingsSearchIccLockStateService;->sendBroadcast(Landroid/content/Intent;)V

    .line 59
    if-eqz p1, :cond_1

    .line 60
    invoke-super {p0, p1, p2, p3}, Landroid/app/Service;->onStartCommand(Landroid/content/Intent;II)I

    move-result v2

    .line 62
    :goto_0
    return v2

    :cond_1
    const/4 v2, 0x2

    goto :goto_0
.end method
