.class Lcom/android/launcher2/AddToHomescreenDialogFragment$1;
.super Ljava/lang/Object;
.source "AddToHomescreenDialogFragment.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/launcher2/AddToHomescreenDialogFragment;->onCreateDialog(Landroid/os/Bundle;)Landroid/app/Dialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/launcher2/AddToHomescreenDialogFragment;


# direct methods
.method constructor <init>(Lcom/android/launcher2/AddToHomescreenDialogFragment;)V
    .locals 0

    .prologue
    .line 134
    iput-object p1, p0, Lcom/android/launcher2/AddToHomescreenDialogFragment$1;->this$0:Lcom/android/launcher2/AddToHomescreenDialogFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1
    .param p1, "arg0"    # Landroid/view/View;

    .prologue
    .line 137
    const/4 v0, 0x1

    sput-boolean v0, Lcom/android/launcher2/AddToHomescreenDialogFragment;->setWallpaperSelected:Z

    .line 138
    iget-object v0, p0, Lcom/android/launcher2/AddToHomescreenDialogFragment$1;->this$0:Lcom/android/launcher2/AddToHomescreenDialogFragment;

    invoke-virtual {v0}, Lcom/android/launcher2/AddToHomescreenDialogFragment;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v0

    invoke-static {v0}, Lcom/android/launcher2/HomeScreenDialogFragment;->createAndShow(Landroid/app/FragmentManager;)V

    .line 139
    iget-object v0, p0, Lcom/android/launcher2/AddToHomescreenDialogFragment$1;->this$0:Lcom/android/launcher2/AddToHomescreenDialogFragment;

    invoke-virtual {v0}, Lcom/android/launcher2/AddToHomescreenDialogFragment;->dismiss()V

    .line 140
    return-void
.end method
