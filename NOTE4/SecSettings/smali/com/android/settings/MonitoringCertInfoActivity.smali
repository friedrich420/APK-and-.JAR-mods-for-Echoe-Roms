.class public Lcom/android/settings/MonitoringCertInfoActivity;
.super Landroid/app/Activity;
.source "MonitoringCertInfoActivity.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# instance fields
.field private hasDeviceOwner:Z

.field private mIsEmerMode:Z


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 39
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    .line 41
    iput-boolean v0, p0, Lcom/android/settings/MonitoringCertInfoActivity;->hasDeviceOwner:Z

    .line 42
    iput-boolean v0, p0, Lcom/android/settings/MonitoringCertInfoActivity;->mIsEmerMode:Z

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 2
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "which"    # I

    .prologue
    .line 102
    iget-boolean v1, p0, Lcom/android/settings/MonitoringCertInfoActivity;->hasDeviceOwner:Z

    if-eqz v1, :cond_0

    .line 103
    invoke-virtual {p0}, Lcom/android/settings/MonitoringCertInfoActivity;->finish()V

    .line 111
    :goto_0
    return-void

    .line 105
    :cond_0
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.android.settings.TRUSTED_CREDENTIALS_USER"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 107
    .local v0, "intent":Landroid/content/Intent;
    const/high16 v1, 0x14000000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 108
    invoke-virtual {p0, v0}, Lcom/android/settings/MonitoringCertInfoActivity;->startActivity(Landroid/content/Intent;)V

    .line 109
    invoke-virtual {p0}, Lcom/android/settings/MonitoringCertInfoActivity;->finish()V

    goto :goto_0
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 12
    .param p1, "savedStates"    # Landroid/os/Bundle;

    .prologue
    const/4 v8, 0x0

    const/4 v7, 0x1

    .line 46
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 49
    invoke-static {p0}, Lcom/sec/android/emergencymode/EmergencyManager;->getInstance(Landroid/content/Context;)Lcom/sec/android/emergencymode/EmergencyManager;

    move-result-object v4

    .line 50
    .local v4, "em":Lcom/sec/android/emergencymode/EmergencyManager;
    invoke-virtual {v4}, Lcom/sec/android/emergencymode/EmergencyManager;->isEmergencyMode()Z

    move-result v6

    if-eqz v6, :cond_0

    .line 51
    iput-boolean v7, p0, Lcom/android/settings/MonitoringCertInfoActivity;->mIsEmerMode:Z

    .line 55
    :cond_0
    const-string v6, "device_policy"

    invoke-virtual {p0, v6}, Lcom/android/settings/MonitoringCertInfoActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/app/admin/DevicePolicyManager;

    .line 58
    .local v3, "dpm":Landroid/app/admin/DevicePolicyManager;
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-direct {v0, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 59
    .local v0, "builder":Landroid/app/AlertDialog$Builder;
    const v6, 0x7f0a0df2

    invoke-virtual {v0, v6}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    .line 60
    invoke-virtual {v0, v7}, Landroid/app/AlertDialog$Builder;->setCancelable(Z)Landroid/app/AlertDialog$Builder;

    .line 61
    invoke-virtual {v3}, Landroid/app/admin/DevicePolicyManager;->getDeviceOwner()Ljava/lang/String;

    move-result-object v6

    if-eqz v6, :cond_1

    move v6, v7

    :goto_0
    iput-boolean v6, p0, Lcom/android/settings/MonitoringCertInfoActivity;->hasDeviceOwner:Z

    .line 63
    iget-boolean v6, p0, Lcom/android/settings/MonitoringCertInfoActivity;->hasDeviceOwner:Z

    if-eqz v6, :cond_2

    .line 65
    invoke-virtual {p0}, Lcom/android/settings/MonitoringCertInfoActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    const v9, 0x7f0a0df3

    new-array v10, v7, [Ljava/lang/Object;

    invoke-virtual {v3}, Landroid/app/admin/DevicePolicyManager;->getDeviceOwnerName()Ljava/lang/String;

    move-result-object v11

    aput-object v11, v10, v8

    invoke-virtual {v6, v9, v10}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    .line 67
    .local v5, "message":Ljava/lang/String;
    invoke-virtual {v0, v5}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    .line 68
    const v1, 0x7f0a0df1

    .line 75
    .end local v5    # "message":Ljava/lang/String;
    .local v1, "buttonLabel":I
    :goto_1
    invoke-virtual {v0, v1, p0}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 77
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v2

    .line 78
    .local v2, "dialog":Landroid/app/Dialog;
    invoke-virtual {v2}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object v6

    const/16 v8, 0x7d3

    invoke-virtual {v6, v8}, Landroid/view/Window;->setType(I)V

    .line 80
    :try_start_0
    invoke-static {}, Landroid/view/WindowManagerGlobal;->getWindowManagerService()Landroid/view/IWindowManager;

    move-result-object v6

    invoke-interface {v6}, Landroid/view/IWindowManager;->dismissKeyguard()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 83
    :goto_2
    new-instance v6, Lcom/android/settings/MonitoringCertInfoActivity$1;

    invoke-direct {v6, p0}, Lcom/android/settings/MonitoringCertInfoActivity$1;-><init>(Lcom/android/settings/MonitoringCertInfoActivity;)V

    invoke-virtual {v2, v6}, Landroid/app/Dialog;->setOnCancelListener(Landroid/content/DialogInterface$OnCancelListener;)V

    .line 89
    iget-boolean v6, p0, Lcom/android/settings/MonitoringCertInfoActivity;->mIsEmerMode:Z

    if-ne v6, v7, :cond_3

    .line 90
    const-string v6, "MonitoringCertInfoActivity"

    const-string v7, "ULTRA_POWER_SAVING mode is on"

    invoke-static {v6, v7}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 91
    invoke-virtual {p0}, Lcom/android/settings/MonitoringCertInfoActivity;->finish()V

    .line 98
    :goto_3
    return-void

    .end local v1    # "buttonLabel":I
    .end local v2    # "dialog":Landroid/app/Dialog;
    :cond_1
    move v6, v8

    .line 61
    goto :goto_0

    .line 71
    :cond_2
    const v6, 0x7f0a0df4

    invoke-virtual {v0, v6}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    .line 72
    const v1, 0x7f0a0df5

    .restart local v1    # "buttonLabel":I
    goto :goto_1

    .line 93
    .restart local v2    # "dialog":Landroid/app/Dialog;
    :cond_3
    invoke-virtual {v2}, Landroid/app/Dialog;->show()V

    goto :goto_3

    .line 81
    :catch_0
    move-exception v6

    goto :goto_2
.end method
