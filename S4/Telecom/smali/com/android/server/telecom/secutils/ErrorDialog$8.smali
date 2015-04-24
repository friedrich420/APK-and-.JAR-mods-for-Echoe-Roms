.class final Lcom/android/server/telecom/secutils/ErrorDialog$8;
.super Ljava/lang/Object;
.source "ErrorDialog.java"

# interfaces
.implements Landroid/content/DialogInterface$OnDismissListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/telecom/secutils/ErrorDialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field private synthetic this$0:Lcom/android/server/telecom/secutils/ErrorDialog;


# direct methods
.method constructor <init>(Lcom/android/server/telecom/secutils/ErrorDialog;)V
    .locals 0

    .prologue
    .line 258
    iput-object p1, p0, Lcom/android/server/telecom/secutils/ErrorDialog$8;->this$0:Lcom/android/server/telecom/secutils/ErrorDialog;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onDismiss(Landroid/content/DialogInterface;)V
    .locals 2

    .prologue
    .line 261
    iget-object v0, p0, Lcom/android/server/telecom/secutils/ErrorDialog$8;->this$0:Lcom/android/server/telecom/secutils/ErrorDialog;

    # getter for: Lcom/android/server/telecom/secutils/ErrorDialog;->mHandler:Landroid/os/Handler;
    invoke-static {v0}, Lcom/android/server/telecom/secutils/ErrorDialog;->access$100(Lcom/android/server/telecom/secutils/ErrorDialog;)Landroid/os/Handler;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 262
    iget-object v0, p0, Lcom/android/server/telecom/secutils/ErrorDialog$8;->this$0:Lcom/android/server/telecom/secutils/ErrorDialog;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/android/server/telecom/secutils/ErrorDialog;->access$702(Lcom/android/server/telecom/secutils/ErrorDialog;Landroid/app/ProgressDialog;)Landroid/app/ProgressDialog;

    .line 263
    iget-object v0, p0, Lcom/android/server/telecom/secutils/ErrorDialog$8;->this$0:Lcom/android/server/telecom/secutils/ErrorDialog;

    # getter for: Lcom/android/server/telecom/secutils/ErrorDialog;->mHandler:Landroid/os/Handler;
    invoke-static {v0}, Lcom/android/server/telecom/secutils/ErrorDialog;->access$100(Lcom/android/server/telecom/secutils/ErrorDialog;)Landroid/os/Handler;

    move-result-object v0

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 264
    iget-object v0, p0, Lcom/android/server/telecom/secutils/ErrorDialog$8;->this$0:Lcom/android/server/telecom/secutils/ErrorDialog;

    # invokes: Lcom/android/server/telecom/secutils/ErrorDialog;->finishActivity()V
    invoke-static {v0}, Lcom/android/server/telecom/secutils/ErrorDialog;->access$400(Lcom/android/server/telecom/secutils/ErrorDialog;)V

    .line 266
    :cond_0
    return-void
.end method
