.class Lcom/android/launcher2/Launcher$6;
.super Landroid/animation/AnimatorListenerAdapter;
.source "Launcher.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/launcher2/Launcher;->exitAllappsAnimation(Z)V
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
    .line 1531
    iput-object p1, p0, Lcom/android/launcher2/Launcher$6;->this$0:Lcom/android/launcher2/Launcher;

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    .line 1532
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/launcher2/Launcher$6;->mCancelled:Z

    return-void
.end method


# virtual methods
.method public onAnimationCancel(Landroid/animation/Animator;)V
    .locals 1
    .param p1, "a"    # Landroid/animation/Animator;

    .prologue
    .line 1541
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/launcher2/Launcher$6;->mCancelled:Z

    .line 1542
    return-void
.end method

.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 1
    .param p1, "a"    # Landroid/animation/Animator;

    .prologue
    .line 1535
    iget-boolean v0, p0, Lcom/android/launcher2/Launcher$6;->mCancelled:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/launcher2/Launcher$6;->this$0:Lcom/android/launcher2/Launcher;

    # getter for: Lcom/android/launcher2/Launcher;->mIsDestroyed:Z
    invoke-static {v0}, Lcom/android/launcher2/Launcher;->access$200(Lcom/android/launcher2/Launcher;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 1536
    iget-object v0, p0, Lcom/android/launcher2/Launcher$6;->this$0:Lcom/android/launcher2/Launcher;

    # invokes: Lcom/android/launcher2/Launcher;->finishExitAllApps()V
    invoke-static {v0}, Lcom/android/launcher2/Launcher;->access$400(Lcom/android/launcher2/Launcher;)V

    .line 1538
    :cond_0
    return-void
.end method
