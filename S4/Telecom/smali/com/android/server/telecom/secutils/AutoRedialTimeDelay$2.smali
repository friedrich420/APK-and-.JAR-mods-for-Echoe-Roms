.class final Lcom/android/server/telecom/secutils/AutoRedialTimeDelay$2;
.super Landroid/os/Handler;
.source "AutoRedialTimeDelay.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/telecom/secutils/AutoRedialTimeDelay;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field private synthetic this$0:Lcom/android/server/telecom/secutils/AutoRedialTimeDelay;


# direct methods
.method constructor <init>(Lcom/android/server/telecom/secutils/AutoRedialTimeDelay;)V
    .locals 0

    .prologue
    .line 195
    iput-object p1, p0, Lcom/android/server/telecom/secutils/AutoRedialTimeDelay$2;->this$0:Lcom/android/server/telecom/secutils/AutoRedialTimeDelay;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public final handleMessage(Landroid/os/Message;)V
    .locals 2

    .prologue
    .line 198
    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_0

    .line 207
    :cond_0
    :goto_0
    return-void

    .line 200
    :pswitch_0
    iget-object v0, p0, Lcom/android/server/telecom/secutils/AutoRedialTimeDelay$2;->this$0:Lcom/android/server/telecom/secutils/AutoRedialTimeDelay;

    invoke-static {v0}, Lcom/android/server/telecom/secutils/AutoRedialTimeDelay;->access$100(Lcom/android/server/telecom/secutils/AutoRedialTimeDelay;)V

    .line 201
    iget-object v0, p0, Lcom/android/server/telecom/secutils/AutoRedialTimeDelay$2;->this$0:Lcom/android/server/telecom/secutils/AutoRedialTimeDelay;

    # getter for: Lcom/android/server/telecom/secutils/AutoRedialTimeDelay;->mRedialProgressDialog:Landroid/app/ProgressDialog;
    invoke-static {v0}, Lcom/android/server/telecom/secutils/AutoRedialTimeDelay;->access$200(Lcom/android/server/telecom/secutils/AutoRedialTimeDelay;)Landroid/app/ProgressDialog;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 202
    iget-object v0, p0, Lcom/android/server/telecom/secutils/AutoRedialTimeDelay$2;->this$0:Lcom/android/server/telecom/secutils/AutoRedialTimeDelay;

    # getter for: Lcom/android/server/telecom/secutils/AutoRedialTimeDelay;->mRedialProgressDialog:Landroid/app/ProgressDialog;
    invoke-static {v0}, Lcom/android/server/telecom/secutils/AutoRedialTimeDelay;->access$200(Lcom/android/server/telecom/secutils/AutoRedialTimeDelay;)Landroid/app/ProgressDialog;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->dismiss()V

    .line 203
    iget-object v0, p0, Lcom/android/server/telecom/secutils/AutoRedialTimeDelay$2;->this$0:Lcom/android/server/telecom/secutils/AutoRedialTimeDelay;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/android/server/telecom/secutils/AutoRedialTimeDelay;->access$202(Lcom/android/server/telecom/secutils/AutoRedialTimeDelay;Landroid/app/ProgressDialog;)Landroid/app/ProgressDialog;

    goto :goto_0

    .line 198
    nop

    :pswitch_data_0
    .packed-switch 0x63
        :pswitch_0
    .end packed-switch
.end method
