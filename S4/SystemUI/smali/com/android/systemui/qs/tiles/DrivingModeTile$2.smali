.class Lcom/android/systemui/qs/tiles/DrivingModeTile$2;
.super Landroid/database/ContentObserver;
.source "DrivingModeTile.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/qs/tiles/DrivingModeTile;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/qs/tiles/DrivingModeTile;


# direct methods
.method constructor <init>(Lcom/android/systemui/qs/tiles/DrivingModeTile;Landroid/os/Handler;)V
    .locals 0
    .param p2, "x0"    # Landroid/os/Handler;

    .prologue
    .line 160
    iput-object p1, p0, Lcom/android/systemui/qs/tiles/DrivingModeTile$2;->this$0:Lcom/android/systemui/qs/tiles/DrivingModeTile;

    invoke-direct {p0, p2}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    return-void
.end method


# virtual methods
.method public onChange(ZLandroid/net/Uri;)V
    .locals 6
    .param p1, "selfChange"    # Z
    .param p2, "uri"    # Landroid/net/Uri;

    .prologue
    const/4 v2, 0x2

    const/4 v1, 0x1

    .line 162
    iget-object v3, p0, Lcom/android/systemui/qs/tiles/DrivingModeTile$2;->this$0:Lcom/android/systemui/qs/tiles/DrivingModeTile;

    # getter for: Lcom/android/systemui/qs/tiles/DrivingModeTile;->mContext:Landroid/content/Context;
    invoke-static {v3}, Lcom/android/systemui/qs/tiles/DrivingModeTile;->access$200(Lcom/android/systemui/qs/tiles/DrivingModeTile;)Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string v4, "zen_mode"

    const/4 v5, 0x0

    invoke-static {v3, v4, v5}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    .line 164
    .local v0, "zenmode":I
    iget-object v3, p0, Lcom/android/systemui/qs/tiles/DrivingModeTile$2;->this$0:Lcom/android/systemui/qs/tiles/DrivingModeTile;

    # getter for: Lcom/android/systemui/qs/tiles/DrivingModeTile;->mZenMode:I
    invoke-static {v3}, Lcom/android/systemui/qs/tiles/DrivingModeTile;->access$300(Lcom/android/systemui/qs/tiles/DrivingModeTile;)I

    move-result v3

    if-eq v0, v3, :cond_1

    .line 165
    iget-object v3, p0, Lcom/android/systemui/qs/tiles/DrivingModeTile$2;->this$0:Lcom/android/systemui/qs/tiles/DrivingModeTile;

    # setter for: Lcom/android/systemui/qs/tiles/DrivingModeTile;->mZenMode:I
    invoke-static {v3, v0}, Lcom/android/systemui/qs/tiles/DrivingModeTile;->access$302(Lcom/android/systemui/qs/tiles/DrivingModeTile;I)I

    .line 166
    iget-object v3, p0, Lcom/android/systemui/qs/tiles/DrivingModeTile$2;->this$0:Lcom/android/systemui/qs/tiles/DrivingModeTile;

    # getter for: Lcom/android/systemui/qs/tiles/DrivingModeTile;->mZenMode:I
    invoke-static {v3}, Lcom/android/systemui/qs/tiles/DrivingModeTile;->access$300(Lcom/android/systemui/qs/tiles/DrivingModeTile;)I

    move-result v3

    if-eq v3, v2, :cond_0

    iget-object v3, p0, Lcom/android/systemui/qs/tiles/DrivingModeTile$2;->this$0:Lcom/android/systemui/qs/tiles/DrivingModeTile;

    # getter for: Lcom/android/systemui/qs/tiles/DrivingModeTile;->mZenMode:I
    invoke-static {v3}, Lcom/android/systemui/qs/tiles/DrivingModeTile;->access$300(Lcom/android/systemui/qs/tiles/DrivingModeTile;)I

    move-result v3

    if-ne v3, v1, :cond_2

    .line 168
    :cond_0
    iget-object v1, p0, Lcom/android/systemui/qs/tiles/DrivingModeTile$2;->this$0:Lcom/android/systemui/qs/tiles/DrivingModeTile;

    const/4 v2, 0x4

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    # invokes: Lcom/android/systemui/qs/tiles/DrivingModeTile;->refreshState(Ljava/lang/Object;)V
    invoke-static {v1, v2}, Lcom/android/systemui/qs/tiles/DrivingModeTile;->access$400(Lcom/android/systemui/qs/tiles/DrivingModeTile;Ljava/lang/Object;)V

    .line 174
    :cond_1
    :goto_0
    return-void

    .line 171
    :cond_2
    iget-object v3, p0, Lcom/android/systemui/qs/tiles/DrivingModeTile$2;->this$0:Lcom/android/systemui/qs/tiles/DrivingModeTile;

    iget-object v4, p0, Lcom/android/systemui/qs/tiles/DrivingModeTile$2;->this$0:Lcom/android/systemui/qs/tiles/DrivingModeTile;

    # getter for: Lcom/android/systemui/qs/tiles/DrivingModeTile;->mSetting:Lcom/android/systemui/qs/SystemSetting;
    invoke-static {v4}, Lcom/android/systemui/qs/tiles/DrivingModeTile;->access$500(Lcom/android/systemui/qs/tiles/DrivingModeTile;)Lcom/android/systemui/qs/SystemSetting;

    move-result-object v4

    invoke-virtual {v4}, Lcom/android/systemui/qs/SystemSetting;->getValue()I

    move-result v4

    if-eqz v4, :cond_3

    :goto_1
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    # invokes: Lcom/android/systemui/qs/tiles/DrivingModeTile;->refreshState(Ljava/lang/Object;)V
    invoke-static {v3, v1}, Lcom/android/systemui/qs/tiles/DrivingModeTile;->access$600(Lcom/android/systemui/qs/tiles/DrivingModeTile;Ljava/lang/Object;)V

    goto :goto_0

    :cond_3
    move v1, v2

    goto :goto_1
.end method
