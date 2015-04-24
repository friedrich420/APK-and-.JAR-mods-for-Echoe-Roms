.class abstract Lcom/android/launcher2/guide/GuiderBase;
.super Ljava/lang/Object;
.source "GuiderBase.java"


# instance fields
.field private mActivityRef:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference",
            "<",
            "Landroid/app/Activity;",
            ">;"
        }
    .end annotation
.end field

.field private mFragmentRef:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference",
            "<",
            "Landroid/app/Fragment;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/app/Activity;)V
    .locals 3
    .param p1, "activity"    # Landroid/app/Activity;

    .prologue
    .line 47
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 49
    if-nez p1, :cond_0

    .line 50
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Expecting not null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 53
    :cond_0
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/android/launcher2/guide/GuiderBase;->mActivityRef:Ljava/lang/ref/WeakReference;

    .line 54
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-virtual {p1}, Landroid/app/Activity;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v1

    const-string v2, "GuideFragment"

    invoke-virtual {v1, v2}, Landroid/app/FragmentManager;->findFragmentByTag(Ljava/lang/String;)Landroid/app/Fragment;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/android/launcher2/guide/GuiderBase;->mFragmentRef:Ljava/lang/ref/WeakReference;

    .line 56
    return-void
.end method


# virtual methods
.method public finish()V
    .locals 0

    .prologue
    .line 61
    return-void
.end method

.method getActivity()Landroid/app/Activity;
    .locals 1

    .prologue
    .line 102
    iget-object v0, p0, Lcom/android/launcher2/guide/GuiderBase;->mActivityRef:Ljava/lang/ref/WeakReference;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/launcher2/guide/GuiderBase;->mActivityRef:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/Activity;

    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method getFragment()Landroid/app/Fragment;
    .locals 1

    .prologue
    .line 109
    iget-object v0, p0, Lcom/android/launcher2/guide/GuiderBase;->mFragmentRef:Ljava/lang/ref/WeakReference;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/launcher2/guide/GuiderBase;->mFragmentRef:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/Fragment;

    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public onSwitcherChanged(Landroid/widget/CompoundButton;Z)Z
    .locals 1
    .param p1, "buttonView"    # Landroid/widget/CompoundButton;
    .param p2, "isChecked"    # Z

    .prologue
    .line 116
    const/4 v0, 0x0

    return v0
.end method

.method public showCompleteDialog()V
    .locals 6

    .prologue
    const v5, 0x7f1000a4

    .line 72
    new-instance v1, Landroid/app/AlertDialog$Builder;

    invoke-virtual {p0}, Lcom/android/launcher2/guide/GuiderBase;->getActivity()Landroid/app/Activity;

    move-result-object v3

    invoke-direct {v1, v3}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 73
    .local v1, "builderstart":Landroid/app/AlertDialog$Builder;
    invoke-virtual {p0}, Lcom/android/launcher2/guide/GuiderBase;->getActivity()Landroid/app/Activity;

    move-result-object v0

    .line 74
    .local v0, "activity":Landroid/app/Activity;
    if-nez v0, :cond_0

    .line 96
    :goto_0
    return-void

    .line 78
    :cond_0
    invoke-virtual {v0}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    .line 81
    .local v2, "res":Landroid/content/res/Resources;
    const v3, 0x7f1000a5

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object v3

    invoke-virtual {v1, v3}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v3

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Landroid/app/AlertDialog$Builder;->setCancelable(Z)Landroid/app/AlertDialog$Builder;

    move-result-object v3

    invoke-virtual {v2, v5}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v3

    invoke-virtual {v2, v5}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object v4

    new-instance v5, Lcom/android/launcher2/guide/GuiderBase$1;

    invoke-direct {v5, p0, v0}, Lcom/android/launcher2/guide/GuiderBase$1;-><init>(Lcom/android/launcher2/guide/GuiderBase;Landroid/app/Activity;)V

    invoke-virtual {v3, v4, v5}, Landroid/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v3

    invoke-virtual {v3}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    goto :goto_0
.end method

.method protected showDialog(Landroid/view/View;)V
    .locals 0
    .param p1, "guide_view"    # Landroid/view/View;

    .prologue
    .line 65
    return-void
.end method

.method public showHelpDialog()V
    .locals 0

    .prologue
    .line 69
    return-void
.end method
