.class final Lcom/android/server/telecom/secutils/ErrorDialog$14;
.super Ljava/lang/Object;
.source "ErrorDialog.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


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
    .line 307
    iput-object p1, p0, Lcom/android/server/telecom/secutils/ErrorDialog$14;->this$0:Lcom/android/server/telecom/secutils/ErrorDialog;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/content/DialogInterface;I)V
    .locals 3

    .prologue
    const/4 v2, 0x1

    .line 310
    invoke-static {v2}, Lcom/android/server/telecom/secutils/TelecomUtils;->getLastMoCallIntent(Z)Landroid/content/Intent;

    move-result-object v0

    .line 312
    if-eqz v0, :cond_0

    .line 313
    invoke-static {v0}, Lcom/android/server/telecom/secutils/TelecomUtils;->removeVideoCallExtra(Landroid/content/Intent;)V

    .line 314
    const-string v1, "cs_voice_call_outgoing"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 315
    const/high16 v1, 0x10000000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 316
    iget-object v1, p0, Lcom/android/server/telecom/secutils/ErrorDialog$14;->this$0:Lcom/android/server/telecom/secutils/ErrorDialog;

    # getter for: Lcom/android/server/telecom/secutils/ErrorDialog;->mActivity:Landroid/app/Activity;
    invoke-static {v1}, Lcom/android/server/telecom/secutils/ErrorDialog;->access$600(Lcom/android/server/telecom/secutils/ErrorDialog;)Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    .line 318
    :cond_0
    iget-object v0, p0, Lcom/android/server/telecom/secutils/ErrorDialog$14;->this$0:Lcom/android/server/telecom/secutils/ErrorDialog;

    # invokes: Lcom/android/server/telecom/secutils/ErrorDialog;->finishActivity()V
    invoke-static {v0}, Lcom/android/server/telecom/secutils/ErrorDialog;->access$400(Lcom/android/server/telecom/secutils/ErrorDialog;)V

    .line 319
    return-void
.end method
