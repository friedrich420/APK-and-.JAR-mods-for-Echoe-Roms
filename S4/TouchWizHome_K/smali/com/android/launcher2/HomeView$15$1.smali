.class Lcom/android/launcher2/HomeView$15$1;
.super Ljava/lang/Object;
.source "HomeView.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/launcher2/HomeView$15;->handleMessage(Landroid/os/Message;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/android/launcher2/HomeView$15;

.field final synthetic val$v:Landroid/view/View;


# direct methods
.method constructor <init>(Lcom/android/launcher2/HomeView$15;Landroid/view/View;)V
    .locals 0

    .prologue
    .line 1943
    iput-object p1, p0, Lcom/android/launcher2/HomeView$15$1;->this$1:Lcom/android/launcher2/HomeView$15;

    iput-object p2, p0, Lcom/android/launcher2/HomeView$15$1;->val$v:Landroid/view/View;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .prologue
    .line 1946
    iget-object v0, p0, Lcom/android/launcher2/HomeView$15$1;->val$v:Landroid/view/View;

    instance-of v0, v0, Landroid/widget/Advanceable;

    if-eqz v0, :cond_0

    .line 1947
    iget-object v0, p0, Lcom/android/launcher2/HomeView$15$1;->val$v:Landroid/view/View;

    check-cast v0, Landroid/widget/Advanceable;

    invoke-interface {v0}, Landroid/widget/Advanceable;->advance()V

    .line 1948
    :cond_0
    return-void
.end method
