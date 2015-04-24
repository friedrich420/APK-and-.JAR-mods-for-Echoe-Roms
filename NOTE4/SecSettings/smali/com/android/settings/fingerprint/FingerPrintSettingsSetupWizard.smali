.class public Lcom/android/settings/fingerprint/FingerPrintSettingsSetupWizard;
.super Landroid/app/Activity;
.source "FingerPrintSettingsSetupWizard.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field private mFingerprintManager:Lcom/samsung/android/fingerprint/FingerprintManager;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 23
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    return-void
.end method

.method private setIndicatorTransparency()V
    .locals 4

    .prologue
    .line 179
    const/16 v0, 0x400

    .line 180
    .local v0, "visibility":I
    invoke-virtual {p0}, Lcom/android/settings/fingerprint/FingerPrintSettingsSetupWizard;->getWindow()Landroid/view/Window;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v2

    invoke-virtual {v2, v0}, Landroid/view/View;->setSystemUiVisibility(I)V

    .line 182
    invoke-virtual {p0}, Lcom/android/settings/fingerprint/FingerPrintSettingsSetupWizard;->getWindow()Landroid/view/Window;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v1

    .line 183
    .local v1, "wmLp":Landroid/view/WindowManager$LayoutParams;
    iget v2, v1, Landroid/view/WindowManager$LayoutParams;->flags:I

    const v3, 0x4000c00

    or-int/2addr v2, v3

    iput v2, v1, Landroid/view/WindowManager$LayoutParams;->flags:I

    .line 185
    return-void
.end method

.method private showSensorErrorDialog()V
    .locals 4

    .prologue
    .line 133
    iget-object v1, p0, Lcom/android/settings/fingerprint/FingerPrintSettingsSetupWizard;->mFingerprintManager:Lcom/samsung/android/fingerprint/FingerprintManager;

    invoke-virtual {v1}, Lcom/samsung/android/fingerprint/FingerprintManager;->notifyEnrollEnd()Z

    .line 134
    new-instance v1, Landroid/app/AlertDialog$Builder;

    invoke-direct {v1, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v2, 0x7f0a1afd

    invoke-virtual {v1, v2}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    invoke-virtual {p0}, Lcom/android/settings/fingerprint/FingerPrintSettingsSetupWizard;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0a1b06

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    const v2, 0x104000a

    new-instance v3, Lcom/android/settings/fingerprint/FingerPrintSettingsSetupWizard$1;

    invoke-direct {v3, p0}, Lcom/android/settings/fingerprint/FingerPrintSettingsSetupWizard$1;-><init>(Lcom/android/settings/fingerprint/FingerPrintSettingsSetupWizard;)V

    invoke-virtual {v1, v2, v3}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    .line 144
    .local v0, "dialog":Landroid/app/AlertDialog;
    invoke-virtual {v0}, Landroid/app/AlertDialog;->show()V

    .line 145
    return-void
.end method


# virtual methods
.method public makeFingerPrintDescString()Ljava/lang/String;
    .locals 3

    .prologue
    .line 75
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const v1, 0x7f0a1b1a

    invoke-virtual {p0, v1}, Lcom/android/settings/fingerprint/FingerPrintSettingsSetupWizard;->getText(I)Ljava/lang/CharSequence;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\n\n"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 76
    .local v0, "s":Ljava/lang/String;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "- "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const v2, 0x7f0a1a94

    invoke-virtual {p0, v2}, Lcom/android/settings/fingerprint/FingerPrintSettingsSetupWizard;->getText(I)Ljava/lang/CharSequence;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\n"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 77
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "- "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const v2, 0x7f0a1ac2

    invoke-virtual {p0, v2}, Lcom/android/settings/fingerprint/FingerPrintSettingsSetupWizard;->getText(I)Ljava/lang/CharSequence;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\n"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 79
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "- "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const v2, 0x7f0a1ac9

    invoke-virtual {p0, v2}, Lcom/android/settings/fingerprint/FingerPrintSettingsSetupWizard;->getText(I)Ljava/lang/CharSequence;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\n"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 81
    return-object v0
.end method

.method public makeFingerPrintMenuPathString()Ljava/lang/String;
    .locals 8

    .prologue
    .line 87
    const v5, 0x7f0a01d7

    invoke-virtual {p0, v5}, Lcom/android/settings/fingerprint/FingerPrintSettingsSetupWizard;->getText(I)Ljava/lang/CharSequence;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 88
    .local v0, "path1":Ljava/lang/String;
    const v5, 0x7f0a19f9

    invoke-virtual {p0, v5}, Lcom/android/settings/fingerprint/FingerPrintSettingsSetupWizard;->getText(I)Ljava/lang/CharSequence;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 89
    .local v1, "path2":Ljava/lang/String;
    const v5, 0x7f0a1a8b

    invoke-virtual {p0, v5}, Lcom/android/settings/fingerprint/FingerPrintSettingsSetupWizard;->getText(I)Ljava/lang/CharSequence;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 90
    .local v2, "path3":Ljava/lang/String;
    invoke-virtual {p0}, Lcom/android/settings/fingerprint/FingerPrintSettingsSetupWizard;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v6, 0x7f0a1b1b

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v4

    .line 92
    .local v4, "templ":Ljava/lang/String;
    const/4 v5, 0x3

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v6, 0x0

    aput-object v0, v5, v6

    const/4 v6, 0x1

    invoke-virtual {v1}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v7

    aput-object v7, v5, v6

    const/4 v6, 0x2

    aput-object v2, v5, v6

    invoke-static {v4, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    .line 94
    .local v3, "s":Ljava/lang/String;
    return-object v3
.end method

.method protected onActivityResult(IILandroid/content/Intent;)V
    .locals 5
    .param p1, "requestCode"    # I
    .param p2, "resultCode"    # I
    .param p3, "data"    # Landroid/content/Intent;

    .prologue
    const/4 v4, -0x1

    .line 151
    invoke-super {p0, p1, p2, p3}, Landroid/app/Activity;->onActivityResult(IILandroid/content/Intent;)V

    .line 152
    const-string v1, "FingerPrintSettingsSetupWizard"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "resultCode : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 154
    iget-object v1, p0, Lcom/android/settings/fingerprint/FingerPrintSettingsSetupWizard;->mFingerprintManager:Lcom/samsung/android/fingerprint/FingerprintManager;

    invoke-virtual {v1}, Lcom/samsung/android/fingerprint/FingerprintManager;->isEnrolling()Z

    move-result v1

    const/4 v2, 0x1

    if-ne v1, v2, :cond_0

    .line 155
    iget-object v1, p0, Lcom/android/settings/fingerprint/FingerPrintSettingsSetupWizard;->mFingerprintManager:Lcom/samsung/android/fingerprint/FingerprintManager;

    invoke-virtual {v1}, Lcom/samsung/android/fingerprint/FingerprintManager;->notifyEnrollEnd()Z

    .line 156
    const-string v1, "FingerPrintSettingsSetupWizard"

    const-string v2, "notifyEnrollEnd() is called!"

    invoke-static {v1, v2}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 159
    :cond_0
    sparse-switch p1, :sswitch_data_0

    .line 174
    :cond_1
    :goto_0
    return-void

    .line 161
    :sswitch_0
    if-ne p2, v4, :cond_1

    .line 162
    new-instance v0, Landroid/content/Intent;

    invoke-virtual {p0}, Lcom/android/settings/fingerprint/FingerPrintSettingsSetupWizard;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    const-class v2, Lcom/android/settings/fingerprint/FingerPrintSettingsUseFingerprint;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 163
    .local v0, "i":Landroid/content/Intent;
    const/16 v1, 0x7d1

    invoke-virtual {p0, v0, v1}, Lcom/android/settings/fingerprint/FingerPrintSettingsSetupWizard;->startActivityForResult(Landroid/content/Intent;I)V

    goto :goto_0

    .line 167
    .end local v0    # "i":Landroid/content/Intent;
    :sswitch_1
    if-ne p2, v4, :cond_1

    .line 168
    invoke-virtual {p0, v4}, Lcom/android/settings/fingerprint/FingerPrintSettingsSetupWizard;->setResult(I)V

    .line 169
    invoke-virtual {p0}, Lcom/android/settings/fingerprint/FingerPrintSettingsSetupWizard;->finish()V

    goto :goto_0

    .line 159
    nop

    :sswitch_data_0
    .sparse-switch
        0x3e9 -> :sswitch_0
        0x7d1 -> :sswitch_1
    .end sparse-switch
.end method

.method public onClick(Landroid/view/View;)V
    .locals 3
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 102
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v1

    sparse-switch v1, :sswitch_data_0

    .line 130
    :goto_0
    return-void

    .line 105
    :sswitch_0
    const/4 v1, 0x7

    invoke-virtual {p0, v1}, Lcom/android/settings/fingerprint/FingerPrintSettingsSetupWizard;->setResult(I)V

    .line 106
    invoke-virtual {p0}, Lcom/android/settings/fingerprint/FingerPrintSettingsSetupWizard;->finish()V

    goto :goto_0

    .line 109
    :sswitch_1
    iget-object v1, p0, Lcom/android/settings/fingerprint/FingerPrintSettingsSetupWizard;->mFingerprintManager:Lcom/samsung/android/fingerprint/FingerprintManager;

    invoke-virtual {v1}, Lcom/samsung/android/fingerprint/FingerprintManager;->notifyEnrollBegin()Z

    move-result v1

    if-nez v1, :cond_0

    .line 110
    const-string v1, "FingerPrintSettingsSetupWizard"

    const-string v2, "notifyEnrollBegin() is failed!"

    invoke-static {v1, v2}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 111
    invoke-direct {p0}, Lcom/android/settings/fingerprint/FingerPrintSettingsSetupWizard;->showSensorErrorDialog()V

    goto :goto_0

    .line 113
    :cond_0
    const-string v1, "FingerPrintSettingsSetupWizard"

    const-string v2, "notifyEnrollBegin() is success!"

    invoke-static {v1, v2}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 115
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 116
    .local v0, "fingerIntent":Landroid/content/Intent;
    invoke-static {}, Lcom/samsung/android/fingerprint/FingerprintManager;->getSensorType()I

    move-result v1

    const/4 v2, 0x2

    if-ne v1, v2, :cond_1

    .line 117
    const-string v1, "com.android.settings"

    const-string v2, "com.android.settings.fingerprint.RegisterTouchFingerprint.class"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 121
    :goto_1
    const-string v1, "fingerIndex"

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 122
    const-string v1, "previousStage"

    const-string v2, "SetupWizard"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 123
    const/16 v1, 0x3e9

    invoke-virtual {p0, v0, v1}, Lcom/android/settings/fingerprint/FingerPrintSettingsSetupWizard;->startActivityForResult(Landroid/content/Intent;I)V

    goto :goto_0

    .line 119
    :cond_1
    const-string v1, "com.android.settings"

    const-string v2, "com.android.settings.fingerprint.RegisterFingerprint"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    goto :goto_1

    .line 102
    :sswitch_data_0
    .sparse-switch
        0x7f10001a -> :sswitch_0
        0x7f1001d6 -> :sswitch_1
    .end sparse-switch
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 5
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 36
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 37
    invoke-virtual {p0}, Lcom/android/settings/fingerprint/FingerPrintSettingsSetupWizard;->getActionBar()Landroid/app/ActionBar;

    move-result-object v4

    if-eqz v4, :cond_0

    .line 38
    invoke-virtual {p0}, Lcom/android/settings/fingerprint/FingerPrintSettingsSetupWizard;->getActionBar()Landroid/app/ActionBar;

    move-result-object v4

    invoke-virtual {v4}, Landroid/app/ActionBar;->hide()V

    .line 41
    :cond_0
    const v4, 0x7f0400bc

    invoke-virtual {p0, v4}, Lcom/android/settings/fingerprint/FingerPrintSettingsSetupWizard;->setContentView(I)V

    .line 42
    const/4 v4, 0x2

    invoke-static {p0, v4}, Lcom/samsung/android/fingerprint/FingerprintManager;->getInstance(Landroid/content/Context;I)Lcom/samsung/android/fingerprint/FingerprintManager;

    move-result-object v4

    iput-object v4, p0, Lcom/android/settings/fingerprint/FingerPrintSettingsSetupWizard;->mFingerprintManager:Lcom/samsung/android/fingerprint/FingerprintManager;

    .line 44
    const v4, 0x7f10001a

    invoke-virtual {p0, v4}, Lcom/android/settings/fingerprint/FingerPrintSettingsSetupWizard;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 45
    .local v0, "button":Landroid/view/View;
    const v4, 0x7f1001d6

    invoke-virtual {p0, v4}, Lcom/android/settings/fingerprint/FingerPrintSettingsSetupWizard;->findViewById(I)Landroid/view/View;

    move-result-object v1

    .line 46
    .local v1, "button_finger":Landroid/view/View;
    const v4, 0x7f1001d8

    invoke-virtual {p0, v4}, Lcom/android/settings/fingerprint/FingerPrintSettingsSetupWizard;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    .line 47
    .local v2, "tv_desc":Landroid/widget/TextView;
    const v4, 0x7f1001d9

    invoke-virtual {p0, v4}, Lcom/android/settings/fingerprint/FingerPrintSettingsSetupWizard;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    .line 48
    .local v3, "tv_menu_path":Landroid/widget/TextView;
    invoke-virtual {p0}, Lcom/android/settings/fingerprint/FingerPrintSettingsSetupWizard;->makeFingerPrintDescString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 49
    invoke-virtual {p0}, Lcom/android/settings/fingerprint/FingerPrintSettingsSetupWizard;->makeFingerPrintMenuPathString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 50
    invoke-virtual {v0, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 51
    invoke-virtual {v1, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 53
    invoke-static {}, Lcom/android/settings/Utils;->isVideoSequenceModel()Z

    move-result v4

    if-eqz v4, :cond_1

    .line 54
    invoke-direct {p0}, Lcom/android/settings/fingerprint/FingerPrintSettingsSetupWizard;->setIndicatorTransparency()V

    .line 56
    :cond_1
    return-void
.end method

.method public onResume()V
    .locals 2

    .prologue
    .line 61
    invoke-super {p0}, Landroid/app/Activity;->onResume()V

    .line 62
    const-string v0, "FingerPrintSettingsSetupWizard"

    const-string v1, "onResume"

    invoke-static {v0, v1}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 64
    iget-object v0, p0, Lcom/android/settings/fingerprint/FingerPrintSettingsSetupWizard;->mFingerprintManager:Lcom/samsung/android/fingerprint/FingerprintManager;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/settings/fingerprint/FingerPrintSettingsSetupWizard;->mFingerprintManager:Lcom/samsung/android/fingerprint/FingerprintManager;

    invoke-virtual {v0}, Lcom/samsung/android/fingerprint/FingerprintManager;->getEnrolledFingers()I

    move-result v0

    if-eqz v0, :cond_0

    .line 65
    const-string v0, "FingerPrintSettingsSetupWizard"

    const-string v1, "Finger already registered so skip FingerPrint setupwizard"

    invoke-static {v0, v1}, Landroid/util/secutil/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 66
    const/4 v0, -0x1

    invoke-virtual {p0, v0}, Lcom/android/settings/fingerprint/FingerPrintSettingsSetupWizard;->setResult(I)V

    .line 67
    invoke-virtual {p0}, Lcom/android/settings/fingerprint/FingerPrintSettingsSetupWizard;->finish()V

    .line 70
    :cond_0
    return-void
.end method
