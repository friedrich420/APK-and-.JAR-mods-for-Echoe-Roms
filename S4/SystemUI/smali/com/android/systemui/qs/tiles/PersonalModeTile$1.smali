.class Lcom/android/systemui/qs/tiles/PersonalModeTile$1;
.super Lcom/android/systemui/qs/SystemSetting;
.source "PersonalModeTile.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/systemui/qs/tiles/PersonalModeTile;-><init>(Lcom/android/systemui/qs/QSTile$Host;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/qs/tiles/PersonalModeTile;


# direct methods
.method constructor <init>(Lcom/android/systemui/qs/tiles/PersonalModeTile;Landroid/content/Context;Landroid/os/Handler;Ljava/lang/String;)V
    .locals 0
    .param p2, "x0"    # Landroid/content/Context;
    .param p3, "x1"    # Landroid/os/Handler;
    .param p4, "x2"    # Ljava/lang/String;

    .prologue
    .line 56
    iput-object p1, p0, Lcom/android/systemui/qs/tiles/PersonalModeTile$1;->this$0:Lcom/android/systemui/qs/tiles/PersonalModeTile;

    invoke-direct {p0, p2, p3, p4}, Lcom/android/systemui/qs/SystemSetting;-><init>(Landroid/content/Context;Landroid/os/Handler;Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method protected handleValueChanged(I)V
    .locals 2
    .param p1, "value"    # I

    .prologue
    const/4 v0, 0x1

    .line 59
    iget-object v1, p0, Lcom/android/systemui/qs/tiles/PersonalModeTile$1;->this$0:Lcom/android/systemui/qs/tiles/PersonalModeTile;

    if-ne p1, v0, :cond_0

    :goto_0
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    # invokes: Lcom/android/systemui/qs/tiles/PersonalModeTile;->refreshState(Ljava/lang/Object;)V
    invoke-static {v1, v0}, Lcom/android/systemui/qs/tiles/PersonalModeTile;->access$000(Lcom/android/systemui/qs/tiles/PersonalModeTile;Ljava/lang/Object;)V

    .line 60
    return-void

    .line 59
    :cond_0
    const/4 v0, 0x2

    goto :goto_0
.end method
