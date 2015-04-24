.class final Lcom/android/server/telecom/operator/usa/TelecomDialogActivity$6;
.super Ljava/lang/Object;
.source "TelecomDialogActivity.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/telecom/operator/usa/TelecomDialogActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field private synthetic this$0:Lcom/android/server/telecom/operator/usa/TelecomDialogActivity;

.field private synthetic val$number:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/android/server/telecom/operator/usa/TelecomDialogActivity;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 201
    iput-object p1, p0, Lcom/android/server/telecom/operator/usa/TelecomDialogActivity$6;->this$0:Lcom/android/server/telecom/operator/usa/TelecomDialogActivity;

    iput-object p2, p0, Lcom/android/server/telecom/operator/usa/TelecomDialogActivity$6;->val$number:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/content/DialogInterface;I)V
    .locals 5

    .prologue
    .line 204
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.SENDTO"

    const-string v2, "sms"

    iget-object v3, p0, Lcom/android/server/telecom/operator/usa/TelecomDialogActivity$6;->val$number:Ljava/lang/String;

    const/4 v4, 0x0

    invoke-static {v2, v3, v4}, Landroid/net/Uri;->fromParts(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 205
    const/high16 v1, 0x10000000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 207
    iget-object v1, p0, Lcom/android/server/telecom/operator/usa/TelecomDialogActivity$6;->this$0:Lcom/android/server/telecom/operator/usa/TelecomDialogActivity;

    invoke-virtual {v1, v0}, Lcom/android/server/telecom/operator/usa/TelecomDialogActivity;->startActivity(Landroid/content/Intent;)V

    .line 209
    iget-object v0, p0, Lcom/android/server/telecom/operator/usa/TelecomDialogActivity$6;->this$0:Lcom/android/server/telecom/operator/usa/TelecomDialogActivity;

    invoke-virtual {v0}, Lcom/android/server/telecom/operator/usa/TelecomDialogActivity;->finish()V

    .line 210
    return-void
.end method
