.class public Lcom/android/settings/fingerprint/FingerprintWebsignin;
.super Landroid/app/Fragment;
.source "FingerprintWebsignin.java"

# interfaces
.implements Landroid/widget/CompoundButton$OnCheckedChangeListener;


# instance fields
.field private mActionBarLayout:Landroid/view/View;

.field private mActionBarSwitch:Landroid/widget/Switch;

.field private mContext:Landroid/content/Context;

.field private mFingerprintManager:Lcom/samsung/android/fingerprint/FingerprintManager;

.field private mMessage:Landroid/widget/TextView;

.field private mPreviousStage:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 23
    invoke-direct {p0}, Landroid/app/Fragment;-><init>()V

    .line 33
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/settings/fingerprint/FingerprintWebsignin;->mActionBarSwitch:Landroid/widget/Switch;

    .line 35
    const-string v0, ""

    iput-object v0, p0, Lcom/android/settings/fingerprint/FingerprintWebsignin;->mPreviousStage:Ljava/lang/String;

    return-void
.end method

.method private getFingerprintVerification()Z
    .locals 4

    .prologue
    const/4 v1, 0x0

    .line 210
    const/4 v0, 0x0

    .line 211
    .local v0, "result":Z
    iget-object v2, p0, Lcom/android/settings/fingerprint/FingerprintWebsignin;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "fingerprint_webpass"

    invoke-static {v2, v3, v1}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v2

    if-eqz v2, :cond_0

    const/4 v0, 0x1

    .line 213
    :goto_0
    return v0

    :cond_0
    move v0, v1

    .line 211
    goto :goto_0
.end method

.method private setFingerprintVerification(Z)V
    .locals 3
    .param p1, "value"    # Z

    .prologue
    .line 217
    iget-object v0, p0, Lcom/android/settings/fingerprint/FingerprintWebsignin;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "fingerprint_webpass"

    if-eqz p1, :cond_0

    const/4 v0, 0x1

    :goto_0
    invoke-static {v1, v2, v0}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 218
    return-void

    .line 217
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private showSensorErrorDialog()V
    .locals 4

    .prologue
    .line 188
    new-instance v1, Landroid/app/AlertDialog$Builder;

    invoke-virtual {p0}, Lcom/android/settings/fingerprint/FingerprintWebsignin;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v2, 0x7f0a1afd

    invoke-virtual {v1, v2}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    const v2, 0x7f0a1b06

    invoke-virtual {v1, v2}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    const v2, 0x104000a

    new-instance v3, Lcom/android/settings/fingerprint/FingerprintWebsignin$1;

    invoke-direct {v3, p0}, Lcom/android/settings/fingerprint/FingerprintWebsignin$1;-><init>(Lcom/android/settings/fingerprint/FingerprintWebsignin;)V

    invoke-virtual {v1, v2, v3}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    .line 198
    .local v0, "dialog":Landroid/app/AlertDialog;
    invoke-virtual {v0}, Landroid/app/AlertDialog;->show()V

    .line 199
    return-void
.end method


# virtual methods
.method public onActivityResult(IILandroid/content/Intent;)V
    .locals 5
    .param p1, "requestCode"    # I
    .param p2, "resultCode"    # I
    .param p3, "data"    # Landroid/content/Intent;

    .prologue
    const/4 v4, 0x1

    .line 42
    invoke-super {p0, p1, p2, p3}, Landroid/app/Fragment;->onActivityResult(IILandroid/content/Intent;)V

    .line 44
    const-string v1, "FingerprintWebsignin"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "onActivityResult : requestCode : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " resultCode : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 46
    const/16 v1, 0x3e8

    if-ne p1, v1, :cond_0

    .line 47
    const/4 v1, -0x1

    if-ne p2, v1, :cond_0

    .line 49
    const/4 v1, 0x1

    :try_start_0
    invoke-direct {p0, v1}, Lcom/android/settings/fingerprint/FingerprintWebsignin;->setFingerprintVerification(Z)V
    :try_end_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0

    .line 56
    :cond_0
    :goto_0
    iget-object v1, p0, Lcom/android/settings/fingerprint/FingerprintWebsignin;->mFingerprintManager:Lcom/samsung/android/fingerprint/FingerprintManager;

    invoke-virtual {v1}, Lcom/samsung/android/fingerprint/FingerprintManager;->isEnrolling()Z

    move-result v1

    if-ne v1, v4, :cond_1

    .line 57
    iget-object v1, p0, Lcom/android/settings/fingerprint/FingerprintWebsignin;->mFingerprintManager:Lcom/samsung/android/fingerprint/FingerprintManager;

    invoke-virtual {v1}, Lcom/samsung/android/fingerprint/FingerprintManager;->notifyEnrollEnd()Z

    .line 60
    :cond_1
    return-void

    .line 50
    :catch_0
    move-exception v0

    .line 51
    .local v0, "e":Ljava/lang/NullPointerException;
    const-string v1, "FingerprintWebsignin"

    const-string v2, "data is null!!"

    invoke-static {v1, v2}, Landroid/util/secutil/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public onCheckedChanged(Landroid/widget/CompoundButton;Z)V
    .locals 5
    .param p1, "buttonView"    # Landroid/widget/CompoundButton;
    .param p2, "desiredState"    # Z

    .prologue
    const/4 v4, 0x1

    .line 152
    const-string v1, "FingerprintWebsignin"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "onCheckedChanged [mPreviousStage] ="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/android/settings/fingerprint/FingerprintWebsignin;->mPreviousStage:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "desiredState :"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 154
    if-ne p2, v4, :cond_1

    iget-object v1, p0, Lcom/android/settings/fingerprint/FingerprintWebsignin;->mFingerprintManager:Lcom/samsung/android/fingerprint/FingerprintManager;

    invoke-virtual {v1}, Lcom/samsung/android/fingerprint/FingerprintManager;->getEnrolledFingers()I

    move-result v1

    if-nez v1, :cond_1

    .line 155
    iget-object v1, p0, Lcom/android/settings/fingerprint/FingerprintWebsignin;->mFingerprintManager:Lcom/samsung/android/fingerprint/FingerprintManager;

    invoke-virtual {v1}, Lcom/samsung/android/fingerprint/FingerprintManager;->notifyEnrollBegin()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 156
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 157
    .local v0, "mIntent":Landroid/content/Intent;
    const-string v1, "com.android.settings"

    const-string v2, "com.android.settings.fingerprint.FingerprintDisclaimer"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 158
    const-string v1, "fingerIndex"

    invoke-virtual {v0, v1, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 159
    const-string v1, "previousStage"

    iget-object v2, p0, Lcom/android/settings/fingerprint/FingerprintWebsignin;->mPreviousStage:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 160
    const/16 v1, 0x3e8

    invoke-virtual {p0, v0, v1}, Lcom/android/settings/fingerprint/FingerprintWebsignin;->startActivityForResult(Landroid/content/Intent;I)V

    .line 168
    .end local v0    # "mIntent":Landroid/content/Intent;
    :goto_0
    return-void

    .line 162
    :cond_0
    invoke-direct {p0}, Lcom/android/settings/fingerprint/FingerprintWebsignin;->showSensorErrorDialog()V

    goto :goto_0

    .line 165
    :cond_1
    invoke-direct {p0, p2}, Lcom/android/settings/fingerprint/FingerprintWebsignin;->setFingerprintVerification(Z)V

    .line 166
    iget-object v1, p0, Lcom/android/settings/fingerprint/FingerprintWebsignin;->mActionBarSwitch:Landroid/widget/Switch;

    invoke-virtual {v1, p2}, Landroid/widget/Switch;->setChecked(Z)V

    goto :goto_0
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 8
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    const/16 v6, 0x10

    const/4 v7, -0x2

    const/4 v5, 0x0

    .line 65
    invoke-super {p0, p1}, Landroid/app/Fragment;->onCreate(Landroid/os/Bundle;)V

    .line 66
    invoke-virtual {p0}, Lcom/android/settings/fingerprint/FingerprintWebsignin;->getActivity()Landroid/app/Activity;

    move-result-object v3

    iput-object v3, p0, Lcom/android/settings/fingerprint/FingerprintWebsignin;->mContext:Landroid/content/Context;

    .line 67
    invoke-virtual {p0}, Lcom/android/settings/fingerprint/FingerprintWebsignin;->getActivity()Landroid/app/Activity;

    move-result-object v3

    const/4 v4, 0x2

    invoke-static {v3, v4}, Lcom/samsung/android/fingerprint/FingerprintManager;->getInstance(Landroid/content/Context;I)Lcom/samsung/android/fingerprint/FingerprintManager;

    move-result-object v3

    iput-object v3, p0, Lcom/android/settings/fingerprint/FingerprintWebsignin;->mFingerprintManager:Lcom/samsung/android/fingerprint/FingerprintManager;

    .line 69
    invoke-virtual {p0}, Lcom/android/settings/fingerprint/FingerprintWebsignin;->getActivity()Landroid/app/Activity;

    move-result-object v0

    .line 70
    .local v0, "activity":Landroid/app/Activity;
    new-instance v3, Landroid/widget/Switch;

    invoke-direct {v3, v0}, Landroid/widget/Switch;-><init>(Landroid/content/Context;)V

    iput-object v3, p0, Lcom/android/settings/fingerprint/FingerprintWebsignin;->mActionBarSwitch:Landroid/widget/Switch;

    .line 72
    invoke-virtual {p0}, Lcom/android/settings/fingerprint/FingerprintWebsignin;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f0f0058

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    .line 73
    .local v2, "padding":I
    iget-object v3, p0, Lcom/android/settings/fingerprint/FingerprintWebsignin;->mActionBarSwitch:Landroid/widget/Switch;

    invoke-virtual {v3, v5, v5, v2, v5}, Landroid/widget/Switch;->setPadding(IIII)V

    .line 74
    invoke-virtual {v0}, Landroid/app/Activity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v3

    invoke-virtual {v3, v6, v6}, Landroid/app/ActionBar;->setDisplayOptions(II)V

    .line 76
    invoke-virtual {v0}, Landroid/app/Activity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v3

    iget-object v4, p0, Lcom/android/settings/fingerprint/FingerprintWebsignin;->mActionBarSwitch:Landroid/widget/Switch;

    new-instance v5, Landroid/app/ActionBar$LayoutParams;

    const/16 v6, 0x15

    invoke-direct {v5, v7, v7, v6}, Landroid/app/ActionBar$LayoutParams;-><init>(III)V

    invoke-virtual {v3, v4, v5}, Landroid/app/ActionBar;->setCustomView(Landroid/view/View;Landroid/app/ActionBar$LayoutParams;)V

    .line 81
    invoke-virtual {v0}, Landroid/app/Activity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v3

    invoke-virtual {v3}, Landroid/app/ActionBar;->getCustomView()Landroid/view/View;

    move-result-object v3

    iput-object v3, p0, Lcom/android/settings/fingerprint/FingerprintWebsignin;->mActionBarLayout:Landroid/view/View;

    .line 84
    invoke-virtual {p0}, Lcom/android/settings/fingerprint/FingerprintWebsignin;->getArguments()Landroid/os/Bundle;

    move-result-object v1

    .line 85
    .local v1, "arguments":Landroid/os/Bundle;
    if-eqz v1, :cond_0

    .line 86
    const-string v3, "previousStage"

    invoke-virtual {v1, v3}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lcom/android/settings/fingerprint/FingerprintWebsignin;->mPreviousStage:Ljava/lang/String;

    .line 89
    :cond_0
    const-string v3, "FingerprintWebsignin"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "[mPreviousStage] = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/android/settings/fingerprint/FingerprintWebsignin;->mPreviousStage:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/secutil/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 90
    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 6
    .param p1, "inflater"    # Landroid/view/LayoutInflater;
    .param p2, "container"    # Landroid/view/ViewGroup;
    .param p3, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    const v5, 0x7f0a1ac1

    .line 94
    const v2, 0x7f0400ca

    const/4 v3, 0x0

    invoke-virtual {p1, v2, p2, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    .line 96
    .local v0, "view":Landroid/view/View;
    const v2, 0x7f100204

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    iput-object v2, p0, Lcom/android/settings/fingerprint/FingerprintWebsignin;->mMessage:Landroid/widget/TextView;

    .line 98
    invoke-static {}, Lcom/samsung/android/fingerprint/FingerprintManager;->getSensorType()I

    move-result v2

    const/4 v3, 0x1

    if-ne v2, v3, :cond_0

    .line 99
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lcom/android/settings/fingerprint/FingerprintWebsignin;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f0a1abf

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "\n\n"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p0}, Lcom/android/settings/fingerprint/FingerprintWebsignin;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    invoke-virtual {v3, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 100
    .local v1, "webDescription":Ljava/lang/String;
    iget-object v2, p0, Lcom/android/settings/fingerprint/FingerprintWebsignin;->mMessage:Landroid/widget/TextView;

    invoke-virtual {v2, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 107
    :goto_0
    return-object v0

    .line 103
    .end local v1    # "webDescription":Ljava/lang/String;
    :cond_0
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lcom/android/settings/fingerprint/FingerprintWebsignin;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f0a1ac0

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "\n\n"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p0}, Lcom/android/settings/fingerprint/FingerprintWebsignin;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    invoke-virtual {v3, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 104
    .restart local v1    # "webDescription":Ljava/lang/String;
    iget-object v2, p0, Lcom/android/settings/fingerprint/FingerprintWebsignin;->mMessage:Landroid/widget/TextView;

    invoke-virtual {v2, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0
.end method

.method public onDestroy()V
    .locals 2

    .prologue
    .line 146
    const-string v0, "FingerprintWebsignin"

    const-string v1, "onDestroy"

    invoke-static {v0, v1}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 147
    invoke-super {p0}, Landroid/app/Fragment;->onDestroy()V

    .line 148
    return-void
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 1
    .param p1, "item"    # Landroid/view/MenuItem;

    .prologue
    .line 172
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 179
    const/4 v0, 0x0

    :goto_0
    return v0

    .line 174
    :pswitch_0
    invoke-virtual {p0}, Lcom/android/settings/fingerprint/FingerprintWebsignin;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->finish()V

    .line 175
    const/4 v0, 0x1

    goto :goto_0

    .line 172
    :pswitch_data_0
    .packed-switch 0x102002c
        :pswitch_0
    .end packed-switch
.end method

.method public onPause()V
    .locals 2

    .prologue
    .line 130
    invoke-super {p0}, Landroid/app/Fragment;->onPause()V

    .line 131
    iget-object v0, p0, Lcom/android/settings/fingerprint/FingerprintWebsignin;->mActionBarSwitch:Landroid/widget/Switch;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/Switch;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    .line 132
    return-void
.end method

.method public onResume()V
    .locals 4

    .prologue
    const/4 v3, 0x1

    .line 112
    invoke-super {p0}, Landroid/app/Fragment;->onResume()V

    .line 113
    const/4 v0, 0x0

    .line 115
    .local v0, "state":Z
    iget-object v1, p0, Lcom/android/settings/fingerprint/FingerprintWebsignin;->mActionBarLayout:Landroid/view/View;

    if-eqz v1, :cond_0

    .line 116
    iget-object v1, p0, Lcom/android/settings/fingerprint/FingerprintWebsignin;->mActionBarLayout:Landroid/view/View;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/view/View;->setVisibility(I)V

    .line 117
    invoke-virtual {p0}, Lcom/android/settings/fingerprint/FingerprintWebsignin;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Activity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v1

    invoke-virtual {v1, v3}, Landroid/app/ActionBar;->setDisplayShowCustomEnabled(Z)V

    .line 120
    :cond_0
    invoke-direct {p0}, Lcom/android/settings/fingerprint/FingerprintWebsignin;->getFingerprintVerification()Z

    move-result v0

    .line 122
    iget-object v1, p0, Lcom/android/settings/fingerprint/FingerprintWebsignin;->mActionBarSwitch:Landroid/widget/Switch;

    invoke-virtual {v1, v0}, Landroid/widget/Switch;->setChecked(Z)V

    .line 123
    iget-object v1, p0, Lcom/android/settings/fingerprint/FingerprintWebsignin;->mActionBarSwitch:Landroid/widget/Switch;

    invoke-virtual {v1, v3}, Landroid/widget/Switch;->setEnabled(Z)V

    .line 124
    iget-object v1, p0, Lcom/android/settings/fingerprint/FingerprintWebsignin;->mActionBarSwitch:Landroid/widget/Switch;

    invoke-virtual {v1, p0}, Landroid/widget/Switch;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    .line 126
    return-void
.end method

.method public onStop()V
    .locals 2

    .prologue
    .line 136
    invoke-super {p0}, Landroid/app/Fragment;->onStop()V

    .line 138
    iget-object v0, p0, Lcom/android/settings/fingerprint/FingerprintWebsignin;->mActionBarLayout:Landroid/view/View;

    if-eqz v0, :cond_0

    .line 139
    iget-object v0, p0, Lcom/android/settings/fingerprint/FingerprintWebsignin;->mActionBarLayout:Landroid/view/View;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 140
    invoke-virtual {p0}, Lcom/android/settings/fingerprint/FingerprintWebsignin;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/app/ActionBar;->setDisplayShowCustomEnabled(Z)V

    .line 142
    :cond_0
    return-void
.end method
