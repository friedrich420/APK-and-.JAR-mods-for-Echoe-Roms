.class public Lcom/android/settings/fingerprint/FingerPrintManagerUI;
.super Landroid/app/ListFragment;
.source "FingerPrintManagerUI.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/settings/fingerprint/FingerPrintManagerUI$FingerListAdapter;,
        Lcom/android/settings/fingerprint/FingerPrintManagerUI$ItemLongClickListener;
    }
.end annotation


# static fields
.field private static levelFingerprintService:I

.field private static mListView:Landroid/widget/ListView;


# instance fields
.field private actionMode_animation:Z

.field private mEnrolledFingerCount:I

.field private mEnrolledFingerStatus:I

.field private mFingerList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mFingerListAdapter:Lcom/android/settings/fingerprint/FingerPrintManagerUI$FingerListAdapter;

.field private mFingerprintManager:Lcom/samsung/android/fingerprint/FingerprintManager;

.field private mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

.field private mOptionsMenu:Landroid/view/Menu;

.field private mPreviousStage:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 78
    const/4 v0, -0x1

    sput v0, Lcom/android/settings/fingerprint/FingerPrintManagerUI;->levelFingerprintService:I

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 63
    invoke-direct {p0}, Landroid/app/ListFragment;-><init>()V

    .line 85
    const-string v0, ""

    iput-object v0, p0, Lcom/android/settings/fingerprint/FingerPrintManagerUI;->mPreviousStage:Ljava/lang/String;

    .line 90
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/settings/fingerprint/FingerPrintManagerUI;->mFingerList:Ljava/util/ArrayList;

    .line 91
    iput v1, p0, Lcom/android/settings/fingerprint/FingerPrintManagerUI;->mEnrolledFingerStatus:I

    .line 92
    iput v1, p0, Lcom/android/settings/fingerprint/FingerPrintManagerUI;->mEnrolledFingerCount:I

    .line 94
    iput-boolean v1, p0, Lcom/android/settings/fingerprint/FingerPrintManagerUI;->actionMode_animation:Z

    .line 438
    return-void
.end method

.method static synthetic access$000(Lcom/android/settings/fingerprint/FingerPrintManagerUI;)I
    .locals 1
    .param p0, "x0"    # Lcom/android/settings/fingerprint/FingerPrintManagerUI;

    .prologue
    .line 63
    iget v0, p0, Lcom/android/settings/fingerprint/FingerPrintManagerUI;->mEnrolledFingerStatus:I

    return v0
.end method

.method private configureActionBar()V
    .locals 2

    .prologue
    .line 341
    invoke-virtual {p0}, Lcom/android/settings/fingerprint/FingerPrintManagerUI;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Activity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v0

    .line 342
    .local v0, "actionBar":Landroid/app/ActionBar;
    if-eqz v0, :cond_0

    .line 343
    const/16 v1, 0xc

    invoke-virtual {v0, v1}, Landroid/app/ActionBar;->setDisplayOptions(I)V

    .line 345
    :cond_0
    return-void
.end method

.method private static isSupportedOnehand(Landroid/content/Context;)Z
    .locals 4
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    const/4 v0, 0x1

    .line 459
    sget v1, Lcom/android/settings/fingerprint/FingerPrintManagerUI;->levelFingerprintService:I

    if-gez v1, :cond_0

    .line 461
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    const-string v2, "com.sec.feature.fingerprint_manager_service"

    invoke-virtual {v1, v2}, Landroid/content/pm/PackageManager;->getSystemFeatureLevel(Ljava/lang/String;)I

    move-result v1

    sput v1, Lcom/android/settings/fingerprint/FingerPrintManagerUI;->levelFingerprintService:I

    .line 462
    const-string v1, "FingerPrintManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "isSupportedOnehand: levelFingerprintService : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    sget v3, Lcom/android/settings/fingerprint/FingerPrintManagerUI;->levelFingerprintService:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/secutil/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 465
    :cond_0
    sget v1, Lcom/android/settings/fingerprint/FingerPrintManagerUI;->levelFingerprintService:I

    if-le v1, v0, :cond_1

    .line 469
    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private showFingerprintLockDialog()V
    .locals 5

    .prologue
    .line 383
    const v2, 0x7f0a1a91

    invoke-virtual {p0, v2}, Lcom/android/settings/fingerprint/FingerPrintManagerUI;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 384
    .local v1, "popupmessage":Ljava/lang/String;
    new-instance v2, Landroid/app/AlertDialog$Builder;

    invoke-virtual {p0}, Lcom/android/settings/fingerprint/FingerPrintManagerUI;->getActivity()Landroid/app/Activity;

    move-result-object v3

    invoke-direct {v2, v3}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v3, 0x7f0a1af3

    invoke-virtual {v2, v3}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    invoke-virtual {v2, v1}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    const v3, 0x7f0a01ce

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    const v3, 0x104000a

    new-instance v4, Lcom/android/settings/fingerprint/FingerPrintManagerUI$1;

    invoke-direct {v4, p0}, Lcom/android/settings/fingerprint/FingerPrintManagerUI$1;-><init>(Lcom/android/settings/fingerprint/FingerPrintManagerUI;)V

    invoke-virtual {v2, v3, v4}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    .line 397
    .local v0, "dialog":Landroid/app/AlertDialog;
    invoke-virtual {v0}, Landroid/app/AlertDialog;->show()V

    .line 398
    return-void
.end method

.method private showSensorErrorDialog()V
    .locals 4

    .prologue
    .line 425
    new-instance v1, Landroid/app/AlertDialog$Builder;

    invoke-virtual {p0}, Lcom/android/settings/fingerprint/FingerPrintManagerUI;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v2, 0x7f0a1afd

    invoke-virtual {v1, v2}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    const v2, 0x7f0a1b06

    invoke-virtual {v1, v2}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    const v2, 0x104000a

    new-instance v3, Lcom/android/settings/fingerprint/FingerPrintManagerUI$3;

    invoke-direct {v3, p0}, Lcom/android/settings/fingerprint/FingerPrintManagerUI$3;-><init>(Lcom/android/settings/fingerprint/FingerPrintManagerUI;)V

    invoke-virtual {v1, v2, v3}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    .line 435
    .local v0, "dialog":Landroid/app/AlertDialog;
    invoke-virtual {v0}, Landroid/app/AlertDialog;->show()V

    .line 436
    return-void
.end method


# virtual methods
.method public onActivityCreated(Landroid/os/Bundle;)V
    .locals 3
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 162
    invoke-super {p0, p1}, Landroid/app/ListFragment;->onActivityCreated(Landroid/os/Bundle;)V

    .line 164
    const-string v0, "FingerPrintManager"

    const-string v1, "onActivityCreated"

    invoke-static {v0, v1}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 166
    invoke-virtual {p0}, Lcom/android/settings/fingerprint/FingerPrintManagerUI;->getActivity()Landroid/app/Activity;

    move-result-object v0

    const/4 v1, 0x2

    invoke-static {v0, v1}, Lcom/samsung/android/fingerprint/FingerprintManager;->getInstance(Landroid/content/Context;I)Lcom/samsung/android/fingerprint/FingerprintManager;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/fingerprint/FingerPrintManagerUI;->mFingerprintManager:Lcom/samsung/android/fingerprint/FingerprintManager;

    .line 167
    new-instance v0, Lcom/android/internal/widget/LockPatternUtils;

    invoke-virtual {p0}, Lcom/android/settings/fingerprint/FingerPrintManagerUI;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/android/internal/widget/LockPatternUtils;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/settings/fingerprint/FingerPrintManagerUI;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    .line 172
    invoke-virtual {p0}, Lcom/android/settings/fingerprint/FingerPrintManagerUI;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    const-string v1, "previousStage"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/fingerprint/FingerPrintManagerUI;->mPreviousStage:Ljava/lang/String;

    .line 173
    const-string v0, "FingerPrintManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[previousStage] = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/settings/fingerprint/FingerPrintManagerUI;->mPreviousStage:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/secutil/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 175
    invoke-virtual {p0}, Lcom/android/settings/fingerprint/FingerPrintManagerUI;->updateFingerList()V

    .line 176
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/android/settings/fingerprint/FingerPrintManagerUI;->setHasOptionsMenu(Z)V

    .line 177
    invoke-virtual {p0}, Lcom/android/settings/fingerprint/FingerPrintManagerUI;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-static {v0}, Lcom/android/settings/Utils;->isTablet(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 178
    invoke-direct {p0}, Lcom/android/settings/fingerprint/FingerPrintManagerUI;->configureActionBar()V

    .line 180
    :cond_0
    return-void
.end method

.method public onActivityResult(IILandroid/content/Intent;)V
    .locals 12
    .param p1, "requestCode"    # I
    .param p2, "resultCode"    # I
    .param p3, "data"    # Landroid/content/Intent;

    .prologue
    const/4 v2, 0x0

    const/4 v11, 0x0

    const/4 v5, 0x1

    .line 112
    invoke-super {p0, p1, p2, p3}, Landroid/app/ListFragment;->onActivityResult(IILandroid/content/Intent;)V

    .line 113
    const-string v6, "FingerPrintManager"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "onActivityResult : requestCode : "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " resultCode : "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/secutil/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 114
    const/16 v6, 0x3e9

    if-eq p1, v6, :cond_0

    const/16 v6, 0x3e8

    if-ne p1, v6, :cond_9

    .line 115
    :cond_0
    if-nez p2, :cond_5

    .line 116
    invoke-virtual {p0}, Lcom/android/settings/fingerprint/FingerPrintManagerUI;->getActivity()Landroid/app/Activity;

    move-result-object v0

    .line 117
    .local v0, "activity":Landroid/app/Activity;
    invoke-static {v0}, Lcom/android/settings/Utils;->isTablet(Landroid/content/Context;)Z

    move-result v5

    if-eqz v5, :cond_4

    .line 118
    invoke-virtual {p0}, Lcom/android/settings/fingerprint/FingerPrintManagerUI;->getActivity()Landroid/app/Activity;

    move-result-object v5

    invoke-virtual {v5}, Landroid/app/Activity;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v5

    invoke-virtual {v5}, Landroid/app/FragmentManager;->beginTransaction()Landroid/app/FragmentTransaction;

    move-result-object v5

    invoke-virtual {v5, p0}, Landroid/app/FragmentTransaction;->remove(Landroid/app/Fragment;)Landroid/app/FragmentTransaction;

    move-result-object v5

    invoke-virtual {v5}, Landroid/app/FragmentTransaction;->commit()I

    .line 119
    invoke-virtual {p0}, Lcom/android/settings/fingerprint/FingerPrintManagerUI;->getActivity()Landroid/app/Activity;

    move-result-object v5

    invoke-virtual {v5}, Landroid/app/Activity;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v5

    invoke-virtual {v5}, Landroid/app/FragmentManager;->popBackStack()V

    .line 150
    .end local v0    # "activity":Landroid/app/Activity;
    :cond_1
    :goto_0
    iget-object v5, p0, Lcom/android/settings/fingerprint/FingerPrintManagerUI;->mFingerprintManager:Lcom/samsung/android/fingerprint/FingerprintManager;

    invoke-virtual {v5}, Lcom/samsung/android/fingerprint/FingerprintManager;->getEnrolledFingers()I

    move-result v5

    if-nez v5, :cond_3

    invoke-virtual {p0}, Lcom/android/settings/fingerprint/FingerPrintManagerUI;->getActivity()Landroid/app/Activity;

    move-result-object v5

    invoke-static {v5}, Lcom/android/settings/fingerprint/FingerPrintManagerUI;->isSupportedOnehand(Landroid/content/Context;)Z

    move-result v5

    if-eqz v5, :cond_3

    .line 151
    iget-object v5, p0, Lcom/android/settings/fingerprint/FingerPrintManagerUI;->mFingerprintManager:Lcom/samsung/android/fingerprint/FingerprintManager;

    invoke-virtual {v5}, Lcom/samsung/android/fingerprint/FingerprintManager;->notifyEnrollEnd()Z

    move-result v5

    if-nez v5, :cond_2

    .line 152
    invoke-direct {p0}, Lcom/android/settings/fingerprint/FingerPrintManagerUI;->showSensorErrorDialog()V

    .line 154
    :cond_2
    iget-object v5, p0, Lcom/android/settings/fingerprint/FingerPrintManagerUI;->mFingerprintManager:Lcom/samsung/android/fingerprint/FingerprintManager;

    invoke-virtual {v5}, Lcom/samsung/android/fingerprint/FingerprintManager;->notifyEnrollBegin()Z

    move-result v5

    if-nez v5, :cond_3

    .line 155
    invoke-direct {p0}, Lcom/android/settings/fingerprint/FingerPrintManagerUI;->showSensorErrorDialog()V

    .line 157
    :cond_3
    return-void

    .line 121
    .restart local v0    # "activity":Landroid/app/Activity;
    :cond_4
    invoke-virtual {v0, p2, p3}, Landroid/app/Activity;->setResult(ILandroid/content/Intent;)V

    .line 122
    invoke-virtual {v0}, Landroid/app/Activity;->finish()V

    goto :goto_0

    .line 124
    .end local v0    # "activity":Landroid/app/Activity;
    :cond_5
    const/4 v6, -0x1

    if-ne p2, v6, :cond_1

    .line 125
    invoke-virtual {p0}, Lcom/android/settings/fingerprint/FingerPrintManagerUI;->updateFingerList()V

    .line 126
    invoke-virtual {p0}, Lcom/android/settings/fingerprint/FingerPrintManagerUI;->updateOptionMenu()V

    .line 129
    invoke-virtual {p0}, Lcom/android/settings/fingerprint/FingerPrintManagerUI;->getActivity()Landroid/app/Activity;

    move-result-object v6

    const-string v7, "device_policy"

    invoke-virtual {v6, v7}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/app/admin/DevicePolicyManager;

    .line 130
    .local v3, "mDPM":Landroid/app/admin/DevicePolicyManager;
    invoke-virtual {p0}, Lcom/android/settings/fingerprint/FingerPrintManagerUI;->getActivity()Landroid/app/Activity;

    move-result-object v6

    const-string v7, "enterprise_policy"

    invoke-virtual {v6, v7}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/app/enterprise/EnterpriseDeviceManager;

    .line 131
    .local v4, "mEDM":Landroid/app/enterprise/EnterpriseDeviceManager;
    invoke-virtual {p0}, Lcom/android/settings/fingerprint/FingerPrintManagerUI;->getActivity()Landroid/app/Activity;

    move-result-object v6

    const-string v7, "content://com.sec.knox.provider/PasswordPolicy2"

    const-string v8, "isBiometricAuthenticationEnabled"

    new-array v9, v5, [Ljava/lang/String;

    invoke-static {v5}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v10

    aput-object v10, v9, v2

    invoke-static {v6, v7, v8, v9}, Lcom/android/settings/Utils;->getEnterprisePolicyEnabled(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v1

    .line 132
    .local v1, "isBiometricAuthenticationEnabled":I
    if-eqz v3, :cond_6

    if-eqz v4, :cond_6

    if-nez v1, :cond_6

    invoke-virtual {v3, v11}, Landroid/app/admin/DevicePolicyManager;->getPasswordQuality(Landroid/content/ComponentName;)I

    move-result v6

    if-gtz v6, :cond_3

    .line 137
    :cond_6
    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v6

    if-eqz v6, :cond_7

    const-string v6, "true"

    invoke-virtual {p0}, Lcom/android/settings/fingerprint/FingerPrintManagerUI;->getActivity()Landroid/app/Activity;

    move-result-object v7

    const-string v8, "isKioskModeEnabled"

    invoke-static {v7, v8}, Landroid/os/PersonaManager;->getKnoxInfoForApp(Landroid/content/Context;Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v7

    const-string v8, "isKioskModeEnabled"

    invoke-virtual {v7, v8}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_7

    move v2, v5

    .line 138
    .local v2, "isKioskMode":Z
    :cond_7
    if-nez v2, :cond_1

    iget-object v6, p0, Lcom/android/settings/fingerprint/FingerPrintManagerUI;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    invoke-virtual {v6}, Lcom/android/internal/widget/LockPatternUtils;->isLockFingerprintEnabled()Z

    move-result v6

    if-nez v6, :cond_1

    if-eqz v3, :cond_1

    invoke-virtual {v3, v11}, Landroid/app/admin/DevicePolicyManager;->getSamsungEncryptionStatus(Landroid/content/ComponentName;)Z

    move-result v6

    if-nez v6, :cond_1

    .line 139
    invoke-virtual {p0}, Lcom/android/settings/fingerprint/FingerPrintManagerUI;->getActivity()Landroid/app/Activity;

    move-result-object v6

    invoke-static {v6}, Lcom/android/settings/fingerprint/FingerprintQualityChecker;->getCurrentLockQuality(Landroid/content/Context;)I

    move-result v6

    const/high16 v7, 0x20000

    if-lt v6, v7, :cond_8

    invoke-virtual {v3, v11}, Landroid/app/admin/DevicePolicyManager;->isSupportFingerprintForODE(Landroid/content/ComponentName;)Z

    move-result v6

    if-ne v6, v5, :cond_1

    .line 141
    :cond_8
    invoke-direct {p0}, Lcom/android/settings/fingerprint/FingerPrintManagerUI;->showFingerprintLockDialog()V

    goto/16 :goto_0

    .line 146
    .end local v1    # "isBiometricAuthenticationEnabled":I
    .end local v2    # "isKioskMode":Z
    .end local v3    # "mDPM":Landroid/app/admin/DevicePolicyManager;
    .end local v4    # "mEDM":Landroid/app/enterprise/EnterpriseDeviceManager;
    :cond_9
    invoke-virtual {p0}, Lcom/android/settings/fingerprint/FingerPrintManagerUI;->updateFingerList()V

    .line 147
    invoke-virtual {p0}, Lcom/android/settings/fingerprint/FingerPrintManagerUI;->updateOptionMenu()V

    goto/16 :goto_0
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;Landroid/view/MenuInflater;)V
    .locals 6
    .param p1, "menu"    # Landroid/view/Menu;
    .param p2, "inflater"    # Landroid/view/MenuInflater;

    .prologue
    const v1, 0x7f0a096d

    const/4 v5, 0x3

    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 313
    invoke-super {p0, p1, p2}, Landroid/app/ListFragment;->onCreateOptionsMenu(Landroid/view/Menu;Landroid/view/MenuInflater;)V

    .line 315
    iput-object p1, p0, Lcom/android/settings/fingerprint/FingerPrintManagerUI;->mOptionsMenu:Landroid/view/Menu;

    .line 316
    iget v0, p0, Lcom/android/settings/fingerprint/FingerPrintManagerUI;->mEnrolledFingerCount:I

    if-ne v0, v5, :cond_1

    .line 317
    invoke-interface {p1, v2, v3, v2, v1}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v0

    const v1, 0x7f020222

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    move-result-object v0

    invoke-interface {v0, v2}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    move-result-object v0

    invoke-interface {v0, v3}, Landroid/view/MenuItem;->setShowAsAction(I)V

    .line 325
    :goto_0
    iget v0, p0, Lcom/android/settings/fingerprint/FingerPrintManagerUI;->mEnrolledFingerCount:I

    if-nez v0, :cond_2

    .line 326
    const v0, 0x7f0a1acf

    invoke-interface {p1, v2, v4, v2, v0}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v0

    invoke-interface {v0, v2}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 327
    const v0, 0x7f0a1991

    invoke-interface {p1, v2, v5, v2, v0}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v0

    invoke-interface {v0, v2}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 334
    :goto_1
    invoke-static {}, Lcom/android/settings/Utils;->isGridSimpleMenuEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 335
    iget-object v0, p0, Lcom/android/settings/fingerprint/FingerPrintManagerUI;->mOptionsMenu:Landroid/view/Menu;

    invoke-interface {v0, v4}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v0

    invoke-interface {v0, v2}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 338
    :cond_0
    return-void

    .line 321
    :cond_1
    invoke-interface {p1, v2, v3, v2, v1}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v0

    const v1, 0x7f020221

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    move-result-object v0

    invoke-interface {v0, v3}, Landroid/view/MenuItem;->setShowAsAction(I)V

    goto :goto_0

    .line 330
    :cond_2
    const v0, 0x7f0a1991

    invoke-interface {p1, v2, v5, v2, v0}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    .line 331
    const v0, 0x7f0a1acf

    invoke-interface {p1, v2, v4, v2, v0}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    goto :goto_1
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 6
    .param p1, "inflater"    # Landroid/view/LayoutInflater;
    .param p2, "container"    # Landroid/view/ViewGroup;
    .param p3, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    const/4 v5, 0x0

    .line 98
    const v2, 0x7f0400c1

    invoke-virtual {p1, v2, p2, v5}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    .line 100
    .local v0, "rootView":Landroid/view/View;
    const v2, 0x7f1001dc

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    .line 101
    .local v1, "tv":Landroid/widget/TextView;
    const v2, 0x7f0a1aaf

    invoke-virtual {p0, v2}, Lcom/android/settings/fingerprint/FingerPrintManagerUI;->getString(I)Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x3

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v3, v5

    invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 104
    const v2, 0x7f1001e3

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    const v3, 0x7f0206fb

    invoke-virtual {v2, v3}, Landroid/view/View;->setBackgroundResource(I)V

    .line 106
    return-object v0
.end method

.method public onListItemClick(Landroid/widget/ListView;Landroid/view/View;IJ)V
    .locals 0
    .param p1, "l"    # Landroid/widget/ListView;
    .param p2, "v"    # Landroid/view/View;
    .param p3, "position"    # I
    .param p4, "id"    # J

    .prologue
    .line 285
    return-void
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 7
    .param p1, "item"    # Landroid/view/MenuItem;

    .prologue
    const/4 v4, 0x0

    const/4 v6, -0x1

    const/4 v3, 0x1

    .line 349
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v5

    sparse-switch v5, :sswitch_data_0

    move v3, v4

    .line 379
    :cond_0
    :goto_0
    return v3

    .line 351
    :sswitch_0
    invoke-virtual {p0}, Lcom/android/settings/fingerprint/FingerPrintManagerUI;->getActivity()Landroid/app/Activity;

    move-result-object v0

    .line 352
    .local v0, "activity":Landroid/app/Activity;
    invoke-virtual {v0, v4}, Landroid/app/Activity;->setResult(I)V

    .line 353
    invoke-virtual {v0}, Landroid/app/Activity;->finish()V

    goto :goto_0

    .line 356
    .end local v0    # "activity":Landroid/app/Activity;
    :sswitch_1
    const/4 v1, 0x0

    .line 357
    .local v1, "index":I
    const/4 v1, 0x1

    :goto_1
    const/4 v4, 0x3

    if-gt v1, v4, :cond_0

    .line 358
    iget v4, p0, Lcom/android/settings/fingerprint/FingerPrintManagerUI;->mEnrolledFingerStatus:I

    shl-int v5, v3, v1

    and-int/2addr v4, v5

    if-nez v4, :cond_2

    .line 359
    new-instance v4, Landroid/content/Intent;

    invoke-direct {v4}, Landroid/content/Intent;-><init>()V

    invoke-virtual {p0}, Lcom/android/settings/fingerprint/FingerPrintManagerUI;->getActivity()Landroid/app/Activity;

    move-result-object v5

    const-class v6, Lcom/android/settings/fingerprint/FingerprintDisclaimer;

    invoke-virtual {v4, v5, v6}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    move-result-object v2

    .line 361
    .local v2, "intent":Landroid/content/Intent;
    const-string v4, "fingerIndex"

    invoke-virtual {v2, v4, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 362
    const-string v4, "previousStage"

    iget-object v5, p0, Lcom/android/settings/fingerprint/FingerPrintManagerUI;->mPreviousStage:Ljava/lang/String;

    invoke-virtual {v2, v4, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 363
    iget v4, p0, Lcom/android/settings/fingerprint/FingerPrintManagerUI;->mEnrolledFingerCount:I

    if-nez v4, :cond_1

    .line 364
    const/16 v4, 0x3e8

    invoke-virtual {p0, v2, v4}, Lcom/android/settings/fingerprint/FingerPrintManagerUI;->startActivityForResult(Landroid/content/Intent;I)V

    goto :goto_0

    .line 366
    :cond_1
    const/16 v4, 0x3e9

    invoke-virtual {p0, v2, v4}, Lcom/android/settings/fingerprint/FingerPrintManagerUI;->startActivityForResult(Landroid/content/Intent;I)V

    goto :goto_0

    .line 357
    .end local v2    # "intent":Landroid/content/Intent;
    :cond_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 373
    .end local v1    # "index":I
    :sswitch_2
    const/4 v4, 0x2

    invoke-virtual {p0, v6, v4}, Lcom/android/settings/fingerprint/FingerPrintManagerUI;->startSelectListUI(II)V

    goto :goto_0

    .line 376
    :sswitch_3
    invoke-virtual {p0, v6, v3}, Lcom/android/settings/fingerprint/FingerPrintManagerUI;->startSelectListUI(II)V

    goto :goto_0

    .line 349
    :sswitch_data_0
    .sparse-switch
        0x1 -> :sswitch_1
        0x2 -> :sswitch_2
        0x3 -> :sswitch_3
        0x102002c -> :sswitch_0
    .end sparse-switch
.end method

.method public onResume()V
    .locals 4

    .prologue
    const/4 v0, 0x0

    .line 184
    iget-boolean v1, p0, Lcom/android/settings/fingerprint/FingerPrintManagerUI;->actionMode_animation:Z

    if-eqz v1, :cond_0

    .line 185
    invoke-virtual {p0}, Lcom/android/settings/fingerprint/FingerPrintManagerUI;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/view/Window;->setWindowAnimations(I)V

    .line 186
    iput-boolean v0, p0, Lcom/android/settings/fingerprint/FingerPrintManagerUI;->actionMode_animation:Z

    .line 188
    :cond_0
    iget-object v1, p0, Lcom/android/settings/fingerprint/FingerPrintManagerUI;->mFingerprintManager:Lcom/samsung/android/fingerprint/FingerprintManager;

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/android/settings/fingerprint/FingerPrintManagerUI;->mFingerprintManager:Lcom/samsung/android/fingerprint/FingerprintManager;

    invoke-virtual {v1}, Lcom/samsung/android/fingerprint/FingerprintManager;->isEnrolling()Z

    move-result v1

    if-nez v1, :cond_1

    .line 189
    invoke-virtual {p0}, Lcom/android/settings/fingerprint/FingerPrintManagerUI;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Activity;->finish()V

    .line 191
    :cond_1
    iget-object v1, p0, Lcom/android/settings/fingerprint/FingerPrintManagerUI;->mFingerprintManager:Lcom/samsung/android/fingerprint/FingerprintManager;

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/android/settings/fingerprint/FingerPrintManagerUI;->mFingerprintManager:Lcom/samsung/android/fingerprint/FingerprintManager;

    invoke-virtual {v1}, Lcom/samsung/android/fingerprint/FingerprintManager;->getEnrolledFingers()I

    move-result v0

    .line 192
    .local v0, "enrolledFingerStatus":I
    :cond_2
    const-string v1, "FingerPrintManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "[mFingerRegistedStatus] = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Lcom/android/settings/fingerprint/FingerPrintManagerUI;->mEnrolledFingerStatus:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 193
    const-string v1, "FingerPrintManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "[mEnrolledFingerCount] = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Lcom/android/settings/fingerprint/FingerPrintManagerUI;->mEnrolledFingerCount:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 194
    const-string v1, "FingerPrintManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "[enrolledFingerCount] = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 195
    iget v1, p0, Lcom/android/settings/fingerprint/FingerPrintManagerUI;->mEnrolledFingerStatus:I

    if-eq v1, v0, :cond_3

    .line 196
    invoke-virtual {p0}, Lcom/android/settings/fingerprint/FingerPrintManagerUI;->updateFingerList()V

    .line 197
    invoke-virtual {p0}, Lcom/android/settings/fingerprint/FingerPrintManagerUI;->updateOptionMenu()V

    .line 199
    :cond_3
    invoke-super {p0}, Landroid/app/ListFragment;->onResume()V

    .line 200
    return-void
.end method

.method public startSelectListUI(II)V
    .locals 7
    .param p1, "selectedIndex"    # I
    .param p2, "listMode"    # I

    .prologue
    const/4 v4, 0x0

    const v3, 0x7f0a0952

    const/4 v6, 0x0

    .line 268
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/settings/fingerprint/FingerPrintManagerUI;->actionMode_animation:Z

    .line 269
    new-instance v2, Landroid/os/Bundle;

    invoke-direct {v2}, Landroid/os/Bundle;-><init>()V

    .line 270
    .local v2, "args":Landroid/os/Bundle;
    const-string v0, "selectedindex"

    invoke-virtual {v2, v0, p1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 271
    const-string v0, "listmode"

    invoke-virtual {v2, v0, p2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 272
    invoke-virtual {p0}, Lcom/android/settings/fingerprint/FingerPrintManagerUI;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-static {v0}, Lcom/android/settings/Utils;->isTablet(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-static {}, Lcom/android/settings/Utils;->isSupportMyPlaceV2()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-static {}, Lcom/android/settings/Utils;->isSupportMenuTreeForK()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 273
    :cond_0
    invoke-virtual {p0}, Lcom/android/settings/fingerprint/FingerPrintManagerUI;->getActivity()Landroid/app/Activity;

    move-result-object v0

    check-cast v0, Lcom/android/settings/SettingsActivity;

    const-class v1, Lcom/android/settings/fingerprint/FingerPrintManagerListDelete;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    move-object v5, p0

    invoke-virtual/range {v0 .. v6}, Lcom/android/settings/SettingsActivity;->startPreferencePanel(Ljava/lang/String;Landroid/os/Bundle;ILjava/lang/CharSequence;Landroid/app/Fragment;I)V

    .line 279
    :goto_0
    return-void

    .line 276
    :cond_1
    invoke-virtual {p0}, Lcom/android/settings/fingerprint/FingerPrintManagerUI;->getActivity()Landroid/app/Activity;

    move-result-object v0

    check-cast v0, Lcom/android/settings/SettingsActivity;

    const-class v1, Lcom/android/settings/fingerprint/FingerPrintManagerListDeletenew;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    move-object v5, p0

    invoke-virtual/range {v0 .. v6}, Lcom/android/settings/SettingsActivity;->startPreferencePanel(Ljava/lang/String;Landroid/os/Bundle;ILjava/lang/CharSequence;Landroid/app/Fragment;I)V

    goto :goto_0
.end method

.method public updateFingerList()V
    .locals 9

    .prologue
    const v8, 0x7f0a1aae

    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 203
    invoke-virtual {p0}, Lcom/android/settings/fingerprint/FingerPrintManagerUI;->getListView()Landroid/widget/ListView;

    move-result-object v0

    sput-object v0, Lcom/android/settings/fingerprint/FingerPrintManagerUI;->mListView:Landroid/widget/ListView;

    .line 204
    sget-object v0, Lcom/android/settings/fingerprint/FingerPrintManagerUI;->mListView:Landroid/widget/ListView;

    invoke-virtual {p0}, Lcom/android/settings/fingerprint/FingerPrintManagerUI;->getView()Landroid/view/View;

    move-result-object v1

    const v2, 0x1020004

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setEmptyView(Landroid/view/View;)V

    .line 206
    iget-object v0, p0, Lcom/android/settings/fingerprint/FingerPrintManagerUI;->mFingerList:Ljava/util/ArrayList;

    if-nez v0, :cond_1

    .line 207
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/settings/fingerprint/FingerPrintManagerUI;->mFingerList:Ljava/util/ArrayList;

    .line 211
    :goto_0
    iget-object v0, p0, Lcom/android/settings/fingerprint/FingerPrintManagerUI;->mFingerprintManager:Lcom/samsung/android/fingerprint/FingerprintManager;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/android/settings/fingerprint/FingerPrintManagerUI;->mFingerprintManager:Lcom/samsung/android/fingerprint/FingerprintManager;

    invoke-virtual {v0}, Lcom/samsung/android/fingerprint/FingerprintManager;->getEnrolledFingers()I

    move-result v0

    :goto_1
    iput v0, p0, Lcom/android/settings/fingerprint/FingerPrintManagerUI;->mEnrolledFingerStatus:I

    .line 212
    iget v0, p0, Lcom/android/settings/fingerprint/FingerPrintManagerUI;->mEnrolledFingerStatus:I

    if-gt v0, v5, :cond_3

    .line 213
    iput v4, p0, Lcom/android/settings/fingerprint/FingerPrintManagerUI;->mEnrolledFingerCount:I

    .line 214
    iget-object v0, p0, Lcom/android/settings/fingerprint/FingerPrintManagerUI;->mFingerListAdapter:Lcom/android/settings/fingerprint/FingerPrintManagerUI$FingerListAdapter;

    if-eqz v0, :cond_0

    .line 215
    iget-object v0, p0, Lcom/android/settings/fingerprint/FingerPrintManagerUI;->mFingerListAdapter:Lcom/android/settings/fingerprint/FingerPrintManagerUI$FingerListAdapter;

    invoke-virtual {v0}, Lcom/android/settings/fingerprint/FingerPrintManagerUI$FingerListAdapter;->notifyDataSetChanged()V

    .line 248
    :cond_0
    :goto_2
    return-void

    .line 209
    :cond_1
    iget-object v0, p0, Lcom/android/settings/fingerprint/FingerPrintManagerUI;->mFingerList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    goto :goto_0

    :cond_2
    move v0, v4

    .line 211
    goto :goto_1

    .line 220
    :cond_3
    iput v4, p0, Lcom/android/settings/fingerprint/FingerPrintManagerUI;->mEnrolledFingerCount:I

    .line 221
    const/4 v6, 0x0

    .line 222
    .local v6, "fingername":Ljava/lang/String;
    const/4 v7, 0x1

    .local v7, "index":I
    :goto_3
    const/4 v0, 0x3

    if-gt v7, v0, :cond_6

    .line 223
    iget v0, p0, Lcom/android/settings/fingerprint/FingerPrintManagerUI;->mEnrolledFingerStatus:I

    shl-int v1, v5, v7

    and-int/2addr v0, v1

    if-eqz v0, :cond_4

    .line 224
    iget-object v0, p0, Lcom/android/settings/fingerprint/FingerPrintManagerUI;->mFingerprintManager:Lcom/samsung/android/fingerprint/FingerprintManager;

    invoke-virtual {v0, v7}, Lcom/samsung/android/fingerprint/FingerprintManager;->getIndexName(I)Ljava/lang/String;

    move-result-object v6

    .line 225
    if-eqz v6, :cond_5

    .line 226
    iget-object v0, p0, Lcom/android/settings/fingerprint/FingerPrintManagerUI;->mFingerList:Ljava/util/ArrayList;

    invoke-virtual {v0, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 227
    iget-object v0, p0, Lcom/android/settings/fingerprint/FingerPrintManagerUI;->mFingerprintManager:Lcom/samsung/android/fingerprint/FingerprintManager;

    invoke-virtual {v0, v7, v6}, Lcom/samsung/android/fingerprint/FingerprintManager;->setIndexName(ILjava/lang/String;)Z

    .line 234
    :goto_4
    iget v0, p0, Lcom/android/settings/fingerprint/FingerPrintManagerUI;->mEnrolledFingerCount:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/android/settings/fingerprint/FingerPrintManagerUI;->mEnrolledFingerCount:I

    .line 222
    :cond_4
    add-int/lit8 v7, v7, 0x1

    goto :goto_3

    .line 230
    :cond_5
    iget-object v0, p0, Lcom/android/settings/fingerprint/FingerPrintManagerUI;->mFingerList:Ljava/util/ArrayList;

    invoke-virtual {p0}, Lcom/android/settings/fingerprint/FingerPrintManagerUI;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, v8}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    new-array v2, v5, [Ljava/lang/Object;

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v2, v4

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 231
    iget-object v0, p0, Lcom/android/settings/fingerprint/FingerPrintManagerUI;->mFingerprintManager:Lcom/samsung/android/fingerprint/FingerprintManager;

    invoke-virtual {p0}, Lcom/android/settings/fingerprint/FingerPrintManagerUI;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, v8}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    new-array v2, v5, [Ljava/lang/Object;

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v2, v4

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v7, v1}, Lcom/samsung/android/fingerprint/FingerprintManager;->setIndexName(ILjava/lang/String;)Z

    goto :goto_4

    .line 239
    :cond_6
    new-instance v0, Lcom/android/settings/fingerprint/FingerPrintManagerUI$FingerListAdapter;

    invoke-virtual {p0}, Lcom/android/settings/fingerprint/FingerPrintManagerUI;->getActivity()Landroid/app/Activity;

    move-result-object v2

    const v3, 0x7f0400c3

    iget-object v5, p0, Lcom/android/settings/fingerprint/FingerPrintManagerUI;->mFingerList:Ljava/util/ArrayList;

    move-object v1, p0

    invoke-direct/range {v0 .. v5}, Lcom/android/settings/fingerprint/FingerPrintManagerUI$FingerListAdapter;-><init>(Lcom/android/settings/fingerprint/FingerPrintManagerUI;Landroid/content/Context;IILjava/util/List;)V

    iput-object v0, p0, Lcom/android/settings/fingerprint/FingerPrintManagerUI;->mFingerListAdapter:Lcom/android/settings/fingerprint/FingerPrintManagerUI$FingerListAdapter;

    .line 240
    sget-object v0, Lcom/android/settings/fingerprint/FingerPrintManagerUI;->mListView:Landroid/widget/ListView;

    iget-object v1, p0, Lcom/android/settings/fingerprint/FingerPrintManagerUI;->mFingerListAdapter:Lcom/android/settings/fingerprint/FingerPrintManagerUI$FingerListAdapter;

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 241
    sget-object v0, Lcom/android/settings/fingerprint/FingerPrintManagerUI;->mListView:Landroid/widget/ListView;

    new-instance v1, Lcom/android/settings/fingerprint/FingerPrintManagerUI$ItemLongClickListener;

    invoke-direct {v1, p0}, Lcom/android/settings/fingerprint/FingerPrintManagerUI$ItemLongClickListener;-><init>(Lcom/android/settings/fingerprint/FingerPrintManagerUI;)V

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setOnItemLongClickListener(Landroid/widget/AdapterView$OnItemLongClickListener;)V

    .line 243
    iget-object v0, p0, Lcom/android/settings/fingerprint/FingerPrintManagerUI;->mFingerListAdapter:Lcom/android/settings/fingerprint/FingerPrintManagerUI$FingerListAdapter;

    invoke-virtual {v0}, Lcom/android/settings/fingerprint/FingerPrintManagerUI$FingerListAdapter;->notifyDataSetChanged()V

    .line 246
    const-string v0, "FingerPrintManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[mFingerRegistedStatus] = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/android/settings/fingerprint/FingerPrintManagerUI;->mEnrolledFingerStatus:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 247
    const-string v0, "FingerPrintManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[mEnrolledFingerCount] = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/android/settings/fingerprint/FingerPrintManagerUI;->mEnrolledFingerCount:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_2
.end method

.method public updateOptionMenu()V
    .locals 6

    .prologue
    const/4 v5, 0x3

    const/4 v4, 0x2

    const/4 v3, 0x0

    const/4 v2, 0x1

    .line 288
    iget-object v0, p0, Lcom/android/settings/fingerprint/FingerPrintManagerUI;->mOptionsMenu:Landroid/view/Menu;

    if-nez v0, :cond_1

    .line 309
    :cond_0
    :goto_0
    return-void

    .line 290
    :cond_1
    iget v0, p0, Lcom/android/settings/fingerprint/FingerPrintManagerUI;->mEnrolledFingerCount:I

    if-ne v0, v5, :cond_2

    .line 291
    iget-object v0, p0, Lcom/android/settings/fingerprint/FingerPrintManagerUI;->mOptionsMenu:Landroid/view/Menu;

    invoke-interface {v0, v2}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v0

    const v1, 0x7f020222

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    move-result-object v0

    invoke-interface {v0, v3}, Landroid/view/MenuItem;->setEnabled(Z)Landroid/view/MenuItem;

    .line 292
    iget-object v0, p0, Lcom/android/settings/fingerprint/FingerPrintManagerUI;->mOptionsMenu:Landroid/view/Menu;

    invoke-interface {v0, v2}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v0

    invoke-interface {v0, v3}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 298
    :goto_1
    iget v0, p0, Lcom/android/settings/fingerprint/FingerPrintManagerUI;->mEnrolledFingerCount:I

    if-nez v0, :cond_3

    .line 299
    iget-object v0, p0, Lcom/android/settings/fingerprint/FingerPrintManagerUI;->mOptionsMenu:Landroid/view/Menu;

    invoke-interface {v0, v4}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v0

    invoke-interface {v0, v3}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 300
    iget-object v0, p0, Lcom/android/settings/fingerprint/FingerPrintManagerUI;->mOptionsMenu:Landroid/view/Menu;

    invoke-interface {v0, v5}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v0

    invoke-interface {v0, v3}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 306
    :goto_2
    invoke-static {}, Lcom/android/settings/Utils;->isGridSimpleMenuEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 307
    iget-object v0, p0, Lcom/android/settings/fingerprint/FingerPrintManagerUI;->mOptionsMenu:Landroid/view/Menu;

    invoke-interface {v0, v4}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v0

    invoke-interface {v0, v3}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    goto :goto_0

    .line 294
    :cond_2
    iget-object v0, p0, Lcom/android/settings/fingerprint/FingerPrintManagerUI;->mOptionsMenu:Landroid/view/Menu;

    invoke-interface {v0, v2}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v0

    const v1, 0x7f020221

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    move-result-object v0

    invoke-interface {v0, v2}, Landroid/view/MenuItem;->setEnabled(Z)Landroid/view/MenuItem;

    .line 295
    iget-object v0, p0, Lcom/android/settings/fingerprint/FingerPrintManagerUI;->mOptionsMenu:Landroid/view/Menu;

    invoke-interface {v0, v2}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v0

    invoke-interface {v0, v2}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    goto :goto_1

    .line 303
    :cond_3
    iget-object v0, p0, Lcom/android/settings/fingerprint/FingerPrintManagerUI;->mOptionsMenu:Landroid/view/Menu;

    invoke-interface {v0, v4}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v0

    invoke-interface {v0, v2}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 304
    iget-object v0, p0, Lcom/android/settings/fingerprint/FingerPrintManagerUI;->mOptionsMenu:Landroid/view/Menu;

    invoke-interface {v0, v5}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v0

    invoke-interface {v0, v2}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    goto :goto_2
.end method
