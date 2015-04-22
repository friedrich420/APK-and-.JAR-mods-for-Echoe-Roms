.class Lcom/android/systemui/qs/tiles/SilentModeTile$2;
.super Landroid/database/ContentObserver;
.source "SilentModeTile.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/qs/tiles/SilentModeTile;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/qs/tiles/SilentModeTile;


# direct methods
.method constructor <init>(Lcom/android/systemui/qs/tiles/SilentModeTile;Landroid/os/Handler;)V
    .locals 0
    .param p2, "x0"    # Landroid/os/Handler;

    .prologue
    .line 361
    iput-object p1, p0, Lcom/android/systemui/qs/tiles/SilentModeTile$2;->this$0:Lcom/android/systemui/qs/tiles/SilentModeTile;

    invoke-direct {p0, p2}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    return-void
.end method


# virtual methods
.method public onChange(ZLandroid/net/Uri;)V
    .locals 6
    .param p1, "selfChange"    # Z
    .param p2, "uri"    # Landroid/net/Uri;

    .prologue
    const/4 v5, 0x1

    .line 363
    iget-object v2, p0, Lcom/android/systemui/qs/tiles/SilentModeTile$2;->this$0:Lcom/android/systemui/qs/tiles/SilentModeTile;

    # getter for: Lcom/android/systemui/qs/tiles/SilentModeTile;->mContext:Landroid/content/Context;
    invoke-static {v2}, Lcom/android/systemui/qs/tiles/SilentModeTile;->access$200(Lcom/android/systemui/qs/tiles/SilentModeTile;)Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "zen_mode"

    const/4 v4, 0x0

    invoke-static {v2, v3, v4}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    .line 365
    .local v1, "zenmode":I
    const/4 v0, 0x0

    .line 366
    .local v0, "isChange":Z
    iget-object v2, p0, Lcom/android/systemui/qs/tiles/SilentModeTile$2;->this$0:Lcom/android/systemui/qs/tiles/SilentModeTile;

    # getter for: Lcom/android/systemui/qs/tiles/SilentModeTile;->mZenMode:I
    invoke-static {v2}, Lcom/android/systemui/qs/tiles/SilentModeTile;->access$300(Lcom/android/systemui/qs/tiles/SilentModeTile;)I

    move-result v2

    if-eq v1, v2, :cond_2

    .line 367
    if-eq v1, v5, :cond_0

    iget-object v2, p0, Lcom/android/systemui/qs/tiles/SilentModeTile$2;->this$0:Lcom/android/systemui/qs/tiles/SilentModeTile;

    # getter for: Lcom/android/systemui/qs/tiles/SilentModeTile;->mZenMode:I
    invoke-static {v2}, Lcom/android/systemui/qs/tiles/SilentModeTile;->access$300(Lcom/android/systemui/qs/tiles/SilentModeTile;)I

    move-result v2

    if-ne v2, v5, :cond_1

    .line 369
    :cond_0
    const/4 v0, 0x1

    .line 371
    :cond_1
    iget-object v2, p0, Lcom/android/systemui/qs/tiles/SilentModeTile$2;->this$0:Lcom/android/systemui/qs/tiles/SilentModeTile;

    # setter for: Lcom/android/systemui/qs/tiles/SilentModeTile;->mZenMode:I
    invoke-static {v2, v1}, Lcom/android/systemui/qs/tiles/SilentModeTile;->access$302(Lcom/android/systemui/qs/tiles/SilentModeTile;I)I

    .line 372
    if-eqz v0, :cond_2

    .line 373
    iget-object v2, p0, Lcom/android/systemui/qs/tiles/SilentModeTile$2;->this$0:Lcom/android/systemui/qs/tiles/SilentModeTile;

    invoke-virtual {v2}, Lcom/android/systemui/qs/tiles/SilentModeTile;->updateStatus()V

    .line 376
    :cond_2
    return-void
.end method
