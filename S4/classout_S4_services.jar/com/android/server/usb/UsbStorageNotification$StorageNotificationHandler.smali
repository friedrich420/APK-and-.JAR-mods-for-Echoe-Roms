.class Lcom/android/server/usb/UsbStorageNotification$StorageNotificationHandler;
.super Landroid/os/Handler;
.source "UsbStorageNotification.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/usb/UsbStorageNotification;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "StorageNotificationHandler"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/usb/UsbStorageNotification;


# direct methods
.method constructor <init>(Lcom/android/server/usb/UsbStorageNotification;Landroid/os/Looper;)V
    .registers 3
    .param p2, "l"    # Landroid/os/Looper;

    .prologue
    .line 214
    iput-object p1, p0, this$0:Lcom/android/server/usb/UsbStorageNotification;

    .line 215
    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 216
    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .registers 6
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    .line 219
    iget v1, p1, Landroid/os/Message;->what:I

    packed-switch v1, :pswitch_data_3a

    .line 228
    :cond_5
    :goto_5
    return-void

    .line 221
    :pswitch_6
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Ljava/lang/String;

    .line 222
    .local v0, "path1":Ljava/lang/String;
    const-string v1, "UsbStorageNotification"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "handleMessage -> USBHOST_UPDATE_STATE path = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 223
    invoke-static {}, Landroid/os/FactoryTest;->isFactoryBinary()Z

    move-result v1

    if-nez v1, :cond_5

    .line 224
    iget-object v1, p0, this$0:Lcom/android/server/usb/UsbStorageNotification;

    # getter for: Lcom/android/server/usb/UsbStorageNotification;->mContext:Landroid/content/Context;
    invoke-static {v1}, Lcom/android/server/usb/UsbStorageNotification;->access$400(Lcom/android/server/usb/UsbStorageNotification;)Landroid/content/Context;

    move-result-object v1

    const v2, 0x1040b95

    const/4 v3, 0x1

    invoke-static {v1, v2, v3}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/Toast;->show()V

    goto :goto_5

    .line 219
    :pswitch_data_3a
    .packed-switch 0x1
        :pswitch_6
    .end packed-switch
.end method
