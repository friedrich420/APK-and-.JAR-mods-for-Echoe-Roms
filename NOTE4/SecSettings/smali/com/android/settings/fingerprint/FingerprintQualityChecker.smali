.class public Lcom/android/settings/fingerprint/FingerprintQualityChecker;
.super Ljava/lang/Object;
.source "FingerprintQualityChecker.java"


# direct methods
.method public static getCurrentLockQuality(Landroid/content/Context;)I
    .locals 5
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    const/4 v4, -0x1

    .line 55
    move-object v3, p0

    check-cast v3, Landroid/app/Activity;

    invoke-virtual {v3}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v1

    .line 56
    .local v1, "intent":Landroid/content/Intent;
    const-string v3, "lockscreen.password_type"

    invoke-virtual {v1, v3, v4}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v2

    .line 57
    .local v2, "quality":I
    if-ne v2, v4, :cond_0

    .line 59
    const-string v3, "minimum_quality"

    invoke-virtual {v1, v3, v4}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v2

    .line 60
    new-instance v0, Landroid/util/MutableBoolean;

    const/4 v3, 0x0

    invoke-direct {v0, v3}, Landroid/util/MutableBoolean;-><init>(Z)V

    .line 61
    .local v0, "allowBiometric":Landroid/util/MutableBoolean;
    invoke-static {v2, v0, p0}, Lcom/android/settings/fingerprint/FingerprintQualityChecker;->upgradeQuality(ILandroid/util/MutableBoolean;Landroid/content/Context;)I

    move-result v2

    .line 65
    .end local v0    # "allowBiometric":Landroid/util/MutableBoolean;
    :goto_0
    return v2

    .line 63
    :cond_0
    const/4 v3, 0x0

    invoke-static {v2, v3, p0}, Lcom/android/settings/fingerprint/FingerprintQualityChecker;->upgradeQuality(ILandroid/util/MutableBoolean;Landroid/content/Context;)I

    move-result v2

    goto :goto_0
.end method

.method private static upgradeQuality(ILandroid/util/MutableBoolean;Landroid/content/Context;)I
    .locals 2
    .param p0, "quality"    # I
    .param p1, "allowBiometric"    # Landroid/util/MutableBoolean;
    .param p2, "context"    # Landroid/content/Context;

    .prologue
    const v1, 0x8000

    .line 70
    invoke-static {p0, p2}, Lcom/android/settings/fingerprint/FingerprintQualityChecker;->upgradeQualityForDPM(ILandroid/content/Context;)I

    move-result p0

    .line 71
    invoke-static {p0, p2}, Lcom/android/settings/fingerprint/FingerprintQualityChecker;->upgradeQualityForKeyStore(ILandroid/content/Context;)I

    move-result p0

    .line 72
    invoke-static {p0, p2}, Lcom/android/settings/fingerprint/FingerprintQualityChecker;->upgradeQualityForEncryption(ILandroid/content/Context;)I

    move-result v0

    .line 73
    .local v0, "encryptionQuality":I
    if-le v0, p0, :cond_0

    .line 76
    if-eqz p1, :cond_2

    .line 77
    if-gt p0, v1, :cond_1

    const/4 v1, 0x1

    :goto_0
    iput-boolean v1, p1, Landroid/util/MutableBoolean;->value:Z

    :cond_0
    move p0, v0

    .line 85
    .end local p0    # "quality":I
    :goto_1
    return p0

    .line 77
    .restart local p0    # "quality":I
    :cond_1
    const/4 v1, 0x0

    goto :goto_0

    .line 79
    :cond_2
    if-ne p0, v1, :cond_0

    goto :goto_1
.end method

.method private static upgradeQualityForDPM(ILandroid/content/Context;)I
    .locals 3
    .param p0, "quality"    # I
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 92
    const-string v2, "device_policy"

    invoke-virtual {p1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/admin/DevicePolicyManager;

    .line 94
    .local v0, "mDPM":Landroid/app/admin/DevicePolicyManager;
    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Landroid/app/admin/DevicePolicyManager;->getPasswordQuality(Landroid/content/ComponentName;)I

    move-result v1

    .line 95
    .local v1, "minQuality":I
    if-ge p0, v1, :cond_0

    .line 96
    move p0, v1

    .line 98
    :cond_0
    return p0
.end method

.method private static upgradeQualityForEncryption(ILandroid/content/Context;)I
    .locals 8
    .param p0, "quality"    # I
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    const/high16 v7, 0x20000

    const/4 v6, 0x0

    .line 111
    const-string v4, "device_policy"

    invoke-virtual {p1, v4}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/app/admin/DevicePolicyManager;

    .line 114
    .local v2, "mDPM":Landroid/app/admin/DevicePolicyManager;
    new-instance v0, Landroid/dirEncryption/DirEncryptionManager;

    invoke-direct {v0, p1}, Landroid/dirEncryption/DirEncryptionManager;-><init>(Landroid/content/Context;)V

    .line 115
    .local v0, "dem":Landroid/dirEncryption/DirEncryptionManager;
    invoke-virtual {v0}, Landroid/dirEncryption/DirEncryptionManager;->getSDCardEncryptionPrefs()Landroid/dirEncryption/SDCardEncryptionPolicies;

    move-result-object v3

    .line 117
    .local v3, "sdPolicies":Landroid/dirEncryption/SDCardEncryptionPolicies;
    if-nez v3, :cond_0

    .line 118
    new-instance v3, Landroid/dirEncryption/SDCardEncryptionPolicies;

    .end local v3    # "sdPolicies":Landroid/dirEncryption/SDCardEncryptionPolicies;
    invoke-direct {v3}, Landroid/dirEncryption/SDCardEncryptionPolicies;-><init>()V

    .line 121
    .restart local v3    # "sdPolicies":Landroid/dirEncryption/SDCardEncryptionPolicies;
    :cond_0
    invoke-virtual {v2, v6}, Landroid/app/admin/DevicePolicyManager;->isEncryptedWithForceEncrypt(Landroid/content/ComponentName;)Z

    move-result v4

    if-eqz v4, :cond_2

    invoke-virtual {v2, v6}, Landroid/app/admin/DevicePolicyManager;->getRequireStorageCardEncryption(Landroid/content/ComponentName;)Z

    move-result v4

    if-nez v4, :cond_2

    const/4 v4, 0x2

    iget v5, v3, Landroid/dirEncryption/SDCardEncryptionPolicies;->mEnc:I

    if-eq v4, v5, :cond_2

    .line 142
    :cond_1
    :goto_0
    return p0

    .line 126
    :cond_2
    invoke-static {}, Landroid/os/Process;->myUserHandle()Landroid/os/UserHandle;

    move-result-object v4

    sget-object v5, Landroid/os/UserHandle;->OWNER:Landroid/os/UserHandle;

    invoke-virtual {v4, v5}, Landroid/os/UserHandle;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 130
    invoke-virtual {v2, v6}, Landroid/app/admin/DevicePolicyManager;->getSamsungEncryptionStatus(Landroid/content/ComponentName;)Z

    move-result v1

    .line 131
    .local v1, "encrypted":Z
    if-eqz v1, :cond_1

    .line 133
    if-ge p0, v7, :cond_3

    const/high16 p0, 0x50000

    .line 136
    :cond_3
    if-ge p0, v7, :cond_1

    .line 137
    const/high16 p0, 0x20000

    goto :goto_0
.end method

.method private static upgradeQualityForKeyStore(ILandroid/content/Context;)I
    .locals 4
    .param p0, "quality"    # I
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 149
    const-string v3, "device_policy"

    invoke-virtual {p1, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/app/admin/DevicePolicyManager;

    .line 150
    .local v1, "mDPM":Landroid/app/admin/DevicePolicyManager;
    invoke-static {}, Landroid/security/KeyStore;->getInstance()Landroid/security/KeyStore;

    move-result-object v2

    .line 154
    .local v2, "mKeyStore":Landroid/security/KeyStore;
    const/4 v0, 0x0

    .line 185
    .local v0, "is3lmActiveAdmin":Z
    invoke-virtual {v2}, Landroid/security/KeyStore;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_0

    .line 186
    const/high16 v3, 0x20000

    if-ge p0, v3, :cond_0

    .line 187
    const/high16 p0, 0x20000

    .line 191
    :cond_0
    return p0
.end method
