.class Lcom/android/launcher2/Launcher$3;
.super Landroid/animation/AnimatorListenerAdapter;
.source "Launcher.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/launcher2/Launcher;->showAllApps()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field private mCancelled:Z

.field final synthetic this$0:Lcom/android/launcher2/Launcher;


# direct methods
.method constructor <init>(Lcom/android/launcher2/Launcher;)V
    .locals 1

    .prologue
    .line 1357
    iput-object p1, p0, Lcom/android/launcher2/Launcher$3;->this$0:Lcom/android/launcher2/Launcher;

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    .line 1358
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/launcher2/Launcher$3;->mCancelled:Z

    return-void
.end method


# virtual methods
.method public onAnimationCancel(Landroid/animation/Animator;)V
    .locals 2
    .param p1, "a"    # Landroid/animation/Animator;

    .prologue
    .line 1368
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/launcher2/Launcher$3;->mCancelled:Z

    .line 1369
    iget-object v0, p0, Lcom/android/launcher2/Launcher$3;->this$0:Lcom/android/launcher2/Launcher;

    const/4 v1, 0x0

    iput-boolean v1, v0, Lcom/android/launcher2/Launcher;->mInMenu:Z

    .line 1370
    return-void
.end method

.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 1
    .param p1, "a"    # Landroid/animation/Animator;

    .prologue
    .line 1362
    iget-boolean v0, p0, Lcom/android/launcher2/Launcher$3;->mCancelled:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/launcher2/Launcher$3;->this$0:Lcom/android/launcher2/Launcher;

    # getter for: Lcom/android/launcher2/Launcher;->mIsDestroyed:Z
    invoke-static {v0}, Lcom/android/launcher2/Launcher;->access$200(Lcom/android/launcher2/Launcher;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 1363
    iget-object v0, p0, Lcom/android/launcher2/Launcher$3;->this$0:Lcom/android/launcher2/Launcher;

    # invokes: Lcom/android/launcher2/Launcher;->finishShowAllApps()V
    invoke-static {v0}, Lcom/android/launcher2/Launcher;->access$300(Lcom/android/launcher2/Launcher;)V

    .line 1365
    :cond_0
    return-void
.end method
