.class public Lcom/android/launcher2/MenuAppsGrid$MenuEditCancelDialogFragment;
.super Landroid/app/DialogFragment;
.source "MenuAppsGrid.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;
.implements Landroid/content/DialogInterface$OnDismissListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/launcher2/MenuAppsGrid;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "MenuEditCancelDialogFragment"
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "MenuEditCancelDialogFragment"

.field private static final sFragmentTag:Ljava/lang/String; = "MenuEditCancelDialog"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 4047
    invoke-direct {p0}, Landroid/app/DialogFragment;-><init>()V

    return-void
.end method

.method static createAndShow(Landroid/app/FragmentManager;)V
    .locals 2
    .param p0, "manager"    # Landroid/app/FragmentManager;

    .prologue
    .line 4053
    invoke-static {p0}, Lcom/android/launcher2/MenuAppsGrid$MenuEditCancelDialogFragment;->isActive(Landroid/app/FragmentManager;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 4057
    :goto_0
    return-void

    .line 4055
    :cond_0
    new-instance v0, Lcom/android/launcher2/MenuAppsGrid$MenuEditCancelDialogFragment;

    invoke-direct {v0}, Lcom/android/launcher2/MenuAppsGrid$MenuEditCancelDialogFragment;-><init>()V

    .line 4056
    .local v0, "f":Lcom/android/launcher2/MenuAppsGrid$MenuEditCancelDialogFragment;
    const-string v1, "MenuEditCancelDialog"

    invoke-virtual {v0, p0, v1}, Lcom/android/launcher2/MenuAppsGrid$MenuEditCancelDialogFragment;->show(Landroid/app/FragmentManager;Ljava/lang/String;)V

    goto :goto_0
.end method

.method static dismiss(Landroid/app/FragmentTransaction;Landroid/app/FragmentManager;)V
    .locals 2
    .param p0, "ft"    # Landroid/app/FragmentTransaction;
    .param p1, "manager"    # Landroid/app/FragmentManager;

    .prologue
    .line 4064
    const-string v1, "MenuEditCancelDialog"

    invoke-virtual {p1, v1}, Landroid/app/FragmentManager;->findFragmentByTag(Ljava/lang/String;)Landroid/app/Fragment;

    move-result-object v0

    check-cast v0, Landroid/app/DialogFragment;

    .line 4065
    .local v0, "dialog":Landroid/app/DialogFragment;
    if-eqz v0, :cond_0

    .line 4066
    invoke-virtual {v0}, Landroid/app/DialogFragment;->dismissAllowingStateLoss()V

    .line 4067
    invoke-virtual {p0, v0}, Landroid/app/FragmentTransaction;->remove(Landroid/app/Fragment;)Landroid/app/FragmentTransaction;

    .line 4069
    :cond_0
    return-void
.end method

.method static isActive(Landroid/app/FragmentManager;)Z
    .locals 1
    .param p0, "manager"    # Landroid/app/FragmentManager;

    .prologue
    .line 4060
    const-string v0, "MenuEditCancelDialog"

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
    .locals 3
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "which"    # I

    .prologue
    .line 4091
    invoke-virtual {p0}, Lcom/android/launcher2/MenuAppsGrid$MenuEditCancelDialogFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    check-cast v1, Lcom/android/launcher2/Launcher;

    invoke-virtual {v1}, Lcom/android/launcher2/Launcher;->getMenuView()Lcom/android/launcher2/MenuView;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/launcher2/MenuView;->getMenuAppsGrid()Lcom/android/launcher2/MenuAppsGrid;

    move-result-object v0

    .line 4092
    .local v0, "menuAppsGrid":Lcom/android/launcher2/MenuAppsGrid;
    if-nez v0, :cond_1

    .line 4093
    const-string v1, "MenuEditCancelDialogFragment"

    const-string v2, "menu apps grid is null"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 4101
    :cond_0
    :goto_0
    return-void

    .line 4097
    :cond_1
    const/4 v1, -0x1

    if-ne v1, p2, :cond_0

    .line 4098
    invoke-virtual {v0}, Lcom/android/launcher2/MenuAppsGrid;->revertEditChanges()V

    .line 4099
    # getter for: Lcom/android/launcher2/MenuAppsGrid;->mMenuAppsGridFragment:Lcom/android/launcher2/MenuAppsGridFragment;
    invoke-static {v0}, Lcom/android/launcher2/MenuAppsGrid;->access$3200(Lcom/android/launcher2/MenuAppsGrid;)Lcom/android/launcher2/MenuAppsGridFragment;

    move-result-object v1

    sget-object v2, Lcom/android/launcher2/MenuAppsGrid$State;->NORMAL:Lcom/android/launcher2/MenuAppsGrid$State;

    invoke-virtual {v1, v2}, Lcom/android/launcher2/MenuAppsGridFragment;->changeState(Lcom/android/launcher2/MenuAppsGrid$State;)V

    goto :goto_0
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 0
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 4073
    invoke-super {p0, p1}, Landroid/app/DialogFragment;->onCreate(Landroid/os/Bundle;)V

    .line 4074
    return-void
.end method

.method public onCreateDialog(Landroid/os/Bundle;)Landroid/app/Dialog;
    .locals 6
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    const/high16 v5, 0x1040000

    .line 4078
    invoke-virtual {p0}, Lcom/android/launcher2/MenuAppsGrid$MenuEditCancelDialogFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    .line 4079
    .local v1, "c":Landroid/content/Context;
    new-instance v3, Landroid/app/AlertDialog$Builder;

    invoke-direct {v3, v1}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    invoke-virtual {v3, v5}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v3

    const v4, 0x7f10005b

    invoke-virtual {v3, v4}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    move-result-object v3

    invoke-virtual {v3, v5, p0}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v3

    const v4, 0x104000a

    invoke-virtual {v3, v4, p0}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    .line 4085
    .local v0, "builder":Landroid/app/AlertDialog$Builder;
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v2

    .line 4086
    .local v2, "dialog":Landroid/app/AlertDialog;
    return-object v2
.end method
