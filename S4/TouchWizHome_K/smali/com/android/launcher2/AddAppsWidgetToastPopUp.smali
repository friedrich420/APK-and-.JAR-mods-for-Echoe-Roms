.class public Lcom/android/launcher2/AddAppsWidgetToastPopUp;
.super Landroid/app/DialogFragment;
.source "AddAppsWidgetToastPopUp.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/launcher2/AddAppsWidgetToastPopUp$DialogCheckBoxListener;
    }
.end annotation


# static fields
.field private static final sFragmentTag:Ljava/lang/String; = "AddAppsWidgetToastPopUp"


# instance fields
.field private mDialogCheckBoxListener:Lcom/android/launcher2/AddAppsWidgetToastPopUp$DialogCheckBoxListener;

.field private mView:Landroid/view/View;

.field toastRepeat:Landroid/widget/CheckBox;


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 32
    invoke-direct {p0}, Landroid/app/DialogFragment;-><init>()V

    .line 35
    iput-object v1, p0, Lcom/android/launcher2/AddAppsWidgetToastPopUp;->mView:Landroid/view/View;

    .line 36
    new-instance v0, Lcom/android/launcher2/AddAppsWidgetToastPopUp$DialogCheckBoxListener;

    invoke-direct {v0, p0}, Lcom/android/launcher2/AddAppsWidgetToastPopUp$DialogCheckBoxListener;-><init>(Lcom/android/launcher2/AddAppsWidgetToastPopUp;)V

    iput-object v0, p0, Lcom/android/launcher2/AddAppsWidgetToastPopUp;->mDialogCheckBoxListener:Lcom/android/launcher2/AddAppsWidgetToastPopUp$DialogCheckBoxListener;

    .line 37
    iput-object v1, p0, Lcom/android/launcher2/AddAppsWidgetToastPopUp;->toastRepeat:Landroid/widget/CheckBox;

    .line 123
    return-void
.end method

.method static createAndShow(Landroid/app/FragmentManager;)V
    .locals 2
    .param p0, "manager"    # Landroid/app/FragmentManager;

    .prologue
    .line 42
    invoke-static {p0}, Lcom/android/launcher2/AddAppsWidgetToastPopUp;->isActive(Landroid/app/FragmentManager;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 46
    :goto_0
    return-void

    .line 44
    :cond_0
    new-instance v0, Lcom/android/launcher2/AddAppsWidgetToastPopUp;

    invoke-direct {v0}, Lcom/android/launcher2/AddAppsWidgetToastPopUp;-><init>()V

    .line 45
    .local v0, "f":Lcom/android/launcher2/AddAppsWidgetToastPopUp;
    const-string v1, "AddAppsWidgetToastPopUp"

    invoke-virtual {v0, p0, v1}, Lcom/android/launcher2/AddAppsWidgetToastPopUp;->show(Landroid/app/FragmentManager;Ljava/lang/String;)V

    goto :goto_0
.end method

.method static dismiss(Landroid/app/FragmentManager;)V
    .locals 2
    .param p0, "manager"    # Landroid/app/FragmentManager;

    .prologue
    .line 56
    const-string v1, "AddAppsWidgetToastPopUp"

    invoke-virtual {p0, v1}, Landroid/app/FragmentManager;->findFragmentByTag(Ljava/lang/String;)Landroid/app/Fragment;

    move-result-object v0

    check-cast v0, Landroid/app/DialogFragment;

    .line 57
    .local v0, "dialog":Landroid/app/DialogFragment;
    if-eqz v0, :cond_0

    .line 58
    invoke-virtual {v0}, Landroid/app/DialogFragment;->dismissAllowingStateLoss()V

    .line 60
    :cond_0
    return-void
.end method

.method static isActive(Landroid/app/FragmentManager;)Z
    .locals 2
    .param p0, "manager"    # Landroid/app/FragmentManager;

    .prologue
    const/4 v0, 0x0

    .line 49
    if-eqz p0, :cond_0

    .line 50
    const-string v1, "AddAppsWidgetToastPopUp"

    invoke-virtual {p0, v1}, Landroid/app/FragmentManager;->findFragmentByTag(Ljava/lang/String;)Landroid/app/Fragment;

    move-result-object v1

    if-eqz v1, :cond_0

    const/4 v0, 0x1

    .line 52
    :cond_0
    return v0
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 3
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "whichButton"    # I

    .prologue
    .line 96
    const/4 v1, -0x1

    if-ne p2, v1, :cond_1

    .line 97
    invoke-virtual {p0}, Lcom/android/launcher2/AddAppsWidgetToastPopUp;->getActivity()Landroid/app/Activity;

    move-result-object v0

    check-cast v0, Lcom/android/launcher2/Launcher;

    .line 98
    .local v0, "launcher":Lcom/android/launcher2/Launcher;
    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/android/launcher2/AddAppsWidgetToastPopUp;->mView:Landroid/view/View;

    if-eqz v1, :cond_0

    .line 99
    iget-object v1, p0, Lcom/android/launcher2/AddAppsWidgetToastPopUp;->mView:Landroid/view/View;

    const v2, 0x7f0f0012

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/CheckBox;

    invoke-virtual {v1}, Landroid/widget/CheckBox;->isChecked()Z

    move-result v1

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/launcher2/Launcher;->saveToastPopup(Ljava/lang/Boolean;)V

    .line 101
    :cond_0
    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V

    .line 104
    .end local v0    # "launcher":Lcom/android/launcher2/Launcher;
    :cond_1
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 0
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 64
    invoke-super {p0, p1}, Landroid/app/DialogFragment;->onCreate(Landroid/os/Bundle;)V

    .line 65
    return-void
.end method

.method public onCreateDialog(Landroid/os/Bundle;)Landroid/app/Dialog;
    .locals 7
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 69
    invoke-virtual {p0}, Lcom/android/launcher2/AddAppsWidgetToastPopUp;->getActivity()Landroid/app/Activity;

    move-result-object v1

    .line 70
    .local v1, "c":Landroid/content/Context;
    invoke-virtual {p0}, Lcom/android/launcher2/AddAppsWidgetToastPopUp;->getActivity()Landroid/app/Activity;

    move-result-object v3

    check-cast v3, Lcom/android/launcher2/Launcher;

    .line 71
    .local v3, "launcher":Lcom/android/launcher2/Launcher;
    const/high16 v5, 0x7f030000

    const/4 v6, 0x0

    invoke-static {v1, v5, v6}, Landroid/view/View;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v4

    .line 72
    .local v4, "layout":Landroid/view/View;
    iput-object v4, p0, Lcom/android/launcher2/AddAppsWidgetToastPopUp;->mView:Landroid/view/View;

    .line 73
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-direct {v0, v1}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 74
    .local v0, "builder":Landroid/app/AlertDialog$Builder;
    const v5, 0x7f100019

    invoke-virtual {p0, v5}, Lcom/android/launcher2/AddAppsWidgetToastPopUp;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v5}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    .line 75
    invoke-virtual {v0, v4}, Landroid/app/AlertDialog$Builder;->setView(Landroid/view/View;)Landroid/app/AlertDialog$Builder;

    .line 76
    const v5, 0x7f100086

    invoke-virtual {v0, v5, p0}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 77
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v2

    .line 82
    .local v2, "dialog":Landroid/app/Dialog;
    const v5, 0x7f0f0012

    invoke-virtual {v4, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/CheckBox;

    iput-object v5, p0, Lcom/android/launcher2/AddAppsWidgetToastPopUp;->toastRepeat:Landroid/widget/CheckBox;

    .line 83
    iget-object v5, p0, Lcom/android/launcher2/AddAppsWidgetToastPopUp;->toastRepeat:Landroid/widget/CheckBox;

    if-eqz v5, :cond_0

    .line 84
    iget-object v5, p0, Lcom/android/launcher2/AddAppsWidgetToastPopUp;->toastRepeat:Landroid/widget/CheckBox;

    iget-object v6, p0, Lcom/android/launcher2/AddAppsWidgetToastPopUp;->mDialogCheckBoxListener:Lcom/android/launcher2/AddAppsWidgetToastPopUp$DialogCheckBoxListener;

    invoke-virtual {v5, v6}, Landroid/widget/CheckBox;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 85
    iget-object v5, p0, Lcom/android/launcher2/AddAppsWidgetToastPopUp;->toastRepeat:Landroid/widget/CheckBox;

    invoke-virtual {v3}, Lcom/android/launcher2/Launcher;->isDialogChecked()Z

    move-result v6

    invoke-virtual {v5, v6}, Landroid/widget/CheckBox;->setChecked(Z)V

    .line 89
    :cond_0
    return-object v2
.end method
