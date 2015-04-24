.class Lcom/android/launcher2/FolderAnimator$5;
.super Ljava/lang/Object;
.source "FolderAnimator.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/launcher2/FolderAnimator;->removeOpenAnimations()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/launcher2/FolderAnimator;

.field final synthetic val$img:Landroid/widget/ImageView;


# direct methods
.method constructor <init>(Lcom/android/launcher2/FolderAnimator;Landroid/widget/ImageView;)V
    .locals 0

    .prologue
    .line 525
    iput-object p1, p0, Lcom/android/launcher2/FolderAnimator$5;->this$0:Lcom/android/launcher2/FolderAnimator;

    iput-object p2, p0, Lcom/android/launcher2/FolderAnimator$5;->val$img:Landroid/widget/ImageView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 528
    iget-object v0, p0, Lcom/android/launcher2/FolderAnimator$5;->this$0:Lcom/android/launcher2/FolderAnimator;

    # getter for: Lcom/android/launcher2/FolderAnimator;->mAnimationLayer:Lcom/android/launcher2/AnimationLayer;
    invoke-static {v0}, Lcom/android/launcher2/FolderAnimator;->access$100(Lcom/android/launcher2/FolderAnimator;)Lcom/android/launcher2/AnimationLayer;

    move-result-object v0

    iget-object v1, p0, Lcom/android/launcher2/FolderAnimator$5;->val$img:Landroid/widget/ImageView;

    invoke-virtual {v0, v1}, Lcom/android/launcher2/AnimationLayer;->removeView(Landroid/view/View;)V

    .line 529
    return-void
.end method
