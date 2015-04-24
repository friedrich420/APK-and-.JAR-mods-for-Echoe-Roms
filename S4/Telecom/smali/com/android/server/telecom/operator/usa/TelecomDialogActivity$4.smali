.class final Lcom/android/server/telecom/operator/usa/TelecomDialogActivity$4;
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


# direct methods
.method constructor <init>(Lcom/android/server/telecom/operator/usa/TelecomDialogActivity;)V
    .locals 0

    .prologue
    .line 145
    iput-object p1, p0, Lcom/android/server/telecom/operator/usa/TelecomDialogActivity$4;->this$0:Lcom/android/server/telecom/operator/usa/TelecomDialogActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/content/DialogInterface;I)V
    .locals 3

    .prologue
    .line 148
    invoke-static {}, Lcom/android/server/telecom/secutils/TelecomUtils;->getLastMoCallIntent()Landroid/content/Intent;

    move-result-object v0

    .line 149
    if-eqz v0, :cond_0

    .line 150
    const/high16 v1, 0x10000000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 151
    const-string v1, "extra_by_pass"

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 152
    iget-object v1, p0, Lcom/android/server/telecom/operator/usa/TelecomDialogActivity$4;->this$0:Lcom/android/server/telecom/operator/usa/TelecomDialogActivity;

    invoke-virtual {v1, v0}, Lcom/android/server/telecom/operator/usa/TelecomDialogActivity;->startActivity(Landroid/content/Intent;)V

    .line 154
    :cond_0
    iget-object v0, p0, Lcom/android/server/telecom/operator/usa/TelecomDialogActivity$4;->this$0:Lcom/android/server/telecom/operator/usa/TelecomDialogActivity;

    invoke-virtual {v0}, Lcom/android/server/telecom/operator/usa/TelecomDialogActivity;->finish()V

    .line 155
    return-void
.end method
