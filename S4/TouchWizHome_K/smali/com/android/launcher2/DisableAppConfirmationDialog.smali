.class public Lcom/android/launcher2/DisableAppConfirmationDialog;
.super Landroid/app/DialogFragment;
.source "DisableAppConfirmationDialog.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/launcher2/DisableAppConfirmationDialog$DialogCheckBoxListener;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "DisableAppConfirmationDialog"

.field private static isUninstall:Z = false

.field private static final sFragmentTag:Ljava/lang/String; = "DisableAppConfirm"


# instance fields
.field private mDialogCheckBoxListener:Lcom/android/launcher2/DisableAppConfirmationDialog$DialogCheckBoxListener;

.field private mPackage:Ljava/lang/String;

.field private mPackageLabel:Ljava/lang/String;

.field private mView:Landroid/view/View;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 32
    const/4 v0, 0x0

    sput-boolean v0, Lcom/android/launcher2/DisableAppConfirmationDialog;->isUninstall:Z

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 22
    invoke-direct {p0}, Landroid/app/DialogFragment;-><init>()V

    .line 29
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/launcher2/DisableAppConfirmationDialog;->mView:Landroid/view/View;

    .line 30
    new-instance v0, Lcom/android/launcher2/DisableAppConfirmationDialog$DialogCheckBoxListener;

    invoke-direct {v0}, Lcom/android/launcher2/DisableAppConfirmationDialog$DialogCheckBoxListener;-><init>()V

    iput-object v0, p0, Lcom/android/launcher2/DisableAppConfirmationDialog;->mDialogCheckBoxListener:Lcom/android/launcher2/DisableAppConfirmationDialog$DialogCheckBoxListener;

    .line 121
    return-void
.end method

.method static createAndShow(Ljava/lang/String;Ljava/lang/String;Landroid/app/FragmentManager;Z)V
    .locals 3
    .param p0, "packageName"    # Ljava/lang/String;
    .param p1, "label"    # Ljava/lang/String;
    .param p2, "manager"    # Landroid/app/FragmentManager;
    .param p3, "isUninstallable"    # Z

    .prologue
    .line 34
    invoke-static {p2}, Lcom/android/launcher2/DisableAppConfirmationDialog;->isActive(Landroid/app/FragmentManager;)Z

    move-result v2

    if-nez v2, :cond_0

    if-nez p1, :cond_1

    .line 43
    :cond_0
    :goto_0
    return-void

    .line 36
    :cond_1
    new-instance v1, Lcom/android/launcher2/DisableAppConfirmationDialog;

    invoke-direct {v1}, Lcom/android/launcher2/DisableAppConfirmationDialog;-><init>()V

    .line 37
    .local v1, "f":Lcom/android/launcher2/DisableAppConfirmationDialog;
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 38
    .local v0, "args":Landroid/os/Bundle;
    const-string v2, "package"

    invoke-virtual {v0, v2, p0}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 39
    const-string v2, "label"

    invoke-virtual {v0, v2, p1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 40
    invoke-virtual {v1, v0}, Lcom/android/launcher2/DisableAppConfirmationDialog;->setArguments(Landroid/os/Bundle;)V

    .line 41
    const-string v2, "DisableAppConfirm"

    invoke-virtual {v1, p2, v2}, Lcom/android/launcher2/DisableAppConfirmationDialog;->show(Landroid/app/FragmentManager;Ljava/lang/String;)V

    .line 42
    sput-boolean p3, Lcom/android/launcher2/DisableAppConfirmationDialog;->isUninstall:Z

    goto :goto_0
.end method

.method static dismiss(Landroid/app/FragmentTransaction;Landroid/app/FragmentManager;)V
    .locals 2
    .param p0, "ft"    # Landroid/app/FragmentTransaction;
    .param p1, "manager"    # Landroid/app/FragmentManager;

    .prologue
    .line 50
    const-string v1, "DisableAppConfirm"

    invoke-virtual {p1, v1}, Landroid/app/FragmentManager;->findFragmentByTag(Ljava/lang/String;)Landroid/app/Fragment;

    move-result-object v0

    check-cast v0, Landroid/app/DialogFragment;

    .line 51
    .local v0, "dialog":Landroid/app/DialogFragment;
    if-eqz v0, :cond_0

    .line 52
    invoke-virtual {v0}, Landroid/app/DialogFragment;->dismiss()V

    .line 53
    invoke-virtual {p0, v0}, Landroid/app/FragmentTransaction;->remove(Landroid/app/Fragment;)Landroid/app/FragmentTransaction;

    .line 55
    :cond_0
    return-void
.end method

.method static isActive(Landroid/app/FragmentManager;)Z
    .locals 1
    .param p0, "manager"    # Landroid/app/FragmentManager;

    .prologue
    .line 46
    const-string v0, "DisableAppConfirm"

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

.method private isRtl()Z
    .locals 3

    .prologue
    .line 57
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v1

    .line 58
    .local v1, "locale":Ljava/util/Locale;
    invoke-virtual {v1}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v0

    .line 59
    .local v0, "lang":Ljava/lang/String;
    const-string v2, "iw"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    const-string v2, "ar"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    const-string v2, "fa"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    const-string v2, "ur"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 61
    :cond_0
    const/4 v2, 0x1

    .line 63
    :goto_0
    return v2

    :cond_1
    const/4 v2, 0x0

    goto :goto_0
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 8
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "whichButton"    # I

    .prologue
    const/4 v7, 0x1

    const/4 v6, 0x0

    .line 129
    const/4 v2, -0x1

    if-ne p2, v2, :cond_1

    .line 131
    invoke-virtual {p0}, Lcom/android/launcher2/DisableAppConfirmationDialog;->getActivity()Landroid/app/Activity;

    move-result-object v1

    check-cast v1, Lcom/android/launcher2/Launcher;

    .line 132
    .local v1, "launcher":Lcom/android/launcher2/Launcher;
    if-eqz v1, :cond_0

    iget-object v2, p0, Lcom/android/launcher2/DisableAppConfirmationDialog;->mView:Landroid/view/View;

    if-eqz v2, :cond_0

    .line 133
    iget-object v2, p0, Lcom/android/launcher2/DisableAppConfirmationDialog;->mView:Landroid/view/View;

    const v3, 0x7f0f002f

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/CheckBox;

    invoke-virtual {v2}, Landroid/widget/CheckBox;->isChecked()Z

    move-result v2

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/android/launcher2/Launcher;->saveToastPopupForDisableDialog(Ljava/lang/Boolean;)V

    .line 136
    :cond_0
    sget-object v2, Lcom/android/launcher2/Launcher;->mNonDisableItems:Ljava/util/ArrayList;

    iget-object v3, p0, Lcom/android/launcher2/DisableAppConfirmationDialog;->mPackage:Ljava/lang/String;

    invoke-virtual {v3}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 137
    invoke-virtual {p0}, Lcom/android/launcher2/DisableAppConfirmationDialog;->getActivity()Landroid/app/Activity;

    move-result-object v2

    const-string v3, "This App can not be disabled"

    invoke-static {v2, v3, v7}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/Toast;->show()V

    .line 169
    .end local v1    # "launcher":Lcom/android/launcher2/Launcher;
    :cond_1
    :goto_0
    return-void

    .line 144
    .restart local v1    # "launcher":Lcom/android/launcher2/Launcher;
    :cond_2
    :try_start_0
    sget-boolean v2, Lcom/android/launcher2/DisableAppConfirmationDialog;->isUninstall:Z

    if-eqz v2, :cond_3

    .line 145
    if-eqz v1, :cond_1

    .line 146
    iget-object v2, p0, Lcom/android/launcher2/DisableAppConfirmationDialog;->mPackage:Ljava/lang/String;

    sput-object v2, Lcom/android/launcher2/Launcher;->mPackageTobeDisabled:Ljava/lang/String;

    .line 147
    iget-object v2, p0, Lcom/android/launcher2/DisableAppConfirmationDialog;->mPackage:Ljava/lang/String;

    invoke-virtual {v1, v2}, Lcom/android/launcher2/Launcher;->uninstallPackage(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_1

    goto :goto_0

    .line 155
    :catch_0
    move-exception v0

    .line 156
    .local v0, "e":Ljava/lang/SecurityException;
    const-string v2, "DisableAppConfirmationDialog"

    const-string v3, "Problem uninstalling package. This should only happen when installed outside of /system/app."

    invoke-static {v2, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 158
    invoke-virtual {p0}, Lcom/android/launcher2/DisableAppConfirmationDialog;->getActivity()Landroid/app/Activity;

    move-result-object v2

    const-string v3, "Not installed with permissions needed for uninstalling"

    invoke-static {v2, v3, v7}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/Toast;->show()V

    goto :goto_0

    .line 152
    .end local v0    # "e":Ljava/lang/SecurityException;
    :cond_3
    :try_start_1
    invoke-virtual {p0}, Lcom/android/launcher2/DisableAppConfirmationDialog;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/Activity;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    iget-object v3, p0, Lcom/android/launcher2/DisableAppConfirmationDialog;->mPackage:Ljava/lang/String;

    const/4 v4, 0x3

    const/4 v5, 0x0

    invoke-virtual {v2, v3, v4, v5}, Landroid/content/pm/PackageManager;->setApplicationEnabledSetting(Ljava/lang/String;II)V
    :try_end_1
    .catch Ljava/lang/SecurityException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/NullPointerException; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_0

    .line 161
    :catch_1
    move-exception v0

    .line 162
    .local v0, "e":Ljava/lang/NullPointerException;
    const-string v2, "DisableAppConfirmationDialog"

    const-string v3, "Problem uninstalling package. This should only happen when either Activity or PackageManager is NULL."

    invoke-static {v2, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 164
    invoke-virtual {p0}, Lcom/android/launcher2/DisableAppConfirmationDialog;->getActivity()Landroid/app/Activity;

    move-result-object v2

    const-string v3, "Unable to install, please try again !"

    invoke-static {v2, v3, v6}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/Toast;->show()V

    goto :goto_0
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 2
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 72
    invoke-super {p0, p1}, Landroid/app/DialogFragment;->onCreate(Landroid/os/Bundle;)V

    .line 73
    invoke-virtual {p0}, Lcom/android/launcher2/DisableAppConfirmationDialog;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    const-string v1, "package"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/launcher2/DisableAppConfirmationDialog;->mPackage:Ljava/lang/String;

    .line 74
    invoke-virtual {p0}, Lcom/android/launcher2/DisableAppConfirmationDialog;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    const-string v1, "label"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/launcher2/DisableAppConfirmationDialog;->mPackageLabel:Ljava/lang/String;

    .line 75
    return-void
.end method

.method public onCreateDialog(Landroid/os/Bundle;)Landroid/app/Dialog;
    .locals 14
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    const v13, 0x7f10004b

    const/4 v12, 0x1

    const/4 v11, 0x0

    .line 80
    invoke-virtual {p0}, Lcom/android/launcher2/DisableAppConfirmationDialog;->getActivity()Landroid/app/Activity;

    move-result-object v1

    .line 81
    .local v1, "c":Landroid/content/Context;
    invoke-virtual {p0}, Lcom/android/launcher2/DisableAppConfirmationDialog;->getActivity()Landroid/app/Activity;

    move-result-object v5

    check-cast v5, Lcom/android/launcher2/Launcher;

    .line 82
    .local v5, "launcher":Lcom/android/launcher2/Launcher;
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-direct {v0, v1}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 83
    .local v0, "builder":Landroid/app/AlertDialog$Builder;
    const v8, 0x7f030008

    const/4 v9, 0x0

    invoke-static {v1, v8, v9}, Landroid/view/View;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v6

    .line 85
    .local v6, "layout":Landroid/view/View;
    const v8, 0x7f100029

    invoke-virtual {p0, v8}, Lcom/android/launcher2/DisableAppConfirmationDialog;->getString(I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v0, v8}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    .line 90
    invoke-virtual {v0, v13, p0}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 91
    const v8, 0x7f100076

    invoke-virtual {v0, v8, p0}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 92
    const v8, 0x7f10002a

    const/4 v9, 0x2

    new-array v9, v9, [Ljava/lang/Object;

    iget-object v10, p0, Lcom/android/launcher2/DisableAppConfirmationDialog;->mPackageLabel:Ljava/lang/String;

    aput-object v10, v9, v11

    iget-object v10, p0, Lcom/android/launcher2/DisableAppConfirmationDialog;->mPackageLabel:Ljava/lang/String;

    aput-object v10, v9, v12

    invoke-virtual {p0, v8, v9}, Lcom/android/launcher2/DisableAppConfirmationDialog;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    .line 93
    .local v3, "disable_massage":Ljava/lang/String;
    invoke-direct {p0}, Lcom/android/launcher2/DisableAppConfirmationDialog;->isRtl()Z

    move-result v8

    if-eqz v8, :cond_0

    .line 94
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "\u200f"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 96
    :cond_0
    invoke-virtual {v0, v3}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    .line 97
    sget-boolean v8, Lcom/android/launcher2/DisableAppConfirmationDialog;->isUninstall:Z

    if-eqz v8, :cond_2

    .line 98
    const v8, 0x7f10002c

    new-array v9, v12, [Ljava/lang/Object;

    iget-object v10, p0, Lcom/android/launcher2/DisableAppConfirmationDialog;->mPackageLabel:Ljava/lang/String;

    aput-object v10, v9, v11

    invoke-virtual {p0, v8, v9}, Lcom/android/launcher2/DisableAppConfirmationDialog;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    .line 99
    .local v4, "disable_uninstall_message":Ljava/lang/String;
    invoke-direct {p0}, Lcom/android/launcher2/DisableAppConfirmationDialog;->isRtl()Z

    move-result v8

    if-eqz v8, :cond_1

    .line 100
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "\u200f"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 102
    :cond_1
    invoke-virtual {v0, v4}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    .line 103
    const v8, 0x7f10002b

    invoke-virtual {p0, v8}, Lcom/android/launcher2/DisableAppConfirmationDialog;->getString(I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v0, v8}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    .line 104
    invoke-virtual {v0, v13, p0}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 107
    .end local v4    # "disable_uninstall_message":Ljava/lang/String;
    :cond_2
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v2

    .line 110
    .local v2, "dialog":Landroid/app/Dialog;
    const/4 v7, 0x0

    .line 111
    .local v7, "toastRepeat":Landroid/widget/CheckBox;
    const v8, 0x7f0f0012

    invoke-virtual {v6, v8}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v7

    .end local v7    # "toastRepeat":Landroid/widget/CheckBox;
    check-cast v7, Landroid/widget/CheckBox;

    .line 112
    .restart local v7    # "toastRepeat":Landroid/widget/CheckBox;
    if-eqz v7, :cond_3

    .line 113
    iget-object v8, p0, Lcom/android/launcher2/DisableAppConfirmationDialog;->mDialogCheckBoxListener:Lcom/android/launcher2/DisableAppConfirmationDialog$DialogCheckBoxListener;

    invoke-virtual {v7, v8}, Landroid/widget/CheckBox;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 114
    invoke-virtual {v5}, Lcom/android/launcher2/Launcher;->isDialogChecked()Z

    move-result v8

    invoke-virtual {v7, v8}, Landroid/widget/CheckBox;->setChecked(Z)V

    .line 117
    :cond_3
    return-object v2
.end method

.method public onDestroy()V
    .locals 0

    .prologue
    .line 67
    invoke-super {p0}, Landroid/app/DialogFragment;->onDestroy()V

    .line 68
    return-void
.end method
