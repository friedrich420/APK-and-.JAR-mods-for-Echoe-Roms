.class public Lcom/android/launcher2/DeleteWorkscreenDialogFragment;
.super Landroid/app/DialogFragment;
.source "DeleteWorkscreenDialogFragment.java"

# interfaces
.implements Landroid/content/DialogInterface$OnCancelListener;
.implements Landroid/content/DialogInterface$OnClickListener;


# static fields
.field private static final TAG:Ljava/lang/String; = "DeleteWorkscreenDialogFragment"

.field private static final sFragmentTag:Ljava/lang/String; = "DeleteWorkscreenDialog"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 30
    invoke-direct {p0}, Landroid/app/DialogFragment;-><init>()V

    return-void
.end method

.method static createAndShow(Landroid/app/FragmentManager;)V
    .locals 2
    .param p0, "manager"    # Landroid/app/FragmentManager;

    .prologue
    .line 38
    invoke-static {p0}, Lcom/android/launcher2/DeleteWorkscreenDialogFragment;->isActive(Landroid/app/FragmentManager;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 42
    :goto_0
    return-void

    .line 40
    :cond_0
    new-instance v0, Lcom/android/launcher2/DeleteWorkscreenDialogFragment;

    invoke-direct {v0}, Lcom/android/launcher2/DeleteWorkscreenDialogFragment;-><init>()V

    .line 41
    .local v0, "f":Lcom/android/launcher2/DeleteWorkscreenDialogFragment;
    const-string v1, "DeleteWorkscreenDialog"

    invoke-virtual {v0, p0, v1}, Lcom/android/launcher2/DeleteWorkscreenDialogFragment;->show(Landroid/app/FragmentManager;Ljava/lang/String;)V

    goto :goto_0
.end method

.method static dismiss(Landroid/app/FragmentManager;)V
    .locals 2
    .param p0, "manager"    # Landroid/app/FragmentManager;

    .prologue
    .line 49
    const-string v1, "DeleteWorkscreenDialog"

    invoke-virtual {p0, v1}, Landroid/app/FragmentManager;->findFragmentByTag(Ljava/lang/String;)Landroid/app/Fragment;

    move-result-object v0

    check-cast v0, Landroid/app/DialogFragment;

    .line 50
    .local v0, "dialog":Landroid/app/DialogFragment;
    if-eqz v0, :cond_0

    .line 51
    invoke-virtual {v0}, Landroid/app/DialogFragment;->dismissAllowingStateLoss()V

    .line 53
    :cond_0
    return-void
.end method

.method static isActive(Landroid/app/FragmentManager;)Z
    .locals 1
    .param p0, "manager"    # Landroid/app/FragmentManager;

    .prologue
    .line 45
    const-string v0, "DeleteWorkscreenDialog"

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
.method public onCancel(Landroid/content/DialogInterface;)V
    .locals 3
    .param p1, "dialog"    # Landroid/content/DialogInterface;

    .prologue
    .line 93
    invoke-super {p0, p1}, Landroid/app/DialogFragment;->onCancel(Landroid/content/DialogInterface;)V

    .line 94
    invoke-virtual {p0}, Lcom/android/launcher2/DeleteWorkscreenDialogFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    check-cast v0, Lcom/android/launcher2/Launcher;

    .line 96
    .local v0, "mLauncher":Lcom/android/launcher2/Launcher;
    if-nez v0, :cond_0

    .line 97
    const-string v1, "DeleteWorkscreenDialogFragment"

    const-string v2, "onCancel: getActivity fail."

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 102
    :goto_0
    return-void

    .line 101
    :cond_0
    iget-object v1, v0, Lcom/android/launcher2/Launcher;->mHomeView:Lcom/android/launcher2/HomeView;

    invoke-virtual {v1}, Lcom/android/launcher2/HomeView;->cancelRemovePage()V

    goto :goto_0
.end method

.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 3
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "which"    # I

    .prologue
    .line 76
    invoke-virtual {p0}, Lcom/android/launcher2/DeleteWorkscreenDialogFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    check-cast v0, Lcom/android/launcher2/Launcher;

    .line 78
    .local v0, "mLauncher":Lcom/android/launcher2/Launcher;
    if-nez v0, :cond_1

    .line 79
    const-string v1, "DeleteWorkscreenDialogFragment"

    const-string v2, "onClick: getActivity fail."

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 89
    :cond_0
    :goto_0
    return-void

    .line 83
    :cond_1
    const/4 v1, -0x1

    if-ne p2, v1, :cond_2

    .line 84
    iget-object v1, v0, Lcom/android/launcher2/Launcher;->mHomeView:Lcom/android/launcher2/HomeView;

    invoke-virtual {v1}, Lcom/android/launcher2/HomeView;->removePage()V

    goto :goto_0

    .line 85
    :cond_2
    const/4 v1, -0x2

    if-ne p2, v1, :cond_0

    .line 86
    iget-object v1, v0, Lcom/android/launcher2/Launcher;->mHomeView:Lcom/android/launcher2/HomeView;

    invoke-virtual {v1}, Lcom/android/launcher2/HomeView;->cancelRemovePage()V

    goto :goto_0
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 0
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 57
    invoke-super {p0, p1}, Landroid/app/DialogFragment;->onCreate(Landroid/os/Bundle;)V

    .line 58
    return-void
.end method

.method public onCreateDialog(Landroid/os/Bundle;)Landroid/app/Dialog;
    .locals 5
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 62
    invoke-virtual {p0}, Lcom/android/launcher2/DeleteWorkscreenDialogFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    .line 63
    .local v1, "c":Landroid/content/Context;
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-direct {v0, v1}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 64
    .local v0, "builder":Landroid/app/AlertDialog$Builder;
    const v3, 0x7f10007f

    invoke-virtual {v0, v3}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v3

    const/high16 v4, 0x7f100000

    invoke-virtual {v3, v4}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    move-result-object v3

    const v4, 0x7f10000d

    invoke-virtual {v3, v4, p0}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v3

    const v4, 0x7f10000a

    invoke-virtual {v3, v4, p0}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 69
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v2

    .line 71
    .local v2, "dialog":Landroid/app/Dialog;
    return-object v2
.end method
