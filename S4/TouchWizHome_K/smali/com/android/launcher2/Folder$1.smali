.class Lcom/android/launcher2/Folder$1;
.super Ljava/lang/Object;
.source "Folder.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/launcher2/Folder;
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
    .line 370
    iput-object p1, p0, Lcom/android/launcher2/Folder$1;->this$0:Lcom/android/launcher2/Folder;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 373
    iget-object v1, p0, Lcom/android/launcher2/Folder$1;->this$0:Lcom/android/launcher2/Folder;

    invoke-virtual {v1, p1}, Lcom/android/launcher2/Folder;->getFolderColorByView(Landroid/view/View;)Lcom/android/launcher2/Folder$FolderColor;

    move-result-object v0

    .line 374
    .local v0, "color":Lcom/android/launcher2/Folder$FolderColor;
    iget-object v1, p0, Lcom/android/launcher2/Folder$1;->this$0:Lcom/android/launcher2/Folder;

    const/4 v2, 0x1

    invoke-virtual {v1, v0, v2}, Lcom/android/launcher2/Folder;->setFolderColor(Lcom/android/launcher2/Folder$FolderColor;Z)V

    .line 375
    return-void
.end method
