.class Lcom/android/launcher2/HomeScreenOptionTransition$1$1;
.super Ljava/lang/Object;
.source "HomeScreenOptionTransition.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/launcher2/HomeScreenOptionTransition$1;->onPrepared(Landroid/media/MediaPlayer;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/android/launcher2/HomeScreenOptionTransition$1;


# direct methods
.method constructor <init>(Lcom/android/launcher2/HomeScreenOptionTransition$1;)V
    .locals 0

    .prologue
    .line 215
    iput-object p1, p0, Lcom/android/launcher2/HomeScreenOptionTransition$1$1;->this$1:Lcom/android/launcher2/HomeScreenOptionTransition$1;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 218
    iget-object v0, p0, Lcom/android/launcher2/HomeScreenOptionTransition$1$1;->this$1:Lcom/android/launcher2/HomeScreenOptionTransition$1;

    iget-object v0, v0, Lcom/android/launcher2/HomeScreenOptionTransition$1;->this$0:Lcom/android/launcher2/HomeScreenOptionTransition;

    iget-object v0, v0, Lcom/android/launcher2/HomeScreenOptionTransition;->mVideoView:Landroid/widget/VideoView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/VideoView;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 219
    return-void
.end method
