.class Lcom/android/launcher2/SurfaceWidgetConnection$ServiceConn$WidgetViewCommunicator$9;
.super Ljava/lang/Object;
.source "SurfaceWidgetConnection.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/launcher2/SurfaceWidgetConnection$ServiceConn$WidgetViewCommunicator;->onSurfaceWidgetDisconnect()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/launcher2/SurfaceWidgetConnection$ServiceConn$WidgetViewCommunicator;

.field final synthetic val$widgetView:Lcom/android/launcher2/SurfaceWidgetView;


# direct methods
.method constructor <init>(Lcom/android/launcher2/SurfaceWidgetConnection$ServiceConn$WidgetViewCommunicator;Lcom/android/launcher2/SurfaceWidgetView;)V
    .locals 0

    .prologue
    .line 860
    iput-object p1, p0, Lcom/android/launcher2/SurfaceWidgetConnection$ServiceConn$WidgetViewCommunicator$9;->this$0:Lcom/android/launcher2/SurfaceWidgetConnection$ServiceConn$WidgetViewCommunicator;

    iput-object p2, p0, Lcom/android/launcher2/SurfaceWidgetConnection$ServiceConn$WidgetViewCommunicator$9;->val$widgetView:Lcom/android/launcher2/SurfaceWidgetView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .prologue
    .line 862
    iget-object v0, p0, Lcom/android/launcher2/SurfaceWidgetConnection$ServiceConn$WidgetViewCommunicator$9;->val$widgetView:Lcom/android/launcher2/SurfaceWidgetView;

    invoke-virtual {v0}, Lcom/android/launcher2/SurfaceWidgetView;->surfaceWidgetRestart()V

    .line 863
    return-void
.end method
