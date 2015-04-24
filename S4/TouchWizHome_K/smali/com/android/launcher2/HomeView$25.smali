.class Lcom/android/launcher2/HomeView$25;
.super Ljava/lang/Object;
.source "HomeView.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/launcher2/HomeView;->setupHomeViewAfterRotationForTB(I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/launcher2/HomeView;


# direct methods
.method constructor <init>(Lcom/android/launcher2/HomeView;)V
    .locals 0

    .prologue
    .line 5204
    iput-object p1, p0, Lcom/android/launcher2/HomeView$25;->this$0:Lcom/android/launcher2/HomeView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .prologue
    .line 5207
    iget-object v0, p0, Lcom/android/launcher2/HomeView$25;->this$0:Lcom/android/launcher2/HomeView;

    invoke-virtual {v0}, Lcom/android/launcher2/HomeView;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    invoke-interface {v0}, Landroid/view/ViewParent;->requestLayout()V

    .line 5208
    return-void
.end method
