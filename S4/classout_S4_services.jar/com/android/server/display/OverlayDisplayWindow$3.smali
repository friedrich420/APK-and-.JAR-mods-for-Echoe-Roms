.class Lcom/android/server/display/OverlayDisplayWindow$3;
.super Ljava/lang/Object;
.source "OverlayDisplayWindow.java"

# interfaces
.implements Landroid/view/View$OnTouchListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/display/OverlayDisplayWindow;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/display/OverlayDisplayWindow;


# direct methods
.method constructor <init>(Lcom/android/server/display/OverlayDisplayWindow;)V
    .registers 2

    .prologue
    .line 325
    iput-object p1, p0, this$0:Lcom/android/server/display/OverlayDisplayWindow;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .registers 7
    .param p1, "view"    # Landroid/view/View;
    .param p2, "event"    # Landroid/view/MotionEvent;

    .prologue
    .line 329
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    .line 330
    .local v0, "oldX":F
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getY()F

    move-result v1

    .line 331
    .local v1, "oldY":F
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getRawX()F

    move-result v2

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getRawY()F

    move-result v3

    invoke-virtual {p2, v2, v3}, Landroid/view/MotionEvent;->setLocation(FF)V

    .line 333
    iget-object v2, p0, this$0:Lcom/android/server/display/OverlayDisplayWindow;

    # getter for: Lcom/android/server/display/OverlayDisplayWindow;->mGestureDetector:Landroid/view/GestureDetector;
    invoke-static {v2}, Lcom/android/server/display/OverlayDisplayWindow;->access$400(Lcom/android/server/display/OverlayDisplayWindow;)Landroid/view/GestureDetector;

    move-result-object v2

    invoke-virtual {v2, p2}, Landroid/view/GestureDetector;->onTouchEvent(Landroid/view/MotionEvent;)Z

    .line 334
    iget-object v2, p0, this$0:Lcom/android/server/display/OverlayDisplayWindow;

    # getter for: Lcom/android/server/display/OverlayDisplayWindow;->mScaleGestureDetector:Landroid/view/ScaleGestureDetector;
    invoke-static {v2}, Lcom/android/server/display/OverlayDisplayWindow;->access$500(Lcom/android/server/display/OverlayDisplayWindow;)Landroid/view/ScaleGestureDetector;

    move-result-object v2

    invoke-virtual {v2, p2}, Landroid/view/ScaleGestureDetector;->onTouchEvent(Landroid/view/MotionEvent;)Z

    .line 336
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v2

    packed-switch v2, :pswitch_data_38

    .line 344
    :goto_2c
    :pswitch_2c
    invoke-virtual {p2, v0, v1}, Landroid/view/MotionEvent;->setLocation(FF)V

    .line 345
    const/4 v2, 0x1

    return v2

    .line 339
    :pswitch_31
    iget-object v2, p0, this$0:Lcom/android/server/display/OverlayDisplayWindow;

    # invokes: Lcom/android/server/display/OverlayDisplayWindow;->saveWindowParams()V
    invoke-static {v2}, Lcom/android/server/display/OverlayDisplayWindow;->access$600(Lcom/android/server/display/OverlayDisplayWindow;)V

    goto :goto_2c

    .line 336
    nop

    :pswitch_data_38
    .packed-switch 0x1
        :pswitch_31
        :pswitch_2c
        :pswitch_31
    .end packed-switch
.end method
