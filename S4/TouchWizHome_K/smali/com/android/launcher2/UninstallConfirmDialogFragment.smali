.class public Lcom/android/launcher2/UninstallConfirmDialogFragment;
.super Landroid/app/DialogFragment;
.source "UninstallConfirmDialogFragment.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# static fields
.field private static final TAG:Ljava/lang/String; = "UninstallConfirmDialogFragment"

.field private static final sFragmentTag:Ljava/lang/String; = "UninstallConfirm"


# instance fields
.field private mPackage:Ljava/lang/String;

.field private mPackageLabel:Ljava/lang/String;

.field private mReset:Z


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 36
    invoke-direct {p0}, Landroid/app/DialogFragment;-><init>()V

    return-void
.end method

.method private blockUninsatll()Z
    .locals 7

    .prologue
    .line 94
    const/4 v0, 0x0

    .line 96
    .local v0, "isblocked":Z
    :try_start_0
    invoke-virtual {p0}, Lcom/android/launcher2/UninstallConfirmDialogFragment;->getActivity()Landroid/app/Activity;

    move-result-object v4

    const-string v5, "enterprise_policy"

    invoke-virtual {v4, v5}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/app/enterprise/EnterpriseDeviceManager;

    .line 98
    .local v2, "mEdm":Landroid/app/enterprise/EnterpriseDeviceManager;
    invoke-virtual {p0}, Lcom/android/launcher2/UninstallConfirmDialogFragment;->getActivity()Landroid/app/Activity;

    move-result-object v4

    const-string v5, "device_policy"

    invoke-virtual {v4, v5}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/app/admin/DevicePolicyManager;

    .line 101
    .local v1, "mDpm":Landroid/app/admin/DevicePolicyManager;
    invoke-virtual {v2}, Landroid/app/enterprise/EnterpriseDeviceManager;->getApplicationPolicy()Landroid/app/enterprise/ApplicationPolicy;

    move-result-object v4

    iget-object v5, p0, Lcom/android/launcher2/UninstallConfirmDialogFragment;->mPackage:Ljava/lang/String;

    invoke-virtual {v4, v5}, Landroid/app/enterprise/ApplicationPolicy;->getApplicationUninstallationEnabled(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_0

    iget-object v4, p0, Lcom/android/launcher2/UninstallConfirmDialogFragment;->mPackage:Ljava/lang/String;

    invoke-virtual {v1, v4}, Landroid/app/admin/DevicePolicyManager;->packageHasActiveAdmins(Ljava/lang/String;)Z
    :try_end_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v4

    if-eqz v4, :cond_1

    .line 104
    :cond_0
    const/4 v0, 0x1

    .line 109
    .end local v1    # "mDpm":Landroid/app/admin/DevicePolicyManager;
    .end local v2    # "mEdm":Landroid/app/enterprise/EnterpriseDeviceManager;
    :cond_1
    :goto_0
    return v0

    .line 106
    :catch_0
    move-exception v3

    .line 107
    .local v3, "ne":Ljava/lang/NullPointerException;
    const-string v4, "UninstallConfirmDialogFragment"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "EnterpriseDeviceManager is not getting started"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method static createAndShow(Ljava/lang/String;Ljava/lang/String;Landroid/app/FragmentManager;)V
    .locals 1
    .param p0, "packageName"    # Ljava/lang/String;
    .param p1, "label"    # Ljava/lang/String;
    .param p2, "manager"    # Landroid/app/FragmentManager;

    .prologue
    .line 49
    const/4 v0, 0x0

    invoke-static {p0, p1, p2, v0}, Lcom/android/launcher2/UninstallConfirmDialogFragment;->createAndShow(Ljava/lang/String;Ljava/lang/String;Landroid/app/FragmentManager;Z)V

    .line 50
    return-void
.end method

.method static createAndShow(Ljava/lang/String;Ljava/lang/String;Landroid/app/FragmentManager;Z)V
    .locals 3
    .param p0, "packageName"    # Ljava/lang/String;
    .param p1, "label"    # Ljava/lang/String;
    .param p2, "manager"    # Landroid/app/FragmentManager;
    .param p3, "isReset"    # Z

    .prologue
    .line 54
    invoke-static {p2}, Lcom/android/launcher2/UninstallConfirmDialogFragment;->isActive(Landroid/app/FragmentManager;)Z

    move-result v2

    if-nez v2, :cond_0

    if-nez p1, :cond_1

    .line 63
    :cond_0
    :goto_0
    return-void

    .line 56
    :cond_1
    new-instance v1, Lcom/android/launcher2/UninstallConfirmDialogFragment;

    invoke-direct {v1}, Lcom/android/launcher2/UninstallConfirmDialogFragment;-><init>()V

    .line 57
    .local v1, "f":Lcom/android/launcher2/UninstallConfirmDialogFragment;
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 58
    .local v0, "args":Landroid/os/Bundle;
    const-string v2, "package"

    invoke-virtual {v0, v2, p0}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 59
    const-string v2, "label"

    invoke-virtual {v0, v2, p1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 60
    const-string v2, "reset"

    invoke-virtual {v0, v2, p3}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 61
    invoke-virtual {v1, v0}, Lcom/android/launcher2/UninstallConfirmDialogFragment;->setArguments(Landroid/os/Bundle;)V

    .line 62
    const-string v2, "UninstallConfirm"

    invoke-virtual {v1, p2, v2}, Lcom/android/launcher2/UninstallConfirmDialogFragment;->show(Landroid/app/FragmentManager;Ljava/lang/String;)V

    goto :goto_0
.end method

.method static dismiss(Landroid/app/FragmentTransaction;Landroid/app/FragmentManager;)V
    .locals 2
    .param p0, "ft"    # Landroid/app/FragmentTransaction;
    .param p1, "manager"    # Landroid/app/FragmentManager;

    .prologue
    .line 70
    const-string v1, "UninstallConfirm"

    invoke-virtual {p1, v1}, Landroid/app/FragmentManager;->findFragmentByTag(Ljava/lang/String;)Landroid/app/Fragment;

    move-result-object v0

    check-cast v0, Landroid/app/DialogFragment;

    .line 71
    .local v0, "dialog":Landroid/app/DialogFragment;
    if-eqz v0, :cond_0

    .line 72
    invoke-virtual {v0}, Landroid/app/DialogFragment;->dismiss()V

    .line 73
    invoke-virtual {p0, v0}, Landroid/app/FragmentTransaction;->remove(Landroid/app/Fragment;)Landroid/app/FragmentTransaction;

    .line 75
    :cond_0
    return-void
.end method

.method static isActive(Landroid/app/FragmentManager;)Z
    .locals 1
    .param p0, "manager"    # Landroid/app/FragmentManager;

    .prologue
    .line 66
    const-string v0, "UninstallConfirm"

    invoke-virtual {p0, v0}, Landroid/app/FragmentManager;->findFragmentByTag(Ljava/lang/String;)Landroid/app/Fragment;

    move-result-object v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 6
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "whichButton"    # I

    .prologue
    const/4 v5, 0x0

    .line 145
    invoke-virtual {p0}, Lcom/android/launcher2/UninstallConfirmDialogFragment;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/Activity;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    .line 147
    .local v1, "pm":Landroid/content/pm/PackageManager;
    const/4 v2, -0x1

    if-ne p2, v2, :cond_0

    .line 160
    :try_start_0
    iget-object v2, p0, Lcom/android/launcher2/UninstallConfirmDialogFragment;->mPackage:Ljava/lang/String;

    const/4 v3, 0x0

    const/4 v4, 0x0

    invoke-virtual {v1, v2, v3, v4}, Landroid/content/pm/PackageManager;->deletePackage(Ljava/lang/String;Landroid/content/pm/IPackageDeleteObserver;I)V
    :try_end_0
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_1

    .line 176
    :cond_0
    :goto_0
    return-void

    .line 163
    :catch_0
    move-exception v0

    .line 164
    .local v0, "e":Ljava/lang/SecurityException;
    const-string v2, "UninstallConfirmDialogFragment"

    const-string v3, "Problem uninstalling package. This should only happen when installed outside of /system/app."

    invoke-static {v2, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 166
    invoke-virtual {p0}, Lcom/android/launcher2/UninstallConfirmDialogFragment;->getActivity()Landroid/app/Activity;

    move-result-object v2

    const-string v3, "Not installed with permissions needed for uninstalling"

    invoke-static {v2, v3, v5}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/Toast;->show()V

    goto :goto_0

    .line 169
    .end local v0    # "e":Ljava/lang/SecurityException;
    :catch_1
    move-exception v0

    .line 170
    .local v0, "e":Ljava/lang/NullPointerException;
    const-string v2, "UninstallConfirmDialogFragment"

    const-string v3, "Problem uninstalling package. This should only happen when either Activity or PackageManager is NULL."

    invoke-static {v2, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 172
    invoke-virtual {p0}, Lcom/android/launcher2/UninstallConfirmDialogFragment;->getActivity()Landroid/app/Activity;

    move-result-object v2

    const-string v3, "Unable to install, please try again !"

    invoke-static {v2, v3, v5}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/Toast;->show()V

    goto :goto_0
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 2
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 79
    invoke-super {p0, p1}, Landroid/app/DialogFragment;->onCreate(Landroid/os/Bundle;)V

    .line 80
    invoke-virtual {p0}, Lcom/android/launcher2/UninstallConfirmDialogFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    const-string v1, "package"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/launcher2/UninstallConfirmDialogFragment;->mPackage:Ljava/lang/String;

    .line 81
    invoke-virtual {p0}, Lcom/android/launcher2/UninstallConfirmDialogFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    const-string v1, "label"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/launcher2/UninstallConfirmDialogFragment;->mPackageLabel:Ljava/lang/String;

    .line 82
    invoke-virtual {p0}, Lcom/android/launcher2/UninstallConfirmDialogFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    const-string v1, "reset"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/launcher2/UninstallConfirmDialogFragment;->mReset:Z

    .line 83
    return-void
.end method

.method public onCreateDialog(Landroid/os/Bundle;)Landroid/app/Dialog;
    .locals 8
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    const v6, 0x7f100074

    const/4 v7, 0x0

    const/4 v5, 0x1

    .line 114
    invoke-virtual {p0}, Lcom/android/launcher2/UninstallConfirmDialogFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    .line 118
    .local v0, "c":Landroid/content/Context;
    sget v3, Lcom/android/launcher2/LauncherApplication;->RemovablePreloadEnabled:I

    if-ne v3, v5, :cond_1

    .line 119
    sget-object v3, Lcom/android/launcher2/Launcher;->mRemovablePreloadAppItems:Ljava/util/ArrayList;

    iget-object v4, p0, Lcom/android/launcher2/UninstallConfirmDialogFragment;->mPackage:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 120
    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f1000f2

    new-array v5, v5, [Ljava/lang/Object;

    iget-object v6, p0, Lcom/android/launcher2/UninstallConfirmDialogFragment;->mPackageLabel:Ljava/lang/String;

    aput-object v6, v5, v7

    invoke-virtual {v3, v4, v5}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    .line 134
    .local v2, "uninstall_text":Ljava/lang/String;
    :goto_0
    iget-boolean v3, p0, Lcom/android/launcher2/UninstallConfirmDialogFragment;->mReset:Z

    if-eqz v3, :cond_2

    const v1, 0x7f10002e

    .line 136
    .local v1, "posButtonResId":I
    :goto_1
    new-instance v3, Landroid/app/AlertDialog$Builder;

    invoke-direct {v3, v0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v4, 0x7f100073

    invoke-virtual {v3, v4}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v3

    invoke-virtual {v3, v2}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v3

    invoke-virtual {v3, v1, p0}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v3

    const v4, 0x7f100076

    invoke-virtual {v3, v4, p0}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v3

    invoke-virtual {v3}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v3

    return-object v3

    .line 127
    .end local v1    # "posButtonResId":I
    .end local v2    # "uninstall_text":Ljava/lang/String;
    :cond_0
    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    new-array v4, v5, [Ljava/lang/Object;

    iget-object v5, p0, Lcom/android/launcher2/UninstallConfirmDialogFragment;->mPackageLabel:Ljava/lang/String;

    aput-object v5, v4, v7

    invoke-virtual {v3, v6, v4}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    .restart local v2    # "uninstall_text":Ljava/lang/String;
    goto :goto_0

    .line 131
    .end local v2    # "uninstall_text":Ljava/lang/String;
    :cond_1
    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    new-array v4, v5, [Ljava/lang/Object;

    iget-object v5, p0, Lcom/android/launcher2/UninstallConfirmDialogFragment;->mPackageLabel:Ljava/lang/String;

    aput-object v5, v4, v7

    invoke-virtual {v3, v6, v4}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    .restart local v2    # "uninstall_text":Ljava/lang/String;
    goto :goto_0

    .line 134
    :cond_2
    const v1, 0x7f100075

    goto :goto_1
.end method

.method public onStart()V
    .locals 2

    .prologue
    .line 87
    invoke-super {p0}, Landroid/app/DialogFragment;->onStart()V

    .line 88
    invoke-direct {p0}, Lcom/android/launcher2/UninstallConfirmDialogFragment;->blockUninsatll()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 89
    invoke-virtual {p0}, Lcom/android/launcher2/UninstallConfirmDialogFragment;->getDialog()Landroid/app/Dialog;

    move-result-object v0

    check-cast v0, Landroid/app/AlertDialog;

    const/4 v1, -0x1

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog;->getButton(I)Landroid/widget/Button;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setEnabled(Z)V

    .line 91
    :cond_0
    return-void
.end method
