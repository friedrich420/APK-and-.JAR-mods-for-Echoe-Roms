.class Lcom/android/launcher2/MenuAppsGrid$1;
.super Ljava/lang/Object;
.source "MenuAppsGrid.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/launcher2/MenuAppsGrid;->openFolder(Lcom/android/launcher2/FolderItem;Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/launcher2/MenuAppsGrid;

.field final synthetic val$icon:Lcom/android/launcher2/FolderIconView;


# direct methods
.method constructor <init>(Lcom/android/launcher2/MenuAppsGrid;Lcom/android/launcher2/FolderIconView;)V
    .locals 0

    .prologue
    .line 466
    iput-object p1, p0, Lcom/android/launcher2/MenuAppsGrid$1;->this$0:Lcom/android/launcher2/MenuAppsGrid;

    iput-object p2, p0, Lcom/android/launcher2/MenuAppsGrid$1;->val$icon:Lcom/android/launcher2/FolderIconView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 469
    iget-object v0, p0, Lcom/android/launcher2/MenuAppsGrid$1;->val$icon:Lcom/android/launcher2/FolderIconView;

    const/16 v1, 0x80

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/android/launcher2/FolderIconView;->performAccessibilityAction(ILandroid/os/Bundle;)Z

    .line 470
    return-void
.end method
