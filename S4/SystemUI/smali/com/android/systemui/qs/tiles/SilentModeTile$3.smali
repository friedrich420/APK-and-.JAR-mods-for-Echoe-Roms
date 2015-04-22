.class Lcom/android/systemui/qs/tiles/SilentModeTile$3;
.super Ljava/lang/Object;
.source "SilentModeTile.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/systemui/qs/tiles/SilentModeTile;->showSecondaryMenu()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/qs/tiles/SilentModeTile;


# direct methods
.method constructor <init>(Lcom/android/systemui/qs/tiles/SilentModeTile;)V
    .locals 0

    .prologue
    .line 393
    iput-object p1, p0, Lcom/android/systemui/qs/tiles/SilentModeTile$3;->this$0:Lcom/android/systemui/qs/tiles/SilentModeTile;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 5
    .param p1, "view"    # Landroid/view/View;

    .prologue
    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 395
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    const v1, 0x7f0e01d5

    if-ne v0, v1, :cond_1

    .line 396
    # getter for: Lcom/android/systemui/qs/tiles/SilentModeTile;->mDeviceSoundProfile:I
    invoke-static {}, Lcom/android/systemui/qs/tiles/SilentModeTile;->access$100()I

    move-result v0

    if-eq v0, v4, :cond_0

    .line 397
    iget-object v0, p0, Lcom/android/systemui/qs/tiles/SilentModeTile$3;->this$0:Lcom/android/systemui/qs/tiles/SilentModeTile;

    # getter for: Lcom/android/systemui/qs/tiles/SilentModeTile;->mAudioManager:Landroid/media/AudioManager;
    invoke-static {v0}, Lcom/android/systemui/qs/tiles/SilentModeTile;->access$400(Lcom/android/systemui/qs/tiles/SilentModeTile;)Landroid/media/AudioManager;

    move-result-object v0

    invoke-virtual {v0, v4, v2}, Landroid/media/AudioManager;->setRingerMode(IZ)V

    .line 398
    iget-object v0, p0, Lcom/android/systemui/qs/tiles/SilentModeTile$3;->this$0:Lcom/android/systemui/qs/tiles/SilentModeTile;

    invoke-virtual {v0}, Lcom/android/systemui/qs/tiles/SilentModeTile;->closeDetailviewPanel()V

    .line 410
    :cond_0
    :goto_0
    return-void

    .line 401
    :cond_1
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    const v1, 0x7f0e01d6

    if-ne v0, v1, :cond_2

    .line 402
    # getter for: Lcom/android/systemui/qs/tiles/SilentModeTile;->mDeviceSoundProfile:I
    invoke-static {}, Lcom/android/systemui/qs/tiles/SilentModeTile;->access$100()I

    move-result v0

    if-eq v0, v3, :cond_0

    .line 403
    iget-object v0, p0, Lcom/android/systemui/qs/tiles/SilentModeTile$3;->this$0:Lcom/android/systemui/qs/tiles/SilentModeTile;

    # getter for: Lcom/android/systemui/qs/tiles/SilentModeTile;->mAudioManager:Landroid/media/AudioManager;
    invoke-static {v0}, Lcom/android/systemui/qs/tiles/SilentModeTile;->access$400(Lcom/android/systemui/qs/tiles/SilentModeTile;)Landroid/media/AudioManager;

    move-result-object v0

    invoke-virtual {v0, v3, v2}, Landroid/media/AudioManager;->setRingerMode(IZ)V

    .line 404
    iget-object v0, p0, Lcom/android/systemui/qs/tiles/SilentModeTile$3;->this$0:Lcom/android/systemui/qs/tiles/SilentModeTile;

    invoke-virtual {v0}, Lcom/android/systemui/qs/tiles/SilentModeTile;->closeDetailviewPanel()V

    goto :goto_0

    .line 408
    :cond_2
    iget-object v0, p0, Lcom/android/systemui/qs/tiles/SilentModeTile$3;->this$0:Lcom/android/systemui/qs/tiles/SilentModeTile;

    invoke-virtual {v0}, Lcom/android/systemui/qs/tiles/SilentModeTile;->closeDetailviewPanel()V

    goto :goto_0
.end method
