.class Lcom/android/launcher2/Folder$13;
.super Ljava/lang/Object;
.source "Folder.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/launcher2/Folder;->repositionOpenFolder()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/launcher2/Folder;


# direct methods
.method constructor <init>(Lcom/android/launcher2/Folder;)V
    .locals 0

    .prologue
    .line 2047
    iput-object p1, p0, Lcom/android/launcher2/Folder$13;->this$0:Lcom/android/launcher2/Folder;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .prologue
    .line 2056
    iget-object v0, p0, Lcom/android/launcher2/Folder$13;->this$0:Lcom/android/launcher2/Folder;

    invoke-virtual {v0}, Lcom/android/launcher2/Folder;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 2057
    iget-object v0, p0, Lcom/android/launcher2/Folder$13;->this$0:Lcom/android/launcher2/Folder;

    invoke-virtual {v0}, Lcom/android/launcher2/Folder;->centerAboutIcon()V

    .line 2058
    iget-object v0, p0, Lcom/android/launcher2/Folder$13;->this$0:Lcom/android/launcher2/Folder;

    # invokes: Lcom/android/launcher2/Folder;->showAddFolderItem()V
    invoke-static {v0}, Lcom/android/launcher2/Folder;->access$700(Lcom/android/launcher2/Folder;)V

    .line 2060
    :cond_0
    return-void
.end method
