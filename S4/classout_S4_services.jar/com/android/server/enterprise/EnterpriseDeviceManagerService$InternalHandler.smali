.class Lcom/android/server/enterprise/EnterpriseDeviceManagerService$InternalHandler;
.super Landroid/os/Handler;
.source "EnterpriseDeviceManagerService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/enterprise/EnterpriseDeviceManagerService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "InternalHandler"
.end annotation


# static fields
.field public static final MSG_POST_ADMIN_ACTIVATION:I = 0x1

.field public static final MSG_REMOVE_ADMIN:I = 0x2


# instance fields
.field final synthetic this$0:Lcom/android/server/enterprise/EnterpriseDeviceManagerService;


# direct methods
.method public constructor <init>(Lcom/android/server/enterprise/EnterpriseDeviceManagerService;Landroid/os/Looper;)V
    .registers 3
    .param p2, "looper"    # Landroid/os/Looper;

    .prologue
    .line 418
    iput-object p1, p0, this$0:Lcom/android/server/enterprise/EnterpriseDeviceManagerService;

    .line 419
    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 420
    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .registers 6
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    .line 424
    const-string v1, "EnterpriseDeviceManagerService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "handleMessage : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p1, Landroid/os/Message;->what:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p1, Landroid/os/Message;->arg1:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/android/server/enterprise/log/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 426
    iget v1, p1, Landroid/os/Message;->what:I

    packed-switch v1, :pswitch_data_66

    .line 439
    :goto_37
    return-void

    .line 429
    :pswitch_38
    invoke-static {}, Lcom/android/server/enterprise/license/EnterpriseLicenseService;->updateAdminPermissions()V

    goto :goto_37

    .line 433
    :pswitch_3c
    iget v0, p1, Landroid/os/Message;->arg2:I

    .line 434
    .local v0, "userId":I
    const-string v1, "EnterpriseDeviceManagerService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "User "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " has been removed!"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/android/server/enterprise/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 435
    iget-object v2, p0, this$0:Lcom/android/server/enterprise/EnterpriseDeviceManagerService;

    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v1, Landroid/content/ComponentName;

    # invokes: Lcom/android/server/enterprise/EnterpriseDeviceManagerService;->removeActiveAdminDelayed(Landroid/content/ComponentName;I)V
    invoke-static {v2, v1, v0}, Lcom/android/server/enterprise/EnterpriseDeviceManagerService;->access$000(Lcom/android/server/enterprise/EnterpriseDeviceManagerService;Landroid/content/ComponentName;I)V

    goto :goto_37

    .line 426
    :pswitch_data_66
    .packed-switch 0x1
        :pswitch_38
        :pswitch_3c
    .end packed-switch
.end method
