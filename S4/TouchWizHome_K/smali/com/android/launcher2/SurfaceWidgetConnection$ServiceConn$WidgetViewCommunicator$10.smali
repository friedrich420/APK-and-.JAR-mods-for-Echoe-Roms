.class Lcom/android/launcher2/SurfaceWidgetConnection$ServiceConn$WidgetViewCommunicator$10;
.super Ljava/lang/Object;
.source "SurfaceWidgetConnection.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/launcher2/SurfaceWidgetConnection$ServiceConn$WidgetViewCommunicator;->updateContentDescription(Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/launcher2/SurfaceWidgetConnection$ServiceConn$WidgetViewCommunicator;

.field final synthetic val$description:Ljava/lang/String;

.field final synthetic val$widgetView:Lcom/android/launcher2/SurfaceWidgetView;


# direct methods
.method constructor <init>(Lcom/android/launcher2/SurfaceWidgetConnection$ServiceConn$WidgetViewCommunicator;Lcom/android/launcher2/SurfaceWidgetView;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 906
    iput-object p1, p0, Lcom/android/launcher2/SurfaceWidgetConnection$ServiceConn$WidgetViewCommunicator$10;->this$0:Lcom/android/launcher2/SurfaceWidgetConnection$ServiceConn$WidgetViewCommunicator;

    iput-object p2, p0, Lcom/android/launcher2/SurfaceWidgetConnection$ServiceConn$WidgetViewCommunicator$10;->val$widgetView:Lcom/android/launcher2/SurfaceWidgetView;

    iput-object p3, p0, Lcom/android/launcher2/SurfaceWidgetConnection$ServiceConn$WidgetViewCommunicator$10;->val$description:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 909
    # getter for: Lcom/android/launcher2/SurfaceWidgetConnection;->DEBUG:Z
    invoke-static {}, Lcom/android/launcher2/SurfaceWidgetConnection;->access$100()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 910
    const-string v0, "SurfaceWidgetConnection"

    const-string v1, "Updating content description"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 911
    :cond_0
    iget-object v0, p0, Lcom/android/launcher2/SurfaceWidgetConnection$ServiceConn$WidgetViewCommunicator$10;->val$widgetView:Lcom/android/launcher2/SurfaceWidgetView;

    iget-object v1, p0, Lcom/android/launcher2/SurfaceWidgetConnection$ServiceConn$WidgetViewCommunicator$10;->val$description:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/android/launcher2/SurfaceWidgetView;->updateContentDescription(Ljava/lang/String;)V

    .line 912
    return-void
.end method
