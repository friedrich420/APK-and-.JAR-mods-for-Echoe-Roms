.class Lcom/android/server/DeviceManager3LMService$3;
.super Ljava/lang/Thread;
.source "DeviceManager3LMService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/DeviceManager3LMService;->clearNotification(I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/DeviceManager3LMService;

.field final synthetic val$id:I


# direct methods
.method constructor <init>(Lcom/android/server/DeviceManager3LMService;I)V
    .registers 3

    .prologue
    .line 798
    iput-object p1, p0, this$0:Lcom/android/server/DeviceManager3LMService;

    iput p2, p0, val$id:I

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 3

    .prologue
    .line 800
    iget-object v0, p0, this$0:Lcom/android/server/DeviceManager3LMService;

    # getter for: Lcom/android/server/DeviceManager3LMService;->mNotificationManager:Landroid/app/NotificationManager;
    invoke-static {v0}, Lcom/android/server/DeviceManager3LMService;->access$300(Lcom/android/server/DeviceManager3LMService;)Landroid/app/NotificationManager;

    move-result-object v0

    iget v1, p0, val$id:I

    invoke-virtual {v0, v1}, Landroid/app/NotificationManager;->cancel(I)V

    .line 801
    return-void
.end method
