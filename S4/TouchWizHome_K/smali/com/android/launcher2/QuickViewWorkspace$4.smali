.class Lcom/android/launcher2/QuickViewWorkspace$4;
.super Ljava/lang/Object;
.source "QuickViewWorkspace.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/launcher2/QuickViewWorkspace;->onConfigurationChanged(Landroid/content/res/Configuration;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/launcher2/QuickViewWorkspace;


# direct methods
.method constructor <init>(Lcom/android/launcher2/QuickViewWorkspace;)V
    .locals 0

    .prologue
    .line 2410
    iput-object p1, p0, Lcom/android/launcher2/QuickViewWorkspace$4;->this$0:Lcom/android/launcher2/QuickViewWorkspace;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 2414
    iget-object v0, p0, Lcom/android/launcher2/QuickViewWorkspace$4;->this$0:Lcom/android/launcher2/QuickViewWorkspace;

    const/4 v1, 0x0

    # setter for: Lcom/android/launcher2/QuickViewWorkspace;->mConfigurationChangeIsInProgress:Z
    invoke-static {v0, v1}, Lcom/android/launcher2/QuickViewWorkspace;->access$302(Lcom/android/launcher2/QuickViewWorkspace;Z)Z

    .line 2415
    return-void
.end method
