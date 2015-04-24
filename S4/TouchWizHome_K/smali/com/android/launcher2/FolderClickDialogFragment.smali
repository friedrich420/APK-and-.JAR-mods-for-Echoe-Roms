.class public Lcom/android/launcher2/FolderClickDialogFragment;
.super Landroid/app/DialogFragment;
.source "FolderClickDialogFragment.java"


# static fields
.field private static mFolder:Lcom/android/launcher2/FolderItem; = null

.field private static mState:Lcom/android/launcher2/MenuAppsGrid$State; = null

.field private static final sFragmentTag:Ljava/lang/String; = "FolderEditClick"


# instance fields
.field private mContext:Landroid/content/Context;

.field private mItems:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 24
    sget-object v0, Lcom/android/launcher2/MenuAppsGrid$State;->NORMAL:Lcom/android/launcher2/MenuAppsGrid$State;

    sput-object v0, Lcom/android/launcher2/FolderClickDialogFragment;->mState:Lcom/android/launcher2/MenuAppsGrid$State;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 19
    invoke-direct {p0}, Landroid/app/DialogFragment;-><init>()V

    return-void
.end method

.method static synthetic access$000(Lcom/android/launcher2/FolderClickDialogFragment;)Landroid/content/Context;
    .locals 1
    .param p0, "x0"    # Lcom/android/launcher2/FolderClickDialogFragment;

    .prologue
    .line 19
    iget-object v0, p0, Lcom/android/launcher2/FolderClickDialogFragment;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$100()Lcom/android/launcher2/FolderItem;
    .locals 1

    .prologue
    .line 19
    sget-object v0, Lcom/android/launcher2/FolderClickDialogFragment;->mFolder:Lcom/android/launcher2/FolderItem;

    return-object v0
.end method

.method static createAndShow(Landroid/app/FragmentManager;Lcom/android/launcher2/FolderItem;Lcom/android/launcher2/MenuAppsGrid$State;)V
    .locals 2
    .param p0, "fm"    # Landroid/app/FragmentManager;
    .param p1, "item"    # Lcom/android/launcher2/FolderItem;
    .param p2, "state"    # Lcom/android/launcher2/MenuAppsGrid$State;

    .prologue
    .line 29
    invoke-static {p0}, Lcom/android/launcher2/FolderClickDialogFragment;->isActive(Landroid/app/FragmentManager;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 35
    :goto_0
    return-void

    .line 31
    :cond_0
    sput-object p1, Lcom/android/launcher2/FolderClickDialogFragment;->mFolder:Lcom/android/launcher2/FolderItem;

    .line 32
    sput-object p2, Lcom/android/launcher2/FolderClickDialogFragment;->mState:Lcom/android/launcher2/MenuAppsGrid$State;

    .line 33
    new-instance v0, Lcom/android/launcher2/FolderClickDialogFragment;

    invoke-direct {v0}, Lcom/android/launcher2/FolderClickDialogFragment;-><init>()V

    .line 34
    .local v0, "folderDialog":Lcom/android/launcher2/FolderClickDialogFragment;
    const-string v1, "FolderEditClick"

    invoke-virtual {v0, p0, v1}, Lcom/android/launcher2/FolderClickDialogFragment;->show(Landroid/app/FragmentManager;Ljava/lang/String;)V

    goto :goto_0
.end method

.method static dismiss(Landroid/app/FragmentManager;)V
    .locals 2
    .param p0, "manager"    # Landroid/app/FragmentManager;

    .prologue
    .line 42
    const-string v1, "FolderEditClick"

    invoke-virtual {p0, v1}, Landroid/app/FragmentManager;->findFragmentByTag(Ljava/lang/String;)Landroid/app/Fragment;

    move-result-object v0

    check-cast v0, Landroid/app/DialogFragment;

    .line 44
    .local v0, "dialog":Landroid/app/DialogFragment;
    if-eqz v0, :cond_0

    .line 45
    invoke-virtual {v0}, Landroid/app/DialogFragment;->dismissAllowingStateLoss()V

    .line 47
    :cond_0
    return-void
.end method

.method static isActive(Landroid/app/FragmentManager;)Z
    .locals 1
    .param p0, "manager"    # Landroid/app/FragmentManager;

    .prologue
    .line 38
    const-string v0, "FolderEditClick"

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
.method public onCreate(Landroid/os/Bundle;)V
    .locals 1
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 51
    invoke-virtual {p0}, Lcom/android/launcher2/FolderClickDialogFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    iput-object v0, p0, Lcom/android/launcher2/FolderClickDialogFragment;->mContext:Landroid/content/Context;

    .line 52
    invoke-super {p0, p1}, Landroid/app/DialogFragment;->onCreate(Landroid/os/Bundle;)V

    .line 53
    return-void
.end method

.method public onCreateDialog(Landroid/os/Bundle;)Landroid/app/Dialog;
    .locals 6
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 63
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    iput-object v3, p0, Lcom/android/launcher2/FolderClickDialogFragment;->mItems:Ljava/util/ArrayList;

    .line 64
    iget-object v3, p0, Lcom/android/launcher2/FolderClickDialogFragment;->mItems:Ljava/util/ArrayList;

    iget-object v4, p0, Lcom/android/launcher2/FolderClickDialogFragment;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f100131

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 65
    sget-object v3, Lcom/android/launcher2/FolderClickDialogFragment;->mState:Lcom/android/launcher2/MenuAppsGrid$State;

    sget-object v4, Lcom/android/launcher2/MenuAppsGrid$State;->EDIT:Lcom/android/launcher2/MenuAppsGrid$State;

    if-ne v3, v4, :cond_0

    .line 66
    iget-object v3, p0, Lcom/android/launcher2/FolderClickDialogFragment;->mItems:Ljava/util/ArrayList;

    iget-object v4, p0, Lcom/android/launcher2/FolderClickDialogFragment;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f10000b

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 68
    :cond_0
    new-instance v1, Landroid/app/AlertDialog$Builder;

    invoke-virtual {p0}, Lcom/android/launcher2/FolderClickDialogFragment;->getActivity()Landroid/app/Activity;

    move-result-object v3

    invoke-direct {v1, v3}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 69
    .local v1, "builder":Landroid/app/AlertDialog$Builder;
    iget-object v3, p0, Lcom/android/launcher2/FolderClickDialogFragment;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f100016

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    .line 71
    new-instance v0, Landroid/widget/ArrayAdapter;

    iget-object v3, p0, Lcom/android/launcher2/FolderClickDialogFragment;->mContext:Landroid/content/Context;

    const v4, 0x7f030001

    iget-object v5, p0, Lcom/android/launcher2/FolderClickDialogFragment;->mItems:Ljava/util/ArrayList;

    invoke-direct {v0, v3, v4, v5}, Landroid/widget/ArrayAdapter;-><init>(Landroid/content/Context;ILjava/util/List;)V

    .line 73
    .local v0, "adapter":Landroid/widget/ArrayAdapter;, "Landroid/widget/ArrayAdapter<Ljava/lang/String;>;"
    new-instance v3, Lcom/android/launcher2/FolderClickDialogFragment$1;

    invoke-direct {v3, p0}, Lcom/android/launcher2/FolderClickDialogFragment$1;-><init>(Lcom/android/launcher2/FolderClickDialogFragment;)V

    invoke-virtual {v1, v0, v3}, Landroid/app/AlertDialog$Builder;->setAdapter(Landroid/widget/ListAdapter;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 104
    invoke-virtual {v1}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v2

    .line 105
    .local v2, "dialog":Landroid/app/Dialog;
    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Landroid/app/Dialog;->setCanceledOnTouchOutside(Z)V

    .line 106
    return-object v2
.end method

.method public onDismiss(Landroid/content/DialogInterface;)V
    .locals 2
    .param p1, "dialog"    # Landroid/content/DialogInterface;

    .prologue
    .line 56
    invoke-virtual {p0}, Lcom/android/launcher2/FolderClickDialogFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    check-cast v0, Lcom/android/launcher2/Launcher;

    .line 57
    .local v0, "launcher":Lcom/android/launcher2/Launcher;
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/android/launcher2/Launcher;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-virtual {v0}, Lcom/android/launcher2/Launcher;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v1

    invoke-static {v1}, Lcom/android/launcher2/FolderClickDialogFragment;->isActive(Landroid/app/FragmentManager;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 58
    invoke-virtual {p0}, Lcom/android/launcher2/FolderClickDialogFragment;->dismiss()V

    .line 59
    :cond_0
    return-void
.end method
