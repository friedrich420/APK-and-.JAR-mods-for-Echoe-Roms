.class Lcom/android/launcher2/Workspace$23;
.super Ljava/lang/Object;
.source "Workspace.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/launcher2/Workspace;->dispatchDragEvent(Landroid/view/DragEvent;)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/launcher2/Workspace;


# direct methods
.method constructor <init>(Lcom/android/launcher2/Workspace;)V
    .locals 0

    .prologue
    .line 4242
    iput-object p1, p0, Lcom/android/launcher2/Workspace$23;->this$0:Lcom/android/launcher2/Workspace;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .prologue
    .line 4244
    iget-object v0, p0, Lcom/android/launcher2/Workspace$23;->this$0:Lcom/android/launcher2/Workspace;

    invoke-virtual {v0}, Lcom/android/launcher2/Workspace;->remainOrRemovePlusPage()V

    .line 4245
    return-void
.end method
