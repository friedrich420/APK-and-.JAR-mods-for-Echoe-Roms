.class Lcom/android/launcher2/QuickViewWorkspace$1;
.super Landroid/animation/AnimatorListenerAdapter;
.source "QuickViewWorkspace.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/launcher2/QuickViewWorkspace;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
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
    .line 189
    iput-object p1, p0, Lcom/android/launcher2/QuickViewWorkspace$1;->this$0:Lcom/android/launcher2/QuickViewWorkspace;

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 5
    .param p1, "animation"    # Landroid/animation/Animator;

    .prologue
    const/4 v4, 0x0

    .line 194
    invoke-super {p0, p1}, Landroid/animation/AnimatorListenerAdapter;->onAnimationEnd(Landroid/animation/Animator;)V

    .line 196
    iget-object v2, p0, Lcom/android/launcher2/QuickViewWorkspace$1;->this$0:Lcom/android/launcher2/QuickViewWorkspace;

    invoke-virtual {v2}, Lcom/android/launcher2/QuickViewWorkspace;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    check-cast v1, Landroid/widget/FrameLayout$LayoutParams;

    .line 197
    .local v1, "layoutParams":Landroid/widget/FrameLayout$LayoutParams;
    iget-object v2, p0, Lcom/android/launcher2/QuickViewWorkspace$1;->this$0:Lcom/android/launcher2/QuickViewWorkspace;

    invoke-virtual {v2}, Lcom/android/launcher2/QuickViewWorkspace;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0e0142

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    .line 198
    .local v0, "bottomMargin":I
    invoke-virtual {v1, v4, v4, v4, v0}, Landroid/widget/FrameLayout$LayoutParams;->setMargins(IIII)V

    .line 199
    iget-object v2, p0, Lcom/android/launcher2/QuickViewWorkspace$1;->this$0:Lcom/android/launcher2/QuickViewWorkspace;

    invoke-virtual {v2, v1}, Lcom/android/launcher2/QuickViewWorkspace;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 200
    return-void
.end method
