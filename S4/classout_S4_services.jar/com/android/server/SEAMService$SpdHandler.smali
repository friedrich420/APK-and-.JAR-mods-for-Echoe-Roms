.class final Lcom/android/server/SEAMService$SpdHandler;
.super Landroid/os/Handler;
.source "SEAMService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/SEAMService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "SpdHandler"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/SEAMService;


# direct methods
.method public constructor <init>(Lcom/android/server/SEAMService;Landroid/os/Looper;)V
    .registers 3
    .param p2, "looper"    # Landroid/os/Looper;

    .prologue
    .line 298
    iput-object p1, p0, this$0:Lcom/android/server/SEAMService;

    .line 299
    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 300
    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .registers 2
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    .line 303
    return-void
.end method
