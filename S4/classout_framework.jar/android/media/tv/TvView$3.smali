.class Landroid/media/tv/TvView$3;
.super Landroid/view/SurfaceView;
.source "TvView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroid/media/tv/TvView;->resetSurfaceView()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Landroid/media/tv/TvView;


# direct methods
.method constructor <init>(Landroid/media/tv/TvView;Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .registers 5
    .param p2, "x0"    # Landroid/content/Context;
    .param p3, "x1"    # Landroid/util/AttributeSet;
    .param p4, "x2"    # I

    .prologue
    .line 606
    iput-object p1, p0, this$0:Landroid/media/tv/TvView;

    invoke-direct {p0, p2, p3, p4}, Landroid/view/SurfaceView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method


# virtual methods
.method protected updateWindow(ZZ)V
    .registers 4
    .param p1, "force"    # Z
    .param p2, "redrawNeeded"    # Z

    .prologue
    .line 609
    invoke-super {p0, p1, p2}, Landroid/view/SurfaceView;->updateWindow(ZZ)V

    .line 610
    iget-object v0, p0, this$0:Landroid/media/tv/TvView;

    # invokes: Landroid/media/tv/TvView;->relayoutSessionOverlayView()V
    invoke-static {v0}, Landroid/media/tv/TvView;->access$700(Landroid/media/tv/TvView;)V

    .line 611
    return-void
.end method