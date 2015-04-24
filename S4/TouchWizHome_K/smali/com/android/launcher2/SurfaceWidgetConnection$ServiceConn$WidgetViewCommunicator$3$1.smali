.class Lcom/android/launcher2/SurfaceWidgetConnection$ServiceConn$WidgetViewCommunicator$3$1;
.super Lcom/sec/dtl/launcher/GyroForShadow$VectorListener;
.source "SurfaceWidgetConnection.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/launcher2/SurfaceWidgetConnection$ServiceConn$WidgetViewCommunicator$3;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/android/launcher2/SurfaceWidgetConnection$ServiceConn$WidgetViewCommunicator$3;


# direct methods
.method constructor <init>(Lcom/android/launcher2/SurfaceWidgetConnection$ServiceConn$WidgetViewCommunicator$3;)V
    .locals 0

    .prologue
    .line 734
    iput-object p1, p0, Lcom/android/launcher2/SurfaceWidgetConnection$ServiceConn$WidgetViewCommunicator$3$1;->this$1:Lcom/android/launcher2/SurfaceWidgetConnection$ServiceConn$WidgetViewCommunicator$3;

    invoke-direct {p0}, Lcom/sec/dtl/launcher/GyroForShadow$VectorListener;-><init>()V

    return-void
.end method


# virtual methods
.method public onVectorChanged(FFFF)V
    .locals 3
    .param p1, "x"    # F
    .param p2, "y"    # F
    .param p3, "z"    # F
    .param p4, "xProgress"    # F

    .prologue
    .line 738
    :try_start_0
    iget-object v1, p0, Lcom/android/launcher2/SurfaceWidgetConnection$ServiceConn$WidgetViewCommunicator$3$1;->this$1:Lcom/android/launcher2/SurfaceWidgetConnection$ServiceConn$WidgetViewCommunicator$3;

    iget-object v1, v1, Lcom/android/launcher2/SurfaceWidgetConnection$ServiceConn$WidgetViewCommunicator$3;->this$0:Lcom/android/launcher2/SurfaceWidgetConnection$ServiceConn$WidgetViewCommunicator;

    # getter for: Lcom/android/launcher2/SurfaceWidgetConnection$ServiceConn$WidgetViewCommunicator;->mServiceConn:Lcom/android/launcher2/SurfaceWidgetConnection$ServiceConn;
    invoke-static {v1}, Lcom/android/launcher2/SurfaceWidgetConnection$ServiceConn$WidgetViewCommunicator;->access$300(Lcom/android/launcher2/SurfaceWidgetConnection$ServiceConn$WidgetViewCommunicator;)Lcom/android/launcher2/SurfaceWidgetConnection$ServiceConn;

    move-result-object v1

    invoke-virtual {v1, p1, p2, p3}, Lcom/android/launcher2/SurfaceWidgetConnection$ServiceConn;->onLauncherTiltChanged(FFF)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 743
    :goto_0
    return-void

    .line 739
    :catch_0
    move-exception v0

    .line 740
    .local v0, "e":Ljava/lang/Exception;
    const-string v1, "SurfaceWidgetConnection"

    const-string v2, "Error in surface widget"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 741
    iget-object v1, p0, Lcom/android/launcher2/SurfaceWidgetConnection$ServiceConn$WidgetViewCommunicator$3$1;->this$1:Lcom/android/launcher2/SurfaceWidgetConnection$ServiceConn$WidgetViewCommunicator$3;

    iget-object v1, v1, Lcom/android/launcher2/SurfaceWidgetConnection$ServiceConn$WidgetViewCommunicator$3;->val$widgetView:Lcom/android/launcher2/SurfaceWidgetView;

    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v0, v2}, Lcom/android/launcher2/SurfaceWidgetView;->surfaceWidgetCrashed(Ljava/lang/Exception;Ljava/lang/String;)V

    goto :goto_0
.end method
