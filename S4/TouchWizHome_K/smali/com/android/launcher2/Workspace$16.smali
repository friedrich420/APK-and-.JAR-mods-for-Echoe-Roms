.class Lcom/android/launcher2/Workspace$16;
.super Landroid/animation/AnimatorListenerAdapter;
.source "Workspace.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/launcher2/Workspace;->changeState(Lcom/android/launcher2/Workspace$State;ZILcom/android/launcher2/BaseItem;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/launcher2/Workspace;

.field final synthetic val$HomeEditTitleBar:Landroid/view/ViewGroup;


# direct methods
.method constructor <init>(Lcom/android/launcher2/Workspace;Landroid/view/ViewGroup;)V
    .locals 0

    .prologue
    .line 2339
    iput-object p1, p0, Lcom/android/launcher2/Workspace$16;->this$0:Lcom/android/launcher2/Workspace;

    iput-object p2, p0, Lcom/android/launcher2/Workspace$16;->val$HomeEditTitleBar:Landroid/view/ViewGroup;

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 3
    .param p1, "a"    # Landroid/animation/Animator;

    .prologue
    .line 2342
    iget-object v0, p0, Lcom/android/launcher2/Workspace$16;->val$HomeEditTitleBar:Landroid/view/ViewGroup;

    const/4 v1, 0x0

    sget-object v2, Lcom/android/launcher2/Launcher;->sViewLayerPaint:Landroid/graphics/Paint;

    invoke-virtual {v0, v1, v2}, Landroid/view/ViewGroup;->setLayerType(ILandroid/graphics/Paint;)V

    .line 2343
    iget-object v0, p0, Lcom/android/launcher2/Workspace$16;->val$HomeEditTitleBar:Landroid/view/ViewGroup;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->setVisibility(I)V

    .line 2344
    return-void
.end method
