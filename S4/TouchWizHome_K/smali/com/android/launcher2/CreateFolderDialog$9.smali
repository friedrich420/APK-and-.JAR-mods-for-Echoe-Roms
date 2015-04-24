.class Lcom/android/launcher2/CreateFolderDialog$9;
.super Ljava/lang/Object;
.source "CreateFolderDialog.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/launcher2/CreateFolderDialog;->onDismiss(Landroid/content/DialogInterface;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/launcher2/CreateFolderDialog;


# direct methods
.method constructor <init>(Lcom/android/launcher2/CreateFolderDialog;)V
    .locals 0

    .prologue
    .line 854
    iput-object p1, p0, Lcom/android/launcher2/CreateFolderDialog$9;->this$0:Lcom/android/launcher2/CreateFolderDialog;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .prologue
    .line 857
    iget-object v0, p0, Lcom/android/launcher2/CreateFolderDialog$9;->this$0:Lcom/android/launcher2/CreateFolderDialog;

    invoke-virtual {v0}, Lcom/android/launcher2/CreateFolderDialog;->getActivity()Landroid/app/Activity;

    move-result-object v0

    check-cast v0, Lcom/android/launcher2/Launcher;

    if-eqz v0, :cond_0

    .line 858
    iget-object v0, p0, Lcom/android/launcher2/CreateFolderDialog$9;->this$0:Lcom/android/launcher2/CreateFolderDialog;

    invoke-virtual {v0}, Lcom/android/launcher2/CreateFolderDialog;->getActivity()Landroid/app/Activity;

    move-result-object v0

    check-cast v0, Lcom/android/launcher2/Launcher;

    invoke-virtual {v0}, Lcom/android/launcher2/Launcher;->onBackPressed()V

    .line 859
    :cond_0
    return-void
.end method
